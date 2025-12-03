@interface UIView(PXViewSpec)
- (void)px_setSpec:()PXViewSpec;
@end

@implementation UIView(PXViewSpec)

- (void)px_setSpec:()PXViewSpec
{
  v4 = PXViewSpecAssociationKey;
  v5 = a3;
  objc_setAssociatedObject(self, v4, v5, 1);
  backgroundColor = [v5 backgroundColor];
  [self setBackgroundColor:backgroundColor];
  [v5 cornerRadius];
  v7 = v6;

  layer = [self layer];
  [layer setCornerRadius:v7];
}

@end