@interface NSUserDefaults
- (BOOL)allowContactsOnly;
- (BOOL)silenceUnknownCallersEnabled;
- (BOOL)silenceUnknownFaceTimeCallersEnabled;
- (int64_t)maxJunkLevel;
@end

@implementation NSUserDefaults

- (BOOL)silenceUnknownCallersEnabled
{
  selfCopy = self;
  v3 = sub_100053590();

  return v3 & 1;
}

- (BOOL)silenceUnknownFaceTimeCallersEnabled
{
  selfCopy = self;
  v3 = sub_1002C8B34();

  return v3 & 1;
}

- (int64_t)maxJunkLevel
{
  selfCopy = self;
  v3 = sub_1002C8BC8();

  return v3;
}

- (BOOL)allowContactsOnly
{
  selfCopy = self;
  v3 = sub_100053590();

  return v3 & 1;
}

@end