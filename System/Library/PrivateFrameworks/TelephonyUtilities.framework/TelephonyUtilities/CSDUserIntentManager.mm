@interface CSDUserIntentManager
- (BOOL)validateBackgroundCallIntentForCallSource:(id)source;
- (BOOL)validateUserIntentForCallSource:(id)source;
@end

@implementation CSDUserIntentManager

- (BOOL)validateUserIntentForCallSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_1002A0DE4(sourceCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)validateBackgroundCallIntentForCallSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_1002A1384(sourceCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

@end