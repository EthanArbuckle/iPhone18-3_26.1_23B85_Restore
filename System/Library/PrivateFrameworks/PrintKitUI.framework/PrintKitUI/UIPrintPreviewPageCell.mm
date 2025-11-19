@interface UIPrintPreviewPageCell
- (BOOL)locationInTapTargetOfPageLabelBadge:(CGPoint)a3;
- (CGSize)thumbnailSize;
- (UIPrintPreviewDelegate)printPreviewDelegate;
- (UIPrintPreviewPageCell)initWithFrame:(CGRect)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)pageLabelText:(int64_t)a3;
- (int64_t)pageLabelFormat;
- (void)handleTap:(id)a3;
- (void)invalidateThumbnailImage;
- (void)layoutSubviews;
- (void)pageBadgeTapped:(id)a3;
- (void)prepareForReuse;
- (void)setInRange:(BOOL)a3 animated:(BOOL)a4;
- (void)setThumbnailImage:(id)a3;
- (void)showThumbnailProgressSpinner;
- (void)updatePageLabelAndImageViewWithIndex:(int64_t)a3 pageCount:(int64_t)a4 allowSelection:(BOOL)a5 thumbnailSize:(CGSize)a6;
@end

@implementation UIPrintPreviewPageCell

- (UIPrintPreviewPageCell)initWithFrame:(CGRect)a3
{
  v56[2] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = UIPrintPreviewPageCell;
  v3 = [(UIPrintPreviewPageCell *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(UIPrintPreviewPageCell *)v3 setThumbnailView:v4];

    v5 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [v5 setContentMode:1];

    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [v10 setFrame:{v6, v7, v8, v9}];

    v11 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [v11 setClipsToBounds:1];

    v12 = [(UIPrintPreviewPageCell *)v3 contentView];
    v13 = [(UIPrintPreviewPageCell *)v3 thumbnailView];
    [v12 addSubview:v13];

    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIPrintPreviewPageCell *)v3 setDimmingView:v14];

    v15 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [v15 setFrame:{v6, v7, v8, v9}];

    v16 = [MEMORY[0x277D75348] systemGray2Color];
    v17 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [v17 setBackgroundColor:v16];

    v18 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [v18 setAlpha:0.0];

    v19 = [(UIPrintPreviewPageCell *)v3 contentView];
    v20 = [(UIPrintPreviewPageCell *)v3 dimmingView];
    [v19 addSubview:v20];

    v21 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIPrintPreviewPageCell *)v3 setLoadingProgressView:v21];

    v22 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [v22 setFrame:{v6, v7, v8, v9}];

    v23 = [MEMORY[0x277D75348] whiteColor];
    v24 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [v24 setBackgroundColor:v23];

    v25 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [v25 setHidden:1];

    v26 = [(UIPrintPreviewPageCell *)v3 contentView];
    v27 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    [v26 addSubview:v27];

    v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(UIPrintPreviewPageCell *)v3 setSpinner:v28];

    v29 = [MEMORY[0x277D75348] systemGrayColor];
    v30 = [(UIPrintPreviewPageCell *)v3 spinner];
    [v30 setColor:v29];

    v31 = [(UIPrintPreviewPageCell *)v3 spinner];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v33 = [(UIPrintPreviewPageCell *)v3 spinner];
    [v32 addSubview:v33];

    v34 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v35 = MEMORY[0x277CCAAD0];
    v36 = [(UIPrintPreviewPageCell *)v3 spinner];
    v37 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v38 = [v35 constraintWithItem:v36 attribute:9 relatedBy:0 toItem:v37 attribute:9 multiplier:1.0 constant:0.0];
    v56[0] = v38;
    v39 = MEMORY[0x277CCAAD0];
    v40 = [(UIPrintPreviewPageCell *)v3 spinner];
    v41 = [(UIPrintPreviewPageCell *)v3 loadingProgressView];
    v42 = [v39 constraintWithItem:v40 attribute:10 relatedBy:0 toItem:v41 attribute:10 multiplier:1.0 constant:0.0];
    v56[1] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [v34 addConstraints:v43];

    v44 = [(UIPrintPreviewPageCell *)v3 contentView];
    v45 = [v44 layer];
    LODWORD(v46) = 1036831949;
    [v45 setShadowOpacity:v46];

    v47 = [(UIPrintPreviewPageCell *)v3 contentView];
    v48 = [v47 layer];
    [v48 setShadowRadius:4.0];

    v49 = [(UIPrintPreviewPageCell *)v3 contentView];
    v50 = [v49 layer];
    [v50 setShadowOffset:{0.0, 2.0}];

    v51 = [(UIPrintPreviewPageCell *)v3 contentView];
    v52 = [v51 layer];
    v53 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    [v52 setShadowColor:{objc_msgSend(v53, "CGColor")}];
  }

  return v3;
}

