@interface SBHMultiplexingWrapperGlassBackgroundView
- (BOOL)_shouldBoostWhitePoint;
- (SBHMultiplexingWrapperGlassBackgroundView)init;
- (void)_updateGlassAppearance;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setBackdropGroupName:(id)name;
- (void)updateGlassVisibility:(BOOL)visibility;
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

- (void)updateGlassVisibility:(BOOL)visibility
{
  if (self->_hasVisibleGlass != visibility)
  {
    self->_hasVisibleGlass = visibility;
    [(SBHMultiplexingWrapperGlassBackgroundView *)self _updateGlassAppearance];
  }
}

- (void)_updateGlassAppearance
{
  if (self->_hasVisibleGlass)
  {
    traitCollection = [(SBHMultiplexingWrapperGlassBackgroundView *)self traitCollection];
    v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
    iconGlassUserInterfaceStyle = [v3 iconGlassUserInterfaceStyle];
    tintColor = [v3 tintColor];
    [(UIView *)self sbh_applyWidgetGlassWithTintColor:tintColor userInterfaceStyle:iconGlassUserInterfaceStyle allowingGrouping:self->_allowsGlassGrouping boostsWhitePoint:[(SBHMultiplexingWrapperGlassBackgroundView *)self _shouldBoostWhitePoint]];
    backdropGroupName = [(SBHMultiplexingWrapperGlassBackgroundView *)self backdropGroupName];
    [(UIView *)self sbh_backdropGroupName:backdropGroupName];
  }

  else
  {

    [(UIView *)self sbh_removeGlass];
  }
}

- (BOOL)_shouldBoostWhitePoint
{
  traitCollection = [(SBHMultiplexingWrapperGlassBackgroundView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection valueForNSIntegerTrait:v3];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
    v6 = [v5 isDark] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_backdropGroupName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    if (self->_hasVisibleGlass)
    {
      [(UIView *)self sbh_backdropGroupName:nameCopy];
    }
  }
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    self->_allowsGlassGrouping = grouping;
    [(SBHMultiplexingWrapperGlassBackgroundView *)self _updateGlassAppearance];
  }
}

@end