@interface SBShelfBackgroundView
- (CGRect)extendedBlurRect;
- (SBShelfBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setExtendedBlurRect:(CGRect)a3;
@end

@implementation SBShelfBackgroundView

- (SBShelfBackgroundView)initWithFrame:(CGRect)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SBShelfBackgroundView;
  v3 = [(SBShelfBackgroundView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277D26718];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 materialViewWithRecipeNamed:@"shelfBackground" inBundle:v5 options:0 initialWeighting:0 scaleAdjustment:1.0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v6;

    [(MTMaterialView *)v3->_backgroundView setZoomEnabled:0];
    [(MTMaterialView *)v3->_backgroundView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
    [(SBShelfBackgroundView *)v3 addSubview:v3->_backgroundView];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    backgroundMaskView = v3->_backgroundMaskView;
    v3->_backgroundMaskView = v13;

    [(MTMaterialView *)v3->_backgroundView setMaskView:v3->_backgroundMaskView];
    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    backgroundMaskInnerRectangleView = v3->_backgroundMaskInnerRectangleView;
    v3->_backgroundMaskInnerRectangleView = v15;

    v17 = v3->_backgroundMaskInnerRectangleView;
    v18 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v17 setBackgroundColor:v18];

    [(UIView *)v3->_backgroundMaskView addSubview:v3->_backgroundMaskInnerRectangleView];
    v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA580]];
    [v19 setName:@"luminanceCurveMap"];
    [v19 setValue:&unk_28336F120 forKey:*MEMORY[0x277CDA540]];
    v20 = *MEMORY[0x277CDA360];
    [v19 setValue:&unk_28336F8C0 forKey:*MEMORY[0x277CDA360]];
    v21 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v21 setName:@"colorSaturate"];
    [v21 setValue:&unk_28336F8D0 forKey:v20];
    v22 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v22 setName:@"gaussianBlur"];
    [v22 setValue:@"low" forKey:*MEMORY[0x277CDA4B8]];
    [v22 setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
    [v22 setValue:&unk_28336F8E0 forKey:*MEMORY[0x277CDA4F0]];
    v23 = [(UIView *)v3->_backgroundMaskInnerRectangleView layer];
    v27[0] = v19;
    v27[1] = v21;
    v27[2] = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    [v23 setFilters:v24];
  }

  return v3;
}

- (void)setExtendedBlurRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_extendedBlurRect = &self->_extendedBlurRect;
  if (!CGRectEqualToRect(a3, self->_extendedBlurRect))
  {
    p_extendedBlurRect->origin.x = x;
    p_extendedBlurRect->origin.y = y;
    p_extendedBlurRect->size.width = width;
    p_extendedBlurRect->size.height = height;

    [(SBShelfBackgroundView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBShelfBackgroundView;
  [(SBShelfBackgroundView *)&v6 layoutSubviews];
  [(MTMaterialView *)self->_backgroundView setFrame:self->_extendedBlurRect.origin.x, self->_extendedBlurRect.origin.y, self->_extendedBlurRect.size.width, self->_extendedBlurRect.size.height];
  backgroundMaskView = self->_backgroundMaskView;
  [(MTMaterialView *)self->_backgroundView bounds];
  [(UIView *)backgroundMaskView setFrame:?];
  [(SBShelfBackgroundView *)self bounds];
  v7.origin.x = v4 - self->_extendedBlurRect.origin.x;
  v7.origin.y = v5 - self->_extendedBlurRect.origin.y;
  v8 = CGRectInset(v7, -22.0, -22.0);
  v9 = CGRectOffset(v8, 0.0, 44.0);
  [(UIView *)self->_backgroundMaskInnerRectangleView setFrame:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
}

- (CGRect)extendedBlurRect
{
  x = self->_extendedBlurRect.origin.x;
  y = self->_extendedBlurRect.origin.y;
  width = self->_extendedBlurRect.size.width;
  height = self->_extendedBlurRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end