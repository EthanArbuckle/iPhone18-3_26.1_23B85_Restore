@interface PKPassPosterEventTicketFaceView
- (BOOL)flushFormattedFieldValues;
- (id)fetchRelevantBuckets;
- (void)_updateBodyLabelColorsForRelevancyActive:(BOOL)a3;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)layoutSubviews;
- (void)setRelevancyActive:(BOOL)a3;
@end

@implementation PKPassPosterEventTicketFaceView

- (id)fetchRelevantBuckets
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [(PKPassFaceView *)self pass];
  v3 = [PKEventTicketFaceBucketsFactory headerFieldsForPass:v2];
  v4 = [PKEventTicketFaceBucketsFactory primaryFieldsForPass:v2];
  v5 = [PKEventTicketFaceBucketsFactory secondaryFieldsForPass:v2];
  v6 = [PKEventTicketFaceBucketsFactory auxiliaryFieldsForPass:v2];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (BOOL)flushFormattedFieldValues
{
  v3 = [(PKPassFaceView *)self pass];
  v4 = [PKEventTicketFaceBucketsFactory headerFieldsForPass:v3];

  v5 = [v4 firstObject];
  v6 = [v5 label];
  v7 = [v5 value];
  v8 = [(PKPassFaceView *)self buckets];
  v9 = [v8 firstObject];
  v10 = [v9 firstObject];

  v11 = [v10 label];
  v12 = v6;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_7;
  }

  if (v12 && v11)
  {
    v14 = [v11 isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

LABEL_9:
  [v10 setLabel:v13];
  v15 = 1;
LABEL_10:
  v16 = [v10 value];
  v17 = v7;
  v18 = v17;
  if (v16 == v17)
  {
  }

  else
  {
    if (v17 && v16)
    {
      v19 = [v16 isEqualToString:v17];

      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [v10 setUnformattedValue:v18];
    v15 = 1;
  }

LABEL_18:

  return v15;
}

- (void)createHeaderContentViews
{
  v89[2] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v85 createHeaderContentViews];
  v3 = [(PKPassFaceView *)self style];
  v4 = [(PKPassFaceView *)self pass];
  v5 = [(PKPassFaceView *)self colorProfile];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v80 = v5;
  if (([v5 supportsAutomaticForegroundVibrancy] & 1) != 0 || objc_msgSend(v5, "supportsAutomaticLabelVibrancy"))
  {
    v7 = MEMORY[0x1E69DC888];
    v8 = [v4 frontFaceImageAverageColor];
    v9 = [v7 pkui_colorWithPKColor:v8];

    [v9 CGColor];
    PKColorGetLightness();
    v11 = 2;
    if (v10 < 0.5)
    {
      v11 = 3;
    }

    if (v10 >= 0.85)
    {
      v11 = 1;
    }

    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __59__PKPassPosterEventTicketFaceView_createHeaderContentViews__block_invoke;
    v84[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v84[4] = v11;
    v12 = [v6 traitCollectionByModifyingTraits:v84];

    v13 = [MEMORY[0x1E69DC888] labelColor];
    v79 = [v13 resolvedColorWithTraitCollection:v12];

    v6 = v12;
  }

  else
  {
    v79 = 0;
  }

  v83 = v6;
  self->_usingSportsLabel = 0;
  v81 = *MEMORY[0x1E695F050];
  v82 = *(MEMORY[0x1E695F050] + 16);
  self->_cachedLogoLabelRect.origin = *MEMORY[0x1E695F050];
  self->_cachedLogoLabelRect.size = v82;
  v14 = [v4 logoText];
  PKPassFaceLogoRect();
  if (!CGRectIsEmpty(v90) && (v3 - 11) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v15 = [v4 eventType];
    v16 = [v4 stringForSemanticKey:*MEMORY[0x1E69BBE38]];
    v17 = [v4 stringForSemanticKey:*MEMORY[0x1E69BBD48]];
    if (v15 == 3 && (v18 = v16) != 0 && (v19 = v18, v20 = [v18 length], v19, v20) && (v21 = v17) != 0 && (v22 = v21, v23 = objc_msgSend(v21, "length"), v22, v23))
    {
      v77 = v22;
      v78 = v14;
      self->_usingSportsLabel = 1;
      v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      logoLabel = self->_logoLabel;
      self->_logoLabel = v24;

      v26 = self->_logoLabel;
      v27 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v26 setBackgroundColor:v27];

      [(UILabel *)self->_logoLabel setLineBreakMode:4];
      [(UILabel *)self->_logoLabel setNumberOfLines:1];
      [(UILabel *)self->_logoLabel setTextAlignment:0];
      if ([v5 supportsAutomaticForegroundVibrancy])
      {
        v28 = v79;
      }

      else
      {
        v28 = [v5 foregroundColor];
      }

      v40 = v28;
      v73 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v61 = PKFontForDefaultDesign(v83, *MEMORY[0x1E69DDCF8], 32770, 0, *MEMORY[0x1E69DB958]);
      v71 = *MEMORY[0x1E69DB650];
      v62 = *MEMORY[0x1E69DB650];
      v88[0] = *MEMORY[0x1E69DB648];
      v72 = v88[0];
      v88[1] = v62;
      v89[0] = v61;
      v89[1] = v40;
      v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
      v76 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19 attributes:v75];
      [v73 appendAttributedString:v76];
      v63 = PKFontForDefaultDesign(v83, *MEMORY[0x1E69DDD10], 32770, 0, *MEMORY[0x1E69DB980]);
      v86[0] = *MEMORY[0x1E69DB610];
      v64 = MEMORY[0x1E696AD98];
      [v61 capHeight];
      v74 = v63;
      [v63 xHeight];
      PKFloatRoundToPixel();
      v65 = [v64 numberWithDouble:?];
      v87[0] = v65;
      v87[1] = v63;
      v86[1] = v72;
      v86[2] = v71;
      v87[2] = v40;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];

      v67 = objc_alloc(MEMORY[0x1E696AAB0]);
      v68 = PKLocalizedTicketingString(&cfstr_LabelLogoVersu.isa);
      v69 = [v67 initWithString:v68 attributes:v66];

      [v73 appendAttributedString:v69];
      v70 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v77 attributes:v75];
      [v73 appendAttributedString:v70];
      [(UILabel *)self->_logoLabel setAttributedText:v73];
      [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];

      v14 = v78;
    }

    else
    {
      v29 = v14;
      if (!v29)
      {
        goto LABEL_25;
      }

      v30 = v29;
      v31 = [v29 length];

      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = v14;
      v33 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v34 = self->_logoLabel;
      self->_logoLabel = v33;

      v35 = self->_logoLabel;
      v36 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v35 setBackgroundColor:v36];

      [(UILabel *)self->_logoLabel setLineBreakMode:4];
      [(UILabel *)self->_logoLabel setNumberOfLines:2];
      [(UILabel *)self->_logoLabel setTextAlignment:0];
      v37 = self->_logoLabel;
      v38 = PKFontForDefaultDesign(v83, *MEMORY[0x1E69DDD80], 32770, 0, *MEMORY[0x1E69DB958]);
      [(UILabel *)v37 setFont:v38];

      if ([v5 supportsAutomaticForegroundVibrancy])
      {
        v39 = v79;
      }

      else
      {
        v39 = [v5 foregroundColor];
      }

      v40 = v39;
      [(UILabel *)self->_logoLabel setTextColor:v39];
      [(UILabel *)self->_logoLabel setText:v30];
      [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];
      v14 = v32;
    }

