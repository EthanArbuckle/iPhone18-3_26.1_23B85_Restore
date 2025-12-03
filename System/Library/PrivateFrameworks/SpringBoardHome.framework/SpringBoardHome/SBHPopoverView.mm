@interface SBHPopoverView
- (SBHPopoverView)initWithArrowLocation:(int64_t)location;
- (id)_arrowViewForArrowLocation:(int64_t)location arrowSize:(double)size;
- (id)_createBackgroundView;
@end

@implementation SBHPopoverView

- (SBHPopoverView)initWithArrowLocation:(int64_t)location
{
  v58[2] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = SBHPopoverView;
  v4 = [(SBHPopoverView *)&v53 init];
  v5 = v4;
  if (v4)
  {
    [(SBHPopoverView *)v4 setClipsToBounds:1];
    [(SBHPopoverView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    _createBackgroundView = [(SBHPopoverView *)v5 _createBackgroundView];
    [_createBackgroundView _setOverrideUserInterfaceStyle:2];
    [_createBackgroundView _setContinuousCornerRadius:26.0];
    [_createBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v5->_backgroundView, _createBackgroundView);
    [(SBHPopoverView *)v5 addSubview:_createBackgroundView];
    v7 = [(SBHPopoverView *)v5 _arrowViewForArrowLocation:location arrowSize:36.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHPopoverView *)v5 addSubview:v7];
    v8 = MEMORY[0x1E696ACD8];
    widthAnchor = [v7 widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:36.0];
    v58[0] = v10;
    v52 = v7;
    heightAnchor = [v7 heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:36.0];
    v58[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
    [v8 activateConstraints:v13];

    if (location > 1)
    {
      if (location == 2)
      {
        v49 = MEMORY[0x1E696ACD8];
        topAnchor = [_createBackgroundView topAnchor];
        topAnchor2 = [(SBHPopoverView *)v5 topAnchor];
        v51 = topAnchor;
        v48 = [topAnchor constraintEqualToAnchor:?];
        v55[0] = v48;
        bottomAnchor = [_createBackgroundView bottomAnchor];
        bottomAnchor2 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = bottomAnchor;
        v45 = [bottomAnchor constraintEqualToAnchor:?];
        v55[1] = v45;
        leadingAnchor = [_createBackgroundView leadingAnchor];
        leadingAnchor2 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = leadingAnchor;
        v42 = [leadingAnchor constraintEqualToAnchor:12.0 constant:?];
        v55[2] = v42;
        trailingAnchor = [_createBackgroundView trailingAnchor];
        trailingAnchor2 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = trailingAnchor;
        v39 = [trailingAnchor constraintEqualToAnchor:?];
        v55[3] = v39;
        centerXAnchor = [v52 centerXAnchor];
        leadingAnchor3 = [_createBackgroundView leadingAnchor];
        v20 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3];
        v55[4] = v20;
        centerYAnchor = [v52 centerYAnchor];
        centerYAnchor2 = [_createBackgroundView centerYAnchor];
        v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v55[5] = v23;
        v24 = v55;
        goto LABEL_11;
      }

      if (location == 3)
      {
        v49 = MEMORY[0x1E696ACD8];
        topAnchor3 = [_createBackgroundView topAnchor];
        topAnchor2 = [(SBHPopoverView *)v5 topAnchor];
        v51 = topAnchor3;
        v48 = [topAnchor3 constraintEqualToAnchor:?];
        v54[0] = v48;
        bottomAnchor3 = [_createBackgroundView bottomAnchor];
        bottomAnchor2 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = bottomAnchor3;
        v45 = [bottomAnchor3 constraintEqualToAnchor:?];
        v54[1] = v45;
        leadingAnchor4 = [_createBackgroundView leadingAnchor];
        leadingAnchor2 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = leadingAnchor4;
        v42 = [leadingAnchor4 constraintEqualToAnchor:?];
        v54[2] = v42;
        trailingAnchor3 = [_createBackgroundView trailingAnchor];
        trailingAnchor2 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = trailingAnchor3;
        v39 = [trailingAnchor3 constraintEqualToAnchor:-12.0 constant:?];
        v54[3] = v39;
        centerXAnchor = [v52 centerXAnchor];
        leadingAnchor3 = [_createBackgroundView trailingAnchor];
        v20 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3];
        v54[4] = v20;
        centerYAnchor = [v52 centerYAnchor];
        centerYAnchor2 = [_createBackgroundView centerYAnchor];
        v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v54[5] = v23;
        v24 = v54;
        goto LABEL_11;
      }
    }

    else
    {
      if (!location)
      {
        v49 = MEMORY[0x1E696ACD8];
        topAnchor4 = [_createBackgroundView topAnchor];
        topAnchor2 = [(SBHPopoverView *)v5 topAnchor];
        v51 = topAnchor4;
        v48 = [topAnchor4 constraintEqualToAnchor:12.0 constant:?];
        v57[0] = v48;
        bottomAnchor4 = [_createBackgroundView bottomAnchor];
        bottomAnchor2 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = bottomAnchor4;
        v45 = [bottomAnchor4 constraintEqualToAnchor:?];
        v57[1] = v45;
        leadingAnchor5 = [_createBackgroundView leadingAnchor];
        leadingAnchor2 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = leadingAnchor5;
        v42 = [leadingAnchor5 constraintEqualToAnchor:?];
        v57[2] = v42;
        trailingAnchor4 = [_createBackgroundView trailingAnchor];
        trailingAnchor2 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = trailingAnchor4;
        v39 = [trailingAnchor4 constraintEqualToAnchor:?];
        v57[3] = v39;
        centerXAnchor = [v52 centerYAnchor];
        leadingAnchor3 = [_createBackgroundView topAnchor];
        v20 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3];
        v57[4] = v20;
        centerYAnchor = [v52 centerXAnchor];
        centerYAnchor2 = [_createBackgroundView centerXAnchor];
        v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v57[5] = v23;
        v24 = v57;
        goto LABEL_11;
      }

      if (location == 1)
      {
        v49 = MEMORY[0x1E696ACD8];
        topAnchor5 = [_createBackgroundView topAnchor];
        topAnchor2 = [(SBHPopoverView *)v5 topAnchor];
        v51 = topAnchor5;
        v48 = [topAnchor5 constraintEqualToAnchor:?];
        v56[0] = v48;
        bottomAnchor5 = [_createBackgroundView bottomAnchor];
        bottomAnchor2 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = bottomAnchor5;
        v45 = [bottomAnchor5 constraintEqualToAnchor:-12.0 constant:?];
        v56[1] = v45;
        leadingAnchor6 = [_createBackgroundView leadingAnchor];
        leadingAnchor2 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = leadingAnchor6;
        v42 = [leadingAnchor6 constraintEqualToAnchor:?];
        v56[2] = v42;
        trailingAnchor5 = [_createBackgroundView trailingAnchor];
        trailingAnchor2 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = trailingAnchor5;
        v39 = [trailingAnchor5 constraintEqualToAnchor:?];
        v56[3] = v39;
        centerXAnchor = [v52 centerYAnchor];
        leadingAnchor3 = [_createBackgroundView bottomAnchor];
        v20 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3];
        v56[4] = v20;
        centerYAnchor = [v52 centerXAnchor];
        centerYAnchor2 = [_createBackgroundView centerXAnchor];
        v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v56[5] = v23;
        v24 = v56;
LABEL_11:
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];
        [v49 activateConstraints:v37];
      }
    }
  }

  return v5;
}

- (id)_arrowViewForArrowLocation:(int64_t)location arrowSize:(double)size
{
  v7 = MEMORY[0x1E69DCAB8];
  v8 = SBHBundle();
  v9 = [v7 imageNamed:@"PopoverArrow" inBundle:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
  _createBackgroundView = [(SBHPopoverView *)self _createBackgroundView];
  [_createBackgroundView setMaskView:v10];
  [v10 setFrame:{0.0, 0.0, size, size}];
  [_createBackgroundView setFrame:{0.0, 0.0, size, size}];
  if (location == 3 || location == 2)
  {
    [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  }

  memset(&v15, 0, sizeof(v15));
  BSDegreesToRadians();
  CGAffineTransformMakeRotation(&v15, v12);
  v14 = v15;
  [_createBackgroundView setTransform:&v14];

  return _createBackgroundView;
}

- (id)_createBackgroundView
{
  v2 = +[SBIconView componentBackgroundView];
  [v2 _setOverrideUserInterfaceStyle:2];

  return v2;
}

@end