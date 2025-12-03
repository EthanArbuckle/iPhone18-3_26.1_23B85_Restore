@interface WFContentCollectionTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (TLKSimpleRowView)rowView;
- (UIImageView)checkmarkImageView;
- (WFContentCollectionTableView)tableView;
- (WFContentCollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)preferredSeparatorInsetForCheckmark;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)tlkCornerRoundingStyleForWFRoundingStyle:(unint64_t)style;
- (void)layoutSubviews;
- (void)setCheckmarkStyle:(unint64_t)style;
- (void)setFillVisualStylingProvider:(id)provider;
- (void)setListItem:(id)item;
@end

@implementation WFContentCollectionTableViewCell

- (TLKSimpleRowView)rowView
{
  WeakRetained = objc_loadWeakRetained(&self->_rowView);

  return WeakRetained;
}

- (UIImageView)checkmarkImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_checkmarkImageView);

  return WeakRetained;
}

- (WFContentCollectionTableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v5 = [MEMORY[0x277D75868] effectWithPreview:v4];
  v6 = [MEMORY[0x277D75890] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)setFillVisualStylingProvider:(id)provider
{
  objc_storeStrong(&self->_fillVisualStylingProvider, provider);
  providerCopy = provider;
  v11 = [MEMORY[0x277D75210] effectWithStyle:1200];
  v6 = [MEMORY[0x277D75D00] effectForBlurEffect:v11 style:4];
  v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
  blackColor = [MEMORY[0x277D75348] blackColor];

  v9 = [blackColor colorWithAlphaComponent:0.4];
  contentView = [v7 contentView];
  [contentView setBackgroundColor:v9];

  [(WFContentCollectionTableViewCell *)self setSelectedBackgroundView:v7];
}

- (void)setCheckmarkStyle:(unint64_t)style
{
  self->_checkmarkStyle = style;
  checkmarkImageView = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
  v6 = checkmarkImageView;
  if (style)
  {

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v7 setContentMode:4];
      v8 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_19770];
      [v7 setTintColor:v8];

      contentView = [(WFContentCollectionTableViewCell *)self contentView];
      [contentView addSubview:v7];

      [(WFContentCollectionTableViewCell *)self setCheckmarkImageView:v7];
      [(WFContentCollectionTableViewCell *)self setNeedsLayout];
      [(WFContentCollectionTableViewCell *)self layoutIfNeeded];
    }

    v10 = @"circle";
    if (style == 2)
    {
      v10 = @"checkmark.circle.fill";
    }

    v11 = MEMORY[0x277D755D0];
    v12 = *MEMORY[0x277D76918];
    v13 = v10;
    v14 = [v11 configurationWithTextStyle:v12 scale:3];
    configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
    v19 = [v14 configurationByApplyingConfiguration:configurationPreferringMulticolor];

    v16 = [MEMORY[0x277D755B8] systemImageNamed:v13 withConfiguration:v19];

    checkmarkImageView2 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView2 setImage:v16];

    [(WFContentCollectionTableViewCell *)self setSelectionStyle:0];
  }

  else
  {

    if (v6)
    {
      checkmarkImageView3 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
      [checkmarkImageView3 removeFromSuperview];

      [(WFContentCollectionTableViewCell *)self setCheckmarkImageView:0];
      [(WFContentCollectionTableViewCell *)self setNeedsLayout];
      [(WFContentCollectionTableViewCell *)self layoutIfNeeded];
    }

    [(WFContentCollectionTableViewCell *)self setSelectionStyle:3];
  }
}

id __54__WFContentCollectionTableViewCell_setCheckmarkStyle___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.3;
    v3 = 1.0;
  }

  else
  {
    v2 = 0.28;
    v3 = 0.0;
  }

  v4 = [MEMORY[0x277D75348] colorWithWhite:v3 alpha:v2];

  return v4;
}

- (unint64_t)tlkCornerRoundingStyleForWFRoundingStyle:(unint64_t)style
{
  if (style - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return style;
  }
}

