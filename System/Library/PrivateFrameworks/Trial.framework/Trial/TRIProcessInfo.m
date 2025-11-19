@interface TRIProcessInfo
+ (BOOL)hostingProcessIsCoreAnalytics;
+ (BOOL)hostingProcessIsTriald;
+ (BOOL)hostingProcessIsTrialdSystem;
+ (id)callerBundleId;
+ (id)hostingProcessName;
@end

@implementation TRIProcessInfo

void __40__TRIProcessInfo_hostingProcessIsTriald__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[TRIEntitlement applicationBundleIdentifierFromSelf];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:@"com.apple.triald"];
  }

  else
  {
    v3 = 0;
  }

  _MergedGlobals_11 = v3;

  objc_autoreleasePoolPop(v0);
}

void __46__TRIProcessInfo_hostingProcessIsTrialdSystem__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[TRIEntitlement applicationBundleIdentifierFromSelf];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:@"com.apple.triald.system"];
  }

  else
  {
    v3 = 0;
  }

  byte_280ACAE21 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)hostingProcessIsTrialdSystem
{
  if (qword_280ACAE30 != -1)
  {
    dispatch_once(&qword_280ACAE30, &__block_literal_global_24);
  }

  return byte_280ACAE21;
}

+ (BOOL)hostingProcessIsTriald
{
  if (qword_280ACAE28 != -1)
  {
    dispatch_once(&qword_280ACAE28, &__block_literal_global_12);
  }

  return _MergedGlobals_11;
}

+ (BOOL)hostingProcessIsCoreAnalytics
{
  if (qword_280ACAE38 != -1)
  {
    dispatch_once(&qword_280ACAE38, &__block_literal_global_26);
  }

  return byte_280ACAE22;
}

void __47__TRIProcessInfo_hostingProcessIsCoreAnalytics__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[TRIEntitlement applicationBundleIdentifierFromSelf];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:@"com.apple.analyticsd"];
  }

  else
  {
    v3 = 0;
  }

  byte_280ACAE22 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (id)hostingProcessName
{
  if (qword_280ACAE48 != -1)
  {
    dispatch_once(&qword_280ACAE48, &__block_literal_global_28);
  }

  v3 = qword_280ACAE40;

  return v3;
}

void __36__TRIProcessInfo_hostingProcessName__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v2 = [v1 processName];

  v3 = qword_280ACAE40;
  qword_280ACAE40 = v2;

  objc_autoreleasePoolPop(v0);
}

+ (id)callerBundleId
{
  if (qword_280ACAE58 != -1)
  {
    dispatch_once(&qword_280ACAE58, &__block_literal_global_31);
  }

  v3 = qword_280ACAE50;

  return v3;
}

void __32__TRIProcessInfo_callerBundleId__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = qword_280ACAE50;
  qword_280ACAE50 = @"com.apple.triald";

  objc_autoreleasePoolPop(v0);
}

@end