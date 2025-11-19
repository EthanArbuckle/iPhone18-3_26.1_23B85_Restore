@interface PPNamedEntityRecordLoadingDelegate
- (PPNamedEntityRecordLoadingDelegate)initWithName:(id)a3;
- (id)description;
- (unsigned)recentRecordLoadingHandler:(id)a3;
- (unsigned)recentRecordLoadingSetup;
- (unsigned)recordLoadingHandler:(id)a3;
- (unsigned)recordLoadingSetup;
- (void)recentRecordLoadingCompletion;
- (void)recordLoadingCompletion;
- (void)resetRecordData;
@end

@implementation PPNamedEntityRecordLoadingDelegate

- (void)resetRecordData
{
  resetNamedEntityRecordData = self->_resetNamedEntityRecordData;
  if (resetNamedEntityRecordData)
  {
    resetNamedEntityRecordData[2]();
  }
}

- (void)recentRecordLoadingCompletion
{
  recentNamedEntityRecordsCompletion = self->_recentNamedEntityRecordsCompletion;
  if (recentNamedEntityRecordsCompletion)
  {
    recentNamedEntityRecordsCompletion[2]();
  }
}

- (unsigned)recentRecordLoadingHandler:(id)a3
{
  recentNamedEntityRecordsHandler = self->_recentNamedEntityRecordsHandler;
  if (recentNamedEntityRecordsHandler)
  {
    LOBYTE(recentNamedEntityRecordsHandler) = recentNamedEntityRecordsHandler[2](recentNamedEntityRecordsHandler, a3);
  }

  return recentNamedEntityRecordsHandler;
}

- (unsigned)recentRecordLoadingSetup
{
  recentNamedEntityRecordsSetup = self->_recentNamedEntityRecordsSetup;
  if (recentNamedEntityRecordsSetup)
  {
    LOBYTE(recentNamedEntityRecordsSetup) = recentNamedEntityRecordsSetup[2]();
  }

  return recentNamedEntityRecordsSetup;
}

- (void)recordLoadingCompletion
{
  namedEntityRecordsCompletion = self->_namedEntityRecordsCompletion;
  if (namedEntityRecordsCompletion)
  {
    namedEntityRecordsCompletion[2]();
  }
}

- (unsigned)recordLoadingHandler:(id)a3
{
  namedEntityRecordsHandler = self->_namedEntityRecordsHandler;
  if (namedEntityRecordsHandler)
  {
    LOBYTE(namedEntityRecordsHandler) = namedEntityRecordsHandler[2](namedEntityRecordsHandler, a3);
  }

  return namedEntityRecordsHandler;
}

- (unsigned)recordLoadingSetup
{
  namedEntityRecordsSetup = self->_namedEntityRecordsSetup;
  if (namedEntityRecordsSetup)
  {
    LOBYTE(namedEntityRecordsSetup) = namedEntityRecordsSetup[2]();
  }

  return namedEntityRecordsSetup;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PPNamedEntityRecordLoadingDelegate;
  v2 = [(PPRecordLoadingDelegate *)&v4 description];

  return v2;
}

- (PPNamedEntityRecordLoadingDelegate)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = PPNamedEntityRecordLoadingDelegate;
  return [(PPRecordLoadingDelegate *)&v4 initWithName:a3];
}

@end