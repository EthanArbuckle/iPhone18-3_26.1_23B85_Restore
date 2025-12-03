@interface _SBHLibraryCategoryStackViewBackgroundView
- (_SBHLibraryCategoryStackViewBackgroundView)initWithFrame:(CGRect)frame;
- (void)setBackdropGroupName:(id)name;
@end

@implementation _SBHLibraryCategoryStackViewBackgroundView

- (_SBHLibraryCategoryStackViewBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SBHLibraryCategoryStackViewBackgroundView;
  v3 = [(_SBHLibraryCategoryStackViewBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 sbh_applyAppLibraryPodGlassWithGrouping:0];
  }

  return v4;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if ([(UIView *)self sbh_hasGlass])
  {
    _background = [(_SBHLibraryCategoryStackViewBackgroundView *)self _background];
    [_background setBackdropGroupName:nameCopy];
  }
}

@end