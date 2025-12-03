@interface SPRLogger
+ (OS_os_log)inspector;
+ (OS_os_log)pinCryptoObjC;
+ (OS_os_log)secureElementObjC;
+ (OS_os_log)xpcClient;
@end

@implementation SPRLogger

+ (OS_os_log)pinCryptoObjC
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_264489694;
  block[3] = &unk_279B5F028;
  block[4] = self;
  if (qword_27FF6E760 != -1)
  {
    dispatch_once(&qword_27FF6E760, block);
  }

  v2 = qword_27FF6E768;

  return v2;
}

+ (OS_os_log)secureElementObjC
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26448979C;
  block[3] = &unk_279B5F028;
  block[4] = self;
  if (qword_27FF6E770 != -1)
  {
    dispatch_once(&qword_27FF6E770, block);
  }

  v2 = qword_27FF6E778;

  return v2;
}

+ (OS_os_log)xpcClient
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2644898A4;
  block[3] = &unk_279B5F028;
  block[4] = self;
  if (qword_27FF6E780 != -1)
  {
    dispatch_once(&qword_27FF6E780, block);
  }

  v2 = qword_27FF6E788;

  return v2;
}

+ (OS_os_log)inspector
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2644899AC;
  block[3] = &unk_279B5F028;
  block[4] = self;
  if (qword_27FF6E790 != -1)
  {
    dispatch_once(&qword_27FF6E790, block);
  }

  v2 = qword_27FF6E798;

  return v2;
}

@end