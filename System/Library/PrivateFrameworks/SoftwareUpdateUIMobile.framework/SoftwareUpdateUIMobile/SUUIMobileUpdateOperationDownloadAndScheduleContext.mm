@interface SUUIMobileUpdateOperationDownloadAndScheduleContext
- (SUUIMobileUpdateOperationDownloadAndScheduleContext)initWithUnattendedPurge:(BOOL)a3 andAgreementStatusRegistry:(id)a4;
@end

@implementation SUUIMobileUpdateOperationDownloadAndScheduleContext

- (SUUIMobileUpdateOperationDownloadAndScheduleContext)initWithUnattendedPurge:(BOOL)a3 andAgreementStatusRegistry:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = SUUIMobileUpdateOperationDownloadAndScheduleContext;
  v7 = [(SUUIUpdateOperationDownloadAndScheduleContext *)&v8 initWithUnattendedPurge:v10];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    objc_storeStrong(&v12->_agreementStatusRegistry, location);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

@end