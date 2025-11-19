@interface SBHPopoverView
- (SBHPopoverView)initWithArrowLocation:(int64_t)a3;
- (id)_arrowViewForArrowLocation:(int64_t)a3 arrowSize:(double)a4;
- (id)_createBackgroundView;
@end

@implementation SBHPopoverView

- (SBHPopoverView)initWithArrowLocation:(int64_t)a3
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
    v6 = [(SBHPopoverView *)v5 _createBackgroundView];
    [v6 _setOverrideUserInterfaceStyle:2];
    [v6 _setContinuousCornerRadius:26.0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v5->_backgroundView, v6);
    [(SBHPopoverView *)v5 addSubview:v6];
    v7 = [(SBHPopoverView *)v5 _arrowViewForArrowLocation:a3 arrowSize:36.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHPopoverView *)v5 addSubview:v7];
    v8 = MEMORY[0x1E696ACD8];
    v9 = [v7 widthAnchor];
    v10 = [v9 constraintEqualToConstant:36.0];
    v58[0] = v10;
    v52 = v7;
    v11 = [v7 heightAnchor];
    v12 = [v11 constraintEqualToConstant:36.0];
    v58[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
    [v8 activateConstraints:v13];

    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v49 = MEMORY[0x1E696ACD8];
        v33 = [v6 topAnchor];
        v50 = [(SBHPopoverView *)v5 topAnchor];
        v51 = v33;
        v48 = [v33 constraintEqualToAnchor:?];
        v55[0] = v48;
        v34 = [v6 bottomAnchor];
        v46 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = v34;
        v45 = [v34 constraintEqualToAnchor:?];
        v55[1] = v45;
        v35 = [v6 leadingAnchor];
        v43 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = v35;
        v42 = [v35 constraintEqualToAnchor:12.0 constant:?];
        v55[2] = v42;
        v36 = [v6 trailingAnchor];
        v40 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = v36;
        v39 = [v36 constraintEqualToAnchor:?];
        v55[3] = v39;
        v18 = [v52 centerXAnchor];
        v19 = [v6 leadingAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v55[4] = v20;
        v21 = [v52 centerYAnchor];
        v22 = [v6 centerYAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        v55[5] = v23;
        v24 = v55;
        goto LABEL_11;
      }

      if (a3 == 3)
      {
        v49 = MEMORY[0x1E696ACD8];
        v25 = [v6 topAnchor];
        v50 = [(SBHPopoverView *)v5 topAnchor];
        v51 = v25;
        v48 = [v25 constraintEqualToAnchor:?];
        v54[0] = v48;
        v26 = [v6 bottomAnchor];
        v46 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = v26;
        v45 = [v26 constraintEqualToAnchor:?];
        v54[1] = v45;
        v27 = [v6 leadingAnchor];
        v43 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = v27;
        v42 = [v27 constraintEqualToAnchor:?];
        v54[2] = v42;
        v28 = [v6 trailingAnchor];
        v40 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = v28;
        v39 = [v28 constraintEqualToAnchor:-12.0 constant:?];
        v54[3] = v39;
        v18 = [v52 centerXAnchor];
        v19 = [v6 trailingAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v54[4] = v20;
        v21 = [v52 centerYAnchor];
        v22 = [v6 centerYAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        v54[5] = v23;
        v24 = v54;
        goto LABEL_11;
      }
    }

    else
    {
      if (!a3)
      {
        v49 = MEMORY[0x1E696ACD8];
        v29 = [v6 topAnchor];
        v50 = [(SBHPopoverView *)v5 topAnchor];
        v51 = v29;
        v48 = [v29 constraintEqualToAnchor:12.0 constant:?];
        v57[0] = v48;
        v30 = [v6 bottomAnchor];
        v46 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = v30;
        v45 = [v30 constraintEqualToAnchor:?];
        v57[1] = v45;
        v31 = [v6 leadingAnchor];
        v43 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = v31;
        v42 = [v31 constraintEqualToAnchor:?];
        v57[2] = v42;
        v32 = [v6 trailingAnchor];
        v40 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = v32;
        v39 = [v32 constraintEqualToAnchor:?];
        v57[3] = v39;
        v18 = [v52 centerYAnchor];
        v19 = [v6 topAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v57[4] = v20;
        v21 = [v52 centerXAnchor];
        v22 = [v6 centerXAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        v57[5] = v23;
        v24 = v57;
        goto LABEL_11;
      }

      if (a3 == 1)
      {
        v49 = MEMORY[0x1E696ACD8];
        v14 = [v6 topAnchor];
        v50 = [(SBHPopoverView *)v5 topAnchor];
        v51 = v14;
        v48 = [v14 constraintEqualToAnchor:?];
        v56[0] = v48;
        v15 = [v6 bottomAnchor];
        v46 = [(SBHPopoverView *)v5 bottomAnchor];
        v47 = v15;
        v45 = [v15 constraintEqualToAnchor:-12.0 constant:?];
        v56[1] = v45;
        v16 = [v6 leadingAnchor];
        v43 = [(SBHPopoverView *)v5 leadingAnchor];
        v44 = v16;
        v42 = [v16 constraintEqualToAnchor:?];
        v56[2] = v42;
        v17 = [v6 trailingAnchor];
        v40 = [(SBHPopoverView *)v5 trailingAnchor];
        v41 = v17;
        v39 = [v17 constraintEqualToAnchor:?];
        v56[3] = v39;
        v18 = [v52 centerYAnchor];
        v19 = [v6 bottomAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v56[4] = v20;
        v21 = [v52 centerXAnchor];
        v22 = [v6 centerXAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
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

- (id)_arrowViewForArrowLocation:(int64_t)a3 arrowSize:(double)a4
{
  v7 = MEMORY[0x1E69DCAB8];
  v8 = SBHBundle();
  v9 = [v7 imageNamed:@"PopoverArrow" inBundle:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
  v11 = [(SBHPopoverView *)self _createBackgroundView];
  [v11 setMaskView:v10];
  [v10 setFrame:{0.0, 0.0, a4, a4}];
  [v11 setFrame:{0.0, 0.0, a4, a4}];
  if (a3 == 3 || a3 == 2)
  {
    [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  }

  memset(&v15, 0, sizeof(v15));
  BSDegreesToRadians();
  CGAffineTransformMakeRotation(&v15, v12);
  v14 = v15;
  [v11 setTransform:&v14];

  return v11;
}

- (id)_createBackgroundView
{
  v2 = +[SBIconView componentBackgroundView];
  [v2 _setOverrideUserInterfaceStyle:2];

  return v2;
}

@end