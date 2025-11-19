@interface SKUIOnboardingInstructionsView
+ (id)explanationAttributedStringWithString:(id)a3;
+ (id)titleAttributedStringWithString:(id)a3;
- (SKUIOnboardingInstructionsView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (id)_newExplanationLabel;
- (id)_newTitleLabel;
- (void)layoutSubviews;
- (void)popLabelState;
- (void)pushLabelState;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentPosition:(int64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5;
@end

@implementation SKUIOnboardingInstructionsView

- (SKUIOnboardingInstructionsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingInstructionsView initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIOnboardingInstructionsView;
  v8 = [(SKUIOnboardingInstructionsView *)&v15 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUIOnboardingInstructionsView *)v8 _newExplanationLabel];
    explanationLabel = v9->_explanationLabel;
    v9->_explanationLabel = v10;

    [(SKUIOnboardingInstructionsView *)v9 addSubview:v9->_explanationLabel];
    v12 = [(SKUIOnboardingInstructionsView *)v9 _newTitleLabel];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v12;

    [(SKUIOnboardingInstructionsView *)v9 addSubview:v9->_titleLabel];
  }

  return v9;
}

+ (id)explanationAttributedStringWithString:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v5 setObject:v6 forKey:*MEMORY[0x277D740A8]];

  v7 = [MEMORY[0x277D75348] grayColor];
  [v5 setObject:v7 forKey:*MEMORY[0x277D740C0]];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v4 attributes:v5];

  return v8;
}

+ (id)titleAttributedStringWithString:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D74300] _ultraLightSystemFontOfSize:28.0];
  [v5 setObject:v6 forKey:*MEMORY[0x277D740A8]];

  v7 = [MEMORY[0x277D75348] blackColor];
  [v5 setObject:v7 forKey:*MEMORY[0x277D740C0]];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v4 attributes:v5];

  return v8;
}

- (void)popLabelState
{
  if ([(NSMutableArray *)self->_labelsStack count]>= 2)
  {
    [(UILabel *)self->_explanationLabel removeFromSuperview];
    [(UILabel *)self->_titleLabel removeFromSuperview];
    v3 = [(NSMutableArray *)self->_labelsStack lastObject];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    v5 = self->_titleLabel;
    v6 = [(SKUIOnboardingInstructionsView *)self backgroundColor];
    [(UILabel *)v5 setBackgroundColor:v6];

    [(NSMutableArray *)self->_labelsStack removeLastObject];
    [(SKUIOnboardingInstructionsView *)self addSubview:self->_titleLabel];
    v7 = [(NSMutableArray *)self->_labelsStack lastObject];
    explanationLabel = self->_explanationLabel;
    self->_explanationLabel = v7;

    v9 = self->_explanationLabel;
    v10 = [(SKUIOnboardingInstructionsView *)self backgroundColor];
    [(UILabel *)v9 setBackgroundColor:v10];

    [(NSMutableArray *)self->_labelsStack removeLastObject];
    [(SKUIOnboardingInstructionsView *)self addSubview:self->_explanationLabel];

    [(SKUIOnboardingInstructionsView *)self setNeedsLayout];
  }
}

- (void)pushLabelState
{
  labelsStack = self->_labelsStack;
  if (!labelsStack)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_labelsStack;
    self->_labelsStack = v4;

    labelsStack = self->_labelsStack;
  }

  [(NSMutableArray *)labelsStack addObject:self->_explanationLabel];
  [(NSMutableArray *)self->_labelsStack addObject:self->_titleLabel];
  [(UILabel *)self->_explanationLabel removeFromSuperview];
  [(UILabel *)self->_titleLabel removeFromSuperview];
  v6 = [(SKUIOnboardingInstructionsView *)self _newExplanationLabel];
  explanationLabel = self->_explanationLabel;
  self->_explanationLabel = v6;

  v8 = self->_explanationLabel;
  v9 = [(SKUIOnboardingInstructionsView *)self backgroundColor];
  [(UILabel *)v8 setBackgroundColor:v9];

  [(SKUIOnboardingInstructionsView *)self addSubview:self->_explanationLabel];
  v10 = [(SKUIOnboardingInstructionsView *)self _newTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  v12 = self->_titleLabel;
  v13 = [(SKUIOnboardingInstructionsView *)self backgroundColor];
  [(UILabel *)v12 setBackgroundColor:v13];

  [(SKUIOnboardingInstructionsView *)self addSubview:self->_titleLabel];

  [(SKUIOnboardingInstructionsView *)self setNeedsLayout];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIOnboardingInstructionsView *)self setNeedsLayout];
  }
}

