@interface WBSHistoryServiceImporter
- (WBSHistoryServiceImporter)initWithDatabase:(id)database visitTimePrecision:(unint64_t)precision;
- (void)_submitVisitsWithCompletionHandler:(id)handler;
- (void)addVisitWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WBSHistoryServiceImporter

- (WBSHistoryServiceImporter)initWithDatabase:(id)database visitTimePrecision:(unint64_t)precision
{
  databaseCopy = database;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceImporter;
  v8 = [(WBSHistoryServiceImporter *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_database, database);
    v9->_visitTimePrecision = precision;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visits = v9->_visits;
    v9->_visits = v10;

    v12 = v9;
  }

  return v9;
}

- (void)addVisitWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2
{
  getCopy = get;
  successfulCopy = successful;
  lStringCopy = lString;
  rLStringCopy = rLString;
  titleCopy = title;
  stringCopy = string;
  v24 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:stringCopy visitTime:time];

  v25 = [[WBSHistoryServicePendingVisit alloc] initWithWithVisitIdentifier:v24];
  [(WBSHistoryServicePendingVisit *)v25 setOperation:1];
  [(WBSHistoryServicePendingVisit *)v25 setTitle:titleCopy];

  [(WBSHistoryServicePendingVisit *)v25 setLoadSuccessful:successfulCopy];
  [(WBSHistoryServicePendingVisit *)v25 setWasHTTPNonGet:!getCopy];
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  [(WBSHistoryServicePendingVisit *)v25 setVisitCount:countCopy];
  if (lStringCopy)
  {
    v27 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:lStringCopy visitTime:visitTime];
    [(WBSHistoryServicePendingVisit *)v25 setSourceVisitIdentifier:v27];
  }

  if (rLStringCopy)
  {
    v28 = [[WBSHistoryVisitIdentifier alloc] initWithURLString:rLStringCopy visitTime:destinationVisitTime];
    [(WBSHistoryServicePendingVisit *)v25 setDestinationVisitIdentifier:v28];
  }

  [(NSMutableArray *)self->_visits addObject:v25];
  if ([(NSMutableArray *)self->_visits count]>= 0x400)
  {
    [(WBSHistoryServiceImporter *)self _submitVisitsWithCompletionHandler:0];
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  visits = self->_visits;
  handlerCopy = handler;
  if ([(NSMutableArray *)visits count])
  {
    [(WBSHistoryServiceImporter *)self _submitVisitsWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_submitVisitsWithCompletionHandler:(id)handler
{
  [(WBSHistoryServiceDatabase *)self->_database importVisits:self->_visits desiredVisitTimePrecision:self->_visitTimePrecision completionHandler:handler];
  visits = self->_visits;

  [(NSMutableArray *)visits removeAllObjects];
}

@end