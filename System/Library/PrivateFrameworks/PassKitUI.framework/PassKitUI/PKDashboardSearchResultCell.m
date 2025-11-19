@interface PKDashboardSearchResultCell
- ($830F05BABEC066712FB7F25B8833642A)_cellLayoutState;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardSearchResultCell)initWithFrame:(CGRect)a3;
- (void)_actionButtonTapped:(id)a3;
- (void)_updateAccessoryViews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setAction:(id)a3 withButtonType:(unint64_t)a4;
- (void)setDetailText:(id)a3;
- (void)setShowDisclosure:(BOOL)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setThumbnail:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PKDashboardSearchResultCell

- (PKDashboardSearchResultCell)initWithFrame:(CGRect)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = PKDashboardSearchResultCell;
  v3 = [(PKDashboardCollectionViewCell *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    thumbnailView = v3->_thumbnailView;
    v3->_thumbnailView = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    v8 = v3->_titleLabel;
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v10;

    v12 = v3->_subtitleLabel;
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v12 setTextColor:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailTextLabel = v3->_detailTextLabel;
    v3->_detailTextLabel = v14;

    v16 = v3->_detailTextLabel;
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v16 setTextColor:v17];

    v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v18;

    v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v21 = ;
    v22 = [v20 initWithImage:v21];
    disclosureView = v3->_disclosureView;
    v3->_disclosureView = v22;

    v24 = v3->_disclosureView;
    v25 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v24 setTintColor:v25];

    v26 = MEMORY[0x1E69DCAD8];
    v27 = PKDefaultSystemFontWithPreferredSizeForTextStyleAndWeight(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980]);
    v28 = [v26 configurationWithFont:v27];
    actionButtonSymbolConfig = v3->_actionButtonSymbolConfig;
    v3->_actionButtonSymbolConfig = v28;

    v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up" withConfiguration:v3->_actionButtonSymbolConfig];
    v31 = [MEMORY[0x1E69DC888] labelColor];
    v32 = [v30 imageWithTintColor:v31 renderingMode:1];

    v40[0] = 0uLL;
    v40[1] = xmmword_1BE0B69E0;
    *&v41 = 2;
    v33 = [[PKContinuousButton alloc] initWithConfiguration:v40];
    [(PKContinuousButton *)v33 setImage:v32 forState:0];
    [(PKContinuousButton *)v33 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(PKContinuousButton *)v33 addTarget:v3 action:sel__actionButtonTapped_ forControlEvents:64];
    actionButton = v3->_actionButton;
    v3->_actionButton = &v33->super;
    v35 = v33;

    v36 = [(PKDashboardSearchResultCell *)v3 contentView];
    [v36 addSubview:v3->_thumbnailView];
    [v36 addSubview:v3->_titleLabel];
    [v36 addSubview:v3->_subtitleLabel];
    [v36 addSubview:v3->_detailTextLabel];
    v42 = 0;
    v41 = 0u;
    [(PKDashboardSearchResultCell *)v3 _cellLayoutState:0];
    [(UIImageView *)v3->_thumbnailView setClipsToBounds:1];
    [(UIImageView *)v3->_thumbnailView _setContinuousCornerRadius:*(&v41 + 1)];
    [(PKDashboardSearchResultCell *)v3 resetFonts];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

    v38 = [(PKDashboardSearchResultCell *)v3 registerForTraitChanges:v37 withHandler:&__block_literal_global_3];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardSearchResultCell;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(UIImageView *)self->_thumbnailView setImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  [(UILabel *)self->_detailTextLabel setText:0];
  [(PKDashboardSearchResultCell *)self setShowSpinner:0];
  [(PKDashboardSearchResultCell *)self setShowDisclosure:0];
  [(PKDashboardSearchResultCell *)self setStyle:0];
}

