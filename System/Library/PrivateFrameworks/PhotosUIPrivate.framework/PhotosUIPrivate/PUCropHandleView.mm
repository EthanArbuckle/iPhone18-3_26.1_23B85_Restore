@interface PUCropHandleView
+ (id)allHandles;
- (NSArray)adjacentHandles;
- (id)_createCornerOverlayView;
- (id)_createLineView;
- (id)initForHandle:(unint64_t)handle;
- (unint64_t)oppositeHandle;
@end

@implementation PUCropHandleView

- (NSArray)adjacentHandles
{
  handle = [(PUCropHandleView *)self handle];
  if (handle - 1 > 6)
  {
    return &unk_1F2B7CD88;
  }

  else
  {
    return qword_1E7B76398[handle - 1];
  }
}

- (unint64_t)oppositeHandle
{
  handle = [(PUCropHandleView *)self handle];
  if (handle - 1 > 6)
  {
    return 3;
  }

  else
  {
    return qword_1B3D0D1D8[handle - 1];
  }
}

- (id)_createCornerOverlayView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.600000024];
  [v2 setBackgroundColor:v3];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_createLineView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setOpaque:1];
  photoEditingCropHandleColor = [v2 photoEditingCropHandleColor];
  [v3 setBackgroundColor:photoEditingCropHandleColor];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (id)initForHandle:(unint64_t)handle
{
  v79[2] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = PUCropHandleView;
  v4 = [(PUCropHandleView *)&v74 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_handle = handle;
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUCropHandleView *)v5 addSubview:v6];
    if ([(PUCropHandleView *)v5 isLateral])
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 3.0;
    }

    v78[0] = @"lineLength";
    v78[1] = @"lineWidth";
    v79[0] = &unk_1F2B7F3F8;
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v79[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];

    if ([(PUCropHandleView *)v5 isCorner])
    {
      _createLineView = [(PUCropHandleView *)v5 _createLineView];
      _createLineView2 = [(PUCropHandleView *)v5 _createLineView];
      [(PUCropHandleView *)v5 addSubview:_createLineView];
      [(PUCropHandleView *)v5 addSubview:_createLineView2];
      _createLineView3 = _NSDictionaryOfVariableBindings(&cfstr_Horizontalline.isa, _createLineView, _createLineView2, v6, 0);
      v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[horizontalLine(lineLength)]" options:0x10000 metrics:v9 views:_createLineView3];
      [(PUCropHandleView *)v5 addConstraints:v13];

      v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[verticalLine(lineLength)]" options:0 metrics:v9 views:_createLineView3];
      [(PUCropHandleView *)v5 addConstraints:v14];

      v15 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v15];

      v16 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView2 attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v16];

      if ([(PUCropHandleView *)v5 isLeft])
      {
        v17 = 4;
      }

      else
      {
        v17 = 2;
      }

      if ([(PUCropHandleView *)v5 isTop])
      {
        v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[horizontalLine(lineWidth)][referenceView]" options:v17 metrics:v9 views:_createLineView3];
        [(PUCropHandleView *)v5 addConstraints:v18];

        v19 = MEMORY[0x1E696ACD8];
        v20 = 1.0;
        v21 = _createLineView;
        v22 = 3;
        v23 = _createLineView2;
        v24 = 3;
      }

      else
      {
        v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[referenceView][horizontalLine(lineWidth)]" options:v17 metrics:v9 views:_createLineView3];
        [(PUCropHandleView *)v5 addConstraints:v34];

        v19 = MEMORY[0x1E696ACD8];
        v20 = 1.0;
        v21 = _createLineView;
        v22 = 4;
        v23 = _createLineView2;
        v24 = 4;
      }

      v35 = [v19 constraintWithItem:v21 attribute:v22 relatedBy:0 toItem:v23 attribute:v24 multiplier:v20 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v35];

      if ([(PUCropHandleView *)v5 isTop])
      {
        v36 = 65552;
      }

      else
      {
        v36 = 65544;
      }

      if ([(PUCropHandleView *)v5 isLeft])
      {
        v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[verticalLine(lineWidth)][referenceView]" options:v36 metrics:v9 views:_createLineView3];
        [(PUCropHandleView *)v5 addConstraints:v37];

        v38 = MEMORY[0x1E696ACD8];
        v39 = 1.0;
        v40 = _createLineView2;
        v41 = 1;
        v42 = _createLineView;
        v43 = 1;
      }

      else
      {
        v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[referenceView][verticalLine(lineWidth)]" options:v36 metrics:v9 views:_createLineView3];
        [(PUCropHandleView *)v5 addConstraints:v44];

        v38 = MEMORY[0x1E696ACD8];
        v39 = 1.0;
        v40 = _createLineView2;
        v41 = 2;
        v42 = _createLineView;
        v43 = 2;
      }

      v45 = [v38 constraintWithItem:v40 attribute:v41 relatedBy:0 toItem:v42 attribute:v43 multiplier:v39 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v45];

      v77[0] = _createLineView;
      v77[1] = _createLineView2;
      topAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
      [(PUCropHandleView *)v5 _setLineViews:topAnchor];
      goto LABEL_46;
    }

    if (![(PUCropHandleView *)v5 isLateral])
    {
LABEL_47:
      [(PUCropHandleView *)v5 _setLayoutReferenceView:v6];
      [(PUCropHandleView *)v5 setOpaque:0];

      return v5;
    }

    _createLineView = [(PUCropHandleView *)v5 _createLineView];
    [(PUCropHandleView *)v5 addSubview:_createLineView];
    _createLineView2 = _NSDictionaryOfVariableBindings(&cfstr_LineviewRefere.isa, _createLineView, v6, 0);
    if ([(PUCropHandleView *)v5 isTop]|| [(PUCropHandleView *)v5 isBottom])
    {
      v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[lineView]|" options:0x10000 metrics:v9 views:_createLineView2];
      [(PUCropHandleView *)v5 addConstraints:v25];

      isTop = [(PUCropHandleView *)v5 isTop];
      if (isTop)
      {
        v27 = 4;
      }

      else
      {
        v27 = 3;
      }

      if (isTop)
      {
        v28 = @"V:[lineView][referenceView]|";
      }

      else
      {
        v28 = @"V:|[referenceView][lineView]";
      }

      v29 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView attribute:v27 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v29];

      v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v28 options:6 metrics:v9 views:_createLineView2];
      [(PUCropHandleView *)v5 addConstraints:v30];

      v31 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
      [(PUCropHandleView *)v5 addConstraint:v31];

      v76 = _createLineView;
      v32 = 1;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      [(PUCropHandleView *)v5 _setLineViews:v33];
    }

    else
    {
      if ([(PUCropHandleView *)v5 isLeft])
      {
        v47 = 65560;
      }

      else
      {
        v47 = 131096;
      }

      v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[lineView][referenceView]|" options:v47 metrics:v9 views:_createLineView2];
      [(PUCropHandleView *)v5 addConstraints:v48];

      v49 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[referenceView]|" options:0 metrics:v9 views:_createLineView2];
      [(PUCropHandleView *)v5 addConstraints:v49];

      v50 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[lineView]|" options:0 metrics:v9 views:_createLineView2];
      [(PUCropHandleView *)v5 addConstraints:v50];

      v51 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
      [(PUCropHandleView *)v5 addConstraint:v51];

      if ([(PUCropHandleView *)v5 isLeft])
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      v33 = [MEMORY[0x1E696ACD8] constraintWithItem:_createLineView attribute:v52 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v33];
      v32 = 0;
    }

    v75 = _createLineView;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [(PUCropHandleView *)v5 _setLineViews:v53];

    _createLineView3 = [(PUCropHandleView *)v5 _createLineView];
    [(PUCropHandleView *)v5 addSubview:_createLineView3];
    if (v32)
    {
      heightAnchor = [_createLineView3 heightAnchor];
      v55 = [heightAnchor constraintEqualToConstant:3.0];
      [v55 setActive:1];

      widthAnchor = [_createLineView3 widthAnchor];
      v57 = [widthAnchor constraintEqualToConstant:25.0];
      [v57 setActive:1];

      centerXAnchor = [v6 centerXAnchor];
      centerXAnchor2 = [_createLineView3 centerXAnchor];
      v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v60 setActive:1];

      if ([(PUCropHandleView *)v5 isTop])
      {
        topAnchor = [v6 topAnchor];
        topAnchor2 = [_createLineView3 topAnchor];
LABEL_41:
        v69 = topAnchor2;
        v70 = 3.0;
LABEL_45:
        v72 = [topAnchor constraintEqualToAnchor:v69 constant:v70];
        [v72 setActive:1];

LABEL_46:
        goto LABEL_47;
      }

      topAnchor = [v6 bottomAnchor];
      bottomAnchor = [_createLineView3 bottomAnchor];
    }

    else
    {
      widthAnchor2 = [_createLineView3 widthAnchor];
      v63 = [widthAnchor2 constraintEqualToConstant:3.0];
      [v63 setActive:1];

      heightAnchor2 = [_createLineView3 heightAnchor];
      v65 = [heightAnchor2 constraintEqualToConstant:25.0];
      [v65 setActive:1];

      centerYAnchor = [v6 centerYAnchor];
      centerYAnchor2 = [_createLineView3 centerYAnchor];
      v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v68 setActive:1];

      if ([(PUCropHandleView *)v5 isLeft])
      {
        topAnchor = [v6 leftAnchor];
        topAnchor2 = [_createLineView3 leftAnchor];
        goto LABEL_41;
      }

      topAnchor = [v6 rightAnchor];
      bottomAnchor = [_createLineView3 rightAnchor];
    }

    v69 = bottomAnchor;
    v70 = -3.0;
    goto LABEL_45;
  }

  return v5;
}

+ (id)allHandles
{
  if (allHandles___allHandlesToken != -1)
  {
    dispatch_once(&allHandles___allHandlesToken, &__block_literal_global_19680);
  }

  v3 = allHandles___allHandles;

  return v3;
}

void __30__PUCropHandleView_allHandles__block_invoke()
{
  v0 = allHandles___allHandles;
  allHandles___allHandles = &unk_1F2B7CE48;
}

@end