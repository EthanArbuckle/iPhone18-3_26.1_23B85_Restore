@interface STStatusBarDataEntry(Converter)
- (uint64_t)initFromData:()Converter type:;
@end

@implementation STStatusBarDataEntry(Converter)

- (uint64_t)initFromData:()Converter type:
{
  v5 = *(a3 + a4);
  v6 = objc_opt_class();
  if (v5 == 1)
  {
    [v6 entry];
  }

  else
  {
    [v6 disabledEntry];
  }
  v7 = ;

  return v7;
}

@end