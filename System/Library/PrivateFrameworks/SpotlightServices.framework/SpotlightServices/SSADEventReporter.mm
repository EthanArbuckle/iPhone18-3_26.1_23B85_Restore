@interface SSADEventReporter
+ (void)reportBadDirectivesForModelType:(unint64_t)type;
+ (void)reportModelDeletionForType:(unint64_t)type;
+ (void)reportModelUnpackageEventWithType:(unint64_t)type;
@end

@implementation SSADEventReporter

+ (void)reportModelUnpackageEventWithType:(unint64_t)type
{
  v3 = @"com.apple.searchd.models.unpackage.experimental";
  if (type != 2)
  {
    v3 = 0;
  }

  if (type == 1)
  {
    v4 = @"com.apple.searchd.models.unpackage.default";
  }

  else
  {
    v4 = v3;
  }

  if ([(__CFString *)v4 length])
  {

    [SSADEventReporter reportKey:v4];
  }
}

+ (void)reportModelDeletionForType:(unint64_t)type
{
  v3 = @"com.apple.searchd.models.deletion.experimental";
  if (type != 2)
  {
    v3 = 0;
  }

  if (type == 1)
  {
    v4 = @"com.apple.searchd.models.deletion.default";
  }

  else
  {
    v4 = v3;
  }

  if ([(__CFString *)v4 length])
  {

    [SSADEventReporter reportKey:v4];
  }
}

+ (void)reportBadDirectivesForModelType:(unint64_t)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    v3 = @"com.apple.searchd.models.badL2Directives";
  }

  if ([(__CFString *)v3 length])
  {

    [SSADEventReporter reportKey:v3];
  }
}

@end