LABEL_25:
  }

  v41 = v14;
  v42 = [(PKPassFaceView *)self buckets];
  v43 = [v42 firstObject];
  v44 = [v43 firstObject];

  if (!v44)
  {
    __break(1u);
  }

  self->_cachedDateLabelFrame.origin = v81;
  self->_cachedDateLabelFrame.size = v82;
  v45 = [v44 label];
  v46 = [v44 value];
  if (v46)
  {
    v47 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v47;

    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setLineBreakMode:4];
    [(UILabel *)self->_dateLabel setTextAlignment:2];
    v49 = MEMORY[0x1E69DDCF8];
    if (v45)
    {
      v49 = MEMORY[0x1E69DDD80];
    }

    v50 = *v49;
    v51 = self->_dateLabel;
    v52 = PKFontForDefaultDesign(v83, v50, 32770, 0, *MEMORY[0x1E69DB958]);
    [(UILabel *)v51 setFont:v52];

    if ([v80 supportsAutomaticForegroundVibrancy])
    {
      v53 = v79;
    }

    else
    {
      v53 = [v80 foregroundColor];
    }

    v54 = v53;
    [(UILabel *)self->_dateLabel setTextColor:v53];
    [(UILabel *)self->_dateLabel setText:v46];
    [(PKPassFrontFaceView *)self insertContentView:self->_dateLabel ofType:0];
  }

  self->_cachedTimeLabelFrame.origin = v81;
  self->_cachedTimeLabelFrame.size = v82;
  if (v45)
  {
    v55 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    timeLabel = self->_timeLabel;
    self->_timeLabel = v55;

    [(UILabel *)self->_timeLabel setNumberOfLines:1];
    [(UILabel *)self->_timeLabel setLineBreakMode:4];
    [(UILabel *)self->_timeLabel setTextAlignment:2];
    v57 = self->_timeLabel;
    v58 = _PKFontForDesign(v83, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD80], 0x8000, 32, 0);
    [(UILabel *)v57 setFont:v58];

    if ([v80 supportsAutomaticLabelVibrancy])
    {
      v59 = v79;
    }

    else
    {
      v59 = [v80 labelColor];
    }

    v60 = v59;
    [(UILabel *)self->_timeLabel setTextColor:v59];
    [(UILabel *)self->_timeLabel setText:v45];
    [(PKPassFrontFaceView *)self insertContentView:self->_timeLabel ofType:0];
  }
}

