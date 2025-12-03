@interface VUIOfferView
- (CGSize)computeSizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)padding;
- (double)_chinHeightForSize:(CGSize)size;
- (void)layoutOfferSubviewsWithSize:(CGSize)size;
- (void)prepareForCellReuse;
- (void)setAppIconView:(id)view;
- (void)setChannelImageBackgroundView:(id)view;
- (void)setChannelNameLabel:(id)label;
- (void)setImageView:(id)view;
- (void)setLogoView:(id)view;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSubtitleLabel:(id)label;
- (void)setTextLabel:(id)label;
- (void)setTitleLabel:(id)label;
- (void)setVersionsButton:(id)button;
@end

@implementation VUIOfferView

- (void)prepareForCellReuse
{
  __35__VUIOfferView_prepareForCellReuse__block_invoke(self, self->_imageView);
  __35__VUIOfferView_prepareForCellReuse__block_invoke(v3, self->_logoView);
  __35__VUIOfferView_prepareForCellReuse__block_invoke(v4, self->_appIconView);
  [(VUILabel *)self->_channelNameLabel setVuiText:0];
  [(VUILabel *)self->_titleLabel setVuiText:0];
  [(VUILabel *)self->_subtitleLabel setVuiText:0];
  textLabel = self->_textLabel;

  [(VUILabel *)textLabel setVuiText:0];
}

void __35__VUIOfferView_prepareForCellReuse__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setImage:0];
  }
}

