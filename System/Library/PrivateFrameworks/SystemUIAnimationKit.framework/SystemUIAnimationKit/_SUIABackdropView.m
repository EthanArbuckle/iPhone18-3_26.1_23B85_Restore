@interface _SUIABackdropView
- (id)backdropLayer;
@end

@implementation _SUIABackdropView

- (id)backdropLayer
{
  v2 = [(_SUIABackdropView *)self layer];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end