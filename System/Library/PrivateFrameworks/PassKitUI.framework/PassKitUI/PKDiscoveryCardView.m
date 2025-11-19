@interface PKDiscoveryCardView
+ (BOOL)usesMediumCards;
+ (CGSize)compressedSize;
+ (CGSize)expandedSize;
+ (CGSize)miniCompressedSize;
+ (double)compressedHeight;
+ (double)compressedWidth;
+ (double)expandedHeight;
+ (double)expandedWidth;
+ (unint64_t)_effectiveScreenType;
+ (unint64_t)_effectiveScreenWidthType;
+ (void)setPreviewConfiguration:(id *)a3;
- (CGSize)_miniCardImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDiscoveryCardView)initWithArticleLayout:(id)a3 cardSizeType:(int64_t)a4;
- (PKDiscoveryCardView)initWithArticleLayout:(id)a3 cardTemplateInformation:(id)a4 callToActionTappedOverride:(id)a5 isWelcomeCard:(BOOL)a6;
- (PKDiscoveryCardViewDelegate)delegate;
- (UIEdgeInsets)_currentContentInsets;
- (UIEdgeInsets)safeAreaOverrideInsets;
- (double)_yOffsetToHeadingLabel;
- (id)_dismissButtonColorWithTraitCollection:(id)a3;
- (id)_headingLabelFont;
- (id)_headingLabelTextColor;
- (id)_titleLabelFont;
- (id)_titleLabelTextColor;
- (int64_t)_foregroundContentMode;
- (unint64_t)_titleLabelNumberOfLines;
- (void)_dismissButtonPressed;
- (void)_updateForDisplayType;
- (void)layoutSubviews;
- (void)loadAndUploadImageData;
- (void)setCallToActionTappedOverride:(id)a3;
- (void)setCardSize:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDismissAction:(id)a3;
- (void)setDisplayType:(int64_t)a3;
- (void)tapGestureRecognized:(id)a3;
@end

@implementation PKDiscoveryCardView

+ (double)expandedWidth
{
  v2 = [a1 _effectiveScreenType];
  v3 = (&unk_1BE116410 + 8 * v2);
  if (v2 >= 0x14)
  {
    v3 = MEMORY[0x1E695F060];
  }

  return *v3;
}

+ (double)expandedHeight
{
  v3 = [a1 usesMediumCards];
  v4 = [a1 _effectiveScreenWidthType];
  if (v4 <= 0xE)
  {
    if (((1 << v4) & 0x7E00) != 0)
    {
LABEL_5:
      v5 = v3 == 0;
      result = 549.0;
      v7 = 559.0;
      goto LABEL_7;
    }

    if (((1 << v4) & 0x1E) != 0)
    {
      v5 = v3 == 0;
      result = 492.0;
      v7 = 510.0;
      goto LABEL_7;
    }

    if (((1 << v4) & 0x1E0) != 0)
    {
      goto LABEL_5;
    }
  }

  result = 0.0;
  if (v4)
  {
    return result;
  }

  v5 = v3 == 0;
  result = 422.0;
  v7 = 416.0;
LABEL_7:
  if (!v5)
  {
    return v7;
  }

  return result;
}

+ (CGSize)expandedSize
{
  [a1 expandedWidth];
  v4 = v3;
  [a1 expandedHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (double)compressedWidth
{
  v2 = [a1 _effectiveScreenWidthType];
  do
  {
    v3 = v2;
    v2 = 5;
  }

  while (v3 > 8);
  return dbl_1BE1164B0[v3];
}

+ (double)compressedHeight
{
  v3 = [a1 usesMediumCards];
  v4 = [a1 _effectiveScreenWidthType];
  result = 0.0;
  if (v4 <= 4)
  {
    if ((v4 - 2) >= 3)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return result;
        }

        v6 = v3 == 0;
        result = 412.0;
        v7 = 285.0;
      }

      else
      {
        v6 = v3 == 0;
        result = 354.0;
        v7 = 243.0;
      }
    }

    else
    {
      v6 = v3 == 0;
      result = 430.0;
      v7 = 300.0;
    }

    goto LABEL_15;
  }

  if ((v4 - 9) < 6)
  {
    v6 = v3 == 0;
    result = 460.0;
LABEL_11:
    v7 = 330.0;
    goto LABEL_15;
  }

  if ((v4 - 6) < 3)
  {
    v6 = v3 == 0;
    result = 477.0;
    goto LABEL_11;
  }

  if (v4 != 5)
  {
    return result;
  }

  v6 = v3 == 0;
  result = 460.0;
  v7 = 315.0;
LABEL_15:
  if (!v6)
  {
    return v7;
  }

  return result;
}

