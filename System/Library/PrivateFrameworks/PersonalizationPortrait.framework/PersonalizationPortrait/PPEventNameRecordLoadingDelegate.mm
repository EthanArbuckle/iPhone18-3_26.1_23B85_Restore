@interface PPEventNameRecordLoadingDelegate
- (PPEventNameRecordLoadingDelegate)initWithName:(id)a3;
- (id)description;
- (unsigned)recentRecordLoadingHandler:(id)a3;
- (unsigned)recentRecordLoadingSetup;
- (unsigned)recordLoadingHandler:(id)a3;
- (unsigned)recordLoadingSetup;
- (void)recentRecordLoadingCompletion;
- (void)recordLoadingCompletion;
- (void)resetRecordData;
@end

@implementation PPEventNameRecordLoadingDelegate

- (void)resetRecordData
{
  resetEventNameRecordData = self->_resetEventNameRecordData;
  if (resetEventNameRecordData)
  {
    resetEventNameRecordData[2]();
  }
}

- (void)recentRecordLoadingCompletion
{
  recentEventNameRecordsCompletion = self->_recentEventNameRecordsCompletion;
  if (recentEventNameRecordsCompletion)
  {
    recentEventNameRecordsCompletion[2]();
  }
}

- (unsigned)recentRecordLoadingHandler:(id)a3
{
  recentEventNameRecordsHandler = self->_recentEventNameRecordsHandler;
  if (recentEventNameRecordsHandler)
  {
    LOBYTE(recentEventNameRecordsHandler) = recentEventNameRecordsHandler[2](recentEventNameRecordsHandler, a3);
  }

  return recentEventNameRecordsHandler;
}

- (unsigned)recentRecordLoadingSetup
{
  recentEventNameRecordsSetup = self->_recentEventNameRecordsSetup;
  if (recentEventNameRecordsSetup)
  {
    LOBYTE(recentEventNameRecordsSetup) = recentEventNameRecordsSetup[2]();
  }

  return recentEventNameRecordsSetup;
}

- (void)recordLoadingCompletion
{
  eventNameRecordsCompletion = self->_eventNameRecordsCompletion;
  if (eventNameRecordsCompletion)
  {
    eventNameRecordsCompletion[2]();
  }
}

- (unsigned)recordLoadingHandler:(id)a3
{
  eventNameRecordsHandler = self->_eventNameRecordsHandler;
  if (eventNameRecordsHandler)
  {
    LOBYTE(eventNameRecordsHandler) = eventNameRecordsHandler[2](eventNameRecordsHandler, a3);
  }

  return eventNameRecordsHandler;
}

- (unsigned)recordLoadingSetup
{
  eventNameRecordsSetup = self->_eventNameRecordsSetup;
  if (eventNameRecordsSetup)
  {
    LOBYTE(eventNameRecordsSetup) = eventNameRecordsSetup[2]();
  }

  return eventNameRecordsSetup;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PPEventNameRecordLoadingDelegate;
  v2 = [(PPRecordLoadingDelegate *)&v4 description];

  return v2;
}

- (PPEventNameRecordLoadingDelegate)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = PPEventNameRecordLoadingDelegate;
  return [(PPRecordLoadingDelegate *)&v4 initWithName:a3];
}

@end