@interface SUUIMobileUpdateOperationScheduleContext
- (SUUIMobileUpdateOperationScheduleContext)initWithUnattendedPurge:(BOOL)purge andAgreementStatusRegistry:(id)registry;
@end

@implementation SUUIMobileUpdateOperationScheduleContext

- (SUUIMobileUpdateOperationScheduleContext)initWithUnattendedPurge:(BOOL)purge andAgreementStatusRegistry:(id)registry
{
  selfCopy = self;
  v11 = a2;
  purgeCopy = purge;
  location = 0;
  objc_storeStrong(&location, registry);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = SUUIMobileUpdateOperationScheduleContext;
  v7 = [(SUUIUpdateOperationScheduleContext *)&v8 initWithUnattendedPurge:purgeCopy];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_agreementStatusRegistry, location);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end