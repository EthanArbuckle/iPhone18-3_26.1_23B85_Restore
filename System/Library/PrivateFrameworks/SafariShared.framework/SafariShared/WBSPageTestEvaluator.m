@interface WBSPageTestEvaluator
- (BOOL)iPad;
- (BOOL)iPhone;
@end

@implementation WBSPageTestEvaluator

- (BOOL)iPhone
{
  v2 = [NSClassFromString(&cfstr_Uidevice.isa) currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)iPad
{
  v2 = [NSClassFromString(&cfstr_Uidevice.isa) currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

@end