- (void)setChannelImageBackgroundView:(id)view
{
  viewCopy = view;
  [(VUIOfferView *)self vui_addSubview:viewCopy oldView:self->_channelImageBackgroundView];
  if (self->_channelImageBackgroundView != viewCopy)
  {
    objc_storeStrong(&self->_channelImageBackgroundView, view);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setChannelNameLabel:(id)label
{
  labelCopy = label;
  [(VUIOfferView *)self vui_addSubview:labelCopy oldView:self->_channelNameLabel];
  if (self->_channelNameLabel != labelCopy)
  {
    objc_storeStrong(&self->_channelNameLabel, label);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  [(VUIOfferView *)self vui_addSubview:labelCopy oldView:self->_titleLabel];
  if (self->_titleLabel != labelCopy)
  {
    objc_storeStrong(&self->_titleLabel, label);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  [(VUIOfferView *)self vui_addSubview:labelCopy oldView:self->_subtitleLabel];
  if (self->_subtitleLabel != labelCopy)
  {
    objc_storeStrong(&self->_subtitleLabel, label);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setTextLabel:(id)label
{
  labelCopy = label;
  [(VUIOfferView *)self vui_addSubview:labelCopy oldView:self->_textLabel];
  if (self->_textLabel != labelCopy)
  {
    objc_storeStrong(&self->_textLabel, label);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  [(VUIOfferView *)self vui_addSubview:viewCopy oldView:self->_imageView];
  if (self->_imageView != viewCopy)
  {
    objc_storeStrong(&self->_imageView, view);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setLogoView:(id)view
{
  viewCopy = view;
  [(VUIOfferView *)self vui_addSubview:viewCopy oldView:self->_logoView];
  if (self->_logoView != viewCopy)
  {
    objc_storeStrong(&self->_logoView, view);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setAppIconView:(id)view
{
  viewCopy = view;
  [(VUIOfferView *)self vui_addSubview:viewCopy oldView:self->_appIconView];
  if (self->_appIconView != viewCopy)
  {
    objc_storeStrong(&self->_appIconView, view);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setVersionsButton:(id)button
{
  buttonCopy = button;
  [(VUIOfferView *)self vui_addSubview:buttonCopy oldView:self->_versionsButton];
  if (self->_versionsButton != buttonCopy)
  {
    objc_storeStrong(&self->_versionsButton, button);
  }

  [(VUIOfferView *)self vui_setNeedsLayout];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = VUIOfferView;
  [(VUIOfferView *)&v5 setSemanticContentAttribute:?];
  [(VUILabel *)self->_textLabel setSemanticContentAttribute:attribute];
  [(VUILabel *)self->_subtitleLabel setSemanticContentAttribute:attribute];
  [(VUILabel *)self->_titleLabel setSemanticContentAttribute:attribute];
  [(VUILabel *)self->_channelNameLabel setSemanticContentAttribute:attribute];
  [(UIView *)self->_versionsButton setSemanticContentAttribute:attribute];
}

- (double)_chinHeightForSize:(CGSize)size
{
  width = size.width;
  [(VUIOfferView *)self padding:size.width];
  v7 = width - v5 - v6;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UIView *)titleLabel vui_sizeThatFits:v7, 0.0];
    textLayout = [(VUILabel *)self->_titleLabel textLayout];
    [textLayout margin];
    v11 = v10;

    [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:v11];
    v13 = v12;
    VUIRoundValue();
    v15 = v13 + v14 + 0.0;
    v16 = self->_titleLabel;
  }

  else
  {
    v16 = 0;
    v15 = 0.0;
  }

  textLabel = self->_textLabel;
  if (textLabel)
  {
    textLayout2 = [(VUILabel *)textLabel textLayout];
    [textLayout2 margin];
    v20 = v19;

    [(UIView *)self->_textLabel vui_sizeThatFits:v7, 0.0];
    [(VUILabel *)self->_textLabel topMarginToLabel:v16 withBaselineMargin:v20];
    v22 = v21;
    VUIRoundValue();
    v15 = v15 + v22 + v23;
    v24 = self->_textLabel;

    v16 = v24;
  }

  [(VUIOfferView *)self padding];
  v26 = v25;
  v27 = self->_titleLabel;
  if (v27)
  {
    v28 = v27;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    vuiText = [(VUILabel *)subtitleLabel vuiText];
    v31 = [vuiText length];

    if (v31)
    {
      [(UIView *)self->_subtitleLabel vui_sizeThatFits:v7, 0.0];
      textLayout3 = [(VUILabel *)self->_subtitleLabel textLayout];
      [textLayout3 margin];
      if (!self->_textLabel)
      {
        secondLineBaselineMargin = self->_secondLineBaselineMargin;
      }

      [(VUILabel *)self->_subtitleLabel topMarginToLabel:v16 withBaselineMargin:secondLineBaselineMargin];
      v35 = v34;
      VUIRoundValue();
      v15 = v15 + v35 + v36;
      v37 = self->_subtitleLabel;

      v38 = self->_subtitleLabel;
      v27 = v38;
      v16 = v37;
    }
  }

  if (self->_versionsButton)
  {
    objc_opt_class();
    v39 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      textContentView = [(UIView *)self->_versionsButton textContentView];
      if (textContentView)
      {
        v41 = textContentView;
        textLayout4 = [textContentView textLayout];
        [textLayout4 margin];
        v39 = v43;
      }
    }

    if (v16)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v45 = 0.0;
      if (isKindOfClass)
      {
        [(UIView *)self->_versionsButton topMarginToLabel:v16 withBaselineMargin:v39];
      }
    }

    else
    {
      [(UIView *)self->_versionsButton topMarginWithBaselineMargin:v39];
    }

    v46 = v15 + v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_versionsButton vui_sizeThatFits:v7, 0.0];
    }

    VUIRoundValue();
    v15 = v46 + v47;
    v48 = self->_versionsButton;

    v27 = v48;
  }

  [(VUILabel *)v27 bottomMarginWithBaselineMargin:v26];
  v50 = v15 + v49;

  return v50;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  if (only)
  {
    [(VUIOfferView *)self computeSizeThatFits:subviews.width, subviews.height];
  }

  else
  {
    [(VUIOfferView *)self layoutOfferSubviewsWithSize:subviews.width, subviews.height];
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutOfferSubviewsWithSize:(CGSize)size
{
  width = size.width;
  v5 = [(VUIOfferView *)self vuiIsRTL:size.width];
  [(VUIOfferView *)self padding];
  v7 = v6;
  v9 = v8;
  v10 = width - v6;
  [(VUIOfferView *)self topPartAspectRatio];
  VUIRoundValue();
  v12 = v11;
  if (!self->_imageView)
  {
    channelImageBackgroundView = self->_channelImageBackgroundView;
    if (channelImageBackgroundView)
    {
      [(UIView *)channelImageBackgroundView setFrame:0.0, 0.0, width, v11];
      v14 = self->_channelImageBackgroundView;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v14 setVuiBackgroundColor:whiteColor];
    }
  }

  v84 = v9;
  v16 = v10 - v9;
  channelNameLabel = self->_channelNameLabel;
  if (channelNameLabel)
  {
    [(UIView *)channelNameLabel vui_sizeThatFits:v16, 0.0];
    v19 = v18;
    textLayout = [(VUILabel *)self->_channelNameLabel textLayout];
    [textLayout margin];
    v22 = v21;

    [(VUILabel *)self->_channelNameLabel topMarginWithBaselineMargin:v22];
    [(VUILabel *)self->_channelNameLabel setFrame:v7, v23, v16, v19];
    [(VUILabel *)self->_channelNameLabel setVuiCenter:width * 0.5, v12 * 0.5];
    goto LABEL_15;
  }

  imageView = self->_imageView;
  if (imageView)
  {
    [(UIView *)imageView setFrame:0.0, 0.0, width, v12];
    goto LABEL_15;
  }

  appIconView = self->_appIconView;
  if (appIconView)
  {
    [(UIView *)appIconView vui_sizeThatFits:0.0, v12];
    VUIRoundValue();
    VUIRoundValue();
    [(UIView *)self->_appIconView setFrame:?];
    v26 = self->_channelImageBackgroundView;
    if (v26)
    {
      [(UIView *)v26 setFrame:0.0, 0.0, width, v12];
      lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
      [(UIView *)self->_channelImageBackgroundView setVuiBackgroundColor:lightGrayColor];
    }

    v28 = self->_appIconView;
  }

  else
  {
    logoView = self->_logoView;
    if (!logoView)
    {
      goto LABEL_15;
    }

    [(UIView *)logoView vui_sizeThatFits:0.0, v12];
    [(UIView *)self->_logoView setFrame:v7, 0.0, v30, v31];
    [(UIView *)self->_logoView setVuiCenter:width * 0.5, v12 * 0.5];
    v28 = self->_logoView;
  }

  [(VUIOfferView *)self vui_bringSubviewToFront:v28, *&v84];
LABEL_15:
  if ([(VUIOfferView *)self _shouldDisplaySeparator])
  {
    separatorView = self->_separatorView;
    if (!separatorView)
    {
      v33 = [VUISeparatorView alloc];
      v34 = [(VUISeparatorView *)v33 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v35 = self->_separatorView;
      self->_separatorView = v34;

      [(VUIOfferView *)self addSubview:self->_separatorView];
      separatorView = self->_separatorView;
    }

    [(VUIOfferView *)self bringSubviewToFront:separatorView];
    [(VUISeparatorView *)self->_separatorView setFrame:0.0, v12, width, 1.0];
    v12 = v12 + 1.0;
  }

  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    if (!self->_subtitleLabel && !self->_textLabel && !self->_versionsButton)
    {
      return;
    }

    goto LABEL_25;
  }

  vuiText = [(VUILabel *)titleLabel vuiText];
  v38 = [vuiText length];

  if (!v38)
  {
LABEL_25:
    v46 = 0;
    goto LABEL_26;
  }

  [(UIView *)self->_titleLabel vui_sizeThatFits:v16, 0.0];
  textLayout2 = [(VUILabel *)self->_titleLabel textLayout];
  [textLayout2 margin];
  v41 = v40;

  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:v41];
  v43 = v12 + v42;
  VUIRoundValue();
  v45 = v44;
  [(VUILabel *)self->_titleLabel setFrame:v7, v43, v16, v44];
  v12 = v43 + v45;
  v46 = self->_titleLabel;
LABEL_26:
  textLabel = self->_textLabel;
  if (textLabel)
  {
    v86 = v46;
    vuiText2 = [(VUILabel *)textLabel vuiText];
    v49 = [vuiText2 length];

    if (v49)
    {
      textLayout3 = [(VUILabel *)self->_textLabel textLayout];
      [textLayout3 margin];
      v52 = v51;

      [(VUILabel *)self->_textLabel topMarginToLabel:v86 withBaselineMargin:v52];
      v54 = v12 + v53;
      [(UIView *)self->_textLabel vui_sizeThatFits:v16, 0.0];
      VUIRoundValue();
      v56 = v55;
      [(VUILabel *)self->_textLabel setFrame:v7, v54, v16, v55];
      v12 = v54 + v56;
      v57 = self->_textLabel;

      v46 = v57;
    }

    else
    {
      v46 = v86;
    }
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v87 = v46;
    vuiText3 = [(VUILabel *)subtitleLabel vuiText];
    v60 = [vuiText3 length];

    if (v60)
    {
      [(UIView *)self->_subtitleLabel vui_sizeThatFits:v16, 0.0];
      textLayout4 = [(VUILabel *)self->_subtitleLabel textLayout];
      [textLayout4 margin];
      secondLineBaselineMargin = v62;

      if (!self->_textLabel)
      {
        secondLineBaselineMargin = self->_secondLineBaselineMargin;
      }

      v64 = self->_subtitleLabel;
      if (v87)
      {
        [(VUILabel *)v64 topMarginToLabel:v87 withBaselineMargin:secondLineBaselineMargin];
      }

      else
      {
        [(VUILabel *)v64 topMarginWithBaselineMargin:secondLineBaselineMargin];
      }

      v66 = v65;
      v67 = self->_subtitleLabel;
      v68 = v12 + v65;
      VUIRoundValue();
      [(VUILabel *)v67 setFrame:v7, v68, v16, v69];
      VUIRoundValue();
      v12 = v12 + v66 + v70;
      v71 = self->_subtitleLabel;

      v46 = v71;
    }

    else
    {
      v46 = v87;
    }
  }

  if (self->_versionsButton)
  {
    v88 = v46;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_versionsButton vui_sizeThatFits:v16, 0.0];
      v73 = v72;
      textContentView = [(UIView *)self->_versionsButton textContentView];
    }

    else
    {
      textContentView = 0;
      v73 = *MEMORY[0x1E695F060];
    }

    if (v5)
    {
      v75 = width - v85 - v73;
    }

    else
    {
      v75 = v7;
    }

    textLayout5 = [textContentView textLayout];
    [textLayout5 margin];
    v78 = v77;

    if (v88)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v80 = 0.0;
      if (isKindOfClass)
      {
        [(UIView *)self->_versionsButton topMarginToLabel:v88 withBaselineMargin:v78];
      }
    }

    else
    {
      [(UIView *)self->_versionsButton topMarginWithBaselineMargin:v78];
    }

    v81 = v12 + v80;
    versionsButton = self->_versionsButton;
    VUIRoundValue();
    [(UIView *)versionsButton setFrame:v75, v81, v73, v83];

    v46 = v88;
  }
}

- (CGSize)computeSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  VUIRoundValue();
  v7 = v6;
  if ([(VUIOfferView *)self _shouldDisplaySeparator])
  {
    v7 = v7 + 1.0;
  }

  if (self->_titleLabel || self->_subtitleLabel || self->_textLabel)
  {
    [(VUIOfferView *)self _chinHeightForSize:width, height];
    v7 = v7 + v8;
  }

  v9 = width;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  subviews = [(VUIOfferView *)self subviews];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__VUIOfferView_setSelected_animated_withAnimationCoordinator___block_invoke;
  v11[3] = &unk_1E872F530;
  selectedCopy = selected;
  animatedCopy = animated;
  v12 = coordinatorCopy;
  v10 = coordinatorCopy;
  [subviews enumerateObjectsUsingBlock:v11];
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end