- (void)layoutSubviews
{
  v62[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = UIPrintPreviewPageCell;
  [(UIPrintPreviewPageCell *)&v59 layoutSubviews];
  v3 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = MEMORY[0x277CCAAD0];
  v45 = MEMORY[0x277CCAAD0];
  v56 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v53 = [(UIPrintPreviewPageCell *)self contentView];
  v50 = [v4 constraintWithItem:v56 attribute:5 relatedBy:0 toItem:v53 attribute:5 multiplier:1.0 constant:0.0];
  v62[0] = v50;
  v5 = MEMORY[0x277CCAAD0];
  v47 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v6 = [(UIPrintPreviewPageCell *)self contentView];
  v7 = [v5 constraintWithItem:v47 attribute:6 relatedBy:0 toItem:v6 attribute:6 multiplier:1.0 constant:0.0];
  v62[1] = v7;
  v8 = MEMORY[0x277CCAAD0];
  v9 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v10 = [(UIPrintPreviewPageCell *)self contentView];
  v11 = [v8 constraintWithItem:v9 attribute:3 relatedBy:0 toItem:v10 attribute:3 multiplier:1.0 constant:0.0];
  v62[2] = v11;
  v12 = MEMORY[0x277CCAAD0];
  v13 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v14 = [(UIPrintPreviewPageCell *)self contentView];
  v15 = [v12 constraintWithItem:v13 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
  v62[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  [v45 activateConstraints:v16];

  v17 = [(UIPrintPreviewPageCell *)self dimmingView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x277CCAAD0];
  v46 = MEMORY[0x277CCAAD0];
  v57 = [(UIPrintPreviewPageCell *)self dimmingView];
  v54 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v51 = [v18 constraintWithItem:v57 attribute:5 relatedBy:0 toItem:v54 attribute:5 multiplier:1.0 constant:0.0];
  v61[0] = v51;
  v19 = MEMORY[0x277CCAAD0];
  v48 = [(UIPrintPreviewPageCell *)self dimmingView];
  v20 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v21 = [v19 constraintWithItem:v48 attribute:6 relatedBy:0 toItem:v20 attribute:6 multiplier:1.0 constant:0.0];
  v61[1] = v21;
  v22 = MEMORY[0x277CCAAD0];
  v23 = [(UIPrintPreviewPageCell *)self dimmingView];
  v24 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v25 = [v22 constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v24 attribute:3 multiplier:1.0 constant:0.0];
  v61[2] = v25;
  v26 = MEMORY[0x277CCAAD0];
  v27 = [(UIPrintPreviewPageCell *)self dimmingView];
  v28 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v29 = [v26 constraintWithItem:v27 attribute:4 relatedBy:0 toItem:v28 attribute:4 multiplier:1.0 constant:0.0];
  v61[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  [v46 activateConstraints:v30];

  v31 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = MEMORY[0x277CCAAD0];
  v58 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  v55 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v52 = [v32 constraintWithItem:v58 attribute:5 relatedBy:0 toItem:v55 attribute:5 multiplier:1.0 constant:0.0];
  v60[0] = v52;
  v33 = MEMORY[0x277CCAAD0];
  v49 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  v34 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v35 = [v33 constraintWithItem:v49 attribute:6 relatedBy:0 toItem:v34 attribute:6 multiplier:1.0 constant:0.0];
  v60[1] = v35;
  v36 = MEMORY[0x277CCAAD0];
  v37 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  v38 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v39 = [v36 constraintWithItem:v37 attribute:3 relatedBy:0 toItem:v38 attribute:3 multiplier:1.0 constant:0.0];
  v60[2] = v39;
  v40 = MEMORY[0x277CCAAD0];
  v41 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  v42 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v43 = [v40 constraintWithItem:v41 attribute:4 relatedBy:0 toItem:v42 attribute:4 multiplier:1.0 constant:0.0];
  v60[3] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
  [v32 activateConstraints:v44];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = UIPrintPreviewPageCell;
  [(UIPrintPreviewPageCell *)&v10 prepareForReuse];
  v3 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [v3 setImage:0];

  v4 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [v4 setHidden:1];

  v5 = [(UIPrintPreviewPageCell *)self pageLabel];
  [v5 removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabel:0];
  v6 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  [v6 removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:0];
  v7 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  [v7 removeFromSuperview];

  [(UIPrintPreviewPageCell *)self setPageLabelBackgroundBlurView:0];
  v8 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [v8 setHidden:1];

  v9 = [(UIPrintPreviewPageCell *)self spinner];
  [v9 stopAnimating];
}

- (void)setThumbnailImage:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(UIPrintPreviewPageCell *)self thumbnailView];
    [v4 setImage:v8];

    [(UIPrintPreviewPageCell *)self setInvalidated:0];
    v5 = [(UIPrintPreviewPageCell *)self thumbnailView];
    [v5 setHidden:0];

    v6 = [(UIPrintPreviewPageCell *)self loadingProgressView];
    [v6 setHidden:1];

    v7 = [(UIPrintPreviewPageCell *)self spinner];
    [v7 stopAnimating];
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
  v3 = [(UIPrintPreviewPageCell *)self thumbnailView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIPrintPreviewPageCell *)self invalidated];

    if (!v6)
    {
      return;
    }
  }

  else
  {
  }

  v7 = [(UIPrintPreviewPageCell *)self loadingProgressView];
  [v7 setHidden:0];

  v8 = [(UIPrintPreviewPageCell *)self spinner];
  [v8 startAnimating];

  v9 = [(UIPrintPreviewPageCell *)self thumbnailView];
  [v9 setImage:0];
}

