@interface PGStashedMaskView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_mainBodyBounds;
- (CGRect)tabViewBounds;
- (CGSize)minimumStashTabSize;
- (PGStashedMaskView)initWithFrame:(CGRect)a3 minimumStashTabSize:(CGSize)a4;
- (UIView)tabShadowView;
- (void)layoutSubviews;
- (void)setMinimumStashTabSize:(CGSize)a3;
- (void)setTabHidden:(BOOL)a3 left:(BOOL)a4;
@end

@implementation PGStashedMaskView

- (PGStashedMaskView)initWithFrame:(CGRect)a3 minimumStashTabSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v51.receiver = self;
  v51.super_class = PGStashedMaskView;
  v6 = [(PGStashedMaskView *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_tabHidden = 1;
    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    mainBody = v7->_mainBody;
    v7->_mainBody = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tab = v7->_tab;
    v7->_tab = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabTopCornerFill = v7->_tabTopCornerFill;
    v7->_tabTopCornerFill = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabBottomCornerFill = v7->_tabBottomCornerFill;
    v7->_tabBottomCornerFill = v19;

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabLeftTopCornerDestOut = v7->_tabLeftTopCornerDestOut;
    v7->_tabLeftTopCornerDestOut = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabLeftBottomCornerDestOut = v7->_tabLeftBottomCornerDestOut;
    v7->_tabLeftBottomCornerDestOut = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabRightTopCornerDestOut = v7->_tabRightTopCornerDestOut;
    v7->_tabRightTopCornerDestOut = v25;

    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v10, v11, v12}];
    tabRightBottomCornerDestOut = v7->_tabRightBottomCornerDestOut;
    v7->_tabRightBottomCornerDestOut = v27;

    [(UIView *)v7->_tab setUserInteractionEnabled:0];
    [(UIView *)v7->_tabTopCornerFill setUserInteractionEnabled:0];
    [(UIView *)v7->_tabBottomCornerFill setUserInteractionEnabled:0];
    [(UIView *)v7->_tabLeftTopCornerDestOut setUserInteractionEnabled:0];
    [(UIView *)v7->_tabLeftBottomCornerDestOut setUserInteractionEnabled:0];
    [(UIView *)v7->_tabRightTopCornerDestOut setUserInteractionEnabled:0];
    [(UIView *)v7->_tabRightBottomCornerDestOut setUserInteractionEnabled:0];
    v29 = v7->_mainBody;
    v30 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v29 setBackgroundColor:v30];

    v31 = v7->_tab;
    v32 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v31 setBackgroundColor:v32];

    v33 = v7->_tabTopCornerFill;
    v34 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v33 setBackgroundColor:v34];

    v35 = v7->_tabBottomCornerFill;
    v36 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v35 setBackgroundColor:v36];

    v37 = v7->_tabLeftTopCornerDestOut;
    v38 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v37 setBackgroundColor:v38];

    v39 = v7->_tabLeftBottomCornerDestOut;
    v40 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v39 setBackgroundColor:v40];

    v41 = v7->_tabRightTopCornerDestOut;
    v42 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v41 setBackgroundColor:v42];

    v43 = v7->_tabRightBottomCornerDestOut;
    v44 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v43 setBackgroundColor:v44];

    [(UIView *)v7->_mainBody _setContinuousCornerRadius:15.0];
    [(UIView *)v7->_tab _setContinuousCornerRadius:15.0];
    [(UIView *)v7->_tabLeftTopCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabLeftBottomCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabRightTopCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabRightBottomCornerDestOut _setContinuousCornerRadius:3.0];
    v45 = [(UIView *)v7->_tabLeftTopCornerDestOut layer];
    v46 = *MEMORY[0x1E69798E8];
    [v45 setCompositingFilter:*MEMORY[0x1E69798E8]];

    v47 = [(UIView *)v7->_tabRightTopCornerDestOut layer];
    [v47 setCompositingFilter:v46];

    v48 = [(UIView *)v7->_tabLeftBottomCornerDestOut layer];
    [v48 setCompositingFilter:v46];

    v49 = [(UIView *)v7->_tabRightBottomCornerDestOut layer];
    [v49 setCompositingFilter:v46];

    [(PGStashedMaskView *)v7 addSubview:v7->_mainBody];
    [(PGStashedMaskView *)v7 addSubview:v7->_tab];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabTopCornerFill];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabBottomCornerFill];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabLeftTopCornerDestOut];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabLeftBottomCornerDestOut];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabRightTopCornerDestOut];
    [(PGStashedMaskView *)v7 addSubview:v7->_tabRightBottomCornerDestOut];
    [(PGStashedMaskView *)v7 setMinimumStashTabSize:width, height];
    [(UIView *)v7 PG_setAllowsGroupBlending:0];
    [(UIView *)v7 PG_setAllowsEdgeAntialiasing:1];
  }

  return v7;
}