- (void)setContentPosition:(int64_t)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (self->_contentPosition == a3)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 1);
    }
  }

  else
  {
    self->_contentPosition = a3;
    if (a4)
    {
      [(UILabel *)self->_explanationLabel frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(UILabel *)self->_titleLabel frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(SKUIOnboardingInstructionsView *)self layoutSubviews];
      [(UILabel *)self->_explanationLabel frame];
      v41 = v27;
      v42 = v26;
      v39 = v29;
      v40 = v28;
      [(UILabel *)self->_titleLabel frame];
      v37 = v31;
      v38 = v30;
      v35 = v33;
      v36 = v32;
      [(UILabel *)self->_explanationLabel setFrame:v11, v13, v15, v17];
      [(UILabel *)self->_titleLabel setFrame:v19, v21, v23, v25];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __78__SKUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke;
      v46[3] = &unk_2781FB108;
      v46[4] = self;
      v46[5] = v38;
      v46[6] = v37;
      v46[7] = v36;
      v46[8] = v35;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v46 options:0 animations:1.0 completion:0.0];
      v34 = MEMORY[0x277D75D18];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __78__SKUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_2;
      v45[3] = &unk_2781FB108;
      v45[4] = self;
      v45[5] = v42;
      v45[6] = v41;
      v45[7] = v40;
      v45[8] = v39;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __78__SKUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_3;
      v43[3] = &unk_2781F85B8;
      v44 = v9;
      [v34 animateWithDuration:0 delay:v45 options:v43 animations:1.05 completion:0.05];
    }

    else
    {
      if (v8)
      {
        (*(v8 + 2))(v8, 1);
      }

      [(SKUIOnboardingInstructionsView *)self setNeedsLayout];
    }
  }
}

uint64_t __78__SKUIOnboardingInstructionsView_setContentPosition_animated_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)layoutSubviews
{
  [(SKUIOnboardingInstructionsView *)self bounds];
  v4 = v3;
  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  [(UILabel *)self->_titleLabel sizeThatFits:v6, 1.79769313e308];
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_explanationLabel sizeThatFits:v6, 1.79769313e308];
  v13 = v12;
  top = self->_contentInset.top;
  if (!self->_contentPosition)
  {
    v15 = top + (v4 - top - self->_contentInset.bottom - v10 - v12 + -10.0) * 0.5;
    top = floorf(v15);
  }

  if (v11 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v11;
  }

  if (v8 >= v6)
  {
    v8 = v6;
  }

  left = self->_contentInset.left;
  v18 = (v6 - v8) * 0.5;
  v19 = left + floorf(v18);
  v20 = floorf(v19);
  v21 = (v6 - v16) * 0.5;
  *&left = left + floorf(v21);
  v22 = floorf(*&left);
  v26.origin.x = v20;
  v26.origin.y = top;
  v26.size.width = v8;
  v26.size.height = v10;
  v23 = CGRectGetMaxY(v26) + 10.0;
  [(UILabel *)self->_titleLabel setFrame:v20, top, v8, v10];
  explanationLabel = self->_explanationLabel;

  [(UILabel *)explanationLabel setFrame:v22, v23, v16, v13];
}

- (void)setBackgroundColor:(id)a3
{
  explanationLabel = self->_explanationLabel;
  v5 = a3;
  [(UILabel *)explanationLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIOnboardingInstructionsView;
  [(SKUIOnboardingInstructionsView *)&v6 setBackgroundColor:v5];
}

- (id)_newExplanationLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:1];
  return v2;
}

- (id)_newTitleLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:1];
  return v2;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingInstructionsView initWithFrame:]";
}

@end