- (id)pageLabelText:(int64_t)a3
{
  v5 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  v6 = [v5 showingPageView];

  v7 = [(UIPrintPreviewPageCell *)self pageLabelFormat];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v7 == 2)
  {
    if (v6)
    {
      v12 = @"Page %ld";
    }

    else
    {
      v12 = @"Sheet %ld";
    }

    goto LABEL_11;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      if (v6)
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
    [v8 localizedStringWithFormat:v13, a3 + 1, v16];
    goto LABEL_14;
  }

  v11 = @"%ld of %ld";
LABEL_13:
  v13 = [v9 localizedStringForKey:v11 value:v11 table:@"Localizable"];
  [v8 localizedStringWithFormat:v13, a3 + 1, -[UIPrintPreviewPageCell pageCount](self, "pageCount")];
  v14 = LABEL_14:;

  return v14;
}

- (int64_t)pageLabelFormat
{
  v3 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  v4 = [v3 showingPageView];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v4)
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
  v12 = [(UIPrintPreviewPageCell *)self pageLabel];
  v13 = [v12 font];
  v14 = *MEMORY[0x277D740A8];
  v15 = [v11 dictionaryWithObject:v13 forKey:*MEMORY[0x277D740A8]];
  [v10 sizeWithAttributes:v15];
  v17 = v16;
  v19 = v18;

  v20 = v19 + 16.0;
  v21 = (v19 + 16.0) / 3.0;
  v22 = (v20 + -22.0) * 0.5;
  if (v4)
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
    v31 = [(UIPrintPreviewPageCell *)self pageLabel];
    v32 = [v31 font];
    v33 = [v30 dictionaryWithObject:v32 forKey:v14];
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
      if (v4)
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
      v43 = [(UIPrintPreviewPageCell *)self pageLabel];
      v44 = [v43 font];
      v45 = [v42 dictionaryWithObject:v44 forKey:v14];
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