- (void)resetFonts
{
  v3 = PKUIGetMinScreenWidthType();
  titleLabel = self->_titleLabel;
  v5 = v3 == 0;
  if (v3)
  {
    v6 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v6 = *MEMORY[0x1E69DDD80];
  }

  v7 = *MEMORY[0x1E69DDC90];
  if (v5)
  {
    v8 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v8 = *MEMORY[0x1E69DDD80];
  }

  v9 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDC90], 2, 0);
  [(UILabel *)titleLabel setFont:v9];

  subtitleLabel = self->_subtitleLabel;
  v11 = PKFontForDefaultDesign(v8, v7, 0x8000, 0);
  [(UILabel *)subtitleLabel setFont:v11];

  detailTextLabel = self->_detailTextLabel;
  v13 = PKFontForDefaultDesign(v8, v7, 0x8000, 0);
  [(UILabel *)detailTextLabel setFont:v13];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardSearchResultCell *)self title];
  v8 = v4;
  v6 = v5;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_titleLabel setText:v8];
    [(PKDashboardSearchResultCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardSearchResultCell *)self subtitle];
  v8 = v4;
  v6 = v5;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_subtitleLabel setText:v8];
    [(PKDashboardSearchResultCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardSearchResultCell *)self detailText];
  v8 = v4;
  v6 = v5;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(UILabel *)self->_detailTextLabel setText:v8];
    [(PKDashboardSearchResultCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setThumbnail:(id)a3
{
  v6 = a3;
  v4 = [(PKDashboardSearchResultCell *)self thumbnail];

  v5 = v6;
  if (v4 != v6)
  {
    [(UIImageView *)self->_thumbnailView setImage:v6];
    [(PKDashboardSearchResultCell *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PKDashboardSearchResultCell *)self _cellLayoutState:0];
    [(UIImageView *)self->_thumbnailView _setContinuousCornerRadius:0.0];
    [(PKDashboardSearchResultCell *)self setNeedsLayout];
  }
}

- (void)setShowDisclosure:(BOOL)a3
{
  if (self->_showDisclosure != a3)
  {
    self->_showDisclosure = a3;
    [(PKDashboardSearchResultCell *)self _updateAccessoryViews];
  }
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    spinner = self->_spinner;
    if (a3)
    {
      [(UIActivityIndicatorView *)spinner startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner stopAnimating];
    }

    [(PKDashboardSearchResultCell *)self _updateAccessoryViews];
  }
}

- (void)setAction:(id)a3 withButtonType:(unint64_t)a4
{
  aBlock = a3;
  if (self->_action != aBlock)
  {
    v6 = [(UIButton *)self->_actionButton superview];

    v7 = aBlock;
    if (aBlock)
    {
      if (!v6)
      {
        v8 = [(PKDashboardSearchResultCell *)self contentView];
        [v8 addSubview:self->_actionButton];

LABEL_7:
        v7 = aBlock;
      }
    }

    else if (v6)
    {
      [(UIButton *)self->_actionButton removeFromSuperview];
      goto LABEL_7;
    }

    v9 = _Block_copy(v7);
    action = self->_action;
    self->_action = v9;
  }

  if (self->_actionButtonType != a4)
  {
    self->_actionButtonType = a4;
    if (a4 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E8011808[a4];
    }

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11 withConfiguration:self->_actionButtonSymbolConfig];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    v14 = [v12 imageWithTintColor:v13 renderingMode:1];

    [(UIButton *)self->_actionButton setImage:v14 forState:0];
  }

  [(PKDashboardSearchResultCell *)self setNeedsLayout];
}