+ (CGSize)compressedSize
{
  [a1 compressedWidth];
  v4 = v3;
  [a1 compressedHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (CGSize)miniCompressedSize
{
  [a1 compressedWidth];
  v3 = 120.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)setPreviewConfiguration:(id *)a3
{
  v3 = *&a3->var0;
  qword_1EBDAAB58 = a3->var3;
  previewConfiguration = v3;
}

+ (BOOL)usesMediumCards
{
  if (previewConfiguration)
  {
    return BYTE1(previewConfiguration);
  }

  else
  {
    return MEMORY[0x1EEE247D8](a1, a2);
  }
}

+ (unint64_t)_effectiveScreenType
{
  if (previewConfiguration)
  {
    return qword_1EBDAAB58;
  }

  else
  {
    return PKUIGetMinScreenType();
  }
}

+ (unint64_t)_effectiveScreenWidthType
{
  if (previewConfiguration)
  {
    return *(&previewConfiguration + 1);
  }

  else
  {
    return PKUIGetMinScreenWidthType();
  }
}

- (PKDiscoveryCardView)initWithArticleLayout:(id)a3 cardSizeType:(int64_t)a4
{
  v6 = a3;
  v7 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:a4 displayType:0];
  v8 = [(PKDiscoveryCardView *)self initWithArticleLayout:v6 cardTemplateInformation:v7 callToActionTappedOverride:0 isWelcomeCard:0];

  return v8;
}

- (PKDiscoveryCardView)initWithArticleLayout:(id)a3 cardTemplateInformation:(id)a4 callToActionTappedOverride:(id)a5 isWelcomeCard:(BOOL)a6
{
  v96[3] = *MEMORY[0x1E69E9840];
  v91 = a3;
  v90 = a4;
  v87 = a5;
  v95.receiver = self;
  v95.super_class = PKDiscoveryCardView;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(PKDiscoveryCardView *)&v95 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_48;
  }

  objc_storeStrong(&v15->_articleLayout, a3);
  v16->_priority = [(PKDiscoveryArticleLayout *)v16->_articleLayout priority];
  v16->_isWelcomeCard = a6;
  obj = [v91 mediumCard];
  v17 = +[PKDiscoveryCardView usesMediumCards];
  v18 = obj;
  if (obj)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v18 = [v91 card];
  }

  objc_storeStrong(&v16->_card, v18);
  if (!v19)
  {
  }

  v20 = [v91 miniCard];
  miniCard = v16->_miniCard;
  v16->_miniCard = v20;

  v22 = [(PKMiniDiscoveryCard *)v16->_miniCard backgroundMedia];
  miniCardMedia = v16->_miniCardMedia;
  v16->_miniCardMedia = v22;

  v16->_largeCardTemplate = [(PKDiscoveryCard *)v16->_card largeCardTemplateType];
  v16->_miniCardTemplate = [(PKMiniDiscoveryCard *)v16->_miniCard miniCardTemplateType];
  v24 = [v90 copy];
  cardTemplateInformation = v16->_cardTemplateInformation;
  v16->_cardTemplateInformation = v24;

  v26 = [(PKDiscoveryCardView *)v16 _isLargeFormat];
  v27 = [(PKDiscoveryCardView *)v16 _isMaskedDisplay];
  v28 = +[PKDiscoveryCardView _effectiveScreenType];
  v88 = [(PKDiscoveryCard *)v16->_card backgroundMedia];
  v83 = [(PKDiscoveryCard *)v16->_card backgroundMediaExpanded];
  v81 = [(PKDiscoveryCard *)v16->_card backgroundMediaCropped];
  if (!v27)
  {
    v31 = v83;
LABEL_15:
    if (v31)
    {
      v30 = v31;
    }

    else
    {
      v30 = v88;
    }

    goto LABEL_18;
  }

  v29 = 0xFFEE0u >> v28;
  if (v28 >= 0x14)
  {
    LOBYTE(v29) = *(MEMORY[0x1E695F060] + 8) > 812.0;
  }

  v30 = v88;
  if ((v29 & 1) == 0)
  {
    v31 = v81;
    goto LABEL_15;
  }