- (void)setTabHidden:(BOOL)a3 left:(BOOL)a4
{
  if (self->_tabHidden != a3 || self->_tabShownLeft != a4)
  {
    self->_tabHidden = a3;
    self->_tabShownLeft = a4 & ~a3;
    [(PGStashedMaskView *)self bounds];
    v6 = 15.0;
    if (v7 >= 105.0)
    {
      [(PGStashedMaskView *)self bounds];
      v6 = 15.0;
      if (v8 < 136.0)
      {
        [(PGStashedMaskView *)self bounds];
        v10 = (v9 + -105.0) / 31.0;
        if (v10 <= 0.0)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v10 + 0.0;
        }

        v6 = fmin(fmax(fmin(v11, 1.0) * -5.0 + 15.0, 10.0), 15.0);
      }
    }

    if (self->_tabHidden)
    {
      v6 = 15.0;
    }

    [(PGStashedMaskView *)self _setContinuousCornerRadius:v6];
    if (a3)
    {
      tab = self->_tab;
      v28 = *(MEMORY[0x1E695EFD0] + 16);
      *&v31.a = *MEMORY[0x1E695EFD0];
      v29 = *&v31.a;
      *&v31.c = v28;
      *&v31.tx = *(MEMORY[0x1E695EFD0] + 32);
      v27 = *&v31.tx;
      [(UIView *)tab setTransform:&v31];
      WeakRetained = objc_loadWeakRetained(&self->_tabShadowView);
      *&v31.a = v29;
      *&v31.c = v28;
      *&v31.tx = v27;
      [WeakRetained setTransform:&v31];

      tabTopCornerFill = self->_tabTopCornerFill;
      *&v31.a = v29;
      *&v31.c = v28;
      *&v31.tx = v27;
      [(UIView *)tabTopCornerFill setTransform:&v31];
      tabBottomCornerFill = self->_tabBottomCornerFill;
      *&v31.a = v29;
      *&v31.c = v28;
      *&v31.tx = v27;
      [(UIView *)tabBottomCornerFill setTransform:&v31];
      v16 = objc_loadWeakRetained(&self->_tabShadowView);
      v17 = v16;
      v18 = 0.0;
    }

    else
    {
      tabShownLeft = self->_tabShownLeft;
      width = self->_minimumStashTabSize.width;
      memset(&v31, 0, sizeof(v31));
      v21 = -width;
      if (!tabShownLeft)
      {
        v21 = width;
      }

      v22 = *(MEMORY[0x1E695EFD0] + 16);
      *&v30.a = *MEMORY[0x1E695EFD0];
      *&v30.c = v22;
      *&v30.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformTranslate(&v31, &v30, v21, 0.0);
      v23 = self->_tab;
      v30 = v31;
      [(UIView *)v23 setTransform:&v30];
      v24 = objc_loadWeakRetained(&self->_tabShadowView);
      v30 = v31;
      [v24 setTransform:&v30];

      v25 = self->_tabTopCornerFill;
      v30 = v31;
      [(UIView *)v25 setTransform:&v30];
      v26 = self->_tabBottomCornerFill;
      v30 = v31;
      [(UIView *)v26 setTransform:&v30];
      v16 = objc_loadWeakRetained(&self->_tabShadowView);
      v17 = v16;
      v18 = 1.0;
    }

    [v16 setAlpha:v18];
  }
}

- (void)setMinimumStashTabSize:(CGSize)a3
{
  width = a3.width;
  if (self->_minimumStashTabSize.width != a3.width || self->_minimumStashTabSize.height != a3.height)
  {
    self->_minimumStashTabSize = a3;
    [(UIView *)self->_tabLeftTopCornerDestOut setBounds:0.0, 0.0, a3.width, a3.width];
    [(UIView *)self->_tabRightTopCornerDestOut setBounds:0.0, 0.0, width, width];
    [(UIView *)self->_tabLeftBottomCornerDestOut setBounds:0.0, 0.0, width, width];
    tabRightBottomCornerDestOut = self->_tabRightBottomCornerDestOut;

    [(UIView *)tabRightBottomCornerDestOut setBounds:0.0, 0.0, width, width];
  }
}

