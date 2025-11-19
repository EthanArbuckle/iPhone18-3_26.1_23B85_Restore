@interface UICellAccessoryDisclosureIndicator
- (UICellAccessoryDisclosureIndicator)init;
@end

@implementation UICellAccessoryDisclosureIndicator

- (UICellAccessoryDisclosureIndicator)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryDisclosureIndicator;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setReservedLayoutWidth:0.0];
  }

  return v3;
}

@end