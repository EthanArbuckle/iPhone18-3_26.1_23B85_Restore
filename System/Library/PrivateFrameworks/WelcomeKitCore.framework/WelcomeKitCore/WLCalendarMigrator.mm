@interface WLCalendarMigrator
- (WLCalendarMigrator)init;
- (WLFeaturePayload)featurePayload;
- (id)importWillBegin;
- (void)_importDataRecord:(id)record summary:(id)summary;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)summary account:(id)account;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLCalendarMigrator

- (WLCalendarMigrator)init
{
  v6.receiver = self;
  v6.super_class = WLCalendarMigrator;
  v2 = [(WLCalendarMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC5A40]);
    eventStore = v2->_eventStore;
    v2->_eventStore = v3;
  }

  return v2;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (void)estimateItemSizeForSummary:(id)summary account:(id)account
{
  summaryCopy = summary;
  if (![summaryCopy itemSize])
  {
    [summaryCopy setItemSize:256];
  }
}

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  return 0;
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  completionCopy = completion;
  summaryCopy = summary;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v12 = objc_loadWeakRetained(&self->_featurePayload);
  [v12 setSize:{objc_msgSend(v12, "size") + objc_msgSend(dataCopy, "length")}];

  [(WLCalendarMigrator *)self _importDataRecord:dataCopy summary:summaryCopy];
  v13 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
    v13 = completionCopy;
  }
}

- (void)_importDataRecord:(id)record summary:(id)summary
{
  eventStore = self->_eventStore;
  summaryCopy = summary;
  recordCopy = record;
  defaultCalendarForNewEvents = [(EKEventStore *)eventStore defaultCalendarForNewEvents];
  v9 = [(EKEventStore *)self->_eventStore importICSData:recordCopy intoCalendar:defaultCalendarForNewEvents options:0];

  [(EKEventStore *)self->_eventStore reset];
  _WLLog();
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end