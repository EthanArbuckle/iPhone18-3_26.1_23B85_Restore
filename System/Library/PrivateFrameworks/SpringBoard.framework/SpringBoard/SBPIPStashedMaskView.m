@interface SBPIPStashedMaskView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_mainBodyBounds;
- (CGRect)tabViewBounds;
- (CGSize)minimumStashTabSize;
- (SBPIPStashedMaskView)initWithFrame:(CGRect)a3 minimumStashTabSize:(CGSize)a4;
- (UIView)tabShadowView;
- (void)layoutSubviews;
- (void)setMinimumStashTabSize:(CGSize)a3;
- (void)setTabHidden:(BOOL)a3 left:(BOOL)a4;
@end

@implementation SBPIPStashedMaskView

- (SBPIPStashedMaskView)initWithFrame:(CGRect)a3 minimumStashTabSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v51.receiver = self;
  v51.super_class = SBPIPStashedMaskView;
  v6 = [(SBPIPStashedMaskView *)&v51 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_tabHidden = 1;
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    mainBody = v7->_mainBody;
    v7->_mainBody = v13;

    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tab = v7->_tab;
    v7->_tab = v15;

    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tabTopCornerFill = v7->_tabTopCornerFill;
    v7->_tabTopCornerFill = v17;

    v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tabBottomCornerFill = v7->_tabBottomCornerFill;
    v7->_tabBottomCornerFill = v19;

    v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tabLeftTopCornerDestOut = v7->_tabLeftTopCornerDestOut;
    v7->_tabLeftTopCornerDestOut = v21;

    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tabLeftBottomCornerDestOut = v7->_tabLeftBottomCornerDestOut;
    v7->_tabLeftBottomCornerDestOut = v23;

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    tabRightTopCornerDestOut = v7->_tabRightTopCornerDestOut;
    v7->_tabRightTopCornerDestOut = v25;

    v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
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
    v30 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v29 setBackgroundColor:v30];

    v31 = v7->_tab;
    v32 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v31 setBackgroundColor:v32];

    v33 = v7->_tabTopCornerFill;
    v34 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v33 setBackgroundColor:v34];

    v35 = v7->_tabBottomCornerFill;
    v36 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v35 setBackgroundColor:v36];

    v37 = v7->_tabLeftTopCornerDestOut;
    v38 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v37 setBackgroundColor:v38];

    v39 = v7->_tabLeftBottomCornerDestOut;
    v40 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v39 setBackgroundColor:v40];

    v41 = v7->_tabRightTopCornerDestOut;
    v42 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v41 setBackgroundColor:v42];

    v43 = v7->_tabRightBottomCornerDestOut;
    v44 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v43 setBackgroundColor:v44];

    [(UIView *)v7->_tab _setContinuousCornerRadius:10.0];
    [(UIView *)v7->_tabLeftTopCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabLeftBottomCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabRightTopCornerDestOut _setContinuousCornerRadius:3.0];
    [(UIView *)v7->_tabRightBottomCornerDestOut _setContinuousCornerRadius:3.0];
    v45 = [(UIView *)v7->_tabLeftTopCornerDestOut layer];
    v46 = *MEMORY[0x277CDA310];
    [v45 setCompositingFilter:*MEMORY[0x277CDA310]];

    v47 = [(UIView *)v7->_tabRightTopCornerDestOut layer];
    [v47 setCompositingFilter:v46];

    v48 = [(UIView *)v7->_tabLeftBottomCornerDestOut layer];
    [v48 setCompositingFilter:v46];

    v49 = [(UIView *)v7->_tabRightBottomCornerDestOut layer];
    [v49 setCompositingFilter:v46];

    [(SBPIPStashedMaskView *)v7 addSubview:v7->_mainBody];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tab];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabTopCornerFill];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabBottomCornerFill];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabLeftTopCornerDestOut];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabLeftBottomCornerDestOut];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabRightTopCornerDestOut];
    [(SBPIPStashedMaskView *)v7 addSubview:v7->_tabRightBottomCornerDestOut];
    [(SBPIPStashedMaskView *)v7 setMinimumStashTabSize:width, height];
    [(UIView *)v7 SBPIP_setAllowsGroupBlending:0];
    [(UIView *)v7 SBPIP_setAllowsEdgeAntialiasing:1];
  }

  return v7;
}

