@interface PKDisambiguationFooterView
+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 action:(id)a5;
+ (id)descriptionLabel;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDisambiguationFooterView)initWithFrame:(CGRect)a3 action:(id)a4 secondaryAction:(id)a5 title:(id)a6 secondaryTitle:(id)a7 desscription:(id)a8;
- (double)_recommendedSecondaryActionTopPaddingForTableView:(id)a3;
- (void)layoutSubviews;
- (void)sizeToFitForTableView:(id)a3;
@end

@implementation PKDisambiguationFooterView

- (PKDisambiguationFooterView)initWithFrame:(CGRect)a3 action:(id)a4 secondaryAction:(id)a5 title:(id)a6 secondaryTitle:(id)a7 desscription:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v29.receiver = self;
  v29.super_class = PKDisambiguationFooterView;
  v21 = [(PKDisambiguationFooterView *)&v29 initWithFrame:x, y, width, height];
  if (v21)
  {
    if (v17)
    {
      v22 = [objc_opt_class() buttonWithTitle:v19 textStyle:*MEMORY[0x1E69DDCF8] action:v17];
      actionButton = v21->_actionButton;
      v21->_actionButton = v22;

      [(PKDisambiguationFooterView *)v21 addSubview:v21->_actionButton];
    }

    if (v18)
    {
      v24 = [objc_opt_class() buttonWithTitle:v20 textStyle:*MEMORY[0x1E69DDD28] action:v18];
      secondaryActionButton = v21->_secondaryActionButton;
      v21->_secondaryActionButton = v24;

      [(PKDisambiguationFooterView *)v21 addSubview:v21->_secondaryActionButton];
    }

    if (a8)
    {
      v26 = [objc_opt_class() descriptionLabel];
      descriptionLabel = v21->_descriptionLabel;
      v21->_descriptionLabel = v26;

      [(PKDisambiguationFooterView *)v21 addSubview:v21->_descriptionLabel];
    }
  }

  return v21;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKDisambiguationFooterView *)self layoutMargins];
  v7 = v6;
  [(PKDisambiguationFooterView *)self layoutMargins];
  v9 = v7 + v8 + 0.0;
  [(PKDisambiguationFooterView *)self layoutMargins];
  v11 = v10;
  [(PKDisambiguationFooterView *)self layoutMargins];
  v13 = v12;
  topPadding = self->_topPadding;
  if (topPadding <= 0.0)
  {
    topPadding = 5.0;
  }

  v15 = v9 + topPadding;
  v16 = [(UILabel *)self->_descriptionLabel text];

  if (v16)
  {
    [(UILabel *)self->_descriptionLabel sizeThatFits:width - (v11 + v13) + -20.0, height];
    v15 = v15 + v17;
  }

  v18 = [(UIButton *)self->_actionButton titleForState:0];
  if (v18)
  {
  }

  else
  {
    v19 = [(UIButton *)self->_actionButton imageForState:0];

    if (!v19)
    {
      goto LABEL_9;
    }
  }

  [(UIButton *)self->_actionButton sizeToFit];
  [(UIButton *)self->_actionButton frame];
  v15 = v15 + 20.0 + v20;
LABEL_9:
  v21 = [(UIButton *)self->_secondaryActionButton titleForState:0];
  if (v21)
  {
  }

  else
  {
    v22 = [(UIButton *)self->_secondaryActionButton imageForState:0];

    if (!v22)
    {
      goto LABEL_15;
    }
  }

  [(UIButton *)self->_secondaryActionButton sizeToFit];
  [(UIButton *)self->_secondaryActionButton frame];
  secondaryActionTopPadding = self->_secondaryActionTopPadding;
  if (secondaryActionTopPadding <= 0.0)
  {
    secondaryActionTopPadding = 5.0;
  }

  v15 = v23 + v15 + secondaryActionTopPadding;
