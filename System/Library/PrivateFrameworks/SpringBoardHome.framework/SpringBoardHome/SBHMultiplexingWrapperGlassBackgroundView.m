@interface SBHMultiplexingWrapperGlassBackgroundView
- (BOOL)_shouldBoostWhitePoint;
- (SBHMultiplexingWrapperGlassBackgroundView)init;
- (void)_updateGlassAppearance;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)updateGlassVisibility:(BOOL)a3;
@end

@implementation SBHMultiplexingWrapperGlassBackgroundView

- (SBHMultiplexingWrapperGlassBackgroundView)init
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SBHMultiplexingWrapperGlassBackgroundView;
  v2 = [(SBHMultiplexingWrapperGlassBackgroundView *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasVisibleGlass = 0;
    v2->_allowsGlassGrouping = 1;
    v4 = objc_opt_self();
    v10[0] = v4;
    v5 = objc_opt_self();
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [(SBHMultiplexingWrapperGlassBackgroundView *)v3 registerForTraitChanges:v6 withAction:sel__updateGlassAppearance];
  }

  return v3;
}

- (void)updateGlassVisibility:(BOOL)a3
{
  if (self->_hasVisibleGlass != a3)
  {
    self->_hasVisibleGlass = a3;
    [(SBHMultiplexingWrapperGlassBackgroundView *)self _updateGlassAppearance];
  }
}

- (void)_updateGlassAppearance
{
  if (self->_hasVisibleGlass)
  {
    v7 = [(SBHMultiplexingWrapperGlassBackgroundView *)self traitCollection];
    v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v7];
    v4 = [v3 iconGlassUserInterfaceStyle];
    v5 = [v3 tintColor];
    [(UIView *)self sbh_applyWidgetGlassWithTintColor:v5 userInterfaceStyle:v4 allowingGrouping:self->_allowsGlassGrouping boostsWhitePoint:[(SBHMultiplexingWrapperGlassBackgroundView *)self _shouldBoostWhitePoint]];
    v6 = [(SBHMultiplexingWrapperGlassBackgroundView *)self backdropGroupName];
    [(UIView *)self sbh_backdropGroupName:v6];
  }

  else
  {

    [(UIView *)self sbh_removeGlass];
  }
}

- (BOOL)_shouldBoostWhitePoint
{
  v2 = [(SBHMultiplexingWrapperGlassBackgroundView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [v2 valueForNSIntegerTrait:v3];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];
    v6 = [v5 isDark] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setBackdropGroupName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_backdropGroupName isEqualToString:?])
  {
    v4 = [v6 copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    if (self->_hasVisibleGlass)
    {
      [(UIView *)self sbh_backdropGroupName:v6];
    }
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    self->_allowsGlassGrouping = a3;
    [(SBHMultiplexingWrapperGlassBackgroundView *)self _updateGlassAppearance];
  }
}

@end