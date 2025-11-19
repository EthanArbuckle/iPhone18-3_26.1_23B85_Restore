@interface PUPickerBannerView
- (CGRect)_frameReversedIfRightToLeft:(BOOL)a3 frame:(CGRect)a4 bounds:(CGRect)a5;
- (PUPickerBannerView)initWithFrame:(CGRect)a3;
- (void)_setAlignment:(int64_t)a3;
- (void)_setAnimatingStackView:(BOOL)a3;
- (void)_updateLabel;
- (void)_updateStackView;
- (void)animateImagesOntoView:(id)a3 inContainerView:(id)a4 completionHandler:(id)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
- (void)setImages:(id)a3;
- (void)setLeftView:(id)a3 animated:(BOOL)a4;
- (void)setRightView:(id)a3 animated:(BOOL)a4;
- (void)setStyle:(unint64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation PUPickerBannerView

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUPickerBannerView *)self _animationCompletionHandler];

  if (v6)
  {
    v7 = [(PUPickerBannerView *)self _animationCompletionHandler];
    v7[2](v7, v4);

    [(PUPickerBannerView *)self _setAnimationCompletionHandler:0];
  }
}

- (void)animateImagesOntoView:(id)a3 inContainerView:(id)a4 completionHandler:(id)a5
{
  v86[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9)
  {
    v12 = [(PUPickerBannerView *)self _stackView];
    v13 = [v12 snapshotView];
    [v12 bounds];
    v68 = self;
    [v12 convertRect:v9 toView:?];
    v71 = v13;
    [v13 setFrame:?];
    [v9 addSubview:v13];
    [(PUPickerBannerView *)self _setAnimatingStackView:1];
    v14 = v8;
    UIAnimationDragCoefficient();
    v16 = v15 * 0.5;
    UIAnimationDragCoefficient();
    v18 = v17 * 0.2;
    v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    v75 = v19;
    v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    v21 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    v72 = v12;
    [v12 center];
    v23 = v22;
    v25 = v24;
    v26 = [v12 superview];
    [v9 convertPoint:v26 fromView:{v23, v25}];
    v28 = v27;
    v30 = v29;

    v70 = v14;
    [v14 center];
    v32 = v31;
    v34 = v33;
    v35 = [v14 superview];
    [v9 convertPoint:v35 fromView:{v32, v34}];
    v37 = v36;
    v39 = v38;

    if (v30 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v30;
    }

    v41 = v40 + -50.0;
    v42 = v28 + (v37 - v28) * 0.5;
    [v9 bounds];
    MidX = CGRectGetMidX(v87);
    if (vabdd_f64(v37, v28) < vabdd_f64(v37, MidX))
    {
      v42 = MidX;
    }

    v44 = [MEMORY[0x1E69DC728] bezierPath];
    [v44 moveToPoint:{v28, v30}];
    v69 = v44;
    [v44 addQuadCurveToPoint:v37 controlPoint:{v39, v42, v41}];
    v45 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
    [v45 setPath:{objc_msgSend(v44, "CGPath")}];
    [v45 setKeyTimes:&unk_1F2B7D508];
    v86[0] = v19;
    v73 = v9;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
    [v45 setTimingFunctions:v46];

    v47 = v45;
    v66 = v45;
    [v45 setDuration:v16];
    v48 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
    [v48 setValues:&unk_1F2B7D520];
    [v48 setKeyTimes:&unk_1F2B7D538];
    v85[0] = v20;
    v85[1] = v21;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v48 setTimingFunctions:v49];

    v65 = v48;
    [v48 setDuration:v16];
    v50 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.z"];
    [v50 setValues:&unk_1F2B7D550];
    [v50 setKeyTimes:&unk_1F2B7D568];
    v84 = v20;
    v67 = v20;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    [v50 setTimingFunctions:v51];

    [v50 setDuration:v16];
    v52 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
    [v52 setValues:&unk_1F2B7D580];
    [v52 setKeyTimes:&unk_1F2B7D598];
    v83 = v20;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    [v52 setTimingFunctions:v53];

    [v52 setDuration:v16];
    v54 = [MEMORY[0x1E6979308] animation];
    [v54 setDuration:v16];
    [v54 setRemovedOnCompletion:0];
    [v54 setFillMode:*MEMORY[0x1E69797E8]];
    v82[0] = v47;
    v82[1] = v48;
    v82[2] = v50;
    v82[3] = v52;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    v55 = v74 = v8;
    [v54 setAnimations:v55];

    v56 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
    [v56 setBeginTime:v16];
    [v56 setDuration:v18];
    [v56 setValues:&unk_1F2B7D5B0];
    [v56 setKeyTimes:&unk_1F2B7D5C8];
    v81[0] = v75;
    v81[1] = v21;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    [v56 setTimingFunctions:v57];

    v58 = [MEMORY[0x1E6979308] animation];
    [v58 setDuration:v16 + v18];
    [v58 setRemovedOnCompletion:1];
    [v58 setFillMode:*MEMORY[0x1E69797F0]];
    v80 = v56;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    [v58 setAnimations:v59];

    [v58 setDelegate:v68];
    v60 = [PUInterfaceManager beginDisablingUserInteractionForReason:3];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __78__PUPickerBannerView_animateImagesOntoView_inContainerView_completionHandler___block_invoke;
    v76[3] = &unk_1E7B7D308;
    v77 = v71;
    v78 = v60;
    v79 = v11;
    v61 = v60;
    v62 = v71;
    [(PUPickerBannerView *)v68 _setAnimationCompletionHandler:v76];
    v63 = [v62 layer];
    [v63 addAnimation:v54 forKey:@"jumpAndLandAnimation"];

    v64 = [v70 layer];

    [v64 addAnimation:v58 forKey:@"jumpAndLandAnimation"];
    v9 = v73;

    v8 = v74;
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 1);
  }
}