- (void)setListItem:(id)item
{
  v28[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_storeStrong(&self->_listItem, item);
  v6 = itemCopy;
  if (!v6)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (![MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    rowView = [(WFContentCollectionTableViewCell *)self rowView];
    title = [v6 title];
    v12 = [title length];

    if (v12)
    {
      TLKFormattedTextClass = getTLKFormattedTextClass();
      title2 = [v6 title];
      v15 = [(objc_class *)TLKFormattedTextClass formattedTextWithString:title2];

      [v15 setIsBold:1];
      displayConfiguration = [(WFContentCollectionTableViewCell *)self displayConfiguration];
      titleLineLimit = [displayConfiguration titleLineLimit];

      if (titleLineLimit)
      {
        [v15 setMaxLines:{objc_msgSend(titleLineLimit, "unsignedIntegerValue")}];
      }

      getTLKRichTextClass();
      v18 = objc_opt_new();
      v28[0] = v15;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      [v18 setFormattedTextItems:v19];

      [rowView setLeadingTitle:v18];
      [(WFContentCollectionTableViewCell *)self setPrefersSeparatorInsetForImage:0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__WFContentCollectionTableViewCell_setListItem___block_invoke_2;
      v21[3] = &unk_279EE8DF8;
      v22 = v6;
      v23 = rowView;
      selfCopy = self;
      v9 = v6;
      v20 = rowView;
      [v9 prepareForDisplayWithCompletionHandler:v21];

      goto LABEL_11;
    }

LABEL_13:
    goto LABEL_14;
  }

  previewView = [(WFContentCollectionTableViewCell *)self previewView];

  if (previewView)
  {
    previewView2 = [(WFContentCollectionTableViewCell *)self previewView];
    [previewView2 removeFromSuperview];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48__WFContentCollectionTableViewCell_setListItem___block_invoke;
  v25[3] = &unk_279EE8D58;
  v26 = v6;
  selfCopy2 = self;
  v9 = v6;
  [v9 prepareForDisplayWithCompletionHandler:v25];

LABEL_11:
LABEL_14:
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentItem];
  v6 = [v2 generateListPreviewUIView];

  [v6 setUserInteractionEnabled:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v3];

  v4 = [*(a1 + 40) contentView];
  [v4 addSubview:v6];

  [*(a1 + 40) setPreviewView:v6];
  v5 = [*(a1 + 40) tableView];
  [v5 updateCellSeparatorInsets];
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __48__WFContentCollectionTableViewCell_setListItem___block_invoke_3;
  v32[3] = &unk_279EE8D80;
  v4 = *(a1 + 32);
  v33 = *(a1 + 40);
  if (([v4 loadSubtitleWithCompletion:v32] & 1) == 0)
  {
    [*(a1 + 40) setLeadingSubtitle:0];
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __48__WFContentCollectionTableViewCell_setListItem___block_invoke_4;
  v30[3] = &unk_279EE8D80;
  v5 = *(a1 + 32);
  v31 = *(a1 + 40);
  if (([v5 loadAltTextWithCompletion:v30] & 1) == 0)
  {
    [*(a1 + 40) setTrailingTitle:0];
  }

  v6 = [*(a1 + 48) imageCache];
  v7 = [v6 objectForKey:v3];
  [*(a1 + 40) setLeadingImage:v7];

  v8 = [*(a1 + 40) leadingImage];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    objc_initWeak(&location, *(a1 + 48));
    v10 = *(a1 + 32);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __48__WFContentCollectionTableViewCell_setListItem___block_invoke_5;
    v24 = &unk_279EE8DD0;
    objc_copyWeak(&v27, &location);
    __asm { FMOV            V0.2D, #31.0 }

    v28 = _Q0;
    v25 = v3;
    v26 = *(a1 + 40);
    v9 = [v10 loadImageWithSize:&v21 completion:{31.0, 31.0}];
    if (v9)
    {
      v16 = [*(a1 + 40) leadingImage];

      if (!v16)
      {
        v17 = objc_alloc(getTLKImageClass());
        v18 = objc_opt_new();
        v19 = [v17 initWithImage:v18];

        [v19 setSize:{31.0, 31.0}];
        [*(a1 + 40) setLeadingImage:v19];
      }
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v20 = [*(a1 + 48) tableView];
  [v20 updateCellSeparatorInsets];

  [*(a1 + 48) setPrefersSeparatorInsetForImage:v9];
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke_3(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = [(objc_class *)getTLKFormattedTextClass() formattedTextWithString:v3];
    [v4 setMaxLines:2];
    getTLKRichTextClass();
    v5 = objc_opt_new();
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 setFormattedTextItems:v6];

    [*(a1 + 32) setLeadingSubtitle:v5];
  }
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = [(objc_class *)getTLKFormattedTextClass() formattedTextWithString:v3];
    [v4 setMaxLines:1];
    getTLKRichTextClass();
    v5 = objc_opt_new();
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 setFormattedTextItems:v6];

    [*(a1 + 32) setTrailingTitle:v5];
  }
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WFContentCollectionTableViewCell_setListItem___block_invoke_6;
    block[3] = &unk_279EE8DA8;
    v10 = v6;
    v8 = v5;
    v15 = *(a1 + 56);
    v11 = v8;
    v12 = WeakRetained;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__WFContentCollectionTableViewCell_setListItem___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D7A398]];
  v13 = v2;
  if (v2)
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 40) UIImage];
  v5 = [v4 imageWithRenderingMode:1];

  TLKImageClass = getTLKImageClass();
  v7 = [*(a1 + 40) tintColor];
  v8 = [v7 UIColor];
  v9 = [TLKImageClass applyTintColor:v8 toImage:v5];

  v10 = [objc_alloc(getTLKImageClass()) initWithImage:v9];
  [v10 setSize:{*(a1 + 72), *(a1 + 80)}];
  [v10 setCornerRoundingStyle:{objc_msgSend(*(a1 + 48), "tlkCornerRoundingStyleForWFRoundingStyle:", v3)}];
  v11 = [*(a1 + 48) imageCache];
  [v11 setObject:v10 forKey:*(a1 + 56)];

  v12 = [*(a1 + 48) listItem];
  LODWORD(v8) = [v12 isEqual:*(a1 + 56)];

  if (v8)
  {
    [*(a1 + 64) setLeadingImage:v10];
  }
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = WFContentCollectionTableViewCell;
  [(WFContentCollectionTableViewCell *)&v40 layoutSubviews];
  checkmarkImageView = [(WFContentCollectionTableViewCell *)self checkmarkImageView];

  v4 = 0.0;
  if (checkmarkImageView)
  {
    if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
    {
      v5 = 18.0;
    }

    else
    {
      v5 = 16.0;
    }

    v6 = v5;
    if ([(WFContentCollectionTableViewCell *)self effectiveUserInterfaceLayoutDirection])
    {
      contentView = [(WFContentCollectionTableViewCell *)self contentView];
      [contentView bounds];
      v9 = v8 - v5;
      checkmarkImageView2 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
      [checkmarkImageView2 intrinsicContentSize];
      v6 = v9 - v11;
    }

    contentView2 = [(WFContentCollectionTableViewCell *)self contentView];
    [contentView2 bounds];
    checkmarkImageView3 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView3 intrinsicContentSize];
    traitCollection = [(WFContentCollectionTableViewCell *)self traitCollection];
    [traitCollection displayScale];
    BSFloatRoundForScale();
    v16 = v15;
    checkmarkImageView4 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView4 intrinsicContentSize];
    v19 = v18;
    checkmarkImageView5 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView5 intrinsicContentSize];
    v22 = v21;
    checkmarkImageView6 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView6 setFrame:{v6, v16, v19, v22}];

    LODWORD(contentView2) = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    checkmarkImageView7 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView7 frame];
    v26 = v5 + v25;

    if (contentView2)
    {
      v4 = v26 + -10.0;
    }

    else
    {
      v4 = v26 + -8.0;
    }
  }

  universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  if ([(WFContentCollectionTableViewCell *)self effectiveUserInterfaceLayoutDirection])
  {
    x = 0.0;
  }

  else
  {
    x = v4;
  }

  contentView3 = [(WFContentCollectionTableViewCell *)self contentView];
  [contentView3 bounds];
  width = v30 - v4;
  contentView4 = [(WFContentCollectionTableViewCell *)self contentView];
  [contentView4 bounds];
  height = v33;
  if (universalPreviewsEnabled)
  {
    previewView = [(WFContentCollectionTableViewCell *)self previewView];
    y = 0.0;
  }

  else
  {
    v37 = 0;
    v38 = x;
    v39 = width;
    v41 = CGRectInset(*(&v33 - 3), 8.0, 0.0);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    previewView = [(WFContentCollectionTableViewCell *)self rowView];
  }

  [previewView setFrame:{x, y, width, height}];
}

