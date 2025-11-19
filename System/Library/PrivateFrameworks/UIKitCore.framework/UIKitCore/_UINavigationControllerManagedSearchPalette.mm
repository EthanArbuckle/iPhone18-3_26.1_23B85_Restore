@interface _UINavigationControllerManagedSearchPalette
- (UISearchBar)_searchBar;
- (UIView)viewForAsymmetricFade;
- (double)_shadowAlpha;
- (id)_initWithNavigationController:(id)a3 forEdge:(unint64_t)a4;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_popDisableLayoutFlushingForTransition;
- (void)_propagateBackgroundToContents;
- (void)_pushDisableLayoutFlushingForTransition;
- (void)_setShadowAlpha:(double)a3;
- (void)_updateLayoutForCurrentConfiguration;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UINavigationControllerManagedSearchPalette

- (id)_initWithNavigationController:(id)a3 forEdge:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _UINavigationControllerManagedSearchPalette;
  v4 = [(_UINavigationControllerPalette *)&v7 _initWithNavigationController:a3 forEdge:a4];
  v5 = v4;
  if (v4)
  {
    [v4 setPreservesSuperviewLayoutMargins:1];
  }

  return v5;
}

- (UIView)viewForAsymmetricFade
{
  v2 = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  v3 = [v2 _searchController];
  if (v3)
  {
    v4 = [v2 _searchController];
    v5 = [v4 isActive];

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = [v2 searchField];
      v6 = [v3 layer];
      [v6 setAllowsGroupOpacity:0];
    }
  }

  return v3;
}

- (void)_updateLayoutForCurrentConfiguration
{
  v4.receiver = self;
  v4.super_class = _UINavigationControllerManagedSearchPalette;
  [(_UINavigationControllerPalette *)&v4 _updateLayoutForCurrentConfiguration];
  v3 = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  [v3 _updateInsetsForCurrentContainerViewAndBarPosition];
}

- (void)_pushDisableLayoutFlushingForTransition
{
  if (self)
  {
    v3 = [(UIView *)self _disableLayoutFlushingCount];
    if (v3 >= 1)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 1;
    }

    [(UIView *)self _setDisableLayoutFlushingCount:v4];
    [(UIView *)self _disableLayoutFlushing];
  }

  v5 = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  if (v5)
  {
    v8 = v5;
    v6 = [v5 _disableLayoutFlushingCount];
    if (v6 >= 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    [v8 _setDisableLayoutFlushingCount:v7];
    [v8 _disableLayoutFlushing];
    v5 = v8;
  }
}

- (void)_popDisableLayoutFlushingForTransition
{
  v3 = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  [(UIView *)v3 _popDisableLayoutFlushing];

  [(UIView *)self _popDisableLayoutFlushing];
}

- (void)setFrame:(CGRect)a3
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(_UINavigationControllerPalette *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)setBounds:(CGRect)a3
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(UIView *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)setCenter:(CGPoint)a3
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(UIView *)&v3 setCenter:a3.x, a3.y];
  }
}

- (void)_setShadowAlpha:(double)a3
{
  v4 = [(_UINavigationControllerPalette *)self _backgroundViewLayout];
  [v4 setShadowAlpha:a3];
}

- (double)_shadowAlpha
{
  v2 = [(_UINavigationControllerPalette *)self _backgroundViewLayout];
  [v2 shadowAlpha];
  v4 = v3;

  return v4;
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UINavigationControllerManagedSearchPalette;
  [(UIView *)&v8 _didMoveFromWindow:a3 toWindow:?];
  if (!a4)
  {
    v6 = [(_UINavigationControllerManagedSearchPalette *)self resetAfterSearchFieldFade];

    if (v6)
    {
      v7 = [(_UINavigationControllerManagedSearchPalette *)self resetAfterSearchFieldFade];
      v7[2]();

      [(_UINavigationControllerManagedSearchPalette *)self setResetAfterSearchFieldFade:0];
    }
  }
}

- (void)_propagateBackgroundToContents
{
  v5.receiver = self;
  v5.super_class = _UINavigationControllerManagedSearchPalette;
  [(_UINavigationControllerPalette *)&v5 _propagateBackgroundToContents];
  v3 = [(_UINavigationControllerPalette *)self navController];
  if (v3)
  {
    v4 = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
    [v4 _setBackdropStyle:2005];
  }
}

- (UISearchBar)_searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->__searchBar);

  return WeakRetained;
}

@end