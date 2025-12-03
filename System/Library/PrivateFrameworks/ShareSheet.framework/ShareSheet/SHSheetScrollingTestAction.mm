@interface SHSheetScrollingTestAction
- (SHSheetScrollingTest)test;
- (SHSheetScrollingTestAction)initWithTest:(id)test;
@end

@implementation SHSheetScrollingTestAction

- (SHSheetScrollingTestAction)initWithTest:(id)test
{
  v4 = MEMORY[0x1E698E700];
  testCopy = test;
  v6 = objc_alloc_init(v4);
  [v6 setObject:testCopy forSetting:4];

  v7 = [(SHSheetScrollingTestAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetScrollingTest)test
{
  info = [(SHSheetScrollingTestAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

@end