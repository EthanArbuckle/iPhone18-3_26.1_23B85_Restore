@interface SBIconRotationContainer
- (SBIconCoordinate)coordinate;
- (SBIconListView)listView;
- (SBIconRotationContainer)initWithFrame:(CGRect)a3 startIcon:(id)a4 endIcon:(id)a5 listView:(id)a6 coordinate:(SBIconCoordinate)a7 location:(id)a8 transitionAnimation:(int64_t)a9 offscreen:(BOOL)a10;
- (id)addIconViewForIcon:(id)a3 configurationOptions:(unint64_t)a4;
- (void)_configureViewIfNecessary:(id)a3 forShowingSnapshotWhenDeactivated:(BOOL)a4;
- (void)borrowExistingIconViewForIcon:(id)a3;
- (void)concludeTransition;
- (void)layoutSubviews;
- (void)performTransition;
- (void)prepareToTransition;
@end

@implementation SBIconRotationContainer

- (SBIconRotationContainer)initWithFrame:(CGRect)a3 startIcon:(id)a4 endIcon:(id)a5 listView:(id)a6 coordinate:(SBIconCoordinate)a7 location:(id)a8 transitionAnimation:(int64_t)a9 offscreen:(BOOL)a10
{
  row = a7.row;
  column = a7.column;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v34.receiver = self;
  v34.super_class = SBIconRotationContainer;
  v24 = [(SBIconRotationContainer *)&v34 initWithFrame:x, y, width, height];
  v25 = v24;
  if (v24)
  {
    v24->_coordinate.column = column;
    v24->_coordinate.row = row;
    v26 = [v23 copy];
    location = v25->_location;
    v25->_location = v26;

    v25->_transitionAnimation = a9;
    v25->_offscreen = a10;
    objc_storeWeak(&v25->_listView, v22);
    if (v20)
    {
      [(SBIconRotationContainer *)v25 borrowExistingIconViewForIcon:v20];
      v28 = [(SBIconRotationContainer *)v25 addIconViewForIcon:v20 configurationOptions:4];
      startView = v25->_startView;
      v25->_startView = v28;
    }

    if (v20 == v21 && !v25->_transitionAnimation)
    {
      v32 = v25->_startView;
      endView = v25->_endView;
      v25->_endView = v32;
    }

    else
    {
      if (!v21)
      {
LABEL_10:
        [(SBIconRotationContainer *)v25 layoutIfNeeded];
        goto LABEL_11;
      }

      v30 = [(SBIconRotationContainer *)v25 addIconViewForIcon:v21 configurationOptions:4];
      endView = v25->_endView;
      v25->_endView = v30;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v25;
}

- (void)borrowExistingIconViewForIcon:(id)a3
{
  v4 = a3;
  v8 = [(SBIconRotationContainer *)self listView];
  v5 = [v8 iconViewForIcon:v4];

  if (v5)
  {
    [v5 setHidden:1];
    [(SBIconRotationContainer *)self addSubview:v5];
    [(SBIconRotationContainer *)self setBorrowedIconView:v5];
    v6 = [v8 pauseLayoutForIconView:v5 forReason:@"rotation"];
    v7 = [(SBIconRotationContainer *)self existingIconPauseLayoutAssertion];
    [v7 invalidate];

    [(SBIconRotationContainer *)self setExistingIconPauseLayoutAssertion:v6];
  }
}

- (id)addIconViewForIcon:(id)a3 configurationOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SBIconRotationContainer *)self listView];
  v8 = [v7 dequeueReusableIconView];
  if (v8)
  {
    v9 = v8;
    [v8 setConfigurationOptions:a4];
  }

  else
  {
    v9 = [objc_alloc(objc_msgSend(v7 "baseIconViewClass"))];
  }

  [v7 configureIconView:v9 forIcon:v6];

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

  v4 = [(SBIconRotationContainer *)self transitionAnimation];
  if (v4 <= 3)
  {
    v5 = dbl_1BEE87E38[v4];
    [(SBIconView *)self->_endView setAlpha:dbl_1BEE87E18[v4]];
    [(SBIconView *)self->_endView setIconAccessoryAlpha:v5];
    v6 = self->_endView;

    [(SBIconView *)v6 setIconLabelAlpha:v5];
  }
}

- (void)performTransition
{
  v3 = [(SBIconRotationContainer *)self transitionAnimation];
  if (v3 == 3)
  {
    [(SBIconView *)self->_startView setAlpha:0.0];
    endView = self->_endView;

    [(SBIconView *)endView setAlpha:1.0];
  }

  else
  {
    if (v3 == 2)
    {
      [(SBIconView *)self->_endView setAlpha:1.0];
      [(SBIconView *)self->_startView setIconAccessoryAlpha:0.0];
      startView = self->_startView;
      v5 = 0.0;
    }

    else
    {
      if (v3 != 1)
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
  v11 = [(SBIconRotationContainer *)self startView];
  v3 = [(SBIconRotationContainer *)self endView];
  [(SBIconRotationContainer *)self _configureViewIfNecessary:v11 forShowingSnapshotWhenDeactivated:0];
  if (v3 != v11)
  {
    [(SBIconRotationContainer *)self _configureViewIfNecessary:v3 forShowingSnapshotWhenDeactivated:0];
  }

  v4 = [(SBIconRotationContainer *)self listView];
  v5 = [(SBIconRotationContainer *)self borrowedIconView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 icon];
    v8 = [v4 displayedIconViewForIcon:v7];

    if (v8 == v6)
    {
      [v6 setHidden:0];
      [v4 addSubview:v6];
    }
  }

  v9 = [(SBIconRotationContainer *)self existingIconPauseLayoutAssertion];
  [v9 invalidate];

  [(SBIconRotationContainer *)self setExistingIconPauseLayoutAssertion:0];
  v10 = [v4 iconViewProvider];
  [v10 recycleIconView:v11];
  if (v3 != v11)
  {
    [v10 recycleIconView:v3];
  }

  [(SBIconRotationContainer *)self setListView:0];
}

- (void)_configureViewIfNecessary:(id)a3 forShowingSnapshotWhenDeactivated:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [v5 setShowsSnapshotWhenDeactivated:v4];
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