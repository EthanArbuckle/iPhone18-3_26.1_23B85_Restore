@interface SBFolderBackgroundView
- (SBFolderBackgroundView)initWithFrame:(CGRect)frame;
- (SBFolderBackgroundViewDelegate)delegate;
- (void)setUsesGlass:(BOOL)glass;
- (void)updateGlass;
@end

@implementation SBFolderBackgroundView

- (SBFolderBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBFolderBackgroundView;
  v3 = [(SBFolderBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_usesGlass = 1;
    [(SBFolderBackgroundView *)v3 updateGlass];
  }

  return v4;
}

- (void)setUsesGlass:(BOOL)glass
{
  if (self->_usesGlass != glass)
  {
    self->_usesGlass = glass;
    [(SBFolderBackgroundView *)self updateGlass];
  }
}

- (void)updateGlass
{
  if ([(SBFolderBackgroundView *)self usesGlass])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
    [v3 setIdentifier:5];
  }

  else
  {
    v3 = 0;
  }

  [(SBFolderBackgroundView *)self _setBackground:v3];
}

- (SBFolderBackgroundViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end