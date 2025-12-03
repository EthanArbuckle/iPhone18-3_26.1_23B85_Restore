@interface _UINavigationControllerManagedSearchPalette
- (UISearchBar)_searchBar;
- (UIView)viewForAsymmetricFade;
- (double)_shadowAlpha;
- (id)_initWithNavigationController:(id)controller forEdge:(unint64_t)edge;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_popDisableLayoutFlushingForTransition;
- (void)_propagateBackgroundToContents;
- (void)_pushDisableLayoutFlushingForTransition;
- (void)_setShadowAlpha:(double)alpha;
- (void)_updateLayoutForCurrentConfiguration;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UINavigationControllerManagedSearchPalette

- (id)_initWithNavigationController:(id)controller forEdge:(unint64_t)edge
{
  v7.receiver = self;
  v7.super_class = _UINavigationControllerManagedSearchPalette;
  v4 = [(_UINavigationControllerPalette *)&v7 _initWithNavigationController:controller forEdge:edge];
  v5 = v4;
  if (v4)
  {
    [v4 setPreservesSuperviewLayoutMargins:1];
  }

  return v5;
}

- (UIView)viewForAsymmetricFade
{
  _searchBar = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  _searchController = [_searchBar _searchController];
  if (_searchController)
  {
    _searchController2 = [_searchBar _searchController];
    isActive = [_searchController2 isActive];

    if (isActive)
    {
      _searchController = 0;
    }

    else
    {
      _searchController = [_searchBar searchField];
      layer = [_searchController layer];
      [layer setAllowsGroupOpacity:0];
    }
  }

  return _searchController;
}

- (void)_updateLayoutForCurrentConfiguration
{
  v4.receiver = self;
  v4.super_class = _UINavigationControllerManagedSearchPalette;
  [(_UINavigationControllerPalette *)&v4 _updateLayoutForCurrentConfiguration];
  _searchBar = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  [_searchBar _updateInsetsForCurrentContainerViewAndBarPosition];
}

- (void)_pushDisableLayoutFlushingForTransition
{
  if (self)
  {
    _disableLayoutFlushingCount = [(UIView *)self _disableLayoutFlushingCount];
    if (_disableLayoutFlushingCount >= 1)
    {
      v4 = _disableLayoutFlushingCount + 1;
    }

    else
    {
      v4 = 1;
    }

    [(UIView *)self _setDisableLayoutFlushingCount:v4];
    [(UIView *)self _disableLayoutFlushing];
  }

  _searchBar = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  if (_searchBar)
  {
    v8 = _searchBar;
    _disableLayoutFlushingCount2 = [_searchBar _disableLayoutFlushingCount];
    if (_disableLayoutFlushingCount2 >= 1)
    {
      v7 = _disableLayoutFlushingCount2 + 1;
    }

    else
    {
      v7 = 1;
    }

    [v8 _setDisableLayoutFlushingCount:v7];
    [v8 _disableLayoutFlushing];
    _searchBar = v8;
  }
}

- (void)_popDisableLayoutFlushingForTransition
{
  _searchBar = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
  [(UIView *)_searchBar _popDisableLayoutFlushing];

  [(UIView *)self _popDisableLayoutFlushing];
}

- (void)setFrame:(CGRect)frame
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(_UINavigationControllerPalette *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(UIView *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }
}

- (void)setCenter:(CGPoint)center
{
  if (!self->_ignoreGeometryChanges)
  {
    v3.receiver = self;
    v3.super_class = _UINavigationControllerManagedSearchPalette;
    [(UIView *)&v3 setCenter:center.x, center.y];
  }
}

- (void)_setShadowAlpha:(double)alpha
{
  _backgroundViewLayout = [(_UINavigationControllerPalette *)self _backgroundViewLayout];
  [_backgroundViewLayout setShadowAlpha:alpha];
}

- (double)_shadowAlpha
{
  _backgroundViewLayout = [(_UINavigationControllerPalette *)self _backgroundViewLayout];
  [_backgroundViewLayout shadowAlpha];
  v4 = v3;

  return v4;
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v8.receiver = self;
  v8.super_class = _UINavigationControllerManagedSearchPalette;
  [(UIView *)&v8 _didMoveFromWindow:window toWindow:?];
  if (!toWindow)
  {
    resetAfterSearchFieldFade = [(_UINavigationControllerManagedSearchPalette *)self resetAfterSearchFieldFade];

    if (resetAfterSearchFieldFade)
    {
      resetAfterSearchFieldFade2 = [(_UINavigationControllerManagedSearchPalette *)self resetAfterSearchFieldFade];
      resetAfterSearchFieldFade2[2]();

      [(_UINavigationControllerManagedSearchPalette *)self setResetAfterSearchFieldFade:0];
    }
  }
}

- (void)_propagateBackgroundToContents
{
  v5.receiver = self;
  v5.super_class = _UINavigationControllerManagedSearchPalette;
  [(_UINavigationControllerPalette *)&v5 _propagateBackgroundToContents];
  navController = [(_UINavigationControllerPalette *)self navController];
  if (navController)
  {
    _searchBar = [(_UINavigationControllerManagedSearchPalette *)self _searchBar];
    [_searchBar _setBackdropStyle:2005];
  }
}

- (UISearchBar)_searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->__searchBar);

  return WeakRetained;
}

@end