- (void)updatePageLabelAndImageViewWithIndex:(int64_t)a3 pageCount:(int64_t)a4 allowSelection:(BOOL)a5 thumbnailSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5;
  v222[12] = *MEMORY[0x277D85DE8];
  [(UIPrintPreviewPageCell *)self setPageIndex:a3];
  [(UIPrintPreviewPageCell *)self setPageCount:a4];
  [(UIPrintPreviewPageCell *)self setThumbnailSize:width, height];
  v11 = [(UIPrintPreviewPageCell *)self pageLabel];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UIPrintPreviewPageCell *)self setPageLabel:v12];

    v13 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v14 setTextAlignment:1];

    v15 = [MEMORY[0x277D75348] labelColor];
    v16 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v16 setTextColor:v15];

    v17 = MEMORY[0x277D74300];
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    [v18 _scaledValueForValue:15.0];
    v19 = [v17 boldSystemFontOfSize:?];
    v20 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v20 setFont:v19];

    v21 = [MEMORY[0x277D75348] clearColor];
    v22 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v22 setBackgroundColor:v21];

    v23 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v23 setAlpha:0.6];

    v24 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v24 setOpaque:0];

    v25 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v25 setIsAccessibilityElement:0];

    v26 = [(UIPrintPreviewPageCell *)self pageLabel];
    [v26 setUserInteractionEnabled:0];

    v27 = [(UIPrintPreviewPageCell *)self pageLabel];
    v28 = [v27 layer];
    v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [v28 setCompositingFilter:v29];
  }

  v30 = [(UIPrintPreviewPageCell *)self pageLabelText:[(UIPrintPreviewPageCell *)self pageIndex]];
  v31 = [(UIPrintPreviewPageCell *)self pageLabel];
  v218 = v30;
  [v31 setText:v30];

  v32 = [(UIPrintPreviewPageCell *)self pageLabel];
  [v32 sizeToFit];

  if (v8)
  {
    v33 = [(UIPrintPreviewPageCell *)self checkmarkImageView];

    if (!v33)
    {
      v34 = [MEMORY[0x277D755B8] checkmarkImage];
      v35 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v34];
      [(UIPrintPreviewPageCell *)self setCheckmarkImageView:v35];

      v36 = [MEMORY[0x277D75348] systemBlueColor];
      v37 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [v37 setTintColor:v36];

      v38 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [v38 setContentMode:2];

      v39 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [v39 setUserInteractionEnabled:0];

      v40 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v41 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];

    if (!v41)
    {
      v42 = objc_alloc(MEMORY[0x277D755E8]);
      v43 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
      v44 = [v42 initWithImage:v43];
      [(UIPrintPreviewPageCell *)self setCheckmarkBackgroundImageView:v44];

      v45 = [MEMORY[0x277D75348] secondaryLabelColor];
      v46 = [v45 colorWithAlphaComponent:0.45];
      v47 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [v47 setTintColor:v46];

      v48 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [v48 setContentMode:2];

      v49 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v50 = [v49 layer];
      v51 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
      [v50 setCompositingFilter:v51];

      v52 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [v52 setUserInteractionEnabled:0];

      v53 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v54 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
    if (!v54 || (v55 = v54, -[UIPrintPreviewPageCell pageLabelAndChekmarkView](self, "pageLabelAndChekmarkView"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 tag], v56, v55, !v57))
    {
      v216 = v8;
      v58 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];

      if (v58)
      {
        v59 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        v60 = [v59 subviews];
        [v60 makeObjectsPerformSelector:sel_removeFromSuperview];

        v61 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        [v61 removeFromSuperview];
      }

      v62 = objc_alloc(MEMORY[0x277D75D18]);
      v63 = [v62 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:v63];

      v64 = [MEMORY[0x277D75348] clearColor];
      v65 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v65 setBackgroundColor:v64];

      v66 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

      v67 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v67 setUserInteractionEnabled:0];

      v68 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v68 setTag:1];

      v69 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v70 = [(UIPrintPreviewPageCell *)self pageLabel];
      [v69 addSubview:v70];

      v71 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v72 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      [v71 addSubview:v72];

      v73 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v74 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      [v73 addSubview:v74];

      v75 = [(UIPrintPreviewPageCell *)self contentView];
      v76 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v75 addSubview:v76];

      v77 = MEMORY[0x277CCAAD0];
      v213 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v210 = [v77 constraintWithItem:v213 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[0] = v210;
      v78 = MEMORY[0x277CCAAD0];
      v207 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v204 = [v78 constraintWithItem:v207 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[1] = v204;
      v79 = MEMORY[0x277CCAAD0];
      v201 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v199 = [v79 constraintWithItem:v201 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[2] = v199;
      v80 = MEMORY[0x277CCAAD0];
      v197 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v195 = [v80 constraintWithItem:v197 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:22.0];
      v222[3] = v195;
      v81 = MEMORY[0x277CCAAD0];
      v194 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v193 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v192 = [v81 constraintWithItem:v194 attribute:9 relatedBy:0 toItem:v193 attribute:9 multiplier:1.0 constant:0.0];
      v222[4] = v192;
      v82 = MEMORY[0x277CCAAD0];
      v191 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
      v190 = [(UIPrintPreviewPageCell *)self pageLabel];
      v189 = [v82 constraintWithItem:v191 attribute:10 relatedBy:0 toItem:v190 attribute:10 multiplier:1.0 constant:0.0];
      v222[5] = v189;
      v83 = MEMORY[0x277CCAAD0];
      v188 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v187 = [(UIPrintPreviewPageCell *)self pageLabel];
      v186 = [v83 constraintWithItem:v188 attribute:10 relatedBy:0 toItem:v187 attribute:10 multiplier:1.0 constant:0.0];
      v222[6] = v186;
      v84 = MEMORY[0x277CCAAD0];
      v185 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v184 = [(UIPrintPreviewPageCell *)self pageLabel];
      v183 = [v84 constraintWithItem:v185 attribute:3 relatedBy:0 toItem:v184 attribute:3 multiplier:1.0 constant:0.0];
      v222[7] = v183;
      v85 = MEMORY[0x277CCAAD0];
      v182 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v181 = [(UIPrintPreviewPageCell *)self pageLabel];
      v180 = [v85 constraintWithItem:v182 attribute:4 relatedBy:0 toItem:v181 attribute:4 multiplier:1.0 constant:0.0];
      v222[8] = v180;
      v86 = MEMORY[0x277CCAAD0];
      v179 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v87 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v88 = [v86 constraintWithItem:v179 attribute:5 relatedBy:0 toItem:v87 attribute:5 multiplier:1.0 constant:0.0];
      v222[9] = v88;
      v89 = MEMORY[0x277CCAAD0];
      v90 = [(UIPrintPreviewPageCell *)self pageLabel];
      v91 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
      v92 = [v89 constraintWithItem:v90 attribute:5 relatedBy:0 toItem:v91 attribute:6 multiplier:1.0 constant:3.0];
      v222[10] = v92;
      v93 = MEMORY[0x277CCAAD0];
      v94 = [(UIPrintPreviewPageCell *)self pageLabel];
      v95 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v96 = [v93 constraintWithItem:v94 attribute:6 relatedBy:0 toItem:v95 attribute:6 multiplier:1.0 constant:0.0];
      v222[11] = v96;
      v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:12];

      v98 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v98 addConstraints:v97];

      v99 = MEMORY[0x277CCAAD0];
      v100 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v101 = [(UIPrintPreviewPageCell *)self pageLabel];
      v102 = [v99 constraintWithItem:v100 attribute:8 relatedBy:0 toItem:v101 attribute:8 multiplier:1.0 constant:0.0];
      v221[0] = v102;
      v103 = MEMORY[0x277CCAAD0];
      v104 = [(UIPrintPreviewPageCell *)self pageLabel];
      v105 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v106 = [v103 constraintWithItem:v104 attribute:10 relatedBy:0 toItem:v105 attribute:10 multiplier:1.0 constant:0.0];
      v221[1] = v106;
      v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:2];

      v108 = [(UIPrintPreviewPageCell *)self contentView];
      [v108 addConstraints:v107];

      v109 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];

      if (!v109)
      {
        v110 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
        [(UIPrintPreviewPageCell *)self setTapGestureRecognizer:v110];

        v111 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
        [v111 setDelegate:self];
      }

      v112 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
      [(UIPrintPreviewPageCell *)self addGestureRecognizer:v112];

      v8 = v216;
    }
  }

  else
  {
    v113 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
    if (!v113 || (v114 = v113, -[UIPrintPreviewPageCell pageLabelAndChekmarkView](self, "pageLabelAndChekmarkView"), v115 = objc_claimAutoreleasedReturnValue(), v116 = [v115 tag], v115, v114, v116 == 1))
    {
      v117 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];

      if (v117)
      {
        v118 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        v119 = [v118 subviews];
        [v119 makeObjectsPerformSelector:sel_removeFromSuperview];

        v120 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
        [v120 removeFromSuperview];
      }

      v121 = objc_alloc(MEMORY[0x277D75D18]);
      v122 = [v121 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(UIPrintPreviewPageCell *)self setPageLabelAndChekmarkView:v122];

      v123 = [MEMORY[0x277D75348] clearColor];
      v124 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v124 setBackgroundColor:v123];

      v125 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v125 setTranslatesAutoresizingMaskIntoConstraints:0];

      v126 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v126 setUserInteractionEnabled:0];

      v127 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v128 = [(UIPrintPreviewPageCell *)self pageLabel];
      [v127 addSubview:v128];

      v129 = [(UIPrintPreviewPageCell *)self contentView];
      v130 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      [v129 addSubview:v130];

      v131 = [(UIPrintPreviewPageCell *)self contentView];
      v132 = MEMORY[0x277CCAAD0];
      v214 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v211 = [(UIPrintPreviewPageCell *)self pageLabel];
      v208 = [v132 constraintWithItem:v214 attribute:3 relatedBy:0 toItem:v211 attribute:3 multiplier:1.0 constant:0.0];
      v220[0] = v208;
      v133 = MEMORY[0x277CCAAD0];
      v205 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v202 = [(UIPrintPreviewPageCell *)self pageLabel];
      v134 = [v133 constraintWithItem:v205 attribute:5 relatedBy:0 toItem:v202 attribute:5 multiplier:1.0 constant:0.0];
      v220[1] = v134;
      v135 = MEMORY[0x277CCAAD0];
      v136 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v137 = [(UIPrintPreviewPageCell *)self pageLabel];
      v138 = [v135 constraintWithItem:v136 attribute:4 relatedBy:0 toItem:v137 attribute:4 multiplier:1.0 constant:0.0];
      v220[2] = v138;
      v139 = MEMORY[0x277CCAAD0];
      v140 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
      v141 = [(UIPrintPreviewPageCell *)self pageLabel];
      v142 = [v139 constraintWithItem:v140 attribute:6 relatedBy:0 toItem:v141 attribute:6 multiplier:1.0 constant:0.0];
      v220[3] = v142;
      v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:4];
      [v131 addConstraints:v143];

      v8 = 0;
    }

    v144 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];

    if (v144)
    {
      v145 = [(UIPrintPreviewPageCell *)self tapGestureRecognizer];
      [(UIPrintPreviewPageCell *)self removeGestureRecognizer:v145];

      [(UIPrintPreviewPageCell *)self setTapGestureRecognizer:0];
    }
  }

  v146 = [(UIPrintPreviewPageCell *)self pageLabel];
  [v146 frame];
  v148 = v147 + 16.0;

  v149 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];

  if (!v149)
  {
    v150 = objc_alloc(MEMORY[0x277D75D68]);
    v151 = [MEMORY[0x277D75210] effectWithStyle:6];
    v152 = [v150 initWithEffect:v151];
    [(UIPrintPreviewPageCell *)self setPageLabelBackgroundBlurView:v152];

    v153 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [v153 setTranslatesAutoresizingMaskIntoConstraints:0];

    v154 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    v155 = [v154 layer];
    [v155 setCornerRadius:v148 * 0.5];

    v156 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [v156 setClipsToBounds:1];

    v157 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [v157 setUserInteractionEnabled:0];

    v158 = [(UIPrintPreviewPageCell *)self contentView];
    v159 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
    [v158 addSubview:v159];
  }

  if (v8)
  {
    v160 = (v148 + -22.0) * 0.5;
  }

  else
  {
    v160 = v148 / 3.0;
  }

  v161 = [(UIPrintPreviewPageCell *)self contentView];
  v162 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  [v161 bringSubviewToFront:v162];

  v163 = MEMORY[0x277CCAAD0];
  v217 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v215 = [(UIPrintPreviewPageCell *)self contentView];
  v212 = [v163 constraintWithItem:v217 attribute:9 relatedBy:0 toItem:v215 attribute:9 multiplier:1.0 constant:0.0];
  v219[0] = v212;
  v164 = MEMORY[0x277CCAAD0];
  v209 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v206 = [(UIPrintPreviewPageCell *)self contentView];
  v203 = [v164 constraintWithItem:v209 attribute:4 relatedBy:0 toItem:v206 attribute:4 multiplier:1.0 constant:-15.0];
  v219[1] = v203;
  v165 = MEMORY[0x277CCAAD0];
  v200 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v198 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  v196 = [v165 constraintWithItem:v200 attribute:7 relatedBy:0 toItem:v198 attribute:7 multiplier:1.0 constant:v148 / 3.0 + v160];
  v219[2] = v196;
  v166 = MEMORY[0x277CCAAD0];
  v167 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v168 = [v166 constraintWithItem:v167 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v148];
  v219[3] = v168;
  v169 = MEMORY[0x277CCAAD0];
  v170 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  v171 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v172 = [v169 constraintWithItem:v170 attribute:9 relatedBy:0 toItem:v171 attribute:9 multiplier:1.0 constant:0.0];
  v219[4] = v172;
  v173 = MEMORY[0x277CCAAD0];
  v174 = [(UIPrintPreviewPageCell *)self pageLabelAndChekmarkView];
  v175 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  v176 = [v173 constraintWithItem:v174 attribute:10 relatedBy:0 toItem:v175 attribute:10 multiplier:1.0 constant:0.0];
  v219[5] = v176;
  v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:6];

  v178 = [(UIPrintPreviewPageCell *)self contentView];
  [v178 addConstraints:v177];
}

