@interface PKContinuityPaymentCardSummaryView
- (PKContinuityPaymentCardSummaryView)initWithFrame:(CGRect)a3;
- (id)_formatTextForString:(id)a3 alerting:(BOOL)a4;
- (void)_createLabels;
- (void)_createSubviews;
- (void)_prepareImageAndValueConstraints;
- (void)setCardDescription:(id)a3;
- (void)setShowsAlert:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)updateConstraints;
@end

@implementation PKContinuityPaymentCardSummaryView

- (PKContinuityPaymentCardSummaryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentCardSummaryView;
  v3 = [(PKContinuityPaymentCardSummaryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_showsAlert = 0;
    [(PKContinuityPaymentCardSummaryView *)v3 _createSubviews];
    [(PKContinuityPaymentCardSummaryView *)v4 _prepareImageAndValueConstraints];
  }

  return v4;
}

- (void)_createSubviews
{
  [(PKContinuityPaymentCardSummaryView *)self _createLabels];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  thumbnailView = self->_thumbnailView;
  self->_thumbnailView = v3;

  [(UIImageView *)self->_thumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_thumbnailView setAccessibilityIgnoresInvertColors:1];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = PKUIImageNamed(@"Payment_AlertAccessory");
  v7 = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
  v8 = [v6 _flatImageWithColor:v7];
  v9 = [v5 initWithImage:v8];
  alertView = self->_alertView;
  self->_alertView = v9;

  [(UIImageView *)self->_alertView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_alertView setHidden:!self->_showsAlert];
  [(PKContinuityPaymentCardSummaryView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_descriptionView];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_subtitleView];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_thumbnailView];
  v11 = self->_alertView;

  [(PKContinuityPaymentCardSummaryView *)self addSubview:v11];
}

- (void)_createLabels
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionView = self->_descriptionView;
  self->_descriptionView = v3;

  [(UILabel *)self->_descriptionView setNumberOfLines:1];
  [(UILabel *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_cardDescription)
  {
    cardDescription = self->_cardDescription;
  }

  else
  {
    cardDescription = &stru_1F3BD7330;
  }

  objc_storeStrong(&self->_cardDescription, cardDescription);
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleView = self->_subtitleView;
  self->_subtitleView = v6;

  [(UILabel *)self->_subtitleView setNumberOfLines:1];
  [(UILabel *)self->_subtitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_subtitle)
  {
    subtitle = self->_subtitle;
  }

  else
  {
    subtitle = &stru_1F3BD7330;
  }

  objc_storeStrong(&self->_subtitle, subtitle);
  v9 = self->_descriptionView;
  v10 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_cardDescription alerting:0];
  [(UILabel *)v9 setAttributedText:v10];

  v11 = self->_subtitleView;
  v12 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_subtitle alerting:self->_showsAlert];
  [(UILabel *)v11 setAttributedText:v12];
}

- (id)_formatTextForString:(id)a3 alerting:(BOOL)a4
{
  v4 = a4;
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB7D0];
  v6 = a3;
  v7 = [v5 defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setLineBreakMode:4];
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC30]);
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = *MEMORY[0x1E69DB648];
  v20[0] = v9;
  v12 = *MEMORY[0x1E69DB688];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [v8 copy];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = [v10 initWithDictionary:v14];

  if (v4)
  {
    v16 = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
    [v15 setObject:v16 forKey:*MEMORY[0x1E69DB650]];
  }

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v15];

  return v17;
}

- (void)setShowsAlert:(BOOL)a3
{
  if (self->_showsAlert != a3)
  {
    self->_showsAlert = a3;
    [(UIImageView *)self->_alertView setHidden:!a3];
    subtitleView = self->_subtitleView;
    v5 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_subtitle alerting:self->_showsAlert];
    [(UILabel *)subtitleView setAttributedText:v5];

    [(PKContinuityPaymentCardSummaryView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCardDescription:(id)a3
{
  v4 = &stru_1F3BD7330;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  cardDescription = self->_cardDescription;
  self->_cardDescription = v5;
  v7 = v5;

  descriptionView = self->_descriptionView;
  v9 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:v7 alerting:0];
  [(UILabel *)descriptionView setAttributedText:v9];
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1F3BD7330;
  }

  v5 = v4;
  if (self->_subtitle != v5)
  {
    subtitleView = self->_subtitleView;
    v8 = v5;
    v7 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:v5 alerting:self->_showsAlert];
    [(UILabel *)subtitleView setAttributedText:v7];

    objc_storeStrong(&self->_subtitle, v4);
    [(PKContinuityPaymentCardSummaryView *)self setNeedsUpdateConstraints];
    v5 = v8;
  }
}

