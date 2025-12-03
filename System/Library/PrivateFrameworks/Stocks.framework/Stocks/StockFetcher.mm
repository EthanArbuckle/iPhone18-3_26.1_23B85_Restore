@interface StockFetcher
- (StockFetcher)init;
- (StockFetcher)initWithValidator:(id)validator;
- (void)attemptRemoteFetchOfStockWithSymbol:(id)symbol completionHandler:(id)handler;
- (void)cleanUpAndReportResult:(id)result;
- (void)fetchStockWithSymbol:(id)symbol completionHandler:(id)handler;
- (void)symbolValidator:(id)validator didValidateSymbols:(id)symbols;
@end

@implementation StockFetcher

- (StockFetcher)init
{
  v3 = objc_alloc_init(SymbolValidator);
  v4 = [(StockFetcher *)self initWithValidator:v3];

  return v4;
}

- (StockFetcher)initWithValidator:(id)validator
{
  validatorCopy = validator;
  v10.receiver = self;
  v10.super_class = StockFetcher;
  v6 = [(StockFetcher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, validator);
    [(SymbolValidator *)v7->_validator setDelegate:v7];
    v7->_timeoutDuration = 5.0;
    v8 = v7;
  }

  return v7;
}

- (void)fetchStockWithSymbol:(id)symbol completionHandler:(id)handler
{
  symbolCopy = symbol;
  handlerCopy = handler;
  completionHandler = [(StockFetcher *)self completionHandler];

  if (completionHandler)
  {
    [(StockFetcher *)self cleanUpAndReportResult:0];
  }

  v8 = +[StockManager sharedManager];
  v9 = [v8 stockWithSymbol:symbolCopy];

  if (v9)
  {
    handlerCopy[2](handlerCopy, v9, 1);
  }

  else
  {
    [(StockFetcher *)self setCompletionHandler:handlerCopy];
    [(StockFetcher *)self attemptRemoteFetchOfStockWithSymbol:symbolCopy completionHandler:handlerCopy];
  }
}

- (void)attemptRemoteFetchOfStockWithSymbol:(id)symbol completionHandler:(id)handler
{
  [(SymbolValidator *)self->_validator validateSymbol:symbol withMaxResults:1];
  v5 = MEMORY[0x277CBEBB8];
  [(StockFetcher *)self timeoutDuration];
  v6 = [v5 scheduledTimerWithTimeInterval:self target:sel_remoteFetchTimedOut selector:0 userInfo:0 repeats:?];
  [(StockFetcher *)self setTimeoutTimer:v6];
}

- (void)cleanUpAndReportResult:(id)result
{
  resultCopy = result;
  completionHandler = [(StockFetcher *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(StockFetcher *)self completionHandler];
    (completionHandler2)[2](completionHandler2, resultCopy, 0);

    [(StockFetcher *)self setCompletionHandler:0];
  }

  timeoutTimer = [(StockFetcher *)self timeoutTimer];
  [timeoutTimer invalidate];

  [(StockFetcher *)self setTimeoutTimer:0];
}

- (void)symbolValidator:(id)validator didValidateSymbols:(id)symbols
{
  firstObject = [symbols firstObject];
  v5 = [[Stock alloc] initWithDictionary:firstObject];
  [(StockFetcher *)self cleanUpAndReportResult:v5];
}

@end