@interface UIPrintPreviewPageCell
- (BOOL)locationInTapTargetOfPageLabelBadge:(CGPoint)badge;
- (CGSize)thumbnailSize;
- (UIPrintPreviewDelegate)printPreviewDelegate;
- (UIPrintPreviewPageCell)initWithFrame:(CGRect)frame;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)pageLabelText:(int64_t)text;
- (int64_t)pageLabelFormat;
- (void)handleTap:(id)tap;
- (void)invalidateThumbnailImage;
- (void)layoutSubviews;
- (void)pageBadgeTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setInRange:(BOOL)range animated:(BOOL)animated;
- (void)setThumbnailImage:(id)image;
- (void)showThumbnailProgressSpinner;
- (void)updatePageLabelAndImageViewWithIndex:(int64_t)index pageCount:(int64_t)count allowSelection:(BOOL)selection thumbnailSize:(CGSize)size;
@end

@implementation UIPrintPreviewPageCell

- (UIPrintPreviewPageCell)initWithFrame:(CGRect)frame
{
  v56[2] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = UIPrintPreviewPageCell;
  v3 = [(UIPrintPreviewPageCell *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(UIPrintPreviewPageCell *)v3 setThumbnailView:v4];

    thumbnailView = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [thumbnailView setContentMode:1];

    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    thumbnailView2 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [thumbnailView2 setFrame:{v6, v7, v8, v9}];

    thumbnailView3 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [thumbnailView3 setClipsToBounds:1];

    contentView = [(UIPrintPreviewPageCell *)v3 contentView];
    thumbnailView4 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [contentView addSubview:thumbnailView4];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIPrintPreviewPageCell *)v3 setDimmingView:v14];

    dimmingView = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [dimmingView setFrame:{v6, v7, v8, v9}];

    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    dimmingView2 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [dimmingView2 setBackgroundColor:systemGray2Color];

    dimmingView3 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [dimmingView3 setAlpha:0.0];

    contentView2 = [(UIPrintPreviewPageCell *)v3 contentView];
    dimmingView4 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [contentView2 addSubview:dimmingView4];

    v21 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIPrintPreviewPageCell *)v3 setLoadingProgressView:v21];

    loadingProgressView = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [loadingProgressView setFrame:{v6, v7, v8, v9}];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    loadingProgressView2 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [loadingProgressView2 setBackgroundColor:whiteColor];

    loadingProgressView3 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [loadingProgressView3 setHidden:1];

    contentView3 = [(UIPrintPreviewPageCell *)v3 contentView];
    loadingProgressView4 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [contentView3 addSubview:loadingProgressView4];

    v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(UIPrintPreviewPageCell *)v3 setSpinner:v28];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    spinner = [(UIPrintPreviewPageCell *)v3 spinner];
    [spinner setColor:systemGrayColor];

    spinner2 = [(UIPrintPreviewPageCell *)v3 spinner];
    [spinner2 setTranslatesAutoresizingMaskIntoConstraints:0];

    loadingProgressView5 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    spinner3 = [(UIPrintPreviewPageCell *)v3 spinner];
    [loadingProgressView5 addSubview:spinner3];

    loadingProgressView6 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v35 = MEMORY[0x277CCAAD0];
    spinner4 = [(UIPrintPreviewPageCell *)v3 spinner];
    loadingProgressView7 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v38 = [v35 constraintWithItem:spinner4 attribute:9 relatedBy:0 toItem:loadingProgressView7 attribute:9 multiplier:1.0 constant:0.0];
    v56[0] = v38;
    v39 = MEMORY[0x277CCAAD0];
    spinner5 = [(UIPrintPreviewPageCell *)v3 spinner];
    loadingProgressView8 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v42 = [v39 constraintWithItem:spinner5 attribute:10 relatedBy:0 toItem:loadingProgressView8 attribute:10 multiplier:1.0 constant:0.0];
    v56[1] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [loadingProgressView6 addConstraints:v43];

    contentView4 = [(UIPrintPreviewPageCell *)v3 contentView];
    layer = [contentView4 layer];
    LODWORD(v46) = 1036831949;
    [layer setShadowOpacity:v46];

    contentView5 = [(UIPrintPreviewPageCell *)v3 contentView];
    layer2 = [contentView5 layer];
    [layer2 setShadowRadius:4.0];

    contentView6 = [(UIPrintPreviewPageCell *)v3 contentView];
    layer3 = [contentView6 layer];
    [layer3 setShadowOffset:{0.0, 2.0}];

    contentView7 = [(UIPrintPreviewPageCell *)v3 contentView];
    layer4 = [contentView7 layer];
    v53 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    [layer4 setShadowColor:{objc_msgSend(v53, "CGColor")}];
  }

  return v3;
}