LABEL_18:
  objc_storeStrong(&v16->_largeCardMedia, v30);
  v32 = MEMORY[0x1E69DC888];
  v33 = [(PKDiscoveryCard *)v16->_card backgroundColor];
  v85 = [v32 pkui_colorWithPKColor:v33];

  v34 = MEMORY[0x1E69DC888];
  v35 = [(PKMiniDiscoveryCard *)v16->_miniCard backgroundColor];
  v84 = [v34 pkui_colorWithPKColor:v35];

  if (v84)
  {
    v36 = v26;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = v85;
  }

  else
  {
    v37 = v84;
  }

  objc_storeStrong(&v16->_backgroundColor, v37);
  v89 = [(PKDiscoveryCardView *)v16 layer];
  [v89 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v89 setMasksToBounds:1];
  v38 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
  miniCardBackgroundColorView = v16->_miniCardBackgroundColorView;
  v16->_miniCardBackgroundColorView = v38;

  [(UIView *)v16->_miniCardBackgroundColorView setContentMode:2];
  [(UIView *)v16->_miniCardBackgroundColorView setBackgroundColor:v16->_backgroundColor];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_miniCardBackgroundColorView];
  if (v26)
  {
    v40 = [(PKDiscoveryCard *)v16->_card title];
    v41 = [(PKDiscoveryCard *)v16->_card heading];
    [(UIView *)v16->_miniCardBackgroundColorView setHidden:1];
  }

  else
  {
    v42 = [(PKMiniDiscoveryCard *)v16->_miniCard title];
    v43 = [(PKMiniDiscoveryCard *)v16->_miniCard heading];
    if ([v42 length])
    {
      v44 = v42;
    }

    else
    {
      v44 = [(PKDiscoveryCard *)v16->_card title];
    }

    v40 = v44;
    if ([v43 length])
    {
      v45 = v43;
    }

    else
    {
      v45 = [(PKDiscoveryCard *)v16->_card heading];
    }

    v41 = v45;
  }

  v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
  backgroundImageView = v16->_backgroundImageView;
  v16->_backgroundImageView = v46;

  [(UIImageView *)v16->_backgroundImageView setContentMode:2];
  [(UIImageView *)v16->_backgroundImageView setBackgroundColor:v16->_backgroundColor];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_backgroundImageView];
  v48 = !v27;
  if (v48 | v26)
  {
    v49 = +[PKDiscoveryCardView usesMediumCards];
    if (!v41)
    {
      goto LABEL_39;
    }

LABEL_37:
    if ([v41 length] != 0 && !v49)
    {
      v50 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
      headingLabel = v16->_headingLabel;
      v16->_headingLabel = v50;

      [(UILabel *)v16->_headingLabel setText:v41];
      v52 = v16->_headingLabel;
      v53 = [(PKDiscoveryCardView *)v16 _headingLabelFont];
      [(UILabel *)v52 setFont:v53];

      v54 = v16->_headingLabel;
      v55 = [(PKDiscoveryCardView *)v16 _headingLabelTextColor];
      [(UILabel *)v54 setTextColor:v55];

      [(UILabel *)v16->_headingLabel setNumberOfLines:1];
      [(UILabel *)v16->_headingLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
      [(PKDiscoveryCardView *)v16 addSubview:v16->_headingLabel];
    }

    goto LABEL_39;
  }

  v49 = 0;
  if (v41)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (v40 != 0 && !v49)
  {
    v56 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v56;

    [(UILabel *)v16->_titleLabel setText:v40];
    v58 = v16->_titleLabel;
    v59 = [(PKDiscoveryCardView *)v16 _titleLabelFont];
    [(UILabel *)v58 setFont:v59];

    v60 = v16->_titleLabel;
    v61 = [(PKDiscoveryCardView *)v16 _titleLabelTextColor];
    [(UILabel *)v60 setTextColor:v61];

    [(UILabel *)v16->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)v16 _titleLabelNumberOfLines]];
    [(UILabel *)v16->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKDiscoveryCardView *)v16 addSubview:v16->_titleLabel];
  }

  v62 = [(PKDiscoveryCard *)v16->_card callToAction];

  if (v62)
  {
    v63 = [PKDiscoveryCallToActionFooterView alloc];
    v64 = [(PKDiscoveryCard *)v16->_card callToAction];
    v65 = [(PKDiscoveryArticleLayout *)v16->_articleLayout itemIdentifier];
    v66 = [(PKDiscoveryCallToActionFooterView *)v63 initWithCallToAction:v64 displayType:v48 itemIdentifier:v65];
    ctaFooterView = v16->_ctaFooterView;
    v16->_ctaFooterView = v66;

    [(PKDiscoveryCardView *)v16 addSubview:v16->_ctaFooterView];
    if ((v26 & 1) == 0)
    {
      [(PKDiscoveryCallToActionFooterView *)v16->_ctaFooterView setHidden:1];
    }
  }

  objc_initWeak(&location, v16);
  v68 = MEMORY[0x1E69DC628];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke;
  v92[3] = &unk_1E8010A60;
  objc_copyWeak(&v93, &location);
  v69 = [v68 actionWithHandler:v92];
  if ([(PKDiscoveryCardView *)v16 _foregroundContentMode]== 1)
  {
    v70 = 2;
  }

  else
  {
    v70 = 1;
  }

  v71 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v72 = PKDiscoveryCardViewDismissImage();
  [v71 setImage:v72];

  v73 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v71 primaryAction:v69];
  dismissButton = v16->_dismissButton;
  v16->_dismissButton = v73;

  v75 = [(UIButton *)v16->_dismissButton traitOverrides];
  [v75 setUserInterfaceStyle:v70];

  [(UIButton *)v16->_dismissButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_dismissButton];
  v76 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v16 action:sel_tapGestureRecognized_];
  tapRecognizer = v16->_tapRecognizer;
  v16->_tapRecognizer = v76;

  [(PKDiscoveryCardView *)v16 addGestureRecognizer:v16->_tapRecognizer];
  [(PKDiscoveryCardView *)v16 _updateForDisplayType];
  v96[0] = objc_opt_class();
  v96[1] = objc_opt_class();
  v96[2] = objc_opt_class();
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
  v79 = [(PKDiscoveryCardView *)v16 registerForTraitChanges:v78 withHandler:&__block_literal_global_201];

  [(PKDiscoveryCardView *)v16 setAccessibilityIgnoresInvertColors:1];
  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);

LABEL_48:
  return v16;
}

void __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissButtonPressed];
}