- (void)_updateAccessoryViews
{
  if (self->_showSpinner)
  {
    v3 = [(UIActivityIndicatorView *)self->_spinner superview];

    if (!v3)
    {
      v4 = [(PKDashboardSearchResultCell *)self contentView];
      [v4 addSubview:self->_spinner];
    }

    v5 = &OBJC_IVAR___PKDashboardSearchResultCell__actionButton;
    [(UIImageView *)self->_disclosureView removeFromSuperview];
    goto LABEL_17;
  }

  if (!self->_showDisclosure && !self->_action)
  {
    [(UIButton *)self->_actionButton removeFromSuperview];
    [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    v5 = &OBJC_IVAR___PKDashboardSearchResultCell__disclosureView;
    goto LABEL_17;
  }

  v6 = [(UIImageView *)self->_disclosureView superview];
  if (v6)
  {
    goto LABEL_10;
  }

  if (self->_showDisclosure)
  {
    v6 = [(PKDashboardSearchResultCell *)self contentView];
    [v6 addSubview:self->_disclosureView];
LABEL_10:
  }

  v7 = [(UIButton *)self->_actionButton superview];
  if (v7)
  {
  }

  else
  {
    v5 = &OBJC_IVAR___PKDashboardSearchResultCell__spinner;
    if (!self->_action)
    {
      goto LABEL_17;
    }

    v8 = [(PKDashboardSearchResultCell *)self contentView];
    [v8 addSubview:self->_actionButton];
  }

  v5 = &OBJC_IVAR___PKDashboardSearchResultCell__spinner;
LABEL_17:
  [*(&self->super.super.super.super.super.super.isa + *v5) removeFromSuperview];

  [(PKDashboardSearchResultCell *)self setNeedsLayout];
}

- (void)_actionButtonTapped:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKDashboardSearchResultCell *)self _cellLayoutState];
  [(PKDashboardCollectionViewCell *)self horizontalInset];
  v6 = width + v5 * -2.0;
  v7 = v6 - (0.0 + 0.0);
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:v7, 1.79769313e308];
  v9 = v8;
  v10 = [(UILabel *)self->_subtitleLabel text];
  v11 = [v10 length];

  if (v11)
  {
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:v7, 1.79769313e308];
    v9 = v9 + v12 + 2.0;
  }

  v13 = [(UILabel *)self->_detailTextLabel text];
  v14 = [v13 length];

  if (v14)
  {
    [(UILabel *)self->_detailTextLabel pkui_sizeThatFits:1 forceWordWrap:v7, 1.79769313e308];
    v9 = v9 + v15 + 2.0;
  }

  v16 = [(UIImageView *)self->_thumbnailView image];

  v17 = 0.0;
  if (v9 >= 0.0)
  {
    v17 = v9;
  }

  if (!v16)
  {
    v17 = v9;
  }

  v18 = 0.0 + 0.0 + v17;
  v19 = v6;
  result.height = v18;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = PKDashboardSearchResultCell;
  [(PKDashboardCollectionViewCell *)&v52 layoutSubviews];
  v51 = 0;
  v49 = 0u;
  *amount = 0u;
  v48 = 0u;
  [(PKDashboardSearchResultCell *)self _cellLayoutState];
  v3 = [(PKDashboardSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5 + 0.0;
  v13 = v7 + 0.0;
  v14 = v9 - (0.0 + 0.0);
  v15 = v11 - (0.0 + 0.0);
  remainder.origin.x = v12;
  remainder.origin.y = v13;
  remainder.size.width = v14;
  remainder.size.height = v15;
  v16 = *(MEMORY[0x1E695F050] + 16);
  v46.origin = *MEMORY[0x1E695F050];
  v46.size = v16;
  v17 = [(UIButton *)self->_actionButton superview];

  if (v17)
  {
    v53.origin.x = v12;
    v53.origin.y = v13;
    v53.size.width = v14;
    v53.size.height = v15;
    CGRectDivide(v53, &v46, &remainder, 32.0, CGRectMaxXEdge);
    actionButton = self->_actionButton;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIButton *)actionButton setFrame:?];
    CGRectDivide(remainder, &v46, &remainder, 8.0, CGRectMaxXEdge);
  }

  v19 = [(UIActivityIndicatorView *)self->_spinner superview];

  if (v19)
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    PKSizeAspectFit();
    if (v20 >= 32.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 32.0;
    }

    spinner = self->_spinner;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIActivityIndicatorView *)spinner setFrame:?];
    CGRectDivide(remainder, &v46, &remainder, v21 + 8.0, CGRectMaxXEdge);
  }

  v23 = [(UIImageView *)self->_disclosureView superview];

  if (v23)
  {
    [(UIImageView *)self->_disclosureView frame];
    CGRectDivide(remainder, &v46, &remainder, v24, CGRectMaxXEdge);
    disclosureView = self->_disclosureView;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIImageView *)disclosureView setFrame:?];
    CGRectDivide(remainder, &v46, &remainder, 8.0, CGRectMaxXEdge);
  }

  v26 = [(UIImageView *)self->_thumbnailView image];
  v27 = v26;
  if (v26)
  {
    [v26 size];
    PKSizeAspectFit();
    CGRectDivide(remainder, &v46, &remainder, v28, CGRectMinXEdge);
    thumbnailView = self->_thumbnailView;
    UIRectCenteredRect();
    [(UIImageView *)thumbnailView setFrame:?];
    CGRectDivide(remainder, &v46, &remainder, amount[0], CGRectMinXEdge);
  }

  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  v31 = v30;
  v33 = *MEMORY[0x1E695F060];
  v32 = *(MEMORY[0x1E695F060] + 8);
  v34 = [(UILabel *)self->_subtitleLabel text];
  v35 = [v34 length];

  v36 = v33;
  v37 = v32;
  if (v35)
  {
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v36 = v38;
    v37 = v39;
  }

  v40 = [(UILabel *)self->_detailTextLabel text];
  v41 = [v40 length];

  if (v41)
  {
    [(UILabel *)self->_detailTextLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v43 = v42;
    v45 = v44;
  }

  else
  {
    v43 = v33;
    v45 = v32;
  }

  UIRectCenteredRect();
  remainder = v54;
  CGRectDivide(v54, &v46, &remainder, v31, CGRectMinYEdge);
  [(UILabel *)self->_titleLabel setFrame:*&v46.origin, *&v46.size];
  if (v36 != v33 || v37 != v32)
  {
    CGRectDivide(remainder, &v46, &remainder, 2.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v46, &remainder, v37, CGRectMinYEdge);
    [(UILabel *)self->_subtitleLabel setFrame:*&v46.origin, *&v46.size];
  }

  if (v43 != v33 || v45 != v32)
  {
    CGRectDivide(remainder, &v46, &remainder, 2.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v46, &remainder, v45, CGRectMinYEdge);
    [(UILabel *)self->_detailTextLabel setFrame:*&v46.origin, *&v46.size];
  }
}

