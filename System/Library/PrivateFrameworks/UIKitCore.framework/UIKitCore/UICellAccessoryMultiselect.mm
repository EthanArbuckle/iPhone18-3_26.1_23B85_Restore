@interface UICellAccessoryMultiselect
- (UICellAccessoryMultiselect)init;
@end

@implementation UICellAccessoryMultiselect

- (UICellAccessoryMultiselect)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryMultiselect;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setDisplayedState:1];
  }

  return v3;
}

@end