void __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2[58];
  v6 = a2;
  v3 = [v6 _headingLabelFont];
  [v2 setFont:v3];

  [v6[59] setNumberOfLines:{objc_msgSend(v6, "_titleLabelNumberOfLines")}];
  v4 = v6[59];
  v5 = [v6 _titleLabelFont];
  [v4 setFont:v5];

  [v6 setNeedsLayout];
}

- (void)setDisplayType:(int64_t)a3
{
  if ([(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation displayType]!= a3)
  {
    v5 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:[(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation cardSize] displayType:a3];
    cardTemplateInformation = self->_cardTemplateInformation;
    self->_cardTemplateInformation = v5;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (void)setCardSize:(int64_t)a3
{
  if ([(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation cardSize]!= a3)
  {
    v5 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:a3 displayType:[(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation displayType]];
    cardTemplateInformation = self->_cardTemplateInformation;
    self->_cardTemplateInformation = v5;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setDelegate:v4];
}

- (void)setCallToActionTappedOverride:(id)a3
{
  v7 = a3;
  v4 = _Block_copy(v7);
  callToActionTappedOverride = self->_callToActionTappedOverride;
  self->_callToActionTappedOverride = v4;

  ctaFooterView = self->_ctaFooterView;
  if (ctaFooterView)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setCallToActionTappedOverride:v7];
  }
}

- (void)layoutSubviews
{
  v163[1] = *MEMORY[0x1E69E9840];
  [(PKDiscoveryCardView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryCardView *)self _currentContentInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v140 = v11;
  v141 = v15;
  v16 = v8 - (v11 + v15);
  v151 = v10 - (v13 + v17);
  v18 = [(PKDiscoveryCardView *)self _isLargeFormat];
  v19 = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  v20 = [(PKDiscoveryArticleLayout *)self->_articleLayout isWritingDirectionRTL];
  if (v20)
  {
    v21 = v20 == 1;
  }

  else
  {
    v21 = [(PKDiscoveryCardView *)self _shouldReverseLayoutDirection];
  }

  v146 = v21;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v12;
  remainder.origin.y = v14;
  remainder.size.width = v16;
  remainder.size.height = v151;
  if (!self->_headingLabel && self->_miniCardTemplate == 2 && !v18)
  {
    v22 = objc_alloc(MEMORY[0x1E69DCC10]);
    v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    headingLabel = self->_headingLabel;
    self->_headingLabel = v23;

    v25 = self->_headingLabel;
    v26 = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v25 setFont:v26];

    v27 = self->_headingLabel;
    v28 = [(UILabel *)self->_titleLabel text];
    [(UILabel *)v27 setText:v28];

    v29 = self->_headingLabel;
    v30 = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v29 setTextColor:v30];

    [(UILabel *)self->_headingLabel setNumberOfLines:1];
    [(PKDiscoveryCardView *)self addSubview:self->_headingLabel];
  }

  v142 = v16;
  v143 = v14;
  v144 = v12;
  v31 = [(UILabel *)self->_titleLabel text];
  v32 = [(UILabel *)self->_headingLabel text];
  v33 = [v31 isEqual:v32];

  [(UILabel *)self->_titleLabel setHidden:v33];
  v34 = v18 || !v19;
  ctaFooterView = self->_ctaFooterView;
  v148 = v10;
  v149 = v8;
  *rect = v4;
  v150 = v6;
  if (v34)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setHidden:0];
    [(UIView *)self->_miniCardBackgroundColorView setHidden:1];
    +[PKDiscoveryCardView expandedWidth];
    +[PKDiscoveryCardView expandedHeight];
    PKFloatRoundToPixel();
    v36 = v8;
    v38 = v37;
    PKFloatRoundToPixel();
    v39 = v4;
    v41 = v40;
    +[PKDiscoveryCardView expandedWidth];
    v43 = v42;
    +[PKDiscoveryCardView expandedHeight];
    v45 = v44;
    goto LABEL_16;
  }

  [(PKDiscoveryCallToActionFooterView *)ctaFooterView setHidden:1];
  [(UIView *)self->_miniCardBackgroundColorView setHidden:0];
  [(PKDiscoveryCardView *)self _miniCardImageSize];
  +[PKDiscoveryCardView compressedWidth];
  PKFloatRoundToPixel();
  v139 = v46;
  PKFloatRoundToPixel();
  v48 = v47;
  miniCardTemplate = self->_miniCardTemplate;
  if (miniCardTemplate == 2 || miniCardTemplate == 1)
  {
    PKContentAlignmentMake();
    goto LABEL_14;
  }

  v45 = 0.0;
  v43 = 0.0;
  v41 = 0.0;
  v38 = 0.0;
  if (!miniCardTemplate)
  {
    *&v164.origin.x = rect[0];
    v164.size.width = v149;
    v164.origin.y = v6;
    v164.size.height = v10;
    CGRectInset(v164, 16.0, 0.0);
    PKContentAlignmentMake();
LABEL_14:
    PKSizeAlignedInRect();
    v38 = v50;
    v41 = v51;
    v43 = v52;
    v45 = v53;
  }

  miniCardBackgroundColorView = self->_miniCardBackgroundColorView;
  +[PKDiscoveryCardView compressedWidth];
  [(UIView *)miniCardBackgroundColorView setFrame:v139, v48, v55, 120.0];
  [(UIView *)self->_miniCardBackgroundColorView setClipsToBounds:1];
  v36 = v149;
  v39 = *rect;
