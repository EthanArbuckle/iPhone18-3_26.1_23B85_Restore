@interface NSUserDefaults
- (BOOL)allowContactsOnly;
- (BOOL)silenceUnknownCallersEnabled;
- (BOOL)silenceUnknownFaceTimeCallersEnabled;
- (int64_t)maxJunkLevel;
@end

@implementation NSUserDefaults

- (BOOL)silenceUnknownCallersEnabled
{
  v2 = self;
  v3 = sub_100053590();

  return v3 & 1;
}

- (BOOL)silenceUnknownFaceTimeCallersEnabled
{
  v2 = self;
  v3 = sub_1002C8B34();

  return v3 & 1;
}

- (int64_t)maxJunkLevel
{
  v2 = self;
  v3 = sub_1002C8BC8();

  return v3;
}

- (BOOL)allowContactsOnly
{
  v2 = self;
  v3 = sub_100053590();

  return v3 & 1;
}

@end