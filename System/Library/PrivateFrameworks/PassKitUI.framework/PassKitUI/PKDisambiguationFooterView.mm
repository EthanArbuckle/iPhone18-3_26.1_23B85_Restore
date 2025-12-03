@interface PKDisambiguationFooterView
+ (id)buttonWithTitle:(id)title textStyle:(id)style action:(id)action;
+ (id)descriptionLabel;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDisambiguationFooterView)initWithFrame:(CGRect)frame action:(id)action secondaryAction:(id)secondaryAction title:(id)title secondaryTitle:(id)secondaryTitle desscription:(id)desscription;
- (double)_recommendedSecondaryActionTopPaddingForTableView:(id)view;
- (void)layoutSubviews;
- (void)sizeToFitForTableView:(id)view;
@end

@implementation PKDisambiguationFooterView

- (PKDisambiguationFooterView)initWithFrame:(CGRect)frame action:(id)action secondaryAction:(id)secondaryAction title:(id)title secondaryTitle:(id)secondaryTitle desscription:(id)desscription
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  secondaryActionCopy = secondaryAction;
  titleCopy = title;
  secondaryTitleCopy = secondaryTitle;
  v29.receiver = self;
  v29.super_class = PKDisambiguationFooterView;
  height = [(PKDisambiguationFooterView *)&v29 initWithFrame:x, y, width, height];
  if (height)
  {
    if (actionCopy)
    {
      v22 = [objc_opt_class() buttonWithTitle:titleCopy textStyle:*MEMORY[0x1E69DDCF8] action:actionCopy];
      actionButton = height->_actionButton;
      height->_actionButton = v22;

      [(PKDisambiguationFooterView *)height addSubview:height->_actionButton];
    }

    if (secondaryActionCopy)
    {
      v24 = [objc_opt_class() buttonWithTitle:secondaryTitleCopy textStyle:*MEMORY[0x1E69DDD28] action:secondaryActionCopy];
      secondaryActionButton = height->_secondaryActionButton;
      height->_secondaryActionButton = v24;

      [(PKDisambiguationFooterView *)height addSubview:height->_secondaryActionButton];
    }

    if (desscription)
    {
      descriptionLabel = [objc_opt_class() descriptionLabel];
      descriptionLabel = height->_descriptionLabel;
      height->_descriptionLabel = descriptionLabel;

      [(PKDisambiguationFooterView *)height addSubview:height->_descriptionLabel];
    }
  }

  return height;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  text = [(UILabel *)self->_descriptionLabel text];

  if (text)
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
  text = [(UILabel *)self->_descriptionLabel text];

  v42 = v19;
  v44 = v20;
  v46 = v18;
  if (text)
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

- (double)_recommendedSecondaryActionTopPaddingForTableView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  Height = CGRectGetHeight(v17);
  [viewCopy contentInset];
  v7 = v6;
  [viewCopy _rectForTableFooterView];
  MinY = CGRectGetMinY(v18);
  [viewCopy setNeedsLayout];
  [viewCopy layoutIfNeeded];
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
  [viewCopy contentInset];
  v15 = v14;

  return fmax(Height - v7 - MinY - MaxY - v10 - v13 - v15, 50.0);
}

- (void)sizeToFitForTableView:(id)view
{
  viewCopy = view;
  [(PKDisambiguationFooterView *)self sizeToFit];
  [(PKDisambiguationFooterView *)self _recommendedSecondaryActionTopPaddingForTableView:viewCopy];
  v6 = v5;

  [(PKDisambiguationFooterView *)self setSecondaryActionTopPadding:v6];

  [(PKDisambiguationFooterView *)self sizeToFit];
}

+ (id)buttonWithTitle:(id)title textStyle:(id)style action:(id)action
{
  v7 = MEMORY[0x1E69DC740];
  v8 = MEMORY[0x1E69DB878];
  actionCopy = action;
  titleCopy = title;
  v11 = [v8 preferredFontForTextStyle:style];
  v12 = [v7 pkui_plainConfigurationWithTitle:titleCopy font:v11];

  v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v12 primaryAction:actionCopy];

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