- (void)_prepareImageAndValueConstraints
{
  v78 = [MEMORY[0x1E695DF70] array];
  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v4 = v3;
  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:5 relatedBy:0 toItem:self attribute:17 multiplier:1.0 constant:42.0];
  [v78 addObject:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v4];
  [v78 addObject:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:41.0];
  [v78 addObject:v7];

  v8 = [(UIImageView *)self->_thumbnailView centerYAnchor];
  v9 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v78 addObject:v10];

  v11 = [(UIImageView *)self->_alertView centerYAnchor];
  v12 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v78 addObject:v13];

  v14 = [(UIImageView *)self->_alertView trailingAnchor];
  v15 = [(PKContinuityPaymentCardSummaryView *)self layoutMarginsGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v78 addObject:v17];

  v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:5 relatedBy:0 toItem:self attribute:17 multiplier:1.0 constant:100.0];
  [v78 addObject:v18];

  v19 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:6 relatedBy:-1 toItem:self attribute:18 multiplier:1.0 constant:0.0];
  textToTrailingConstraint = self->_textToTrailingConstraint;
  self->_textToTrailingConstraint = v19;

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:6 relatedBy:-1 toItem:self->_alertView attribute:5 multiplier:1.0 constant:-12.0];
  textToAlertConstraint = self->_textToAlertConstraint;
  self->_textToAlertConstraint = v21;

  [v78 addObject:self->_textToTrailingConstraint];
  v77 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC30]);
  [v77 _bodyLeading];
  v24 = v23;
  v25 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v26 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [(PKContinuityPaymentCardSummaryView *)self addLayoutGuide:v25];
  [(PKContinuityPaymentCardSummaryView *)self addLayoutGuide:v26];
  v27 = [v25 heightAnchor];
  v28 = [v26 heightAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v78 addObject:v29];

  v30 = [v25 topAnchor];
  v31 = [(PKContinuityPaymentCardSummaryView *)self topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v78 addObject:v32];

  v33 = [v26 bottomAnchor];
  v34 = [(PKContinuityPaymentCardSummaryView *)self bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v78 addObject:v35];

  v36 = [v25 bottomAnchor];
  v37 = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  [v77 capHeight];
  v39 = [v36 constraintEqualToAnchor:v37 constant:-v38];
  [v78 addObject:v39];

  v40 = [v25 heightAnchor];
  v41 = [v40 constraintGreaterThanOrEqualToConstant:14.0];
  [v78 addObject:v41];

  v42 = [MEMORY[0x1E695DF70] array];
  subtitleConstraints = self->_subtitleConstraints;
  self->_subtitleConstraints = v42;

  v44 = self->_subtitleConstraints;
  v45 = [v26 topAnchor];
  v46 = [(UILabel *)self->_subtitleView firstBaselineAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [(NSMutableArray *)v44 addObject:v47];

  v48 = self->_subtitleConstraints;
  v49 = [(UILabel *)self->_subtitleView leadingAnchor];
  v50 = [(UILabel *)self->_descriptionView leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [(NSMutableArray *)v48 addObject:v51];

  v52 = self->_subtitleConstraints;
  v53 = [(UILabel *)self->_subtitleView firstBaselineAnchor];
  v54 = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:v24];
  [(NSMutableArray *)v52 addObject:v55];

  v56 = self->_subtitleConstraints;
  v57 = [(UILabel *)self->_subtitleView centerXAnchor];
  v58 = [(UILabel *)self->_descriptionView centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [(NSMutableArray *)v56 addObject:v59];

  v60 = self->_subtitleConstraints;
  v61 = [(UILabel *)self->_subtitleView trailingAnchor];
  v62 = [(UILabel *)self->_descriptionView trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [(NSMutableArray *)v60 addObject:v63];

  v64 = [MEMORY[0x1E695DF70] array];
  singleLineConstraints = self->_singleLineConstraints;
  self->_singleLineConstraints = v64;

  v66 = self->_singleLineConstraints;
  v67 = [(UILabel *)self->_descriptionView centerYAnchor];
  v68 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  [(NSMutableArray *)v66 addObject:v69];

  v70 = self->_singleLineConstraints;
  v71 = [v26 topAnchor];
  v72 = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  [(NSMutableArray *)v70 addObject:v73];

  [v78 addObjectsFromArray:self->_singleLineConstraints];
  [v78 addObjectsFromArray:self->_subtitleConstraints];
  v74 = [v26 heightAnchor];
  v75 = [v74 constraintEqualToConstant:1.0];

  LODWORD(v76) = 1132068864;
  [v75 setPriority:v76];
  [v78 addObject:v75];
  [MEMORY[0x1E696ACD8] activateConstraints:v78];
}

- (void)updateConstraints
{
  [(NSLayoutConstraint *)self->_textToTrailingConstraint setActive:!self->_showsAlert];
  [(NSLayoutConstraint *)self->_textToAlertConstraint setActive:self->_showsAlert];
  subtitle = self->_subtitle;
  if (subtitle && ([(NSString *)subtitle isEqual:&stru_1F3BD7330]& 1) == 0)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_subtitleConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_singleLineConstraints];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_subtitleConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_singleLineConstraints];
  }

  v4.receiver = self;
  v4.super_class = PKContinuityPaymentCardSummaryView;
  [(PKContinuityPaymentCardSummaryView *)&v4 updateConstraints];
}

@end