- ($830F05BABEC066712FB7F25B8833642A)_cellLayoutState
{
  retstr->var3 = 0.0;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1 = 0u;
  *&retstr->var0.var0 = 0u;
  var2 = self[15].var0.var2;
  if (*&var2 == 2)
  {
    *&retstr->var0.var0 = xmmword_1BE1145E0;
    v12 = 26.0;
    v9 = 3.0;
    v10 = 12.0;
    v11 = 15.0;
LABEL_7:
    v13 = 13.0;
    v14 = 40;
    v15 = 32;
    v16 = 24;
    v17 = 16;
    goto LABEL_8;
  }

  if (*&var2 != 1)
  {
    if (var2 != 0.0)
    {
      return self;
    }

    __asm { FMOV            V0.2D, #15.0 }

    *&retstr->var0.var0 = _Q0;
    v9 = 8.0;
    v10 = 12.0;
    v11 = 15.0;
    v12 = 38.0;
    goto LABEL_7;
  }

  retstr->var0.var0 = 15.0;
  v9 = 16.0;
  v10 = 15.0;
  v11 = 13.0;
  v12 = 40.0;
  v13 = 18.0;
  v14 = 32;
  v15 = 24;
  v16 = 16;
  v17 = 8;
LABEL_8:
  *(&retstr->var0.var0 + v17) = v13;
  *(&retstr->var0.var0 + v16) = v11;
  *(&retstr->var0.var0 + v15) = v10;
  *(&retstr->var0.var0 + v14) = v9;
  retstr->var3 = v12;
  return self;
}

@end