uint64_t __59__PKPassPosterEventTicketFaceView_createHeaderContentViews__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (void)createBodyContentViews
{
  v128.receiver = self;
  v128.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v128 createBodyContentViews];
  v3 = [(PKPassFaceView *)self pass];
  v112 = [v3 seatingInformation];
  v4 = [v112 firstSeat];
  v5 = MEMORY[0x1E69DC888];
  v111 = v4;
  v6 = [v4 sectionColor];
  v7 = [v5 pkui_colorWithPKColor:v6];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    sectionColorView = self->_sectionColorView;
    self->_sectionColorView = v8;

    [(UIView *)self->_sectionColorView setClipsToBounds:1];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    sectionColorMaskView = self->_sectionColorMaskView;
    self->_sectionColorMaskView = v10;

    [(UIView *)self->_sectionColorMaskView setBackgroundColor:v7];
    [(UIView *)self->_sectionColorView addSubview:self->_sectionColorMaskView];
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    v13 = [(UIView *)self->_sectionColorMaskView layer];
    [v13 setMask:v12];

    v14 = [(UIView *)self->_sectionColorMaskView layer];
    [v14 setMasksToBounds:1];

    if ([(PKPassFrontFaceView *)self isRelevancyActive])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_sectionColorView ofType:2];
    }
  }

  v15 = [v3 secondaryLogoImage];
  v115 = v7;
  if (v15)
  {
    v16 = v15;
    v17 = [MEMORY[0x1E69B8950] constraintsWithMaxSize:{135.0, 12.0}];
    [v16 scale];
    [v17 setOutputScale:?];
    v18 = [v16 resizedImageWithConstraints:v17];

    [v18 size];
    self->_secondaryLogoSize.width = v19;
    self->_secondaryLogoSize.height = v20;
    v21 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v110 = v18;
    v22 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v18];
    v23 = [v21 initWithImage:v22];
    secondaryLogoImageView = self->_secondaryLogoImageView;
    self->_secondaryLogoImageView = v23;

    [(UIImageView *)self->_secondaryLogoImageView setContentMode:1];
    [(PKPassFrontFaceView *)self insertContentView:self->_secondaryLogoImageView ofType:2];
  }

  else
  {
    v110 = 0;
  }

  v25 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v120 = *MEMORY[0x1E69DB8D0];
  v114 = *MEMORY[0x1E69DDD28];
  v26 = _PKFontForDesign(v25, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD28], 0, 0, 0);
  v27 = [(PKPassFaceView *)self colorProfile];
  if ([v27 supportsAutomaticForegroundVibrancy])
  {
    v28 = 1;
  }

  else
  {
    v28 = [v27 supportsAutomaticLabelVibrancy];
  }

  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v30 = [v29 layer];
  v31 = v28 ^ 1u;
  [v30 setAllowsGroupBlending:v31];

  v122 = v29;
  [(PKPassFrontFaceView *)self insertContentView:v29 ofType:2];
  v118 = v26;
  if (v31)
  {
    v119 = 0;
    v123 = 0;
    v121 = 0;
    v49 = 0;
  }

  else
  {
    v32 = [v27 footerBackgroundColor];
    v33 = MEMORY[0x1E69DC888];
    v34 = [v3 frontFaceImageAverageColor];
    v35 = [v33 pkui_colorWithPKColor:v34];

    v36 = [(PKPassFrontFaceView *)self isRelevancyActive];
    if (v32)
    {
      v37 = v32;
    }

    else
    {
      v37 = v35;
    }

    if (v115 != 0 && v36)
    {
      v38 = v115;
    }

    else
    {
      v38 = v37;
    }

    [v38 CGColor];
    PKColorGetLightness();
    v40 = 2;
    if (v39 < 0.5)
    {
      v40 = 3;
    }

    if (v39 >= 0.85)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __57__PKPassPosterEventTicketFaceView_createBodyContentViews__block_invoke;
    v127[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v127[4] = v41;
    v42 = v25;
    v43 = v3;
    if (v39 < 0.85)
    {
      v44 = MEMORY[0x1E6979CF8];
    }

    else
    {
      v44 = MEMORY[0x1E6979CE8];
    }

    v45 = [v42 traitCollectionByModifyingTraits:v127];

    v46 = [MEMORY[0x1E69DC888] labelColor];
    v121 = [v46 resolvedColorWithTraitCollection:v45];

    v47 = *v44;
    v3 = v43;
    v123 = v47;
    v48 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v119 = [v48 resolvedColorWithTraitCollection:v45];

    v49 = v41 == 2;
    v25 = v45;
  }

  [(PKPassFaceView *)self style];
  PKPassFrontFaceContentSize();
  PKEventTicketV2PassScaleFactor();
  v51 = v50;
  v52 = [(PKPassFaceView *)self buckets];
  if ([v52 count] != 4)
  {
    __break(1u);
    return;
  }

  v53 = [v52 objectAtIndex:1];
  v54 = [v53 firstObject];

  v116 = [v52 objectAtIndex:2];
  v55 = [v116 count];
  v56 = [v52 objectAtIndex:3];
  v126 = [v56 firstObject];

  v124 = *(MEMORY[0x1E695F050] + 16);
  v125 = *MEMORY[0x1E695F050];
  self->_cachedPrimaryFieldFrame.origin = *MEMORY[0x1E695F050];
  self->_cachedPrimaryFieldFrame.size = v124;
  v57 = MEMORY[0x1E69DDD58];
  v117 = v54;
  v113 = v52;
  if (v54)
  {
    v58 = *MEMORY[0x1E69DDD58];
    v59 = PKFontForDefaultDesign(v25, v58, 2, 0, *MEMORY[0x1E69DB958]);
    v60 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryFieldLabel = self->_primaryFieldLabel;
    self->_primaryFieldLabel = v60;

    [(UILabel *)self->_primaryFieldLabel setNumberOfLines:2];
    [(UILabel *)self->_primaryFieldLabel setLineBreakMode:4];
    [(UILabel *)self->_primaryFieldLabel setFont:v59];
    [(UILabel *)self->_primaryFieldLabel setTextAlignment:0];
    v107 = v25;
    if (v55)
    {
      if ([v27 supportsAutomaticLabelVibrancy])
      {
        v62 = v121;
        if (v49)
        {
          v63 = 0;
        }

        else
        {
          v62 = v119;
          v63 = v123;
        }

        v64 = v62;
        v65 = v63;
        goto LABEL_41;
      }

      v66 = [v27 labelColor];
    }

    else if ([v27 supportsAutomaticForegroundVibrancy])
    {
      v66 = v121;
    }

    else
    {
      v66 = [v27 foregroundColor];
    }

    v64 = v66;
    v65 = 0;
LABEL_41:
    [(UILabel *)self->_primaryFieldLabel setTextColor:v64, v107, v3, v110];
    v67 = [(UILabel *)self->_primaryFieldLabel layer];
    [v67 setCompositingFilter:v65];

    v68 = self->_primaryFieldLabel;
    v69 = [v117 value];
    [(UILabel *)v68 setText:v69];

    [v122 addSubview:self->_primaryFieldLabel];
    v25 = v108;
    v3 = v109;
    v57 = MEMORY[0x1E69DDD58];
  }

  self->_cachedSecondaryBucketFrame.origin = v125;
  self->_cachedSecondaryBucketFrame.size = v124;
  if (v55)
  {
    v70 = *v57;
    v71 = _PKFontForDesign(v25, v120, v70, 0, 32, 0);
    v72 = [v71 fontWithSize:round(v51 * 36.0)];

    v73 = 26.0;
    if (v55 == 2)
    {
      PKFloatRoundToPixel();
      v73 = v74;
    }

    v75 = [[PKDynamicPassBucketView alloc] initWithBucket:v116];
    secondaryBucketView = self->_secondaryBucketView;
    self->_secondaryBucketView = v75;

    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLayoutDirection:1];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setDistribution:v55 > 2];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setSizingRule:0];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setSpacing:v73];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setVerticalPadding:0.0];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setMinResizeScale:0.6];
    v77 = v3;
    if ([v27 supportsAutomaticLabelVibrancy])
    {
      v78 = v119;
    }

    else
    {
      v78 = [v27 labelColor];
    }

    v79 = v78;
    v80 = v25;
    v81 = [v27 supportsAutomaticLabelVibrancy];
    v82 = v123;
    if (!v81)
    {
      v82 = 0;
    }

    v83 = v82;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelFont:v118];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelTextColor:v79];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelBlendMode:v83];
    if ([v27 supportsAutomaticForegroundVibrancy])
    {
      v84 = v121;
    }

    else
    {
      v84 = [v27 foregroundColor];
    }

    v85 = v84;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueFont:v72];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueTextColor:v85];
    [(PKPassFrontFaceView *)self insertContentView:self->_secondaryBucketView ofType:2];

    v25 = v80;
    v3 = v77;
    v52 = v113;
  }

  self->_cachedSecnamLabelFrame.origin = v125;
  self->_cachedSecnamLabelFrame.size = v124;
  v86 = [v126 label];
  if (v86)
  {
    v87 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secnamLabel = self->_secnamLabel;
    self->_secnamLabel = v87;

    [(UILabel *)self->_secnamLabel setNumberOfLines:1];
    [(UILabel *)self->_secnamLabel setLineBreakMode:4];
    [(UILabel *)self->_secnamLabel setTextAlignment:0];
    v89 = self->_secnamLabel;
    v90 = _PKFontForDesign(v25, v120, v114, 0x8000, 32, 0);
    [(UILabel *)v89 setFont:v90];

    if ([v27 supportsAutomaticLabelVibrancy])
    {
      v91 = v119;
    }

    else
    {
      v91 = [v27 labelColor];
    }

    v92 = v91;
    v93 = [v27 supportsAutomaticLabelVibrancy];
    v94 = v123;
    if (!v93)
    {
      v94 = 0;
    }

    v95 = self->_secnamLabel;
    v96 = v94;
    [(UILabel *)v95 setTextColor:v92];
    v97 = [(UILabel *)self->_secnamLabel layer];
    [v97 setCompositingFilter:v96];

    [(UILabel *)self->_secnamLabel setText:v86];
    v98 = self->_secnamLabel;

    [v122 addSubview:v98];
  }

  self->_cachedVenueLabelFrame.origin = v125;
  self->_cachedVenueLabelFrame.size = v124;
  v99 = [v126 value];
  if (v99)
  {
    v100 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    venueLabel = self->_venueLabel;
    self->_venueLabel = v100;

    if (v86)
    {
      v102 = 1;
    }

    else
    {
      v102 = 2;
    }

    [(UILabel *)self->_venueLabel setNumberOfLines:v102];
    [(UILabel *)self->_venueLabel setLineBreakMode:4 * (v86 != 0)];
    [(UILabel *)self->_venueLabel setTextAlignment:0];
    v103 = self->_venueLabel;
    v104 = _PKFontForDesign(v25, v120, v114, 0, 32, 0);
    [(UILabel *)v103 setFont:v104];

    if ([v27 supportsAutomaticForegroundVibrancy])
    {
      v105 = v121;
    }

    else
    {
      v105 = [v27 foregroundColor];
    }

    v106 = v105;
    [(UILabel *)self->_venueLabel setTextColor:v105];
    [(UILabel *)self->_venueLabel setText:v99];
    [(PKPassFrontFaceView *)self insertContentView:self->_venueLabel ofType:2];
  }
}