- (CGRect)tabViewBounds
{
  [(PGStashedMaskView *)self bounds];
  if (v6 >= 105.0)
  {
    height = self->_minimumStashTabSize.height;
  }

  else
  {
    height = v6;
  }

  if (v6 > self->_minimumStashTabSize.height)
  {
    v6 = height;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_mainBodyBounds
{
  [(PGStashedMaskView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PGStashedMaskView *)self tabViewBounds];
  if (v10 > v11)
  {
    v11 = v10;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  tab = self->_tab;
  v8 = [(PGStashedMaskView *)self superview];
  [(UIView *)tab convertPoint:v8 fromView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(UIView *)self->_tab layer];
  LOBYTE(tab) = [v13 containsPoint:{v10, v12}];

  return tab;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = PGStashedMaskView;
  [(PGStashedMaskView *)&v39 layoutSubviews];
  [(PGStashedMaskView *)self bounds];
  v34 = v4;
  v35 = v3;
  v36 = v5;
  v38 = v6;
  [(PGStashedMaskView *)self _mainBodyBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PGStashedMaskView *)self tabViewBounds];
  v16 = v15;
  v37 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UIView *)self->_mainBody setFrame:v8, v10, v12, v14];
  [(UIView *)self->_tab setBounds:v16, v18, v20, v22];
  tab = self->_tab;
  v40.origin.x = v35;
  v40.origin.y = v34;
  v40.size.width = v36;
  v40.size.height = v38;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v35;
  v41.origin.y = v34;
  v41.size.width = v36;
  v41.size.height = v38;
  [(UIView *)tab setPosition:MidX, CGRectGetMidY(v41)];
  [(UIView *)self->_tab _continuousCornerRadius];
  v26 = v20 + v25 * -2.0;
  [(UIView *)self->_tabTopCornerFill setBounds:v37, v18, v26, 5.0];
  [(UIView *)self->_tabBottomCornerFill setBounds:v37, v18, v26, 5.0];
  tabTopCornerFill = self->_tabTopCornerFill;
  [(UIView *)self->_tab position];
  [(UIView *)self->_tab position];
  UIPointRoundToScale();
  [(UIView *)tabTopCornerFill setPosition:?];
  tabBottomCornerFill = self->_tabBottomCornerFill;
  [(UIView *)self->_tab position];
  [(UIView *)self->_tab position];
  UIPointRoundToScale();
  [(UIView *)tabBottomCornerFill setPosition:?];
  tabLeftTopCornerDestOut = self->_tabLeftTopCornerDestOut;
  [(UIView *)self->_tab position];
  UIPointRoundToScale();
  [(UIView *)tabLeftTopCornerDestOut setPosition:?];
  tabRightTopCornerDestOut = self->_tabRightTopCornerDestOut;
  [(UIView *)self->_tabLeftTopCornerDestOut position];
  UIPointRoundToScale();
  [(UIView *)tabRightTopCornerDestOut setPosition:?];
  tabLeftBottomCornerDestOut = self->_tabLeftBottomCornerDestOut;
  [(UIView *)self->_tab position];
  UIPointRoundToScale();
  [(UIView *)tabLeftBottomCornerDestOut setPosition:?];
  tabRightBottomCornerDestOut = self->_tabRightBottomCornerDestOut;
  [(UIView *)self->_tabLeftBottomCornerDestOut position];
  UIPointRoundToScale();
  [(UIView *)tabRightBottomCornerDestOut setPosition:?];
  v33 = v38 < 136.0;
  [(UIView *)self->_tabTopCornerFill setHidden:v33, 136.0, v38];
  [(UIView *)self->_tabBottomCornerFill setHidden:v33];
  [(UIView *)self->_tabLeftTopCornerDestOut setHidden:v33];
  [(UIView *)self->_tabLeftBottomCornerDestOut setHidden:v33];
  [(UIView *)self->_tabRightTopCornerDestOut setHidden:v33];
  [(UIView *)self->_tabRightBottomCornerDestOut setHidden:v33];
}

- (UIView)tabShadowView
{
  WeakRetained = objc_loadWeakRetained(&self->_tabShadowView);

  return WeakRetained;
}

- (CGSize)minimumStashTabSize
{
  width = self->_minimumStashTabSize.width;
  height = self->_minimumStashTabSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end