- (void)setInRange:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v6 = MEMORY[0x277CCABB0];
    v7 = [(UIPrintPreviewPageCell *)self dimmingView];
    [v7 alpha];
    *&v8 = v8;
    v9 = [v6 numberWithFloat:v8];
    [v25 setFromValue:v9];

    if (v4)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.7;
    }

    if (v4)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (v4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithFloat:COERCE_DOUBLE(LODWORD(v10))];
    [v25 setToValue:v13];

    [v25 setAdditive:0];
    [v25 setDuration:0.100000001];
    [MEMORY[0x277CD9FF0] begin];
    v14 = [(UIPrintPreviewPageCell *)self dimmingView];
    v15 = [v14 layer];
    [v15 addAnimation:v25 forKey:@"opacity"];

    v16 = [(UIPrintPreviewPageCell *)self dimmingView];
    [v16 setAlpha:v10];

    v17 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
    [v17 setAlpha:v11];

    v18 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
    [v18 setAlpha:v12];

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    v19 = [(UIPrintPreviewPageCell *)self dimmingView];
    v20 = v19;
    v21 = 0.699999988;
    if (v4)
    {
      v21 = 0.0;
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    if (v4)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0;
    }

    [v19 setAlpha:v21];

    v24 = [(UIPrintPreviewPageCell *)self checkmarkImageView];
    [v24 setAlpha:v22];

    v25 = [(UIPrintPreviewPageCell *)self checkmarkBackgroundImageView];
    [v25 setAlpha:v23];
  }
}