LABEL_16:
  [(UIImageView *)self->_backgroundImageView setFrame:v38, v41, v43, v45];
  [(UIImageView *)self->_backgroundImageView setClipsToBounds:1];
  [(UIButton *)self->_dismissButton sizeToFit];
  v165.origin.x = v39;
  v165.origin.y = v6;
  v165.size.width = v36;
  v165.size.height = v10;
  CGRectInset(v165, 16.0, 16.0);
  PKSizeAlignedInRect();
  [(UIButton *)self->_dismissButton setFrame:?];
  +[PKDiscoveryCardView compressedWidth];
  PKFloatRoundToPixel();
  if (v34)
  {
    +[PKDiscoveryCardView compressedWidth];
  }

  v57 = v56 - v140 - v141;
  v58 = v57 + -42.0;
  v59 = self->_headingLabel;
  if (v59)
  {
    [(UILabel *)v59 sizeThatFits:v57 + -42.0, v10];
    v61 = v60;
  }

  else
  {
    v61 = *(MEMORY[0x1E695F060] + 8);
  }

  [(PKDiscoveryCardView *)self _yOffsetToHeadingLabel];
  v63 = v62;
  v166.origin.x = v144;
  v166.origin.y = v143;
  v166.size.width = v142;
  v166.size.height = v151;
  CGRectDivide(v166, &slice, &remainder, v63, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v61, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:v58, remainder.size.height];
    v74 = v73;
  }

  else
  {
    v74 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_headingLabel)
  {
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
  }

  CGRectDivide(remainder, &slice, &remainder, v74, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v76 = v75;
  v152 = v77;
  v145 = v78;
  v80 = v79;
  v81 = [(UILabel *)self->_titleLabel text];
  v82 = [v81 length];

  if (v146)
  {
    v83 = 2;
  }

  else
  {
    v83 = 0;
  }

  [(UILabel *)self->_headingLabel setTextAlignment:v83];
  if (!v34)
  {
    v84 = self->_miniCardTemplate;
    if (v84 == 2)
    {
      [(UILabel *)self->_titleLabel setHidden:1];
      [(UILabel *)self->_headingLabel setTextAlignment:1];
      [(PKDiscoveryCardView *)self _miniCardImageSize];
      PKFloatRoundToPixel();
      v109 = v108;
      *&v169.origin.x = rect[0];
      v169.size.width = v149;
      v169.origin.y = v150;
      v169.size.height = v10;
      CGRectInset(v169, 0.0, v109);
      PKContentAlignmentMake();
    }

    else
    {
      if (v84 != 1)
      {
        if (v84)
        {
          goto LABEL_48;
        }

        v147 = v76;
        PKFloatRoundToPixel();
        v86 = v85;
        if (v82)
        {
          v87 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
          [v87 setMaximumNumberOfLines:3];
          v88 = [(UILabel *)self->_titleLabel text];
          v153 = *MEMORY[0x1E69DB648];
          v162 = *MEMORY[0x1E69DB648];
          v89 = [(PKDiscoveryCardView *)self _titleLabelFont];
          v163[0] = v89;
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:&v162 count:1];
          [v88 boundingRectWithSize:1 options:v90 attributes:v87 context:{v86, 3.40282347e38}];
          v92 = v91;

          v93 = v150;
          if (v92 <= 62.0 - v61)
          {
            v118 = rect[0];
            v120 = v148;
            v119 = v149;
            v171 = CGRectInset(*(&v93 - 1), 56.0, 29.0);
            x = v171.origin.x;
            y = v171.origin.y;
            width = v171.size.width;
            height = v171.size.height;
            [v87 setMaximumNumberOfLines:2];
            v121 = [(UILabel *)self->_titleLabel text];
            v160 = v153;
            v122 = [(PKDiscoveryCardView *)self _titleLabelFont];
            v161 = v122;
            v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
            [v121 boundingRectWithSize:1 options:v123 attributes:v87 context:{v86, 3.40282347e38}];
            v92 = v124;

            [v87 setMaximumNumberOfLines:1];
            v125 = [(UILabel *)self->_titleLabel text];
            v158 = v153;
            v126 = [(PKDiscoveryCardView *)self _titleLabelFont];
            v159 = v126;
            v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
            [v125 boundingRectWithSize:1 options:v127 attributes:v87 context:{v86, 3.40282347e38}];
            v129 = v128;

            v101 = self->_titleLabel;
            if (v92 <= v129)
            {
              [(UILabel *)v101 setNumberOfLines:1];
              v92 = v129;
              goto LABEL_47;
            }

            v102 = 2;
          }

          else
          {
            v94 = rect[0];
            v96 = v148;
            v95 = v149;
            v167 = CGRectInset(*(&v93 - 1), 56.0, 19.0);
            x = v167.origin.x;
            y = v167.origin.y;
            width = v167.size.width;
            height = v167.size.height;
            v101 = self->_titleLabel;
            v102 = 3;
          }

          [(UILabel *)v101 setNumberOfLines:v102];
LABEL_47:
          memset(&v155, 0, sizeof(v155));
          memset(&rect[1], 0, 32);
          v172.origin.x = x;
          v172.origin.y = y;
          v172.size.width = width;
          v172.size.height = height;
          CGRectDivide(v172, &rect[1], &v155, v92 + (height - v92 - v61) * 0.5, CGRectMaxYEdge);
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          v65 = v130;
          v67 = v131;
          v69 = v132;
          v71 = v133;
          PKContentAlignmentMake();
          PKSizeAlignedInRect();
          v76 = v134;
          v152 = v135;
          v145 = v136;
          v80 = v137;

          goto LABEL_48;
        }

        *&v170.origin.x = rect[0];
        v170.origin.y = v150;
        v170.size.width = v149;
        v170.size.height = v10;
        CGRectInset(v170, 56.0, 29.0);
        PKContentAlignmentMake();
LABEL_42:
        PKSizeAlignedInRect();
        v65 = v114;
        v67 = v115;
        v69 = v116;
        v71 = v117;
        v76 = v147;
        goto LABEL_48;
      }

      v147 = v76;
      PKFloatRoundToPixel();
      *&v168.origin.x = rect[0];
      v168.origin.y = v150;
      v168.size.width = v149;
      v168.size.height = v10;
      CGRectInset(v168, 16.0, 29.0);
      if (!v82)
      {
        PKContentAlignmentMake();
        goto LABEL_42;
      }

      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      v104 = v103;
      v152 = v105;
      v145 = v106;
      v80 = v107;
      PKContentAlignmentMake();
      v76 = v104;
    }

    PKSizeAlignedInRect();
    v65 = v110;
    v67 = v111;
    v69 = v112;
    v71 = v113;
  }

