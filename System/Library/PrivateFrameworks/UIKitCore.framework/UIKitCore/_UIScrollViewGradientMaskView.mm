@interface _UIScrollViewGradientMaskView
- (UIEdgeInsets)gradientEndInsets;
- (UIEdgeInsets)gradientIntensities;
- (UIEdgeInsets)gradientStartInsets;
- (_UIScrollViewGradientMaskView)initWithFrame:(CGRect)frame;
- (void)updateWithFrame:(double)frame gradientStartInsets:(double)insets gradientEndInsets:(double)endInsets gradientIntensities:(double)intensities;
@end

@implementation _UIScrollViewGradientMaskView

- (_UIScrollViewGradientMaskView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIScrollViewGradientMaskView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)updateWithFrame:(double)frame gradientStartInsets:(double)insets gradientEndInsets:(double)endInsets gradientIntensities:(double)intensities
{
  v31 = self[51];
  [self frame];
  intensitiesCopy = intensities;
  v41 = v33 == intensities;
  endInsetsCopy = endInsets;
  v35 = !v41;
  if (v31)
  {
    v36 = v32 != endInsets;
  }

  else
  {
    v36 = v35;
  }

  [self gradientStartInsets];
  v107 = a10;
  v41 = a8 == v40 && a7 == v37;
  v42 = v41 && a10 == v39;
  v104 = a9;
  if (!v42 || a9 != v38)
  {
    v44 = a11;
    v45 = a13;
    v46 = a12;
    v47 = 1;
    v48 = a14;
LABEL_29:
    v56 = a18;
    goto LABEL_37;
  }

  [self gradientEndInsets];
  v46 = a12;
  v44 = a11;
  v53 = a12 == v52 && a11 == v49;
  v48 = a14;
  v54 = v53 && a14 == v51;
  v45 = a13;
  if (!v54 || a13 != v50)
  {
    v47 = 1;
    goto LABEL_29;
  }

  [self gradientIntensities];
  v60 = a17 != v59;
  v56 = a18;
  if (a18 != v61)
  {
    v60 = 1;
  }

  if (a15 != v57)
  {
    v60 = 1;
  }

  v47 = a16 != v58 || v60;
LABEL_37:
  [self setFrame:{frame, insets, endInsetsCopy, intensitiesCopy}];
  [self setGradientStartInsets:{a7, a8, v104, v107}];
  v62 = v45;
  [self setGradientEndInsets:{v44, v46, v45, v48}];
  [self setGradientIntensities:{a15, a16, a17, v56}];
  if ((v36 | v47))
  {
    v63 = endInsetsCopy;
    v64 = fmax(v44, v62);
    self[51] = v64 <= 0.0;
    if (v64 > 0.0 && (v46 > 0.0 || v48 > 0.0))
    {
      NSLog(&cfstr_Uiscrollviewgr.isa);
    }

    v65 = objc_opt_new();
    v66 = objc_opt_new();
    [self gradientIntensities];
    v68 = v67;
    [self gradientIntensities];
    v70 = v69;
    [self gradientStartInsets];
    v72 = v71;
    [self gradientEndInsets];
    v74 = v73;
    [self gradientStartInsets];
    v76 = v75;
    [self gradientEndInsets];
    v78 = intensitiesCopy;
    if (self[51])
    {
      [self gradientIntensities];
      v68 = v79;
      [self gradientIntensities];
      v70 = v80;
      [self gradientStartInsets];
      v72 = v81;
      [self gradientEndInsets];
      v74 = v82;
      [self gradientStartInsets];
      v76 = v83;
      [self gradientEndInsets];
      v85 = v84;
      v78 = v63;
    }

    else
    {
      v85 = v77;
    }

    v86 = +[UIColor blackColor];
    cGColor = [v86 CGColor];

    v88 = [UIColor colorWithWhite:0.0 alpha:0.0];
    cGColor2 = [v88 CGColor];

    v90 = [UIColor colorWithWhite:0.0 alpha:1.0 - v68];
    cGColor3 = [v90 CGColor];

    v92 = [UIColor colorWithWhite:0.0 alpha:1.0 - v70];
    cGColor4 = [v92 CGColor];

    if (v78 > 0.0)
    {
      if (v74 <= 0.0)
      {
        [v65 addObject:&unk_1EFE33EF8];
      }

      else
      {
        [v65 addObject:&unk_1EFE33EF8];
        if (v72 > 0.0)
        {
          [v66 addObject:cGColor2];
          v94 = [MEMORY[0x1E696AD98] numberWithDouble:v72 / v78];
          [v65 addObject:v94];
        }

        [v66 addObject:cGColor3];
        v95 = [MEMORY[0x1E696AD98] numberWithDouble:v74 / v78];
        [v65 addObject:v95];
      }

      [v66 addObject:cGColor];
      v96 = cGColor;
      if (v85 > 0.0)
      {
        v97 = [MEMORY[0x1E696AD98] numberWithDouble:(v78 - v85) / v78];
        [v65 addObject:v97];

        [v66 addObject:cGColor];
        v96 = cGColor4;
        if (v76 > 0.0)
        {
          v98 = [MEMORY[0x1E696AD98] numberWithDouble:(v78 - v76) / v78];
          [v65 addObject:v98];

          [v66 addObject:cGColor4];
          v96 = cGColor2;
        }
      }

      [v65 addObject:&unk_1EFE33F10];
      [v66 addObject:v96];
    }

    v99 = [v65 count];
    if (v99 != [v66 count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScrollViewGradientMaskView.m" lineNumber:147 description:@"Bug in _UIScrollViewGradientMaskView: different number of gradient stops and colors"];
    }

    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __107___UIScrollViewGradientMaskView_updateWithFrame_gradientStartInsets_gradientEndInsets_gradientIntensities___block_invoke;
    v109[3] = &unk_1E70F6228;
    v109[4] = self;
    v110 = v66;
    v111 = v65;
    v100 = v65;
    v101 = v66;
    [UIView performWithoutAnimation:v109];
  }
}

- (UIEdgeInsets)gradientStartInsets
{
  top = self->_gradientStartInsets.top;
  left = self->_gradientStartInsets.left;
  bottom = self->_gradientStartInsets.bottom;
  right = self->_gradientStartInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientEndInsets
{
  top = self->_gradientEndInsets.top;
  left = self->_gradientEndInsets.left;
  bottom = self->_gradientEndInsets.bottom;
  right = self->_gradientEndInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientIntensities
{
  top = self->_gradientIntensities.top;
  left = self->_gradientIntensities.left;
  bottom = self->_gradientIntensities.bottom;
  right = self->_gradientIntensities.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end