- (BOOL)locationInTapTargetOfPageLabelBadge:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIPrintPreviewPageCell *)self pageLabelBackgroundBlurView];
  [v5 frame];
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

- (void)pageBadgeTapped:(id)a3
{
  v4 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  v5 = [v4 canModifyPageRange];

  if (v5)
  {
    v6 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
    [v6 pageBadgeTapped:{-[UIPrintPreviewPageCell pageIndex](self, "pageIndex")}];
  }
}

- (void)handleTap:(id)a3
{
  [a3 locationInView:self];
  if ([(UIPrintPreviewPageCell *)self locationInTapTargetOfPageLabelBadge:?])
  {

    [(UIPrintPreviewPageCell *)self pageBadgeTapped:self];
  }
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  v5 = [v4 showingPageView];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = @"Page %ld";
  }

  else
  {
    v8 = @"Sheet %ld";
  }

  v9 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];
  v10 = [v3 localizedStringWithFormat:v9, -[UIPrintPreviewPageCell pageIndex](self, "pageIndex") + 1];

  v11 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  v12 = [v11 canModifyPageRange];

  if (v12)
  {
    v13 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
    v14 = [v13 pageIndexIsInRange:{-[UIPrintPreviewPageCell pageIndex](self, "pageIndex")}];
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
  v2 = [(UIPrintPreviewPageCell *)self printPreviewDelegate];
  if ([v2 canModifyPageRange])
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