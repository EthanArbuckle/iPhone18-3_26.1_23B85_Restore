@interface WBSPageTestEvaluator
- (BOOL)iPad;
- (BOOL)iPhone;
@end

@implementation WBSPageTestEvaluator

- (BOOL)iPhone
{
  currentDevice = [NSClassFromString(&cfstr_Uidevice.isa) currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)iPad
{
  currentDevice = [NSClassFromString(&cfstr_Uidevice.isa) currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

@end