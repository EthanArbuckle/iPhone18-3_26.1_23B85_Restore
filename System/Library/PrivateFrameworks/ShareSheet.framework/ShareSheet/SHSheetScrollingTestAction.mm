@interface SHSheetScrollingTestAction
- (SHSheetScrollingTest)test;
- (SHSheetScrollingTestAction)initWithTest:(id)a3;
@end

@implementation SHSheetScrollingTestAction

- (SHSheetScrollingTestAction)initWithTest:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:4];

  v7 = [(SHSheetScrollingTestAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SHSheetScrollingTest)test
{
  v2 = [(SHSheetScrollingTestAction *)self info];
  v3 = [v2 objectForSetting:4];

  return v3;
}

@end