@interface APOdmlDatabaseConfiguration
+ (id)sharedInstance;
- (APOdmlDatabaseConfiguration)init;
- (void)setProcessToDaemon;
@end

@implementation APOdmlDatabaseConfiguration

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EE85C8;
  block[3] = &unk_279AC5E98;
  block[4] = a1;
  if (qword_280CCF558 != -1)
  {
    dispatch_once(&qword_280CCF558, block);
  }

  v2 = qword_280CCF570;

  return v2;
}

- (APOdmlDatabaseConfiguration)init
{
  v3.receiver = self;
  v3.super_class = APOdmlDatabaseConfiguration;
  result = [(APOdmlDatabaseConfiguration *)&v3 init];
  if (result)
  {
    result->_isDaemonProcess = 0;
  }

  return result;
}

- (void)setProcessToDaemon
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EE86D4;
  block[3] = &unk_279AC6188;
  block[4] = self;
  if (qword_280CCF518 != -1)
  {
    dispatch_once(&qword_280CCF518, block);
  }
}

@end