uint64_t __78__PUPickerBannerView_animateImagesOntoView_inContainerView_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [PUInterfaceManager endDisablingUserInteraction:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateLabel
{
  v4 = [(PUPickerBannerView *)self title];
  v3 = [(PUPickerBannerView *)self _label];
  [v3 setText:v4];

  [(PUPickerBannerView *)self setNeedsLayout];
}

- (void)_updateStackView
{
  v8 = [(PUPickerBannerView *)self images];
  v3 = [(PUPickerBannerView *)self _stackView];
  v4 = +[PUStackView maximumNumberOfVisibleItemsForStyle:](PUStackView, "maximumNumberOfVisibleItemsForStyle:", [v3 style]);
  v5 = [v8 count];
  if (v4 >= v5)
  {
    v4 = v5;
  }

  [v3 setNumberOfVisibleItems:v4];
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [v8 objectAtIndex:i];
      [v7 size];
      [v3 setImageSize:i forItemAtIndex:?];
      [v3 setImage:v7 forItemAtIndex:i];
    }
  }

  [(PUPickerBannerView *)self setNeedsLayout];
}

- (void)_setAlignment:(int64_t)a3
{
  if (self->__alignment != a3)
  {
    self->__alignment = a3;
    [(PUPickerBannerView *)self setNeedsLayout];
  }
}

- (void)_setAnimatingStackView:(BOOL)a3
{
  if (self->__animatingStackView != a3)
  {
    self->__animatingStackView = a3;
    [(PUPickerBannerView *)self setNeedsLayout];
  }
}

- (void)setRightView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  rightView = self->_rightView;
  if (rightView != v7)
  {
    v9 = rightView;
    objc_storeStrong(&self->_rightView, a3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PUPickerBannerView_setRightView_animated___block_invoke;
    aBlock[3] = &unk_1E7B809F0;
    v10 = v9;
    v14 = v10;
    v15 = self;
    v16 = v7;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v4)
    {
      [(PUPickerBannerView *)self layoutSubviews];
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v12 animations:0 completion:0.3];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

uint64_t __44__PUPickerBannerView_setRightView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 addSubview:v3];
}

- (void)setLeftView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  leftView = self->_leftView;
  if (leftView != v7)
  {
    v9 = leftView;
    objc_storeStrong(&self->_leftView, a3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__PUPickerBannerView_setLeftView_animated___block_invoke;
    aBlock[3] = &unk_1E7B809F0;
    v10 = v9;
    v14 = v10;
    v15 = self;
    v16 = v7;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v4)
    {
      [(PUPickerBannerView *)self layoutSubviews];
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v12 animations:0 completion:0.3];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

uint64_t __43__PUPickerBannerView_setLeftView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 addSubview:v3];
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = [a3 copy];
    title = self->_title;
    self->_title = v4;

    [(PUPickerBannerView *)self _updateLabel];
  }
}

- (void)setImages:(id)a3
{
  if (self->_images != a3)
  {
    v4 = [a3 copy];
    images = self->_images;
    self->_images = v4;

    [(PUPickerBannerView *)self _updateStackView];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PUPickerBannerView *)self _updateAlignment];
  }
}