- (void)layoutSubviews
{
  v62[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = UIPrintPreviewPageCell;
  [(UIPrintPreviewPageCell *)&v59 layoutSubviews];
  thumbnailView = [(UIPrintPreviewPageCell *)self thumbnailView];
  [thumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = MEMORY[0x277CCAAD0];
  v45 = MEMORY[0x277CCAAD0];
  thumbnailView2 = [(UIPrintPreviewPageCell *)self thumbnailView];
  contentView = [(UIPrintPreviewPageCell *)self contentView];
  v50 = [v4 constraintWithItem:thumbnailView2 attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:0.0];
  v62[0] = v50;
  v5 = MEMORY[0x277CCAAD0];
  thumbnailView3 = [(UIPrintPreviewPageCell *)self thumbnailView];
  contentView2 = [(UIPrintPreviewPageCell *)self contentView];
  v7 = [v5 constraintWithItem:thumbnailView3 attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:0.0];
  v62[1] = v7;
  v8 = MEMORY[0x277CCAAD0];
  thumbnailView4 = [(UIPrintPreviewPageCell *)self thumbnailView];
  contentView3 = [(UIPrintPreviewPageCell *)self contentView];
  v11 = [v8 constraintWithItem:thumbnailView4 attribute:3 relatedBy:0 toItem:contentView3 attribute:3 multiplier:1.0 constant:0.0];
  v62[2] = v11;
  v12 = MEMORY[0x277CCAAD0];
  thumbnailView5 = [(UIPrintPreviewPageCell *)self thumbnailView];
  contentView4 = [(UIPrintPreviewPageCell *)self contentView];
  v15 = [v12 constraintWithItem:thumbnailView5 attribute:4 relatedBy:0 toItem:contentView4 attribute:4 multiplier:1.0 constant:0.0];
  v62[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  [v45 activateConstraints:v16];

  dimmingView = [(UIPrintPreviewPageCell *)self dimmingView];
  [dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x277CCAAD0];
  v46 = MEMORY[0x277CCAAD0];
  dimmingView2 = [(UIPrintPreviewPageCell *)self dimmingView];
  thumbnailView6 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v51 = [v18 constraintWithItem:dimmingView2 attribute:5 relatedBy:0 toItem:thumbnailView6 attribute:5 multiplier:1.0 constant:0.0];
  v61[0] = v51;
  v19 = MEMORY[0x277CCAAD0];
  dimmingView3 = [(UIPrintPreviewPageCell *)self dimmingView];
  thumbnailView7 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v21 = [v19 constraintWithItem:dimmingView3 attribute:6 relatedBy:0 toItem:thumbnailView7 attribute:6 multiplier:1.0 constant:0.0];
  v61[1] = v21;
  v22 = MEMORY[0x277CCAAD0];
  dimmingView4 = [(UIPrintPreviewPageCell *)self dimmingView];
  thumbnailView8 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v25 = [v22 constraintWithItem:dimmingView4 attribute:3 relatedBy:0 toItem:thumbnailView8 attribute:3 multiplier:1.0 constant:0.0];
  v61[2] = v25;
  v26 = MEMORY[0x277CCAAD0];
  dimmingView5 = [(UIPrintPreviewPageCell *)self dimmingView];
  thumbnailView9 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v29 = [v26 constraintWithItem:dimmingView5 attribute:4 relatedBy:0 toItem:thumbnailView9 attribute:4 multiplier:1.0 constant:0.0];
  v61[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  [v46 activateConstraints:v30];

  loadingProgressView = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [loadingProgressView setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = MEMORY[0x277CCAAD0];
  loadingProgressView2 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  thumbnailView10 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v52 = [v32 constraintWithItem:loadingProgressView2 attribute:5 relatedBy:0 toItem:thumbnailView10 attribute:5 multiplier:1.0 constant:0.0];
  v60[0] = v52;
  v33 = MEMORY[0x277CCAAD0];
  loadingProgressView3 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  thumbnailView11 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v35 = [v33 constraintWithItem:loadingProgressView3 attribute:6 relatedBy:0 toItem:thumbnailView11 attribute:6 multiplier:1.0 constant:0.0];
  v60[1] = v35;
  v36 = MEMORY[0x277CCAAD0];
  loadingProgressView4 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  thumbnailView12 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v39 = [v36 constraintWithItem:loadingProgressView4 attribute:3 relatedBy:0 toItem:thumbnailView12 attribute:3 multiplier:1.0 constant:0.0];
  v60[2] = v39;
  v40 = MEMORY[0x277CCAAD0];
  loadingProgressView5 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  thumbnailView13 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v43 = [v40 constraintWithItem:loadingProgressView5 attribute:4 relatedBy:0 toItem:thumbnailView13 attribute:4 multiplier:1.0 constant:0.0];
  v60[3] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
  [v32 activateConstraints:v44];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = UIPrintPreviewPageCell;
  [(UIPrintPreviewPageCell *)&v10 prepareForReuse];
  thumbnailView = [(UIPrintPreviewPageCell *)self thumbnailView];
  [thumbnailView setImage:0];

  thumbnailView2 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [thumbnailView2 setHidden:1];

  pageLabel = [(UIPrintPreviewPageCell *)self pageLabel];
  [pageLabel removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabel:0];
  pageLabelAndChekmarkView = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  [pageLabelAndChekmarkView removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:0];
  pageLabelBackgroundBlurView = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  [pageLabelBackgroundBlurView removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabelBackgroundBlurView:0];
  loadingProgressView = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [loadingProgressView setHidden:1];

  spinner = [(UIPrintPreviewPageCell *)self spinner];
  [spinner stopAnimating];
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    thumbnailView = [(UIPrintPreviewPageCell *)self thumbnailView];
    [thumbnailView setImage:imageCopy];

    [(UIPrintPreviewPageCell *)self setInvalidated:0];
    thumbnailView2 = [(UIPrintPreviewPageCell *)self thumbnailView];
    [thumbnailView2 setHidden:0];

    loadingProgressView = [(UIPrintPreviewPageCell *)self loadingProgressView];
    [loadingProgressView setHidden:1];

    spinner = [(UIPrintPreviewPageCell *)self spinner];
    [spinner stopAnimating];
  }

  else
  {
    [(UIPrintPreviewPageCell *)self showThumbnailProgressSpinner];
  }
}

- (void)invalidateThumbnailImage
{
  [(UIPrintPreviewPageCell *)self setInvalidated:1];

  [(UIPrintPreviewPageCell *)self showThumbnailProgressSpinner];
}

- (void)showThumbnailProgressSpinner
{
  thumbnailView = [(UIPrintPreviewPageCell *)self thumbnailView];
  image = [thumbnailView image];
  if (image)
  {
    v5 = image;
    invalidated = [(UIPrintPreviewPageCell *)self invalidated];

    if (!invalidated)
    {
      return;
    }
  }

  else
  {
  }

  loadingProgressView = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [loadingProgressView setHidden:0];

  spinner = [(UIPrintPreviewPageCell *)self spinner];
  [spinner startAnimating];

  thumbnailView2 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [thumbnailView2 setImage:0];
}

- (id)pageLabelText:(int64_t)text
{
  printPreviewDelegate = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  showingPageView = [printPreviewDelegate showingPageView];

  pageLabelFormat = [(UIPrintPreviewPageCell *)self pageLabelFormat];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (pageLabelFormat == 2)
  {
    if (showingPageView)
    {
      v12 = @"Page %ld";
    }

    else
    {
      v12 = @"Sheet %ld";
    }

    goto LABEL_11;
  }

  if (pageLabelFormat != 1)
  {
    if (!pageLabelFormat)
    {
      if (showingPageView)
      {
        v11 = @"Page %ld of %ld";
      }

      else
      {
        v11 = @"Sheet %ld of %ld";
      }

      goto LABEL_13;
    }

    v12 = @"%ld";
LABEL_11:
    v13 = [v9 localizedStringForKey:v12 value:v12 table:@"Localizable"];
    [v8 localizedStringWithFormat:v13, text + 1, v16];
    goto LABEL_14;
  }

  v11 = @"%ld of %ld";
LABEL_13:
  v13 = [v9 localizedStringForKey:v11 value:v11 table:@"Localizable"];
  [v8 localizedStringWithFormat:v13, text + 1, -[UIPrintPreviewPageCell pageCount](self, "pageCount")];
  v14 = LABEL_14:;

  return v14;
}

- (int64_t)pageLabelFormat
{
  printPreviewDelegate = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  showingPageView = [printPreviewDelegate showingPageView];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (showingPageView)
  {
    v8 = [v6 localizedStringForKey:@"Page %ld of %ld" value:@"Page %ld of %ld" table:@"Localizable"];
    v9 = 25.0;
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"Sheet %ld of %ld" value:@"Sheet %ld of %ld" table:@"Localizable"];
    v9 = 0.0;
  }

  v10 = [v5 localizedStringWithFormat:v8, -[UIPrintPreviewPageCell pageCount](self, "pageCount"), -[UIPrintPreviewPageCell pageCount](self, "pageCount")];

  v11 = MEMORY[0x277CBEAC0];
  pageLabel = [(UIPrintPreviewPageCell *)self pageLabel];
  font = [pageLabel font];
  v14 = *MEMORY[0x277D740A8];
  v15 = [v11 dictionaryWithObject:font forKey:*MEMORY[0x277D740A8]];
  [v10 sizeWithAttributes:v15];
  v17 = v16;
  v19 = v18;

  v20 = v19 + 16.0;
  v21 = (v19 + 16.0) / 3.0;
  v22 = (v20 + -22.0) * 0.5;
  if (showingPageView)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  [(UIPrintPreviewPageCell *)self thumbnailSize];
  v25 = v24 - v9 - v23 - v21;
  if (v17 <= v25)
  {
    v40 = 0;
  }

  else
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"%ld of %ld" value:@"%ld of %ld" table:@"Localizable"];
    v29 = [v26 localizedStringWithFormat:v28, -[UIPrintPreviewPageCell pageCount](self, "pageCount"), -[UIPrintPreviewPageCell pageCount](self, "pageCount")];

    v30 = MEMORY[0x277CBEAC0];
    pageLabel2 = [(UIPrintPreviewPageCell *)self pageLabel];
    font2 = [pageLabel2 font];
    v33 = [v30 dictionaryWithObject:font2 forKey:v14];
    [v29 sizeWithAttributes:v33];
    v35 = v34;

    if (v35 <= v25)
    {
      v40 = 1;
      v10 = v29;
    }

    else
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = v37;
      if (showingPageView)
      {
        v39 = @"Page %ld";
      }

      else
      {
        v39 = @"Sheet %ld";
      }

      v41 = [v37 localizedStringForKey:v39 value:v39 table:@"Localizable"];
      v10 = [v36 localizedStringWithFormat:v41, -[UIPrintPreviewPageCell pageCount](self, "pageCount")];

      v42 = MEMORY[0x277CBEAC0];
      pageLabel3 = [(UIPrintPreviewPageCell *)self pageLabel];
      font3 = [pageLabel3 font];
      v45 = [v42 dictionaryWithObject:font3 forKey:v14];
      [v10 sizeWithAttributes:v45];
      v47 = v46;

      if (v47 <= v25)
      {
        v40 = 2;
      }

      else
      {
        v40 = 3;
      }
    }
  }

  return v40;
}

