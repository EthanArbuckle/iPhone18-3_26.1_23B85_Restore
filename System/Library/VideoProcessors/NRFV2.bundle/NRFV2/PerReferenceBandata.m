@interface PerReferenceBandata
- (PerReferenceBandata)init;
@end

@implementation PerReferenceBandata

- (PerReferenceBandata)init
{
  v8.receiver = self;
  v8.super_class = PerReferenceBandata;
  v2 = [(PerReferenceBandata *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    ev0 = v2->ev0;
    v2->ev0 = v3;

    v5 = objc_opt_new();
    evm = v2->evm;
    v2->evm = v5;
  }

  return v2;
}

@end