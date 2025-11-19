@interface PUCropHandleView
+ (id)allHandles;
- (NSArray)adjacentHandles;
- (id)_createCornerOverlayView;
- (id)_createLineView;
- (id)initForHandle:(unint64_t)a3;
- (unint64_t)oppositeHandle;
@end

@implementation PUCropHandleView

- (NSArray)adjacentHandles
{
  v2 = [(PUCropHandleView *)self handle];
  if (v2 - 1 > 6)
  {
    return &unk_1F2B7CD88;
  }

  else
  {
    return qword_1E7B76398[v2 - 1];
  }
}

- (unint64_t)oppositeHandle
{
  v2 = [(PUCropHandleView *)self handle];
  if (v2 - 1 > 6)
  {
    return 3;
  }

  else
  {
    return qword_1B3D0D1D8[v2 - 1];
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
  v4 = [v2 photoEditingCropHandleColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (id)initForHandle:(unint64_t)a3
{
  v79[2] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = PUCropHandleView;
  v4 = [(PUCropHandleView *)&v74 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_handle = a3;
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
      v10 = [(PUCropHandleView *)v5 _createLineView];
      v11 = [(PUCropHandleView *)v5 _createLineView];
      [(PUCropHandleView *)v5 addSubview:v10];
      [(PUCropHandleView *)v5 addSubview:v11];
      v12 = _NSDictionaryOfVariableBindings(&cfstr_Horizontalline.isa, v10, v11, v6, 0);
      v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[horizontalLine(lineLength)]" options:0x10000 metrics:v9 views:v12];
      [(PUCropHandleView *)v5 addConstraints:v13];

      v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[verticalLine(lineLength)]" options:0 metrics:v9 views:v12];
      [(PUCropHandleView *)v5 addConstraints:v14];

      v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v15];

      v16 = [MEMORY[0x1E696ACD8] constraintWithItem:v11 attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
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
        v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[horizontalLine(lineWidth)][referenceView]" options:v17 metrics:v9 views:v12];
        [(PUCropHandleView *)v5 addConstraints:v18];

        v19 = MEMORY[0x1E696ACD8];
        v20 = 1.0;
        v21 = v10;
        v22 = 3;
        v23 = v11;
        v24 = 3;
      }

      else
      {
        v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[referenceView][horizontalLine(lineWidth)]" options:v17 metrics:v9 views:v12];
        [(PUCropHandleView *)v5 addConstraints:v34];

        v19 = MEMORY[0x1E696ACD8];
        v20 = 1.0;
        v21 = v10;
        v22 = 4;
        v23 = v11;
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
        v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[verticalLine(lineWidth)][referenceView]" options:v36 metrics:v9 views:v12];
        [(PUCropHandleView *)v5 addConstraints:v37];

        v38 = MEMORY[0x1E696ACD8];
        v39 = 1.0;
        v40 = v11;
        v41 = 1;
        v42 = v10;
        v43 = 1;
      }

      else
      {
        v44 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[referenceView][verticalLine(lineWidth)]" options:v36 metrics:v9 views:v12];
        [(PUCropHandleView *)v5 addConstraints:v44];

        v38 = MEMORY[0x1E696ACD8];
        v39 = 1.0;
        v40 = v11;
        v41 = 2;
        v42 = v10;
        v43 = 2;
      }

      v45 = [v38 constraintWithItem:v40 attribute:v41 relatedBy:0 toItem:v42 attribute:v43 multiplier:v39 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v45];

      v77[0] = v10;
      v77[1] = v11;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
      [(PUCropHandleView *)v5 _setLineViews:v46];
      goto LABEL_46;
    }

    if (![(PUCropHandleView *)v5 isLateral])
    {
LABEL_47:
      [(PUCropHandleView *)v5 _setLayoutReferenceView:v6];
      [(PUCropHandleView *)v5 setOpaque:0];

      return v5;
    }

    v10 = [(PUCropHandleView *)v5 _createLineView];
    [(PUCropHandleView *)v5 addSubview:v10];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_LineviewRefere.isa, v10, v6, 0);
    if ([(PUCropHandleView *)v5 isTop]|| [(PUCropHandleView *)v5 isBottom])
    {
      v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[lineView]|" options:0x10000 metrics:v9 views:v11];
      [(PUCropHandleView *)v5 addConstraints:v25];

      v26 = [(PUCropHandleView *)v5 isTop];
      if (v26)
      {
        v27 = 4;
      }

      else
      {
        v27 = 3;
      }

      if (v26)
      {
        v28 = @"V:[lineView][referenceView]|";
      }

      else
      {
        v28 = @"V:|[referenceView][lineView]";
      }

      v29 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:v27 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v29];

      v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v28 options:6 metrics:v9 views:v11];
      [(PUCropHandleView *)v5 addConstraints:v30];

      v31 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
      [(PUCropHandleView *)v5 addConstraint:v31];

      v76 = v10;
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

      v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[lineView][referenceView]|" options:v47 metrics:v9 views:v11];
      [(PUCropHandleView *)v5 addConstraints:v48];

      v49 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[referenceView]|" options:0 metrics:v9 views:v11];
      [(PUCropHandleView *)v5 addConstraints:v49];

      v50 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[lineView]|" options:0 metrics:v9 views:v11];
      [(PUCropHandleView *)v5 addConstraints:v50];

      v51 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
      [(PUCropHandleView *)v5 addConstraint:v51];

      if ([(PUCropHandleView *)v5 isLeft])
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      v33 = [MEMORY[0x1E696ACD8] constraintWithItem:v10 attribute:v52 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
      [(PUCropHandleView *)v5 addConstraint:v33];
      v32 = 0;
    }

    v75 = v10;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [(PUCropHandleView *)v5 _setLineViews:v53];

    v12 = [(PUCropHandleView *)v5 _createLineView];
    [(PUCropHandleView *)v5 addSubview:v12];
    if (v32)
    {
      v54 = [v12 heightAnchor];
      v55 = [v54 constraintEqualToConstant:3.0];
      [v55 setActive:1];

      v56 = [v12 widthAnchor];
      v57 = [v56 constraintEqualToConstant:25.0];
      [v57 setActive:1];

      v58 = [v6 centerXAnchor];
      v59 = [v12 centerXAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      [v60 setActive:1];

      if ([(PUCropHandleView *)v5 isTop])
      {
        v46 = [v6 topAnchor];
        v61 = [v12 topAnchor];
LABEL_41:
        v69 = v61;
        v70 = 3.0;
LABEL_45:
        v72 = [v46 constraintEqualToAnchor:v69 constant:v70];
        [v72 setActive:1];

LABEL_46:
        goto LABEL_47;
      }

      v46 = [v6 bottomAnchor];
      v71 = [v12 bottomAnchor];
    }

    else
    {
      v62 = [v12 widthAnchor];
      v63 = [v62 constraintEqualToConstant:3.0];
      [v63 setActive:1];

      v64 = [v12 heightAnchor];
      v65 = [v64 constraintEqualToConstant:25.0];
      [v65 setActive:1];

      v66 = [v6 centerYAnchor];
      v67 = [v12 centerYAnchor];
      v68 = [v66 constraintEqualToAnchor:v67];
      [v68 setActive:1];

      if ([(PUCropHandleView *)v5 isLeft])
      {
        v46 = [v6 leftAnchor];
        v61 = [v12 leftAnchor];
        goto LABEL_41;
      }

      v46 = [v6 rightAnchor];
      v71 = [v12 rightAnchor];
    }

    v69 = v71;
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