LABEL_48:
  [(UILabel *)self->_headingLabel setFrame:v65, v67, v69, v71];
  if (v82)
  {
    [(UILabel *)self->_titleLabel setTextAlignment:v83];
    [(UILabel *)self->_titleLabel setFrame:v76, v152, v145, v80];
  }

  v138 = [(PKDiscoveryCard *)self->_card callToAction];

  if (v138)
  {
    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView sizeThatFits:v149, v148];
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if ([(PKDiscoveryCardView *)self _isMaskedDisplay:a3.width])
  {
    if ([(PKDiscoveryCardView *)self _isLargeFormat])
    {

      +[PKDiscoveryCardView compressedSize];
    }

    else
    {

      +[PKDiscoveryCardView miniCompressedSize];
    }
  }

  else
  {

    +[PKDiscoveryCardView expandedSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setDismissAction:(id)a3
{
  if (self->_dismissAction != a3)
  {
    v4 = _Block_copy(a3);
    dismissAction = self->_dismissAction;
    self->_dismissAction = v4;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (id)_headingLabelFont
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| ![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC58], *MEMORY[0x1E69DB978]);
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40], 2, 0);
  }

  return v3;
}

- (id)_titleLabelFont
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| ![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC58], *MEMORY[0x1E69DB958]);
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC40], 0x8000, 0);
  }

  return v3;
}

- (unint64_t)_titleLabelNumberOfLines
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    return 0;
  }

  if (![(PKDiscoveryCardView *)self _isLargeFormat])
  {
    return 3;
  }

  v3 = [(PKDiscoveryCardView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (self->_isWelcomeCard && !UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v17 = 3;
  }

  else
  {
    v5 = [(PKDiscoveryCardView *)self _titleLabelFont];
    v6 = [(UILabel *)self->_titleLabel text];
    [(PKDiscoveryCardView *)self _currentContentInsets];
    v8 = v7;
    v10 = v9;
    +[PKDiscoveryCardView compressedWidth];
    v12 = v11 - v8 - v10 + -30.0 + 12.0;
    v13 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
    [v13 setMaximumNumberOfLines:2];
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      [(UILabel *)titleLabel sizeThatFits:v12, 1.79769313e308];
      v16 = v15;
    }

    else
    {
      v16 = *(MEMORY[0x1E695F060] + 8);
    }

    v18 = *MEMORY[0x1E69DB648];
    v28 = *MEMORY[0x1E69DB648];
    v29[0] = v5;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [v6 boundingRectWithSize:1 options:v19 attributes:v13 context:{v12, 1.79769313e308}];
    v21 = v20;

    if (v21 >= v16 || (v17 = 1, [v13 setMaximumNumberOfLines:1], v26 = v18, v27 = v5, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "boundingRectWithSize:options:attributes:context:", 1, v22, v13, v12, 1.79769313e308), v24 = v23, v22, v21 > v24))
    {
      v17 = 2;
    }
  }

  return v17;
}

- (void)_dismissButtonPressed
{
  [(UIButton *)self->_dismissButton setEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v7;
    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 discoveryCardViewRemoveTapped:self];

      v4 = v7;
    }
  }
}

- (void)tapGestureRecognized:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 discoveryCardViewTapped:self];
      v5 = v7;
    }
  }
}