- (void)setTabHidden:(BOOL)a3 left:(BOOL)a4
{
  if (self->_tabHidden != a3 || self->_tabShownLeft != a4)
  {
    self->_tabHidden = a3;
    self->_tabShownLeft = a4 & ~a3;
    WeakRetained = objc_loadWeakRetained(&self->_tabShadowView);
    if (a3)
    {
      tab = self->_tab;
      v19 = *(MEMORY[0x277CBF2C0] + 16);
      *&v22.a = *MEMORY[0x277CBF2C0];
      v20 = *&v22.a;
      *&v22.c = v19;
      *&v22.tx = *(MEMORY[0x277CBF2C0] + 32);
      v18 = *&v22.tx;
      [(UIView *)tab setTransform:&v22];
      *&v22.a = v20;
      *&v22.c = v19;
      *&v22.tx = v18;
      [WeakRetained setTransform:&v22];
      tabTopCornerFill = self->_tabTopCornerFill;
      *&v22.a = v20;
      *&v22.c = v19;
      *&v22.tx = v18;
      [(UIView *)tabTopCornerFill setTransform:&v22];
      tabBottomCornerFill = self->_tabBottomCornerFill;
      *&v22.a = v20;
      *&v22.c = v19;
      *&v22.tx = v18;
      [(UIView *)tabBottomCornerFill setTransform:&v22];
      v10 = 0.0;
    }

    else
    {
      tabShownLeft = self->_tabShownLeft;
      width = self->_minimumStashTabSize.width;
      memset(&v22, 0, sizeof(v22));
      v13 = -width;
      if (!tabShownLeft)
      {
        v13 = width;
      }

      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v21.a = *MEMORY[0x277CBF2C0];
      *&v21.c = v14;
      *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformTranslate(&v22, &v21, v13, 0.0);
      v15 = self->_tab;
      v21 = v22;
      [(UIView *)v15 setTransform:&v21];
      v21 = v22;
      [WeakRetained setTransform:&v21];
      v16 = self->_tabTopCornerFill;
      v21 = v22;
      [(UIView *)v16 setTransform:&v21];
      v17 = self->_tabBottomCornerFill;
      v21 = v22;
      [(UIView *)v17 setTransform:&v21];
      v10 = 1.0;
    }

    [WeakRetained setAlpha:v10];
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
  [(SBPIPStashedMaskView *)self bounds];
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
  [(SBPIPStashedMaskView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBPIPStashedMaskView *)self tabViewBounds];
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
  v8 = [(SBPIPStashedMaskView *)self superview];
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
  v39.super_class = SBPIPStashedMaskView;
  [(SBPIPStashedMaskView *)&v39 layoutSubviews];
  [(SBPIPStashedMaskView *)self bounds];
  v34 = v4;
  v35 = v3;
  v36 = v5;
  v38 = v6;
  [(SBPIPStashedMaskView *)self _mainBodyBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBPIPStashedMaskView *)self tabViewBounds];
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
  [(UIView *)tab setCenter:MidX, CGRectGetMidY(v41)];
  [(UIView *)self->_tab _continuousCornerRadius];
  v26 = v20 + v25 * -2.0;
  [(UIView *)self->_tabTopCornerFill setBounds:v37, v18, v26, 5.0];
  [(UIView *)self->_tabBottomCornerFill setBounds:v37, v18, v26, 5.0];
  tabTopCornerFill = self->_tabTopCornerFill;
  [(UIView *)self->_tab center];
  [(UIView *)self->_tab center];
  UIPointRoundToScale();
  [(UIView *)tabTopCornerFill setCenter:?];
  tabBottomCornerFill = self->_tabBottomCornerFill;
  [(UIView *)self->_tab center];
  [(UIView *)self->_tab center];
  UIPointRoundToScale();
  [(UIView *)tabBottomCornerFill setCenter:?];
  tabLeftTopCornerDestOut = self->_tabLeftTopCornerDestOut;
  [(UIView *)self->_tab center];
  UIPointRoundToScale();
  [(UIView *)tabLeftTopCornerDestOut setCenter:?];
  tabRightTopCornerDestOut = self->_tabRightTopCornerDestOut;
  [(UIView *)self->_tabLeftTopCornerDestOut center];
  UIPointRoundToScale();
  [(UIView *)tabRightTopCornerDestOut setCenter:?];
  tabLeftBottomCornerDestOut = self->_tabLeftBottomCornerDestOut;
  [(UIView *)self->_tab center];
  UIPointRoundToScale();
  [(UIView *)tabLeftBottomCornerDestOut setCenter:?];
  tabRightBottomCornerDestOut = self->_tabRightBottomCornerDestOut;
  [(UIView *)self->_tabLeftBottomCornerDestOut center];
  UIPointRoundToScale();
  [(UIView *)tabRightBottomCornerDestOut setCenter:?];
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