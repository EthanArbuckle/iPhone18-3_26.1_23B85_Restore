@interface STStatusBarDataBoolEntry(Converter)
- (uint64_t)initFromData:()Converter type:BOOLValue:;
@end

@implementation STStatusBarDataBoolEntry(Converter)

- (uint64_t)initFromData:()Converter type:BOOLValue:
{
  v7 = *(a3 + a4);
  v8 = objc_opt_class();
  if (v7 == 1)
  {
    [v8 entryWithBoolValue:a5];
  }

  else
  {
    [v8 disabledEntry];
  }
  v9 = ;

  return v9;
}

@end