LABEL_15:
  bottomPadding = self->_bottomPadding;
  if (bottomPadding <= 0.0)
  {
    bottomPadding = 5.0;
  }

  v26 = v15 + bottomPadding;
  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = PKDisambiguationFooterView;
  [(PKDisambiguationFooterView *)&v48 layoutSubviews];
  [(PKDisambiguationFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(PKDisambiguationFooterView *)self layoutMargins];
  v10 = v4 + v9;
  v13 = v6 - (v11 + v12);
  v15 = v8 - (v9 + v14);
  topPadding = 5.0;
  if (self->_topPadding > 0.0)
  {
    topPadding = self->_topPadding;
  }

  v17 = v10 + topPadding;
  v18 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v21 = [(UILabel *)self->_descriptionLabel text];

  v42 = v19;
  v44 = v20;
  v46 = v18;
  if (v21)
  {
    [(UILabel *)self->_descriptionLabel frame];
    [(UILabel *)self->_descriptionLabel sizeThatFits:v13 + -20.0, v15];
    UIRectCenteredXInRect();
    v18 = v22;
    v20 = v23;
    v19 = v24;
  }

  [(UILabel *)self->_descriptionLabel setFrame:v18, v17, v20, v19, *&v42, *&v44, *&v46];
  v49.origin.x = v18;
  v49.origin.y = v17;
  v49.size.width = v20;
  v49.size.height = v19;
  MaxY = CGRectGetMaxY(v49);
  v26 = [(UIButton *)self->_actionButton titleForState:0];
  if (v26)
  {

LABEL_8:
    MaxY = MaxY + 20.0;
    [(UIButton *)self->_actionButton frame];
    UIRectCenteredXInRect();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    goto LABEL_9;
  }

  v27 = [(UIButton *)self->_actionButton imageForState:0];

  if (v27)
  {
    goto LABEL_8;
  }

  v33 = v43;
  v31 = v45;
  v29 = v47;
LABEL_9:
  [(UIButton *)self->_actionButton setFrame:v29, MaxY, v31, v33];
  v50.origin.x = v29;
  v50.origin.y = MaxY;
  v50.size.width = v31;
  v50.size.height = v33;
  v34 = CGRectGetMaxY(v50);
  secondaryActionTopPadding = self->_secondaryActionTopPadding;
  v36 = [(UIButton *)self->_secondaryActionButton titleForState:0];
  if (v36)
  {
  }

  else
  {
    v38 = [(UIButton *)self->_secondaryActionButton imageForState:0];

    v39 = v45;
    v37 = v47;
    v40 = v43;
    if (!v38)
    {
      goto LABEL_13;
    }
  }

  [(UIButton *)self->_secondaryActionButton frame];
  UIRectCenteredXInRect();
LABEL_13:
  v41 = 5.0;
  if (secondaryActionTopPadding > 0.0)
  {
    v41 = secondaryActionTopPadding;
  }

  [(UIButton *)self->_secondaryActionButton setFrame:v37, v34 + v41, v39, v40];
}

- (double)_recommendedSecondaryActionTopPaddingForTableView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  Height = CGRectGetHeight(v17);
  [v4 contentInset];
  v7 = v6;
  [v4 _rectForTableFooterView];
  MinY = CGRectGetMinY(v18);
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  [(PKDisambiguationFooterView *)self setNeedsLayout];
  [(PKDisambiguationFooterView *)self layoutIfNeeded];
  [(UIButton *)self->_actionButton frame];
  MaxY = CGRectGetMaxY(v19);
  [(UIButton *)self->_secondaryActionButton bounds];
  v10 = CGRectGetHeight(v20);
  if (self->_bottomPadding <= 0.0)
  {
    bottomPadding = 5.0;
  }

  else
  {
    bottomPadding = self->_bottomPadding;
  }

  [(PKDisambiguationFooterView *)self layoutMargins];
  v13 = bottomPadding + v12;
  [v4 contentInset];
  v15 = v14;

  return fmax(Height - v7 - MinY - MaxY - v10 - v13 - v15, 50.0);
}

- (void)sizeToFitForTableView:(id)a3
{
  v4 = a3;
  [(PKDisambiguationFooterView *)self sizeToFit];
  [(PKDisambiguationFooterView *)self _recommendedSecondaryActionTopPaddingForTableView:v4];
  v6 = v5;

  [(PKDisambiguationFooterView *)self setSecondaryActionTopPadding:v6];

  [(PKDisambiguationFooterView *)self sizeToFit];
}

+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 action:(id)a5
{
  v7 = MEMORY[0x1E69DC740];
  v8 = MEMORY[0x1E69DB878];
  v9 = a5;
  v10 = a3;
  v11 = [v8 preferredFontForTextStyle:a4];
  v12 = [v7 pkui_plainConfigurationWithTitle:v10 font:v11];

  v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v12 primaryAction:v9];

  return v13;
}

+ (id)descriptionLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 setFont:v4];

  [v3 setNumberOfLines:0];
  [v3 setTextAlignment:1];

  return v3;
}

@end