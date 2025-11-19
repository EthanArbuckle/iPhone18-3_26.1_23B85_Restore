@interface StockFetcher
- (StockFetcher)init;
- (StockFetcher)initWithValidator:(id)a3;
- (void)attemptRemoteFetchOfStockWithSymbol:(id)a3 completionHandler:(id)a4;
- (void)cleanUpAndReportResult:(id)a3;
- (void)fetchStockWithSymbol:(id)a3 completionHandler:(id)a4;
- (void)symbolValidator:(id)a3 didValidateSymbols:(id)a4;
@end

@implementation StockFetcher

- (StockFetcher)init
{
  v3 = objc_alloc_init(SymbolValidator);
  v4 = [(StockFetcher *)self initWithValidator:v3];

  return v4;
}

- (StockFetcher)initWithValidator:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = StockFetcher;
  v6 = [(StockFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, a3);
    [(SymbolValidator *)v7->_validator setDelegate:v7];
    v7->_timeoutDuration = 5.0;
    v8 = v7;
  }

  return v7;
}

- (void)fetchStockWithSymbol:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(StockFetcher *)self completionHandler];

  if (v7)
  {
    [(StockFetcher *)self cleanUpAndReportResult:0];
  }

  v8 = +[StockManager sharedManager];
  v9 = [v8 stockWithSymbol:v10];

  if (v9)
  {
    v6[2](v6, v9, 1);
  }

  else
  {
    [(StockFetcher *)self setCompletionHandler:v6];
    [(StockFetcher *)self attemptRemoteFetchOfStockWithSymbol:v10 completionHandler:v6];
  }
}

- (void)attemptRemoteFetchOfStockWithSymbol:(id)a3 completionHandler:(id)a4
{
  [(SymbolValidator *)self->_validator validateSymbol:a3 withMaxResults:1];
  v5 = MEMORY[0x277CBEBB8];
  [(StockFetcher *)self timeoutDuration];
  v6 = [v5 scheduledTimerWithTimeInterval:self target:sel_remoteFetchTimedOut selector:0 userInfo:0 repeats:?];
  [(StockFetcher *)self setTimeoutTimer:v6];
}

- (void)cleanUpAndReportResult:(id)a3
{
  v7 = a3;
  v4 = [(StockFetcher *)self completionHandler];

  if (v4)
  {
    v5 = [(StockFetcher *)self completionHandler];
    (v5)[2](v5, v7, 0);

    [(StockFetcher *)self setCompletionHandler:0];
  }

  v6 = [(StockFetcher *)self timeoutTimer];
  [v6 invalidate];

  [(StockFetcher *)self setTimeoutTimer:0];
}

- (void)symbolValidator:(id)a3 didValidateSymbols:(id)a4
{
  v6 = [a4 firstObject];
  v5 = [[Stock alloc] initWithDictionary:v6];
  [(StockFetcher *)self cleanUpAndReportResult:v5];
}

@end