@interface WLCalendarMigrator
- (WLCalendarMigrator)init;
- (WLFeaturePayload)featurePayload;
- (id)importWillBegin;
- (void)_importDataRecord:(id)a3 summary:(id)a4;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
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

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:256];
  }
}

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  return 0;
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v14 = a6;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

  v12 = objc_loadWeakRetained(&self->_featurePayload);
  [v12 setSize:{objc_msgSend(v12, "size") + objc_msgSend(v10, "length")}];

  [(WLCalendarMigrator *)self _importDataRecord:v10 summary:v9];
  v13 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 1, 0);
    v13 = v14;
  }
}

- (void)_importDataRecord:(id)a3 summary:(id)a4
{
  eventStore = self->_eventStore;
  v7 = a4;
  v8 = a3;
  v10 = [(EKEventStore *)eventStore defaultCalendarForNewEvents];
  v9 = [(EKEventStore *)self->_eventStore importICSData:v8 intoCalendar:v10 options:0];

  [(EKEventStore *)self->_eventStore reset];
  _WLLog();
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end