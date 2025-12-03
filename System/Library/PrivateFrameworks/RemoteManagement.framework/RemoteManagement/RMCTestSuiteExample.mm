@interface RMCTestSuiteExample
- (id)run;
@end

@implementation RMCTestSuiteExample

- (id)run
{
  v5[0] = @"Name";
  name = [objc_opt_class() name];
  v5[1] = @"Result";
  v6[0] = name;
  v6[1] = @"Pass";
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

@end