- (double)preferredSeparatorInsetForCheckmark
{
  universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  checkmarkImageView = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
  v5 = checkmarkImageView;
  if (universalPreviewsEnabled)
  {
    if (checkmarkImageView)
    {
      checkmarkImageView2 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
      [checkmarkImageView2 intrinsicContentSize];
      v8 = v7 + 10.0;
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    if (checkmarkImageView)
    {
      checkmarkImageView3 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
      [checkmarkImageView3 intrinsicContentSize];
      v11 = v10 + 16.0 + -8.0;
    }

    else
    {
      v11 = -8.0;
    }

    return fmax(v11, 0.0);
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  contentView = [(WFContentCollectionTableViewCell *)self contentView];
  [contentView bounds];
  v7 = v6;

  checkmarkImageView = [(WFContentCollectionTableViewCell *)self checkmarkImageView];

  if (checkmarkImageView)
  {
    checkmarkImageView2 = [(WFContentCollectionTableViewCell *)self checkmarkImageView];
    [checkmarkImageView2 intrinsicContentSize];
    v7 = v7 - (v10 + 16.0);
  }

  if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    [(WFContentCollectionTableViewCell *)self previewView];
  }

  else
  {
    [(WFContentCollectionTableViewCell *)self rowView];
  }
  v11 = ;
  [v11 sizeThatFits:{v7, height}];
  v13 = v12;
  v15 = v14;

  if (v15 >= 54.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 54.0;
  }

  v17 = v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (WFContentCollectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = WFContentCollectionTableViewCell;
  v4 = [(WFContentCollectionTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFContentCollectionTableViewCell *)v4 setBackgroundColor:clearColor];

    [(WFContentCollectionTableViewCell *)v4 setCheckmarkStyle:0];
    if (([MEMORY[0x277CBEBD0] universalPreviewsEnabled] & 1) == 0)
    {
      v6 = objc_alloc_init(WFTLKSimpleRowView);
      contentView = [(WFContentCollectionTableViewCell *)v4 contentView];
      [contentView addSubview:v6];

      objc_storeWeak(&v4->_rowView, v6);
    }

    v8 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v4];
    [(WFContentCollectionTableViewCell *)v4 addInteraction:v8];
    v9 = v4;
  }

  return v4;
}

@end