- (void)updatePageLabelAndImageViewWithIndex:(int64_t)index pageCount:(int64_t)count allowSelection:(BOOL)selection thumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selectionCopy = selection;
  v222[12] = *MEMORY[0x277D85DE8];
  [(UIPrintPreviewPageCell *)self setPageIndex:index];
  [(UIPrintPreviewPageCell *)self setPageCount:count];
  [(UIPrintPreviewPageCell *)self setThumbnailSize:width, height];
  pageLabel = [(UIPrintPreviewPageCell *)self pageLabel];

  if (!pageLabel)
  {
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UIPrintPreviewPageCell *)self setPageLabel:v12];

    pageLabel2 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    pageLabel3 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel3 setTextAlignment:1];

    labelColor = [MEMORY[0x277D75348] labelColor];
    pageLabel4 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel4 setTextColor:labelColor];

    v17 = MEMORY[0x277D74300];
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    [v18 _scaledValueForValue:15.0];
    v19 = [v17 boldSystemFontOfSize:?];
    pageLabel5 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel5 setFont:v19];

    clearColor = [MEMORY[0x277D75348] clearColor];
    pageLabel6 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel6 setBackgroundColor:clearColor];

    pageLabel7 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel7 setAlpha:0.6];

    pageLabel8 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel8 setOpaque:0];

    pageLabel9 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel9 setIsAccessibilityElement:0];

    pageLabel10 = [(UIPrintPreviewPageCell *)self pageLabel];
    [pageLabel10 setUserInteractionEnabled:0];

    pageLabel11 = [(UIPrintPreviewPageCell *)self pageLabel];
    layer = [pageLabel11 layer];
    v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [layer setCompositingFilter:v29];
  }

  v30 = [(UIPrintPreviewPageCell *)self pageLabelText:[(UIPrintPreviewPageCell *)self pageIndex]];
  pageLabel12 = [(UIPrintPreviewPageCell *)self pageLabel];
  v218 = v30;
  [pageLabel12 setText:v30];

  pageLabel13 = [(UIPrintPreviewPageCell *)self pageLabel];
  [pageLabel13 sizeToFit];

  if (selectionCopy)
  {
    checkmarkImageView = [(UIPrintPreviewPageCell *)self checkmarkImageView];

    if (!checkmarkImageView)
    {
      checkmarkImage = [MEMORY[0x277D755B8] checkmarkImage];
      v35 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:checkmarkImage];
      [(UIPrintPreviewPageCell *)self setCheckmarkImageView:v35];

      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      checkmarkImageView2 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [checkmarkImageView2 setTintColor:systemBlueColor];

      checkmarkImageView3 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [checkmarkImageView3 setContentMode:2];

      checkmarkImageView4 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [checkmarkImageView4 setUserInteractionEnabled:0];

      checkmarkImageView5 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [checkmarkImageView5 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    checkmarkBackgroundImageView = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];

    if (!checkmarkBackgroundImageView)
    {
      v42 = objc_alloc(MEMORY[0x277D755E8]);
      v43 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
      v44 = [v42 initWithImage:v43];
      [(UIPrintPreviewPageCell *)self setCheckmarkBackgroundImageView:v44];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      v46 = [secondaryLabelColor colorWithAlphaComponent:0.45];
      checkmarkBackgroundImageView2 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [checkmarkBackgroundImageView2 setTintColor:v46];

      checkmarkBackgroundImageView3 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [checkmarkBackgroundImageView3 setContentMode:2];

      checkmarkBackgroundImageView4 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      layer2 = [checkmarkBackgroundImageView4 layer];
      v51 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
      [layer2 setCompositingFilter:v51];

      checkmarkBackgroundImageView5 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [checkmarkBackgroundImageView5 setUserInteractionEnabled:0];

      checkmarkBackgroundImageView6 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [checkmarkBackgroundImageView6 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    pageLabelAndChekmarkView = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
    if (!pageLabelAndChekmarkView || (v55 = pageLabelAndChekmarkView, -[UIPrintPreviewPageCell pageLabelAndChekmarkView](self, "pageLabelAndChekmarkView"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 tag], v56, v55, !v57))
    {
      v216 = selectionCopy;
      pageLabelAndChekmarkView2 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];

      if (pageLabelAndChekmarkView2)
      {
        pageLabelAndChekmarkView3 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        subviews = [pageLabelAndChekmarkView3 subviews];
        [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

        pageLabelAndChekmarkView4 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        [pageLabelAndChekmarkView4 removeFromSuperview];
      }

      v62 = objc_alloc(MEMORY[0x277D75D18]);
      v63 = [v62 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:v63];

      clearColor2 = [MEMORY[0x277D75348] clearColor];
      pageLabelAndChekmarkView5 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView5 setBackgroundColor:clearColor2];

      pageLabelAndChekmarkView6 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView6 setTranslatesAutoresizingMaskIntoConstraints:0];

      pageLabelAndChekmarkView7 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView7 setUserInteractionEnabled:0];

      pageLabelAndChekmarkView8 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView8 setTag:1];

      pageLabelAndChekmarkView9 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel14 = [(UIPrintPreviewPageCell *)self pageLabel];
      [pageLabelAndChekmarkView9 addSubview:pageLabel14];

      pageLabelAndChekmarkView10 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      checkmarkImageView6 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [pageLabelAndChekmarkView10 addSubview:checkmarkImageView6];

      pageLabelAndChekmarkView11 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      checkmarkBackgroundImageView7 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [pageLabelAndChekmarkView11 addSubview:checkmarkBackgroundImageView7];

      contentView = [(UIPrintPreviewPageCell *)self contentView];
      pageLabelAndChekmarkView12 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [contentView addSubview:pageLabelAndChekmarkView12];

      v77 = MEMORY[0x277CCAAD0];
      checkmarkBackgroundImageView8 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v210 = [v77 constraintWithItem:checkmarkBackgroundImageView8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[0] = v210;
      v78 = MEMORY[0x277CCAAD0];
      checkmarkBackgroundImageView9 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v204 = [v78 constraintWithItem:checkmarkBackgroundImageView9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[1] = v204;
      v79 = MEMORY[0x277CCAAD0];
      checkmarkImageView7 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v199 = [v79 constraintWithItem:checkmarkImageView7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[2] = v199;
      v80 = MEMORY[0x277CCAAD0];
      checkmarkImageView8 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v195 = [v80 constraintWithItem:checkmarkImageView8 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[3] = v195;
      v81 = MEMORY[0x277CCAAD0];
      checkmarkImageView9 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      checkmarkBackgroundImageView10 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v192 = [v81 constraintWithItem:checkmarkImageView9 attribute:9 relatedBy:0 toItem:checkmarkBackgroundImageView10 attribute:9 multiplier:1.0 constant:0.0];
      v222[4] = v192;
      v82 = MEMORY[0x277CCAAD0];
      checkmarkImageView10 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      pageLabel15 = [(UIPrintPreviewPageCell *)self pageLabel];
      v189 = [v82 constraintWithItem:checkmarkImageView10 attribute:10 relatedBy:0 toItem:pageLabel15 attribute:10 multiplier:1.0 constant:0.0];
      v222[5] = v189;
      v83 = MEMORY[0x277CCAAD0];
      checkmarkBackgroundImageView11 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      pageLabel16 = [(UIPrintPreviewPageCell *)self pageLabel];
      v186 = [v83 constraintWithItem:checkmarkBackgroundImageView11 attribute:10 relatedBy:0 toItem:pageLabel16 attribute:10 multiplier:1.0 constant:0.0];
      v222[6] = v186;
      v84 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView13 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel17 = [(UIPrintPreviewPageCell *)self pageLabel];
      v183 = [v84 constraintWithItem:pageLabelAndChekmarkView13 attribute:3 relatedBy:0 toItem:pageLabel17 attribute:3 multiplier:1.0 constant:0.0];
      v222[7] = v183;
      v85 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView14 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel18 = [(UIPrintPreviewPageCell *)self pageLabel];
      v180 = [v85 constraintWithItem:pageLabelAndChekmarkView14 attribute:4 relatedBy:0 toItem:pageLabel18 attribute:4 multiplier:1.0 constant:0.0];
      v222[8] = v180;
      v86 = MEMORY[0x277CCAAD0];
      checkmarkBackgroundImageView12 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      pageLabelAndChekmarkView15 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v88 = [v86 constraintWithItem:checkmarkBackgroundImageView12 attribute:5 relatedBy:0 toItem:pageLabelAndChekmarkView15 attribute:5 multiplier:1.0 constant:0.0];
      v222[9] = v88;
      v89 = MEMORY[0x277CCAAD0];
      pageLabel19 = [(UIPrintPreviewPageCell *)self pageLabel];
      checkmarkBackgroundImageView13 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v92 = [v89 constraintWithItem:pageLabel19 attribute:5 relatedBy:0 toItem:checkmarkBackgroundImageView13 attribute:6 multiplier:1.0 constant:3.0];
      v222[10] = v92;
      v93 = MEMORY[0x277CCAAD0];
      pageLabel20 = [(UIPrintPreviewPageCell *)self pageLabel];
      pageLabelAndChekmarkView16 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v96 = [v93 constraintWithItem:pageLabel20 attribute:6 relatedBy:0 toItem:pageLabelAndChekmarkView16 attribute:6 multiplier:1.0 constant:0.0];
      v222[11] = v96;
      v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:12];

      pageLabelAndChekmarkView17 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView17 addConstraints:v97];

      v99 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView18 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel21 = [(UIPrintPreviewPageCell *)self pageLabel];
      v102 = [v99 constraintWithItem:pageLabelAndChekmarkView18 attribute:8 relatedBy:0 toItem:pageLabel21 attribute:8 multiplier:1.0 constant:0.0];
      v221[0] = v102;
      v103 = MEMORY[0x277CCAAD0];
      pageLabel22 = [(UIPrintPreviewPageCell *)self pageLabel];
      pageLabelAndChekmarkView19 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v106 = [v103 constraintWithItem:pageLabel22 attribute:10 relatedBy:0 toItem:pageLabelAndChekmarkView19 attribute:10 multiplier:1.0 constant:0.0];
      v221[1] = v106;
      v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:2];

      contentView2 = [(UIPrintPreviewPageCell *)self contentView];
      [contentView2 addConstraints:v107];

      tapGestureRecognizer = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];

      if (!tapGestureRecognizer)
      {
        v110 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
        [(UIPrintPreviewPageCell *)self setTapGestureRecognizer:v110];

        tapGestureRecognizer2 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
        [tapGestureRecognizer2 setDelegate:self];
      }

      tapGestureRecognizer3 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
      [(UIPrintPreviewPageCell *)self addGestureRecognizer:tapGestureRecognizer3];

      selectionCopy = v216;
    }
  }

  else
  {
    pageLabelAndChekmarkView20 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
    if (!pageLabelAndChekmarkView20 || (v114 = pageLabelAndChekmarkView20, -[UIPrintPreviewPageCell pageLabelAndChekmarkView](self, "pageLabelAndChekmarkView"), v115 = objc_claimAutoreleasedReturnValue(), v116 = [v115 tag], v115, v114, v116 == 1))
    {
      pageLabelAndChekmarkView21 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];

      if (pageLabelAndChekmarkView21)
      {
        pageLabelAndChekmarkView22 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        subviews2 = [pageLabelAndChekmarkView22 subviews];
        [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];

        pageLabelAndChekmarkView23 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        [pageLabelAndChekmarkView23 removeFromSuperview];
      }

      v121 = objc_alloc(MEMORY[0x277D75D18]);
      v122 = [v121 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:v122];

      clearColor3 = [MEMORY[0x277D75348] clearColor];
      pageLabelAndChekmarkView24 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView24 setBackgroundColor:clearColor3];

      pageLabelAndChekmarkView25 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView25 setTranslatesAutoresizingMaskIntoConstraints:0];

      pageLabelAndChekmarkView26 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [pageLabelAndChekmarkView26 setUserInteractionEnabled:0];

      pageLabelAndChekmarkView27 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel23 = [(UIPrintPreviewPageCell *)self pageLabel];
      [pageLabelAndChekmarkView27 addSubview:pageLabel23];

      contentView3 = [(UIPrintPreviewPageCell *)self contentView];
      pageLabelAndChekmarkView28 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [contentView3 addSubview:pageLabelAndChekmarkView28];

      contentView4 = [(UIPrintPreviewPageCell *)self contentView];
      v132 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView29 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel24 = [(UIPrintPreviewPageCell *)self pageLabel];
      v208 = [v132 constraintWithItem:pageLabelAndChekmarkView29 attribute:3 relatedBy:0 toItem:pageLabel24 attribute:3 multiplier:1.0 constant:0.0];
      v220[0] = v208;
      v133 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView30 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel25 = [(UIPrintPreviewPageCell *)self pageLabel];
      v134 = [v133 constraintWithItem:pageLabelAndChekmarkView30 attribute:5 relatedBy:0 toItem:pageLabel25 attribute:5 multiplier:1.0 constant:0.0];
      v220[1] = v134;
      v135 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView31 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel26 = [(UIPrintPreviewPageCell *)self pageLabel];
      v138 = [v135 constraintWithItem:pageLabelAndChekmarkView31 attribute:4 relatedBy:0 toItem:pageLabel26 attribute:4 multiplier:1.0 constant:0.0];
      v220[2] = v138;
      v139 = MEMORY[0x277CCAAD0];
      pageLabelAndChekmarkView32 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      pageLabel27 = [(UIPrintPreviewPageCell *)self pageLabel];
      v142 = [v139 constraintWithItem:pageLabelAndChekmarkView32 attribute:6 relatedBy:0 toItem:pageLabel27 attribute:6 multiplier:1.0 constant:0.0];
      v220[3] = v142;
      v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:4];
      [contentView4 addConstraints:v143];

      selectionCopy = 0;
    }

    tapGestureRecognizer4 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];

    if (tapGestureRecognizer4)
    {
      tapGestureRecognizer5 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
      [(UIPrintPreviewPageCell *)self removeGestureRecognizer:tapGestureRecognizer5];

      [(UIPrintPreviewPageCell *)self setTapGestureRecognizer:0];
    }
  }

  pageLabel28 = [(UIPrintPreviewPageCell *)self pageLabel];
  [pageLabel28 frame];
  v148 = v147 + 16.0;

  pageLabelBackgroundBlurView = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];

  if (!pageLabelBackgroundBlurView)
  {
    v150 = objc_alloc(MEMORY[0x277D75D68]);
    v151 = [MEMORY[0x277D75210] effectWithStyle:6];
    v152 = [v150 initWithEffect:v151];
    [(UIPrintPreviewPageCell *)self setPageLabelBackgroundBlurView:v152];

    pageLabelBackgroundBlurView2 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [pageLabelBackgroundBlurView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    pageLabelBackgroundBlurView3 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    layer3 = [pageLabelBackgroundBlurView3 layer];
    [layer3 setCornerRadius:v148 * 0.5];

    pageLabelBackgroundBlurView4 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [pageLabelBackgroundBlurView4 setClipsToBounds:1];

    pageLabelBackgroundBlurView5 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [pageLabelBackgroundBlurView5 setUserInteractionEnabled:0];

    contentView5 = [(UIPrintPreviewPageCell *)self contentView];
    pageLabelBackgroundBlurView6 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [contentView5 addSubview:pageLabelBackgroundBlurView6];
  }

  if (selectionCopy)
  {
    v160 = (v148 + -22.0) * 0.5;
  }

  else
  {
    v160 = v148 / 3.0;
  }

  contentView6 = [(UIPrintPreviewPageCell *)self contentView];
  pageLabelAndChekmarkView33 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  [contentView6 bringSubviewToFront:pageLabelAndChekmarkView33];

  v163 = MEMORY[0x277CCAAD0];
  pageLabelBackgroundBlurView7 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  contentView7 = [(UIPrintPreviewPageCell *)self contentView];
  v212 = [v163 constraintWithItem:pageLabelBackgroundBlurView7 attribute:9 relatedBy:0 toItem:contentView7 attribute:9 multiplier:1.0 constant:0.0];
  v219[0] = v212;
  v164 = MEMORY[0x277CCAAD0];
  pageLabelBackgroundBlurView8 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  contentView8 = [(UIPrintPreviewPageCell *)self contentView];
  v203 = [v164 constraintWithItem:pageLabelBackgroundBlurView8 attribute:4 relatedBy:0 toItem:contentView8 attribute:4 multiplier:1.0 constant:-15.0];
  v219[1] = v203;
  v165 = MEMORY[0x277CCAAD0];
  pageLabelBackgroundBlurView9 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  pageLabelAndChekmarkView34 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  v160 = [v165 constraintWithItem:pageLabelBackgroundBlurView9 attribute:7 relatedBy:0 toItem:pageLabelAndChekmarkView34 attribute:7 multiplier:1.0 constant:v148 / 3.0 + v160];
  v219[2] = v160;
  v166 = MEMORY[0x277CCAAD0];
  pageLabelBackgroundBlurView10 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v168 = [v166 constraintWithItem:pageLabelBackgroundBlurView10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v148];
  v219[3] = v168;
  v169 = MEMORY[0x277CCAAD0];
  pageLabelAndChekmarkView35 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  pageLabelBackgroundBlurView11 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v172 = [v169 constraintWithItem:pageLabelAndChekmarkView35 attribute:9 relatedBy:0 toItem:pageLabelBackgroundBlurView11 attribute:9 multiplier:1.0 constant:0.0];
  v219[4] = v172;
  v173 = MEMORY[0x277CCAAD0];
  pageLabelAndChekmarkView36 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  pageLabelBackgroundBlurView12 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v176 = [v173 constraintWithItem:pageLabelAndChekmarkView36 attribute:10 relatedBy:0 toItem:pageLabelBackgroundBlurView12 attribute:10 multiplier:1.0 constant:0.0];
  v219[5] = v176;
  v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:6];

  contentView9 = [(UIPrintPreviewPageCell *)self contentView];
  [contentView9 addConstraints:v177];
}

