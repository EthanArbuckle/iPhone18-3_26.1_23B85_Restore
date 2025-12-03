@interface PPContactNameRecordLoadingDelegate
- (PPContactNameRecordLoadingDelegate)initWithName:(id)name;
- (id)description;
- (unsigned)recentRecordLoadingHandler:(id)handler;
- (unsigned)recentRecordLoadingSetup;
- (unsigned)recordLoadingHandler:(id)handler;
- (unsigned)recordLoadingSetup;
- (void)recentRecordLoadingCompletion;
- (void)recordLoadingCompletion;
- (void)resetRecordData;
@end

@implementation PPContactNameRecordLoadingDelegate

- (void)resetRecordData
{
  resetContactNameRecordData = self->_resetContactNameRecordData;
  if (resetContactNameRecordData)
  {
    resetContactNameRecordData[2]();
  }
}

- (void)recentRecordLoadingCompletion
{
  recentContactNameRecordsCompletion = self->_recentContactNameRecordsCompletion;
  if (recentContactNameRecordsCompletion)
  {
    recentContactNameRecordsCompletion[2]();
  }
}

- (unsigned)recentRecordLoadingHandler:(id)handler
{
  recentContactNameRecordsHandler = self->_recentContactNameRecordsHandler;
  if (recentContactNameRecordsHandler)
  {
    LOBYTE(recentContactNameRecordsHandler) = recentContactNameRecordsHandler[2](recentContactNameRecordsHandler, handler);
  }

  return recentContactNameRecordsHandler;
}

- (unsigned)recentRecordLoadingSetup
{
  recentContactNameRecordsSetup = self->_recentContactNameRecordsSetup;
  if (recentContactNameRecordsSetup)
  {
    LOBYTE(recentContactNameRecordsSetup) = recentContactNameRecordsSetup[2]();
  }

  return recentContactNameRecordsSetup;
}

- (void)recordLoadingCompletion
{
  contactNameRecordsCompletion = self->_contactNameRecordsCompletion;
  if (contactNameRecordsCompletion)
  {
    contactNameRecordsCompletion[2]();
  }
}

- (unsigned)recordLoadingHandler:(id)handler
{
  contactNameRecordsHandler = self->_contactNameRecordsHandler;
  if (contactNameRecordsHandler)
  {
    LOBYTE(contactNameRecordsHandler) = contactNameRecordsHandler[2](contactNameRecordsHandler, handler);
  }

  return contactNameRecordsHandler;
}

- (unsigned)recordLoadingSetup
{
  contactNameRecordsSetup = self->_contactNameRecordsSetup;
  if (contactNameRecordsSetup)
  {
    LOBYTE(contactNameRecordsSetup) = contactNameRecordsSetup[2]();
  }

  return contactNameRecordsSetup;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PPContactNameRecordLoadingDelegate;
  v2 = [(PPRecordLoadingDelegate *)&v4 description];

  return v2;
}

- (PPContactNameRecordLoadingDelegate)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = PPContactNameRecordLoadingDelegate;
  return [(PPRecordLoadingDelegate *)&v4 initWithName:name];
}

@end