uint64_t __57__PKPassPosterEventTicketFaceView_createBodyContentViews__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (void)_updateBodyLabelColorsForRelevancyActive:(BOOL)a3
{
  v46 = [(PKPassFaceView *)self pass];
  v5 = [(PKPassFaceView *)self colorProfile];
  if (([v5 supportsAutomaticForegroundVibrancy] & 1) == 0 && !objc_msgSend(v5, "supportsAutomaticLabelVibrancy"))
  {
    goto LABEL_39;
  }

  v6 = [v46 seatingInformation];
  v7 = [v6 firstSeat];
  v8 = MEMORY[0x1E69DC888];
  v45 = v7;
  v9 = [v7 sectionColor];
  v10 = [v8 pkui_colorWithPKColor:v9];

  v11 = [v5 footerBackgroundColor];
  v12 = MEMORY[0x1E69DC888];
  v13 = [v46 frontFaceImageAverageColor];
  v14 = [v12 pkui_colorWithPKColor:v13];

  v44 = v14;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  if (a3 && v10 != 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  [v16 CGColor];
  PKColorGetLightness();
  v18 = v17;
  if (v17 >= 0.85)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v17 >= 0.85)
  {
    v20 = MEMORY[0x1E6979CE8];
  }

  else
  {
    v20 = MEMORY[0x1E6979CF8];
  }

  v21 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v19];
  v22 = [MEMORY[0x1E69DC888] labelColor];
  v23 = [v22 resolvedColorWithTraitCollection:v21];

  v24 = *v20;
  v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v26 = [v25 resolvedColorWithTraitCollection:v21];

  if (self->_primaryFieldLabel)
  {
    v42 = v11;
    v43 = v24;
    v27 = v26;
    v28 = v23;
    v29 = [(PKPassFaceView *)self buckets];
    v30 = [v29 objectAtIndex:2];
    v31 = [v30 count];

    if (v31)
    {
      v23 = v28;
      v26 = v27;
      if ([v5 supportsAutomaticLabelVibrancy])
      {
        v32 = v18 >= 0.5;
        v33 = v18 < 0.85;
        v34 = !v33 || !v32;
        if (!v33 || !v32)
        {
          v23 = v27;
        }

        v35 = v43;
        if (!v34)
        {
          v35 = 0;
        }

        primaryFieldLabel = self->_primaryFieldLabel;
        v41 = v6;
        v37 = v35;
        v38 = primaryFieldLabel;
        v26 = v27;
        [(UILabel *)v38 setTextColor:v23];
        v39 = [(UILabel *)self->_primaryFieldLabel layer];
        [v39 setCompositingFilter:v37];

        v6 = v41;
        goto LABEL_25;
      }
    }

    else
    {
      v23 = v28;
      v26 = v27;
      if ([v5 supportsAutomaticForegroundVibrancy])
      {
        [(UILabel *)self->_primaryFieldLabel setTextColor:v28];
        v39 = [(UILabel *)self->_primaryFieldLabel layer];
        [v39 setCompositingFilter:0];
LABEL_25:

        v23 = v28;
      }
    }

    v11 = v42;
    v24 = v43;
  }

  if (self->_secondaryBucketView)
  {
    if ([v5 supportsAutomaticLabelVibrancy])
    {
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelTextColor:v26];
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelBlendMode:v24];
    }

    if ([v5 supportsAutomaticForegroundVibrancy])
    {
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueTextColor:v23];
    }
  }

  if (self->_secnamLabel && [v5 supportsAutomaticLabelVibrancy])
  {
    [(UILabel *)self->_secnamLabel setTextColor:v26];
    v40 = [(UILabel *)self->_secnamLabel layer];
    [v40 setCompositingFilter:v24];
  }

  if (self->_venueLabel && [v5 supportsAutomaticForegroundVibrancy])
  {
    [(UILabel *)self->_venueLabel setTextColor:v23];
  }