- (UIEdgeInsets)_currentContentInsets
{
  if ([(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = 20.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 20.0;
  }

  else
  {
    v7 = [(PKDiscoveryCardView *)self superview];
    if (v7)
    {
      v8 = [(PKDiscoveryCardView *)self superview];
      [v8 safeAreaInsets];
      top = v9;
      left = v11;
      bottom = v13;
      right = v15;
    }

    else
    {
      [(PKDiscoveryCardView *)self safeAreaInsets];
      top = v17;
      left = v18;
      bottom = v19;
      right = v20;
    }

    if (self->_hasSafeAreaInsetOverride)
    {
      top = self->_safeAreaOverrideInsets.top;
      left = self->_safeAreaOverrideInsets.left;
      bottom = self->_safeAreaOverrideInsets.bottom;
      right = self->_safeAreaOverrideInsets.right;
    }

    v4 = fmax(top, 45.0);
    v3 = fmax(left, 20.0);
    v5 = fmax(bottom, 0.0);
    v6 = fmax(right, 20.0);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (double)_yOffsetToHeadingLabel
{
  v2 = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  result = 0.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (void)loadAndUploadImageData
{
  v3 = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| !v3)
  {
    v5 = self->_largeCardMedia;
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    p_miniCardMedia = &self->_miniCardMedia;
    if (![(PKDiscoveryMedia *)self->_miniCardMedia type])
    {
      p_miniCardMedia = &self->_largeCardMedia;
    }

    v5 = *p_miniCardMedia;
    [(PKDiscoveryCardView *)self _miniCardImageSize];
    v7 = v6;
    v9 = v8;
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke;
  v10[3] = &unk_1E80203C0;
  objc_copyWeak(&v11, &location);
  PKFetchImageForDiscoveryMedia(v5, v7, v9, 0, v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_2;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a3;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      [WeakRetained[55] setImage:*(a1 + 32)];
    }

    else
    {
      v4 = MEMORY[0x1E69DD250];
      v5 = WeakRetained[55];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_3;
      v6[3] = &unk_1E8010A10;
      v6[4] = WeakRetained;
      v7 = *(a1 + 32);
      [v4 transitionWithView:v5 duration:5242880 options:v6 animations:0 completion:0.300000012];
    }
  }
}

- (CGSize)_miniCardImageSize
{
  miniCardTemplate = self->_miniCardTemplate;
  if (miniCardTemplate == 2)
  {
    v4 = 343.0;
    v6 = 0x4053000000000000;
LABEL_10:
    v3 = *&v6;
    goto LABEL_11;
  }

  if (miniCardTemplate == 1)
  {
    +[PKDiscoveryCardView compressedWidth];
    if (v5 <= 335.0)
    {
      v4 = 132.0;
    }

    else
    {
      v4 = 152.0;
    }

    v6 = 0x405E000000000000;
    goto LABEL_10;
  }

  v3 = 0.0;
  v4 = 0.0;
  if (!miniCardTemplate)
  {
    v3 = 88.0;
    v4 = 88.0;
  }

LABEL_11:
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)_updateForDisplayType
{
  v3 = [(PKDiscoveryCardView *)self _isLargeFormat];
  v4 = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  v5 = v4;
  if (v3)
  {
    titleLabel = self->_titleLabel;
    v7 = [(PKDiscoveryCard *)self->_card title];
    [(UILabel *)titleLabel setText:v7];

    v8 = self->_titleLabel;
    v9 = [(PKDiscoveryCardView *)self _titleLabelFont];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_titleLabel;
    v11 = [(PKDiscoveryCardView *)self _titleLabelTextColor];
    [(UILabel *)v10 setTextColor:v11];

    [(UILabel *)self->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)self _titleLabelNumberOfLines]];
    headingLabel = self->_headingLabel;
    v13 = [(PKDiscoveryCard *)self->_card heading];
    [(UILabel *)headingLabel setText:v13];

    v14 = self->_headingLabel;
    v15 = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v14 setFont:v15];

    v16 = self->_headingLabel;
    v17 = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v16 setTextColor:v17];

    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setHidden:0];
    v18 = MEMORY[0x1E69DC888];
    v19 = [(PKDiscoveryCard *)self->_card backgroundColor];
    v20 = [v18 pkui_colorWithPKColor:v19];
    p_backgroundColor = &self->_backgroundColor;
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v20;
  }

  else
  {
    v23 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
    v49 = v4;
    if (v4)
    {
      v24 = [(PKMiniDiscoveryCard *)self->_miniCard title];
      v25 = [(PKMiniDiscoveryCard *)self->_miniCard heading];
      v26 = self->_titleLabel;
      if ([v24 length])
      {
        [(UILabel *)v26 setText:v24];
      }

      else
      {
        v30 = [(PKDiscoveryCard *)self->_card title];
        [(UILabel *)v26 setText:v30];

        v23 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
      }

      v31 = self->_headingLabel;
      if ([v25 length])
      {
        [(UILabel *)v31 setText:v25];
      }

      else
      {
        v32 = [(PKDiscoveryCard *)self->_card heading];
        [(UILabel *)v31 setText:v32];

        v23 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
      }
    }

    else
    {
      v27 = self->_titleLabel;
      v28 = [(PKDiscoveryCard *)self->_card title];
      [(UILabel *)v27 setText:v28];

      v29 = self->_headingLabel;
      v24 = [(PKDiscoveryCard *)self->_card heading];
      [(UILabel *)v29 setText:v24];
    }

    v33 = self->_titleLabel;
    v34 = [(PKDiscoveryCardView *)self _titleLabelFont];
    [(UILabel *)v33 setFont:v34];

    v35 = self->_titleLabel;
    v36 = [(PKDiscoveryCardView *)self _titleLabelTextColor];
    [(UILabel *)v35 setTextColor:v36];

    [(UILabel *)self->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)self _titleLabelNumberOfLines]];
    v37 = self->_headingLabel;
    v38 = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v37 setFont:v38];

    v39 = self->_headingLabel;
    v40 = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v39 setTextColor:v40];

    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setHidden:1];
    v41 = MEMORY[0x1E69DC888];
    v19 = [(PKMiniDiscoveryCard *)self->_miniCard backgroundColor];
    backgroundColor = [v41 pkui_colorWithPKColor:v19];
    v42 = backgroundColor;
    if (!backgroundColor)
    {
      v43 = MEMORY[0x1E69DC888];
      v23 = [(PKDiscoveryCard *)self->_card backgroundColor];
      v42 = [v43 pkui_colorWithPKColor:v23];
    }

    p_backgroundColor = &self->_backgroundColor;
    objc_storeStrong(&self->_backgroundColor, v42);
    if (!backgroundColor)
    {
    }

    v5 = v49;
  }

  [(UIImageView *)self->_backgroundImageView setBackgroundColor:*p_backgroundColor];
  [(UIView *)self->_miniCardBackgroundColorView setBackgroundColor:*p_backgroundColor];
  [(UIView *)self->_miniCardBackgroundColorView setHidden:v3];
  [(PKDiscoveryCardView *)self loadAndUploadImageData];
  [(PKDiscoveryCardView *)self setNeedsLayout];
  ctaFooterView = self->_ctaFooterView;
  if (v5)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setDisplayType:0];
    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)self pkui_setMaskType:3];
      if (!v3 && !self->_miniCardTemplate)
      {
        [(UIImageView *)self->_backgroundImageView pkui_setMaskType:3];
      }
    }

    else
    {
      [(PKDiscoveryCardView *)self _setContinuousCornerRadius:14.0];
      if (!v3 && !self->_miniCardTemplate)
      {
        [(UIImageView *)self->_backgroundImageView _setContinuousCornerRadius:14.0];
      }
    }

    dismissButton = self->_dismissButton;
    v46 = self->_dismissAction == 0;
  }

  else
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setDisplayType:1];
    [(UIView *)self pkui_setMaskType:0];
    [(UIImageView *)self->_backgroundImageView pkui_setMaskType:0];
    [(PKDiscoveryCardView *)self setBackgroundColor:self->_backgroundColor];
    dismissButton = self->_dismissButton;
    v46 = 1;
  }

  [(UIButton *)dismissButton setHidden:v46];
  v47 = self->_titleLabel;
  v48 = [(PKDiscoveryCardView *)self _titleLabelNumberOfLines];

  [(UILabel *)v47 setNumberOfLines:v48];
}

