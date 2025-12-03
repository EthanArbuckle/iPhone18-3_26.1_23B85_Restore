@interface NDTCrashSynthesizer
+ (void)writeCrashReport:(id)report;
+ (void)writeStackshot:(id)stackshot;
@end

@implementation NDTCrashSynthesizer

+ (void)writeStackshot:(id)stackshot
{
  v3 = qword_100071C00;
  stackshotCopy = stackshot;
  if (v3 != -1)
  {
    sub_10003A1C0();
  }

  off_100071BE8();
}

+ (void)writeCrashReport:(id)report
{
  v3 = qword_100071C00;
  reportCopy = report;
  if (v3 != -1)
  {
    sub_10003A1C0();
  }

  v4 = off_100071BF0;
  v5 = getpid();
  v4(v5, 2917850285, reportCopy);
}

@end