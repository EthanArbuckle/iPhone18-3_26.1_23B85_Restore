@interface UICellAccessorySeparator
- (UICellAccessorySeparator)init;
@end

@implementation UICellAccessorySeparator

- (UICellAccessorySeparator)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessorySeparator;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setDisplayedState:1];
    [(UICellAccessory *)v3 setReservedLayoutWidth:0.0];
  }

  return v3;
}

@end