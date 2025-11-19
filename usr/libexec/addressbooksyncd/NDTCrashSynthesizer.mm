@interface NDTCrashSynthesizer
+ (void)writeCrashReport:(id)a3;
+ (void)writeStackshot:(id)a3;
@end

@implementation NDTCrashSynthesizer

+ (void)writeStackshot:(id)a3
{
  v3 = qword_100071C00;
  v4 = a3;
  if (v3 != -1)
  {
    sub_10003A1C0();
  }

  off_100071BE8();
}

+ (void)writeCrashReport:(id)a3
{
  v3 = qword_100071C00;
  v6 = a3;
  if (v3 != -1)
  {
    sub_10003A1C0();
  }

  v4 = off_100071BF0;
  v5 = getpid();
  v4(v5, 2917850285, v6);
}

@end