- (int64_t)_foregroundContentMode
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| (result = [(PKMiniDiscoveryCard *)self->_miniCard foregroundContentMode]) == 0)
  {
    card = self->_card;

    return [(PKDiscoveryCard *)card foregroundContentMode];
  }

  return result;
}

- (id)_dismissButtonColorWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 userInterfaceStyle];
  if (!v5 || v5 == 2)
  {
    v6 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
    goto LABEL_6;
  }

  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
LABEL_6:
    v7 = v6;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  v8 = [(PKDiscoveryCardView *)self _foregroundContentMode];
  if (v8 == 3)
  {
    v10 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_17;
    }

    v9 = [v4 userInterfaceStyle];
    if (!v9 || v9 == 2)
    {
      v10 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if (v9 != 1)
      {
        goto LABEL_17;
      }

      v10 = [MEMORY[0x1E69DC888] systemLightGrayColor];
    }
  }

  v11 = v10;

  v7 = v11;
LABEL_17:

  return v7;
}

- (id)_titleLabelTextColor
{
  v3 = [MEMORY[0x1E69DC888] systemBlackColor];
  v4 = [(PKDiscoveryCardView *)self _foregroundContentMode];
  if (v4 == 3)
  {
    v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  v6 = v5;

  v3 = v6;
LABEL_6:

  return v3;
}

- (id)_headingLabelTextColor
{
  v2 = [(PKDiscoveryCardView *)self _foregroundContentMode];
  v3 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v4 = [v3 colorWithAlphaComponent:0.5];

  if (v2 == 1)
  {
    v5 = [MEMORY[0x1E69DC888] systemLightGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.5];

    v4 = v6;
  }

  return v4;
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)safeAreaOverrideInsets
{
  top = self->_safeAreaOverrideInsets.top;
  left = self->_safeAreaOverrideInsets.left;
  bottom = self->_safeAreaOverrideInsets.bottom;
  right = self->_safeAreaOverrideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end