@interface WBSHistoryServiceImporter
- (WBSHistoryServiceImporter)initWithDatabase:(id)a3 visitTimePrecision:(unint64_t)a4;
- (void)_submitVisitsWithCompletionHandler:(id)a3;
- (void)addVisitWithURLString:(id)a3 visitTime:(double)a4 title:(id)a5 loadSuccessful:(BOOL)a6 httpGet:(BOOL)a7 redirectSourceURLString:(id)a8 redirectSourceVisitTime:(double)a9 redirectDestinationURLString:(id)a10 redirectDestinationVisitTime:(double)a11 visitCount:(unint64_t)a12;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WBSHistoryServiceImporter

- (WBSHistoryServiceImporter)initWithDatabase:(id)a3 visitTimePrecision:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceImporter;
  v8 = [(WBSHistoryServiceImporter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, a3);
    v9->_visitTimePrecision = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visits = v9->_visits;
    v9->_visits = v10;

    v12 = v9;
  }

  return v9;
}

- (void)addVisitWithURLString:(id)a3 visitTime:(double)a4 title:(id)a5 loadSuccessful:(BOOL)a6 httpGet:(BOOL)a7 redirectSourceURLString:(id)a8 redirectSourceVisitTime:(double)a9 redirectDestinationURLString:(id)a10 redirectDestinationVisitTime:(double)a11 visitCount:(unint64_t)a12
{
  v15 = a7;
  v16 = a6;
  v29 = a8;
  v21 = a10;
  v22 = a5;
  v23 = a3;
  v24 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v23 visitTime:a4];

  v25 = [[WBSHistoryServicePendingVisit alloc] initWithWithVisitIdentifier:v24];
  [(WBSHistoryServicePendingVisit *)v25 setOperation:1];
  [(WBSHistoryServicePendingVisit *)v25 setTitle:v22];

  [(WBSHistoryServicePendingVisit *)v25 setLoadSuccessful:v16];
  [(WBSHistoryServicePendingVisit *)v25 setWasHTTPNonGet:!v15];
  if (a12 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = a12;
  }

  [(WBSHistoryServicePendingVisit *)v25 setVisitCount:v26];
  if (v29)
  {
    v27 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v29 visitTime:a9];
    [(WBSHistoryServicePendingVisit *)v25 setSourceVisitIdentifier:v27];
  }

  if (v21)
  {
    v28 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:v21 visitTime:a11];
    [(WBSHistoryServicePendingVisit *)v25 setDestinationVisitIdentifier:v28];
  }

  [(NSMutableArray *)self->_visits addObject:v25];
  if ([(NSMutableArray *)self->_visits count]>= 0x400)
  {
    [(WBSHistoryServiceImporter *)self _submitVisitsWithCompletionHandler:0];
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  visits = self->_visits;
  v5 = a3;
  if ([(NSMutableArray *)visits count])
  {
    [(WBSHistoryServiceImporter *)self _submitVisitsWithCompletionHandler:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)_submitVisitsWithCompletionHandler:(id)a3
{
  [(WBSHistoryServiceDatabase *)self->_database importVisits:self->_visits desiredVisitTimePrecision:self->_visitTimePrecision completionHandler:a3];
  visits = self->_visits;

  [(NSMutableArray *)visits removeAllObjects];
}

@end