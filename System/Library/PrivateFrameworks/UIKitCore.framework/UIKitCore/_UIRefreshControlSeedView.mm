@interface _UIRefreshControlSeedView
- (_UIRefreshControlSeedView)init;
@end

@implementation _UIRefreshControlSeedView

- (_UIRefreshControlSeedView)init
{
  v5.receiver = self;
  v5.super_class = _UIRefreshControlSeedView;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 _setShouldAdaptToMaterials:0];
  }

  return v3;
}

@end