@interface UIView(PXViewSpec)
- (void)px_setSpec:()PXViewSpec;
@end

@implementation UIView(PXViewSpec)

- (void)px_setSpec:()PXViewSpec
{
  v4 = PXViewSpecAssociationKey;
  v5 = a3;
  objc_setAssociatedObject(a1, v4, v5, 1);
  v9 = [v5 backgroundColor];
  [a1 setBackgroundColor:v9];
  [v5 cornerRadius];
  v7 = v6;

  v8 = [a1 layer];
  [v8 setCornerRadius:v7];
}

@end