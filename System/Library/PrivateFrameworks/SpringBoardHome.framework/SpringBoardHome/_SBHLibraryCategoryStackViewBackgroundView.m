@interface _SBHLibraryCategoryStackViewBackgroundView
- (_SBHLibraryCategoryStackViewBackgroundView)initWithFrame:(CGRect)a3;
- (void)setBackdropGroupName:(id)a3;
@end

@implementation _SBHLibraryCategoryStackViewBackgroundView

- (_SBHLibraryCategoryStackViewBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SBHLibraryCategoryStackViewBackgroundView;
  v3 = [(_SBHLibraryCategoryStackViewBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 sbh_applyAppLibraryPodGlassWithGrouping:0];
  }

  return v4;
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = a3;
  if ([(UIView *)self sbh_hasGlass])
  {
    v4 = [(_SBHLibraryCategoryStackViewBackgroundView *)self _background];
    [v4 setBackdropGroupName:v5];
  }
}

@end