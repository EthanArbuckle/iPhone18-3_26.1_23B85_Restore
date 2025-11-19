@interface CSDUserIntentManager
- (BOOL)validateBackgroundCallIntentForCallSource:(id)a3;
- (BOOL)validateUserIntentForCallSource:(id)a3;
@end

@implementation CSDUserIntentManager

- (BOOL)validateUserIntentForCallSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002A0DE4(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)validateBackgroundCallIntentForCallSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002A1384(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

@end