LABEL_39:
}

- (void)layoutSubviews
{
  v235.receiver = self;
  v235.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v235 layoutSubviews];
  [(PKPassFaceView *)self style];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  PKPassFrontFaceContentSize();
  v5 = v4;
  v233 = v6;
  PKFloatRoundToPixel();
  v8 = v7;
  v226 = v5 + -28.0;
  PKFloatRoundToPixel();
  v227 = v9;
  PKPassFaceLogoRect();
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v231 = v5;
  if (self->_logoLabel && !CGRectIsNull(*&v10))
  {
    p_cachedLogoLabelRect = &self->_cachedLogoLabelRect;
    if (CGRectIsNull(self->_cachedLogoLabelRect))
    {
      rect = v8;
      if (self->_usingSportsLabel)
      {
        v16 = v227;
      }

      else
      {
        v16 = v8;
      }

      v19 = [(PKPassFaceView *)self pass];
      [v19 logoRect];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v236.origin.x = v21;
      v236.origin.y = v23;
      v236.size.width = v25;
      v236.size.height = v27;
      if (CGRectIsNull(v236))
      {
        v237.origin.x = v14;
        v237.origin.y = v15;
        v237.size.width = v16;
        v237.size.height = v17;
        MinX = CGRectGetMinX(v237);
      }

      else
      {
        v238.origin.x = v21;
        v238.origin.y = v23;
        v238.size.width = v25;
        v238.size.height = v27;
        MinX = CGRectGetMaxX(v238) + 8.0;
      }

      v239.origin.x = v14;
      v239.origin.y = v15;
      v239.size.width = v16;
      v239.size.height = v17;
      v29 = CGRectGetMaxX(v239) - MinX;
      v30 = [(UILabel *)self->_logoLabel font];
      [v30 _bodyLeading];
      v32.n128_u64[0] = v31;
      v33.n128_f64[0] = v29;
      PKSizeCeilToPixel(v33, v32, v34);
      v37 = v36;
      if (!self->_usingSportsLabel)
      {
        [(UILabel *)self->_logoLabel sizeThatFits:v35, 1.79769313e308];
        if (v38 <= v37)
        {
          v39 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDCF8], 32770, 0, *MEMORY[0x1E69DB958]);
          [(UILabel *)self->_logoLabel setFont:v39];
          [(UILabel *)self->_logoLabel sizeThatFits:1.79769313e308, v37];
        }
      }

      UIRectCenteredYInRect();
      p_cachedLogoLabelRect->origin.x = v40;
      self->_cachedLogoLabelRect.origin.y = v41;
      self->_cachedLogoLabelRect.size.width = v42;
      self->_cachedLogoLabelRect.size.height = v43;

      v8 = rect;
      v5 = v231;
    }

    [(UILabel *)self->_logoLabel setFrame:p_cachedLogoLabelRect->origin.x, self->_cachedLogoLabelRect.origin.y, self->_cachedLogoLabelRect.size.width, self->_cachedLogoLabelRect.size.height];
  }

  if (self->_dateLabel)
  {
    v44 = v5;
    p_cachedDateLabelFrame = &self->_cachedDateLabelFrame;
    if (CGRectIsNull(self->_cachedDateLabelFrame))
    {
      v46 = v8;
      [(UILabel *)self->_dateLabel sizeThatFits:v8, 1.79769313e308];
      width = v47;
      height = v49;
      v240.origin.x = v14;
      v240.origin.y = v15;
      v240.size.width = v16;
      v240.size.height = v17;
      MinY = CGRectGetMinY(v240);
      if (!self->_timeLabel)
      {
        PKFloatRoundToPixel();
        MinY = MinY + v52;
      }

      x = v44 + -14.0 - width;
      p_cachedDateLabelFrame->origin.x = x;
      self->_cachedDateLabelFrame.origin.y = MinY;
      self->_cachedDateLabelFrame.size.width = width;
      self->_cachedDateLabelFrame.size.height = height;
    }

    else
    {
      v46 = v8;
      x = p_cachedDateLabelFrame->origin.x;
      MinY = self->_cachedDateLabelFrame.origin.y;
      width = self->_cachedDateLabelFrame.size.width;
      height = self->_cachedDateLabelFrame.size.height;
    }

    [(UILabel *)self->_dateLabel setFrame:x, MinY, width, height];
    v5 = v44;
    v8 = v46;
  }

  if (self->_timeLabel)
  {
    p_cachedTimeLabelFrame = &self->_cachedTimeLabelFrame;
    if (CGRectIsNull(self->_cachedTimeLabelFrame))
    {
      [(UILabel *)self->_timeLabel sizeThatFits:v8, 1.79769313e308];
      v56 = v55;
      v58 = v57;
      v59 = v5 + -14.0 - v55;
      MaxY = CGRectGetMaxY(self->_cachedDateLabelFrame);
      p_cachedTimeLabelFrame->origin.x = v59;
      self->_cachedTimeLabelFrame.origin.y = MaxY;
      self->_cachedTimeLabelFrame.size.width = v56;
      self->_cachedTimeLabelFrame.size.height = v58;
    }

    else
    {
      v59 = p_cachedTimeLabelFrame->origin.x;
      MaxY = self->_cachedTimeLabelFrame.origin.y;
      v56 = self->_cachedTimeLabelFrame.size.width;
      v58 = self->_cachedTimeLabelFrame.size.height;
    }

    [(UILabel *)self->_timeLabel setFrame:v59, MaxY, v56, v58];
  }

  v61 = [(PKPassFaceView *)self backgroundView];
  [v61 bounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  if (self->_sectionColorView)
  {
    PKPassFacePartialBlurRect();
    [(UIView *)self->_sectionColorView setFrame:0.0, v233 - CGRectGetHeight(v241), v5];
    v70 = [(PKPassFaceView *)self contentView];
    [v70 sendSubviewToBack:self->_sectionColorView];

    [(PKPassPosterEventTicketFaceView *)self convertRect:self->_sectionColorView toView:v63, v65, v67, v69];
    [(UIView *)self->_sectionColorMaskView setFrame:?];
    v71 = [(UIView *)self->_sectionColorMaskView layer];
    v72 = [v71 mask];

    [v72 setFrame:{v63, v65, v67, v69}];
    v73 = [(PKPassFaceView *)self backgroundView];
    v74 = [v73 image];

    [v72 setContents:{objc_msgSend(v74, "CGImage")}];
  }

  secondaryLogoImageView = self->_secondaryLogoImageView;
  if (secondaryLogoImageView)
  {
    [(UIImageView *)secondaryLogoImageView setFrame:v5 - self->_secondaryLogoSize.width + -14.0, v233 - self->_secondaryLogoSize.height + -14.0];
  }

  PKPassFacePartialBlurRect();
  v76 = v242.origin.x;
  y = v242.origin.y;
  v78 = v242.size.width;
  v79 = v242.size.height;
  CGRectGetMinY(v242);
  v243.origin.x = v76;
  v243.origin.y = y;
  v243.size.width = v78;
  v243.size.height = v79;
  v228 = CGRectGetHeight(v243);
  PKEventTicketV2PassScaleFactor();
  PKFloatRoundToPixel();
  v81 = v80;
  v82 = *MEMORY[0x1E695F050];
  v83 = *(MEMORY[0x1E695F050] + 8);
  v85 = *(MEMORY[0x1E695F050] + 16);
  v84 = *(MEMORY[0x1E695F050] + 24);
  v86 = v84;
  recta = v85;
  v87 = v83;
  v88 = *MEMORY[0x1E695F050];
  if (self->_venueLabel)
  {
    p_cachedVenueLabelFrame = &self->_cachedVenueLabelFrame;
    if (CGRectIsNull(self->_cachedVenueLabelFrame))
    {
      v224 = v81;
      v221 = v82;
      v90 = [(UILabel *)self->_secnamLabel font];
      v91 = [(UILabel *)self->_venueLabel font];
      v92 = v91;
      v93 = self->_secondaryLogoSize.width;
      if (self->_secnamLabel)
      {
        v222 = v83;
        if (v93 <= 0.0)
        {
          v94 = v226;
        }

        else
        {
          v94 = v226 - (v93 + 14.0);
        }

        [(UILabel *)self->_venueLabel sizeThatFits:v94, 1.79769313e308];
        v96 = v95;
        v98 = v97;
        [v90 _bodyLeading];
        v100.n128_u64[0] = v99;
        v101.n128_f64[0] = v94;
        PKSizeCeilToPixel(v101, v100, v102);
        v104 = v103;
        v106 = v105;
        [(UILabel *)self->_secnamLabel sizeThatFits:1.79769313e308];
        v109 = v108;
        if (v107 > v104 || v228 < 120.0)
        {
          v111 = *MEMORY[0x1E69DB8D0];
          v112 = *MEMORY[0x1E69DDD10];
          v113 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD10], 0x8000, 32, 0);

          v114 = _PKFontForDesign(v3, v111, v112, 0, 32, 0);
          [(UILabel *)self->_secnamLabel setFont:v113];
          [(UILabel *)self->_venueLabel setFont:v114];
          [(UILabel *)self->_venueLabel sizeThatFits:1.79769313e308, v106];
          v96 = v115;
          v98 = v116;
          [(UILabel *)self->_secnamLabel sizeThatFits:1.79769313e308, v106];
          v109 = v117;
          v92 = v114;
          v90 = v113;
        }

        if (v96 >= v94)
        {
          v118 = v94;
        }

        else
        {
          v118 = v96;
        }

        if (v107 >= v94)
        {
          v119 = v94;
        }

        else
        {
          v119 = v107;
        }

        v83 = v222;
      }

      else
      {
        v119 = *MEMORY[0x1E695F060];
        v109 = *(MEMORY[0x1E695F060] + 8);
        v120 = v226 - v93 + -14.0;
        if (v227 < v120)
        {
          v120 = v227;
        }

        if (v93 <= 0.0)
        {
          v121 = v227;
        }

        else
        {
          v121 = v120;
        }

        venueLabel = self->_venueLabel;
        [v91 _bodyLeading];
        PKFloatCeilToPixel(v123, v124);
        [(UILabel *)venueLabel sizeThatFits:1.79769313e308, v125];
        if (v126 <= v121)
        {
          v118 = v126;
          v98 = v127;
        }

        else
        {
          v128 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD10], 0, 32, 0);

          [(UILabel *)self->_venueLabel setFont:v128];
          [(UILabel *)self->_venueLabel sizeThatFits:v121, 1.79769313e308];
          v118 = v129;
          v98 = v130;
          v92 = v128;
        }
      }

      [v92 descender];
      PKFloatCeilToPixel(v131, v132);
      v134 = v233 - v98 + -14.0 - v133;
      p_cachedVenueLabelFrame->origin.x = 14.0;
      self->_cachedVenueLabelFrame.origin.y = v134;
      self->_cachedVenueLabelFrame.size.width = v118;
      self->_cachedVenueLabelFrame.size.height = v98;
      if (self->_secnamLabel)
      {
        v135 = 14.0;
        v136 = v118;
        v137 = v98;
        v138 = CGRectGetMinY(*(&v134 - 1));
        self->_cachedSecnamLabelFrame.origin.x = 14.0;
        self->_cachedSecnamLabelFrame.origin.y = v138 - v109 + -2.0;
        self->_cachedSecnamLabelFrame.size.width = v119;
        self->_cachedSecnamLabelFrame.size.height = v109;
      }

      v82 = v221;
      v81 = v224;
    }

    v88 = p_cachedVenueLabelFrame->origin.x;
    v87 = self->_cachedVenueLabelFrame.origin.y;
    v85 = self->_cachedVenueLabelFrame.size.width;
    v86 = self->_cachedVenueLabelFrame.size.height;
    [(UILabel *)self->_venueLabel setFrame:p_cachedVenueLabelFrame->origin.x, v87, v85, v86];
    secnamLabel = self->_secnamLabel;
    if (secnamLabel)
    {
      v88 = self->_cachedSecnamLabelFrame.origin.x;
      v87 = self->_cachedSecnamLabelFrame.origin.y;
      v85 = self->_cachedSecnamLabelFrame.size.width;
      v86 = self->_cachedSecnamLabelFrame.size.height;
      [(UILabel *)secnamLabel setFrame:v88, v87, v85, v86];
    }
  }

  v234 = v85;
  if (self->_secondaryBucketView)
  {
    p_cachedSecondaryBucketFrame = &self->_cachedSecondaryBucketFrame;
    if (CGRectIsNull(self->_cachedSecondaryBucketFrame))
    {
      v225 = v81;
      if (self->_primaryFieldLabel)
      {
        v141 = [(PKDynamicPassBucketView *)self->_secondaryBucketView bucket];
        v142 = [v141 count];

        v143 = v81 + 24.0;
        if (v142 <= 1)
        {
          v143 = v227;
        }

        v144 = v226 - v143;
      }

      else
      {
        v144 = v226;
      }

      [(PKDynamicPassBucketView *)self->_secondaryBucketView fittedSizeFor:v144, 1.79769313e308];
      v146 = v145;
      v148 = v147;
      v149 = [(PKDynamicPassBucketView *)self->_secondaryBucketView labelFont];
      v150 = [(PKDynamicPassBucketView *)self->_secondaryBucketView resizedValueFont];
      v151 = v150;
      if (v150)
      {
        v152 = v150;
      }

      else
      {
        v152 = [(PKDynamicPassBucketView *)self->_secondaryBucketView valueFont];
      }

      v153 = v152;

      v244.origin.x = v88;
      v244.origin.y = v87;
      v244.size.width = v85;
      v244.size.height = v86;
      if (!CGRectIsNull(v244))
      {
        v245.origin.x = v88;
        v245.origin.y = v87;
        v245.size.width = v85;
        v245.size.height = v86;
        CGRectGetMinY(v245);
      }

      [v149 ascender];
      v155 = v154;
      [v149 capHeight];
      v157.n128_f64[0] = v155 - v156;
      PKFloatFloorToPixel(v157, v158);
      [v153 descender];
      PKFloatFloorToPixel(v159, v160);
      PKFloatRoundToPixel();
      p_cachedSecondaryBucketFrame->origin.x = v231 + -14.0 - v146;
      self->_cachedSecondaryBucketFrame.origin.y = v161;
      self->_cachedSecondaryBucketFrame.size.width = v146;
      self->_cachedSecondaryBucketFrame.size.height = v148;

      v81 = v225;
    }

    v82 = p_cachedSecondaryBucketFrame->origin.x;
    v83 = self->_cachedSecondaryBucketFrame.origin.y;
    v84 = self->_cachedSecondaryBucketFrame.size.height;
    recta = self->_cachedSecondaryBucketFrame.size.width;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setFrame:p_cachedSecondaryBucketFrame->origin.x, v83];
  }

  if (self->_primaryFieldLabel)
  {
    p_cachedPrimaryFieldFrame = &self->_cachedPrimaryFieldFrame;
    if (CGRectIsNull(self->_cachedPrimaryFieldFrame))
    {
      v163 = [(PKDynamicPassBucketView *)self->_secondaryBucketView bucket];
      v164 = [v163 count];

      v223 = v83;
      if (self->_secondaryBucketView)
      {
        if (v164 <= 1)
        {
          v165 = v227;
        }

        else
        {
          v165 = v81;
        }
      }

      else
      {
        PKFloatRoundToPixel();
        v165 = v166;
      }

      PKEventTicketV2PassScaleFactor();
      v232 = v167;
      v168 = [(UILabel *)self->_primaryFieldLabel font];
      primaryFieldLabel = self->_primaryFieldLabel;
      [v168 _bodyLeading];
      PKFloatCeilToPixel(v170, v171);
      [(UILabel *)primaryFieldLabel sizeThatFits:1.79769313e308, v172];
      v174 = v173;
      v176 = v175;
      if (v173 > v165)
      {
        if (self->_secondaryBucketView && v164 >= 2)
        {
          v177 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDD40], 2, 0, *MEMORY[0x1E69DB958]);
          [v177 pointSize];
          v179 = [v177 fontWithSize:round(v232 * v178 + v232 * v178) * 0.5];

          [(UILabel *)self->_primaryFieldLabel setFont:v179];
          v180 = self->_primaryFieldLabel;
          [v179 _bodyLeading];
          v182 = v181;

          v183.n128_u64[0] = v182;
          PKFloatCeilToPixel(v183, v184);
          [(UILabel *)v180 sizeThatFits:1.79769313e308, v185];
          v174 = v186;
          v176 = v187;

          v168 = v179;
        }

        if (v174 > v165)
        {
          v188 = *MEMORY[0x1E69DB958];
          if (v164 < 2)
          {
            v189 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDDC0], 2, 0, v188);
            [v189 pointSize];
          }

          else
          {
            v189 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDD80], 2, 0, v188);
            v190 = 13.5;
          }

          v191 = [v189 fontWithSize:round(v232 * v190 + v232 * v190) * 0.5];

          v192 = v191;
          [(UILabel *)self->_primaryFieldLabel setFont:v192];

          [(UILabel *)self->_primaryFieldLabel sizeThatFits:v165, 1.79769313e308];
          v174 = v193;
          v176 = v194;
          v168 = v192;
        }
      }

      secondaryBucketView = self->_secondaryBucketView;
      if (secondaryBucketView && v164 >= 2)
      {
        v196 = [(PKDynamicPassBucketView *)secondaryBucketView resizedValueFont];
        v197 = v196;
        if (v196)
        {
          v198 = v196;
        }

        else
        {
          v198 = [(PKDynamicPassBucketView *)self->_secondaryBucketView valueFont];
        }

        v208 = v198;

        v248.origin.x = v82;
        v248.origin.y = v223;
        v248.size.width = recta;
        v248.size.height = v84;
        v209 = CGRectGetMaxY(v248) - v176;
        [v208 descender];
        PKFloatCeilToPixel(v210, v211);
        v213 = v209 + v212;
        [v168 descender];
        PKFloatCeilToPixel(v214, v215);
        v207 = v213 - v216;
        [v168 _bodyLeading];
        PKFloatCeilToPixel(v217, v218);
        if (v176 <= v219)
        {
          [v208 capHeight];
          [v168 capHeight];
          PKFloatRoundToPixel();
          v207 = v207 - v220;
        }
      }

      else
      {
        v246.origin.x = v88;
        v246.origin.y = v87;
        v246.size.width = v234;
        v246.size.height = v86;
        if (!CGRectIsNull(v246))
        {
          v247.origin.x = v88;
          v247.origin.y = v87;
          v247.size.width = v234;
          v247.size.height = v86;
          CGRectGetMinY(v247);
        }

        [v168 ascender];
        v200 = v199;
        [v168 capHeight];
        v202.n128_f64[0] = v200 - v201;
        PKFloatFloorToPixel(v202, v203);
        [v168 descender];
        PKFloatFloorToPixel(v204, v205);
        PKFloatRoundToPixel();
        v207 = v206;
      }

      p_cachedPrimaryFieldFrame->origin.x = 14.0;
      self->_cachedPrimaryFieldFrame.origin.y = v207;
      self->_cachedPrimaryFieldFrame.size.width = v174;
      self->_cachedPrimaryFieldFrame.size.height = v176;
    }

    [(UILabel *)self->_primaryFieldLabel setFrame:p_cachedPrimaryFieldFrame->origin.x, self->_cachedPrimaryFieldFrame.origin.y, self->_cachedPrimaryFieldFrame.size.width, self->_cachedPrimaryFieldFrame.size.height];
  }
}

- (void)setRelevancyActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPassFrontFaceView *)self isRelevancyActive];
  v6.receiver = self;
  v6.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v6 setRelevancyActive:v3];
  if (v5 != v3 && self->_sectionColorView)
  {
    if (v3)
    {
      [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
    }

    else
    {
      [PKPassFaceView removeContentView:"removeContentView:ofType:" ofType:?];
    }

    [(PKPassPosterEventTicketFaceView *)self _updateBodyLabelColorsForRelevancyActive:v3];
  }
}

@end