@interface SBIconRotationContainer
- (SBIconCoordinate)coordinate;
- (SBIconListView)listView;
- (SBIconRotationContainer)initWithFrame:(CGRect)frame startIcon:(id)icon endIcon:(id)endIcon listView:(id)view coordinate:(SBIconCoordinate)coordinate location:(id)location transitionAnimation:(int64_t)animation offscreen:(BOOL)self0;
- (id)addIconViewForIcon:(id)icon configurationOptions:(unint64_t)options;
- (void)_configureViewIfNecessary:(id)necessary forShowingSnapshotWhenDeactivated:(BOOL)deactivated;
- (void)borrowExistingIconViewForIcon:(id)icon;
- (void)concludeTransition;
- (void)layoutSubviews;
- (void)performTransition;
- (void)prepareToTransition;
@end

@implementation SBIconRotationContainer

- (SBIconRotationContainer)initWithFrame:(CGRect)frame startIcon:(id)icon endIcon:(id)endIcon listView:(id)view coordinate:(SBIconCoordinate)coordinate location:(id)location transitionAnimation:(int64_t)animation offscreen:(BOOL)self0
{
  row = coordinate.row;
  column = coordinate.column;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  iconCopy = icon;
  endIconCopy = endIcon;
  viewCopy = view;
  locationCopy = location;
  v34.receiver = self;
  v34.super_class = SBIconRotationContainer;
  height = [(SBIconRotationContainer *)&v34 initWithFrame:x, y, width, height];
  v25 = height;
  if (height)
  {
    height->_coordinate.column = column;
    height->_coordinate.row = row;
    v26 = [locationCopy copy];
    location = v25->_location;
    v25->_location = v26;

    v25->_transitionAnimation = animation;
    v25->_offscreen = offscreen;
    objc_storeWeak(&v25->_listView, viewCopy);
    if (iconCopy)
    {
      [(SBIconRotationContainer *)v25 borrowExistingIconViewForIcon:iconCopy];
      v28 = [(SBIconRotationContainer *)v25 addIconViewForIcon:iconCopy configurationOptions:4];
      startView = v25->_startView;
      v25->_startView = v28;
    }

    if (iconCopy == endIconCopy && !v25->_transitionAnimation)
    {
      v32 = v25->_startView;
      endView = v25->_endView;
      v25->_endView = v32;
    }

    else
    {
      if (!endIconCopy)
      {
LABEL_10:
        [(SBIconRotationContainer *)v25 layoutIfNeeded];
        goto LABEL_11;
      }

      v30 = [(SBIconRotationContainer *)v25 addIconViewForIcon:endIconCopy configurationOptions:4];
      endView = v25->_endView;
      v25->_endView = v30;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v25;
}

- (void)borrowExistingIconViewForIcon:(id)icon
{
  iconCopy = icon;
  listView = [(SBIconRotationContainer *)self listView];
  v5 = [listView iconViewForIcon:iconCopy];

  if (v5)
  {
    [v5 setHidden:1];
    [(SBIconRotationContainer *)self addSubview:v5];
    [(SBIconRotationContainer *)self setBorrowedIconView:v5];
    v6 = [listView pauseLayoutForIconView:v5 forReason:@"rotation"];
    existingIconPauseLayoutAssertion = [(SBIconRotationContainer *)self existingIconPauseLayoutAssertion];
    [existingIconPauseLayoutAssertion invalidate];

    [(SBIconRotationContainer *)self setExistingIconPauseLayoutAssertion:v6];
  }
}

- (id)addIconViewForIcon:(id)icon configurationOptions:(unint64_t)options
{
  iconCopy = icon;
  listView = [(SBIconRotationContainer *)self listView];
  dequeueReusableIconView = [listView dequeueReusableIconView];
  if (dequeueReusableIconView)
  {
    v9 = dequeueReusableIconView;
    [dequeueReusableIconView setConfigurationOptions:options];
  }

  else
  {
    v9 = [objc_alloc(objc_msgSend(listView "baseIconViewClass"))];
  }

  [listView configureIconView:v9 forIcon:iconCopy];

  [(SBIconRotationContainer *)self _configureViewIfNecessary:v9 forShowingSnapshotWhenDeactivated:1];
  [v9 layoutIfNeeded];
  [(SBIconRotationContainer *)self addSubview:v9];

  return v9;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SBIconRotationContainer;
  [(SBIconRotationContainer *)&v7 layoutSubviews];
  [(SBIconRotationContainer *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  [(SBIconView *)self->_startView setCenter:?];
  [(SBIconView *)self->_endView setCenter:v4, v6];
}

- (void)prepareToTransition
{
  [(SBIconView *)self->_startView setAlpha:1.0];
  [(SBIconView *)self->_startView setIconAccessoryAlpha:1.0];
  [(SBIconView *)self->_startView setIconLabelAlpha:1.0];
  [(SBIconRotationContainer *)self _configureViewIfNecessary:self->_startView forShowingSnapshotWhenDeactivated:1];
  endView = self->_endView;
  if (endView != self->_startView)
  {
    [(SBIconRotationContainer *)self _configureViewIfNecessary:endView forShowingSnapshotWhenDeactivated:1];
  }

  transitionAnimation = [(SBIconRotationContainer *)self transitionAnimation];
  if (transitionAnimation <= 3)
  {
    v5 = dbl_1BEE87E38[transitionAnimation];
    [(SBIconView *)self->_endView setAlpha:dbl_1BEE87E18[transitionAnimation]];
    [(SBIconView *)self->_endView setIconAccessoryAlpha:v5];
    v6 = self->_endView;

    [(SBIconView *)v6 setIconLabelAlpha:v5];
  }
}

- (void)performTransition
{
  transitionAnimation = [(SBIconRotationContainer *)self transitionAnimation];
  if (transitionAnimation == 3)
  {
    [(SBIconView *)self->_startView setAlpha:0.0];
    endView = self->_endView;

    [(SBIconView *)endView setAlpha:1.0];
  }

  else
  {
    if (transitionAnimation == 2)
    {
      [(SBIconView *)self->_endView setAlpha:1.0];
      [(SBIconView *)self->_startView setIconAccessoryAlpha:0.0];
      startView = self->_startView;
      v5 = 0.0;
    }

    else
    {
      if (transitionAnimation != 1)
      {
        return;
      }

      [(SBIconView *)self->_startView setAlpha:0.0];
      [(SBIconView *)self->_endView setIconAccessoryAlpha:1.0];
      startView = self->_endView;
      v5 = 1.0;
    }

    [(SBIconView *)startView setIconLabelAlpha:v5];
  }
}

- (void)concludeTransition
{
  startView = [(SBIconRotationContainer *)self startView];
  endView = [(SBIconRotationContainer *)self endView];
  [(SBIconRotationContainer *)self _configureViewIfNecessary:startView forShowingSnapshotWhenDeactivated:0];
  if (endView != startView)
  {
    [(SBIconRotationContainer *)self _configureViewIfNecessary:endView forShowingSnapshotWhenDeactivated:0];
  }

  listView = [(SBIconRotationContainer *)self listView];
  borrowedIconView = [(SBIconRotationContainer *)self borrowedIconView];
  v6 = borrowedIconView;
  if (borrowedIconView)
  {
    icon = [borrowedIconView icon];
    v8 = [listView displayedIconViewForIcon:icon];

    if (v8 == v6)
    {
      [v6 setHidden:0];
      [listView addSubview:v6];
    }
  }

  existingIconPauseLayoutAssertion = [(SBIconRotationContainer *)self existingIconPauseLayoutAssertion];
  [existingIconPauseLayoutAssertion invalidate];

  [(SBIconRotationContainer *)self setExistingIconPauseLayoutAssertion:0];
  iconViewProvider = [listView iconViewProvider];
  [iconViewProvider recycleIconView:startView];
  if (endView != startView)
  {
    [iconViewProvider recycleIconView:endView];
  }

  [(SBIconRotationContainer *)self setListView:0];
}

- (void)_configureViewIfNecessary:(id)necessary forShowingSnapshotWhenDeactivated:(BOOL)deactivated
{
  deactivatedCopy = deactivated;
  customIconImageViewController = [necessary customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [customIconImageViewController setShowsSnapshotWhenDeactivated:deactivatedCopy];
  }
}

- (SBIconCoordinate)coordinate
{
  p_coordinate = &self->_coordinate;
  column = self->_coordinate.column;
  row = p_coordinate->row;
  result.row = row;
  result.column = column;
  return result;
}

- (SBIconListView)listView
{
  WeakRetained = objc_loadWeakRetained(&self->_listView);

  return WeakRetained;
}

@end