- (void)setInRange:(BOOL)range animated:(BOOL)animated
{
  rangeCopy = range;
  if (animated)
  {
    checkmarkBackgroundImageView2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v6 = MEMORY[0x277CCABB0];
    dimmingView = [(UIPrintPreviewPageCell *)self dimmingView];
    [dimmingView alpha];
    *&v8 = v8;
    v9 = [v6 numberWithFloat:v8];
    [checkmarkBackgroundImageView2 setFromValue:v9];

    if (rangeCopy)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.7;
    }

    if (rangeCopy)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (rangeCopy)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithFloat:COERCE_DOUBLE(LODWORD(v10))];
    [checkmarkBackgroundImageView2 setToValue:v13];

    [checkmarkBackgroundImageView2 setAdditive:0];
    [checkmarkBackgroundImageView2 setDuration:0.100000001];
    [MEMORY[0x277CD9FF0] begin];
    dimmingView2 = [(UIPrintPreviewPageCell *)self dimmingView];
    layer = [dimmingView2 layer];
    [layer addAnimation:checkmarkBackgroundImageView2 forKey:@"opacity"];

    dimmingView3 = [(UIPrintPreviewPageCell *)self dimmingView];
    [dimmingView3 setAlpha:v10];

    checkmarkImageView = [(UIPrintPreviewPageCell *)self checkmarkImageView];
    [checkmarkImageView setAlpha:v11];

    checkmarkBackgroundImageView = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
    [checkmarkBackgroundImageView setAlpha:v12];

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    dimmingView4 = [(UIPrintPreviewPageCell *)self dimmingView];
    v20 = dimmingView4;
    v21 = 0.699999988;
    if (rangeCopy)
    {
      v21 = 0.0;
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    if (rangeCopy)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0;
    }

    [dimmingView4 setAlpha:v21];

    checkmarkImageView2 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
    [checkmarkImageView2 setAlpha:v22];

    checkmarkBackgroundImageView2 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
    [checkmarkBackgroundImageView2 setAlpha:v23];
  }
}