- (CGRect)_frameReversedIfRightToLeft:(BOOL)a3 frame:(CGRect)a4 bounds:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3)
  {
    MaxX = CGRectGetMaxX(a5);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    x = MaxX - CGRectGetWidth(v14) - x;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)layoutSubviews
{
  v4 = [(PUPickerBannerView *)self _stackView];
  v5 = [v4 numberOfVisibleItems];
  v6 = [(PUPickerBannerView *)self _label];
  [v4 frame];
  v8 = v7;
  slice.origin.x = v7;
  slice.origin.y = v9;
  rect = v9;
  slice.size.width = v10;
  slice.size.height = v11;
  [v6 frame];
  v92 = v12;
  v93 = v13;
  remainder.origin.x = v12;
  remainder.origin.y = v13;
  remainder.size.width = v14;
  remainder.size.height = v15;
  [(PUPickerBannerView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(PUPickerBannerView *)self safeAreaInsets];
  v25 = v17 + v24;
  v27 = v19 + v26;
  v29 = v21 - (v24 + v28);
  v31 = v23 - (v26 + v30);
  v32 = [(PUPickerBannerView *)self leftView];
  v33 = [(PUPickerBannerView *)self rightView];
  [v32 center];
  v35 = v34;
  v37 = v36;
  [v33 center];
  v97 = v38;
  v40 = v39;
  if (v32)
  {
    [v32 frame];
    v41 = CGRectGetWidth(v100) + 14.0;
    v101.origin.x = v25;
    v101.origin.y = v27;
    v101.size.width = v29;
    v101.size.height = v31;
    CGRectGetMinX(v101);
    UIRoundToViewScale();
    v96 = v42;
    v102.origin.x = v25;
    v102.origin.y = v27;
    v102.size.width = v29;
    v102.size.height = v31;
    CGRectGetMidY(v102);
    UIRoundToViewScale();
    v37 = v43;
    v44 = fmax(v41, 0.0);
  }

  else
  {
    v96 = v35;
    v44 = 0.0;
  }

  v95 = v37;
  if (v33)
  {
    [v33 frame];
    v45 = CGRectGetWidth(v103) + 14.0;
    v104.origin.x = v25;
    v104.origin.y = v27;
    v104.size.width = v29;
    v104.size.height = v31;
    CGRectGetMaxX(v104);
    UIRoundToViewScale();
    v97 = v46;
    v105.origin.x = v25;
    v105.origin.y = v27;
    v105.size.width = v29;
    v105.size.height = v31;
    CGRectGetMidY(v105);
    UIRoundToViewScale();
    v40 = v47;
    if (v44 < v45)
    {
      v44 = v45;
    }
  }

  v106.origin.x = v25;
  v106.origin.y = v27;
  v106.size.width = v29;
  v106.size.height = v31;
  v107 = CGRectInset(v106, v44, 0.0);
  x = v107.origin.x;
  y = v107.origin.y;
  width = v107.size.width;
  height = v107.size.height;
  v52 = [(PUPickerBannerView *)self _alignment];
  v53 = v52;
  if (v52 == 1)
  {
    v57 = x;
    v58 = y;
    v59 = width;
    v60 = height;
    if (v5)
    {
      v61 = CGRectGetHeight(*&v57);
      slice.size.width = v61;
      slice.size.height = v61;
      v110.origin.x = x;
      v110.origin.y = y;
      v110.size.width = width;
      v110.size.height = height;
      v62 = CGRectGetWidth(v110) + -10.0;
      v111.origin.x = v8;
      v111.origin.y = rect;
      v111.size.width = v61;
      v111.size.height = v61;
      v63 = v62 - CGRectGetWidth(v111);
      [v6 sizeThatFits:{v63, 0.0}];
      if (v64 < v63)
      {
        v63 = v64;
      }

      remainder.size.width = v63;
      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = height;
      remainder.size.height = CGRectGetHeight(v112);
      v113.origin.x = x;
      v113.origin.y = y;
      v113.size.width = width;
      v113.size.height = height;
      MidX = CGRectGetMidX(v113);
      v114.origin.x = v8;
      v114.origin.y = rect;
      v114.size.width = v61;
      v114.size.height = v61;
      CGRectGetWidth(v114);
      v115.origin.x = v92;
      v115.origin.y = v93;
      v115.size.width = v63;
      v115.size.height = remainder.size.height;
      CGRectGetWidth(v115);
      UIRoundToViewScale();
      v66 = v65;
      slice.origin.x = v65;
      v116.origin.x = x;
      v116.origin.y = y;
      v116.size.width = width;
      v116.size.height = height;
      v117.origin.y = CGRectGetMinY(v116);
      slice.origin.y = v117.origin.y;
      v117.origin.x = v66;
      v117.size.width = v61;
      v117.size.height = v61;
      v67 = CGRectGetMaxX(v117) + 10.0;
    }

    else
    {
      v69 = CGRectGetWidth(*&v57);
      [v6 sizeThatFits:{v69, 0.0}];
      if (v70 < v69)
      {
        v69 = v70;
      }

      remainder.size.width = v69;
      v118.origin.x = x;
      v118.origin.y = y;
      v118.size.width = width;
      v118.size.height = height;
      remainder.size.height = CGRectGetHeight(v118);
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      CGRectGetMidX(v119);
      v120.origin.x = v92;
      v120.origin.y = v93;
      v120.size.width = v69;
      v120.size.height = remainder.size.height;
      CGRectGetWidth(v120);
      UIRoundToViewScale();
    }

    remainder.origin.x = v67;
    v121.origin.x = x;
    v121.origin.y = y;
    v121.size.width = width;
    v121.size.height = height;
    remainder.origin.y = CGRectGetMinY(v121);
  }

  else
  {
    if (!v52)
    {
      v55 = v95;
      v54 = v96;
      if (v5)
      {
        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = width;
        v108.size.height = height;
        v56 = CGRectGetHeight(v108);
        v109.origin.x = x;
        v109.origin.y = y;
        v109.size.width = width;
        v109.size.height = height;
        CGRectDivide(v109, &slice, &remainder, v56, CGRectMinXEdge);
        remainder = CGRectInset(remainder, 10.0, 0.0);
      }

      else
      {
        remainder.origin.x = x;
        remainder.origin.y = y;
        remainder.size.width = width;
        remainder.size.height = height;
      }

      goto LABEL_22;
    }

    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"PUPickerBannerView.m" lineNumber:125 description:@"Alignment not implemented."];
  }

  v55 = v95;
  v54 = v96;
LABEL_22:
  v71 = [(PUPickerBannerView *)self _animatingStackView];
  if (v5)
  {
    v72 = v71;
  }

  else
  {
    v72 = 1;
  }

  v73 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PUPickerBannerView semanticContentAttribute](self, "semanticContentAttribute")}] == 1;
  [v32 setCenter:{v54, v55}];
  [v32 frame];
  [PUPickerBannerView _frameReversedIfRightToLeft:"_frameReversedIfRightToLeft:frame:bounds:" frame:v73 bounds:?];
  [v32 setFrame:{PURoundRectToPixel(v74, v75, v76, v77)}];
  [v33 setCenter:{v97, v40}];
  [v33 frame];
  [PUPickerBannerView _frameReversedIfRightToLeft:"_frameReversedIfRightToLeft:frame:bounds:" frame:v73 bounds:?];
  [v33 setFrame:{PURoundRectToPixel(v78, v79, v80, v81)}];
  [v4 setHidden:v72];
  [(PUPickerBannerView *)self _frameReversedIfRightToLeft:v73 frame:slice.origin.x bounds:slice.origin.y, slice.size.width, slice.size.height, x, y, width, height];
  slice.origin.x = v82;
  slice.origin.y = v83;
  slice.size.width = v84;
  slice.size.height = v85;
  [v4 setFrame:?];
  if (v53)
  {
    v86 = v53;
  }

  else
  {
    v86 = 4;
  }

  [v6 setTextAlignment:v86];
  [(PUPickerBannerView *)self _frameReversedIfRightToLeft:v73 frame:remainder.origin.x bounds:remainder.origin.y, remainder.size.width, remainder.size.height, x, y, width, height];
  remainder.origin.x = v87;
  remainder.origin.y = v88;
  remainder.size.width = v89;
  remainder.size.height = v90;
  [v6 setFrame:?];
}

- (PUPickerBannerView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PUPickerBannerView;
  v3 = [(PUPickerBannerView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PUInterfaceManager currentTheme];
    v5 = [PUStackView alloc];
    [(PUPickerBannerView *)v3 bounds];
    v6 = [(PUStackView *)v5 initWithFrame:?];
    [v4 configureBannerStackView:v6];
    [(PUPickerBannerView *)v3 addSubview:v6];
    [(PUPickerBannerView *)v3 _setStackView:v6];
    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PUPickerBannerView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    [v4 configureBannerLabel:v8];
    [(PUPickerBannerView *)v3 addSubview:v8];
    [(PUPickerBannerView *)v3 _setLabel:v8];
    v9 = [v4 bannerBackgroundColor];
    [(PUPickerBannerView *)v3 setBackgroundColor:v9];
  }

  return v3;
}

@end