@interface DBSLargeTextExplanationView
- (DBSLargeTextExplanationView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutForWidth:(double)a3 inTableView:(id)a4;
- (void)layoutSubviews;
@end

@implementation DBSLargeTextExplanationView

- (DBSLargeTextExplanationView)initWithSpecifier:(id)a3
{
  v25.receiver = self;
  v25.super_class = DBSLargeTextExplanationView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(DBSLargeTextExplanationView *)&v25 initWithFrame:a3, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 sf_isiPhone];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_bodyExampleLabel = &v7->_bodyExampleLabel;
      bodyExampleLabel = v7->_bodyExampleLabel;
      v7->_bodyExampleLabel = v10;

      v13 = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v7->_bodyExampleLabel setBackgroundColor:v13];

      v14 = [MEMORY[0x277D3FA48] appearance];
      v15 = [v14 textColor];
      [(UILabel *)v7->_bodyExampleLabel setTextColor:v15];

      [(UILabel *)v7->_bodyExampleLabel setNumberOfLines:0];
      [(UILabel *)v7->_bodyExampleLabel setLineBreakMode:0];
      [(UILabel *)v7->_bodyExampleLabel setTextAlignment:1];
      v16 = DBS_LocalizedStringForLargeFontSettings(@"DYNAMIC_TYPE_DESCRIPTION");
      [(UILabel *)v7->_bodyExampleLabel setText:v16];

      LODWORD(v17) = 0.5;
      [(UILabel *)v7->_bodyExampleLabel _setHyphenationFactor:v17];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{v3, v4, v5, v6}];
      p_bodyExampleLabel = &v7->_bodyExampleTextView;
      bodyExampleTextView = v7->_bodyExampleTextView;
      v7->_bodyExampleTextView = v18;

      v20 = DBS_LocalizedStringForLargeFontSettings(@"DYNAMIC_TYPE_DESCRIPTION");
      [(UITextView *)v7->_bodyExampleTextView setText:v20];

      v21 = [MEMORY[0x277D75348] clearColor];
      [(UITextView *)v7->_bodyExampleTextView setBackgroundColor:v21];

      v22 = [MEMORY[0x277D3FA48] appearance];
      v23 = [v22 textColor];
      [(UITextView *)v7->_bodyExampleTextView setTextColor:v23];

      [(UITextView *)v7->_bodyExampleTextView setTextAlignment:1];
      [(UITextView *)v7->_bodyExampleTextView setEditable:0];
      [(UITextView *)v7->_bodyExampleTextView setTextContainerInset:0.0, 25.0, 0.0, 25.0];
    }

    [(DBSLargeTextExplanationView *)v7 addSubview:*p_bodyExampleLabel];
  }

  return v7;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = DBSLargeTextExplanationView;
  [(DBSLargeTextExplanationView *)&v6 layoutSubviews];
  [(DBSLargeTextExplanationView *)self bounds];
  v4 = v3;
  v5 = [(DBSLargeTextExplanationView *)self superview];
  [(DBSLargeTextExplanationView *)self layoutForWidth:v5 inTableView:v4];
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  [(DBSLargeTextExplanationView *)self layoutForWidth:a4 inTableView:a3];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 sf_isiPhone];
  v7 = &OBJC_IVAR___DBSLargeTextExplanationView__bodyExampleTextView;
  if (v6)
  {
    v7 = &OBJC_IVAR___DBSLargeTextExplanationView__bodyExampleLabel;
  }

  v8 = *(&self->super.super.super.isa + *v7);

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18.origin.x = v10;
  v18.origin.y = v12;
  v18.size.width = v14;
  v18.size.height = v16;
  return CGRectGetMaxY(v18) + 10.0;
}

- (void)layoutForWidth:(double)a3 inTableView:(id)a4
{
  [a4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 sf_isiPhone];

  if (v14)
  {
    [(DBSLargeTextExplanationView *)self frame];
    MinX = CGRectGetMinX(v27);
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v10 = v10 + (MinX - CGRectGetMinX(v28) + 25.0) * -2.0;
  }

  if (v10 > 0.0)
  {
    v25 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v16 = [MEMORY[0x277D74300] fontWithDescriptor:0.0 size:?];
    v17 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v17 sf_isiPhone];

    if (v18)
    {
      p_bodyExampleLabel = &self->_bodyExampleLabel;
      [(UILabel *)self->_bodyExampleLabel setFont:v16];
      [(UILabel *)self->_bodyExampleLabel frame];
      [(UILabel *)self->_bodyExampleLabel sizeThatFits:v10, 1.79769313e308];
      v21 = v20;
      v22 = 10.0;
      v23 = 25.0;
    }

    else
    {
      p_bodyExampleLabel = &self->_bodyExampleTextView;
      [(UITextView *)self->_bodyExampleTextView setFont:v16];
      [(UITextView *)self->_bodyExampleTextView frame];
      [(DBSLargeTextExplanationView *)self frame];
      v23 = (v10 - v24) * -0.5;
      v29.origin.x = v6;
      v29.origin.y = v8;
      v29.size.width = v10;
      v29.size.height = v12;
      v21 = CGRectGetHeight(v29) + -80.0;
      v22 = 10.0;
    }

    [*p_bodyExampleLabel setFrame:{v23, v22, v10, v21}];
  }
}

@end