- (BOOL)locationInTapTargetOfPageLabelBadge:(CGPoint)badge
{
  y = badge.y;
  x = badge.x;
  pageLabelBackgroundBlurView = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  [pageLabelBackgroundBlurView frame];
  v19 = CGRectInset(v18, -10.0, -10.0);
  v6 = v19.origin.x;
  v7 = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v10 = v6;
  v11 = v7;
  v12 = width;
  v13 = height;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v10, *&v14);
}

- (void)pageBadgeTapped:(id)tapped
{
  printPreviewDelegate = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  canModifyPageRange = [printPreviewDelegate canModifyPageRange];

  if (canModifyPageRange)
  {
    printPreviewDelegate2 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
    [printPreviewDelegate2 pageBadgeTapped:{-[UIPrintPreviewPageCell pageIndex](self, "pageIndex")}];
  }
}

- (void)handleTap:(id)tap
{
  [tap locationInView:self];
  if ([(UIPrintPreviewPageCell *)self locationInTapTargetOfPageLabelBadge:?])
  {

    [(UIPrintPreviewPageCell *)self pageBadgeTapped:self];
  }
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x277CCACA8];
  printPreviewDelegate = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  showingPageView = [printPreviewDelegate showingPageView];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (showingPageView)
  {
    v8 = @"Page %ld";
  }

  else
  {
    v8 = @"Sheet %ld";
  }

  v9 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];
  v10 = [v3 localizedStringWithFormat:v9, -[UIPrintPreviewPageCell pageIndex](self, "pageIndex") + 1];

  printPreviewDelegate2 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  canModifyPageRange = [printPreviewDelegate2 canModifyPageRange];

  if (canModifyPageRange)
  {
    printPreviewDelegate3 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
    v14 = [printPreviewDelegate3 pageIndexIsInRange:{-[UIPrintPreviewPageCell pageIndex](self, "pageIndex")}];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    if (v14)
    {
      v17 = @"Page is in page range.";
    }

    else
    {
      v17 = @"Page is not in page range";
    }

    v18 = [v15 localizedStringForKey:v17 value:v17 table:@"Localizable"];
    v19 = [v10 stringByAppendingFormat:@". %@", v18];

    v10 = v19;
  }

  return v10;
}

- (id)accessibilityHint
{
  printPreviewDelegate = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  if ([printPreviewDelegate canModifyPageRange])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Modify the page range starting at this page." value:@"Modify the page range starting at this page." table:@"Localizable"];
  }

  else
  {
    v4 = &stru_2871AE610;
  }

  return v4;
}

- (UIPrintPreviewDelegate)printPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_printPreviewDelegate);

  return WeakRetained;
}

- (CGSize)thumbnailSize
{
  objc_copyStruct(v4, &self->_thumbnailSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end