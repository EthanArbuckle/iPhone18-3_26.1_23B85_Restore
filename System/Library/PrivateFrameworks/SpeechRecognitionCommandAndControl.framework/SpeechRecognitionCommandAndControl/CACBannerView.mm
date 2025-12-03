@interface CACBannerView
- (CACBannerView)initWithFrame:(CGRect)frame;
- (NSString)text;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setAttributedText:(id)text;
- (void)setSymbolImage:(id)image;
- (void)setText:(id)text;
@end

@implementation CACBannerView

- (CACBannerView)initWithFrame:(CGRect)frame
{
  v131[20] = *MEMORY[0x277D85DE8];
  v130.receiver = self;
  v130.super_class = CACBannerView;
  v3 = [(CACBannerView *)&v130 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v7 = MEMORY[0x277D76918];
    if (IsAccessibilityCategory)
    {
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    }

    else
    {
      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v10 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
      v8 = [defaultMetrics scaledFontForFont:v10];
    }

    if (initWithFrame__onceToken != -1)
    {
      [CACBannerView initWithFrame:];
    }

    font = [initWithFrame__sSizingLabel font];
    v12 = [font isEqual:v8];

    if ((v12 & 1) == 0)
    {
      [initWithFrame__sSizingLabel setFont:v8];
    }

    traitCollection = [(CACBannerView *)v3 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      v15 = 10.0;
    }

    else
    {
      v15 = 13.0;
    }

    v16 = objc_opt_new();
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v16 setBackgroundColor:clearColor];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      cGColor = [blackColor CGColor];
      layer = [v16 layer];
      [layer setShadowColor:cGColor];

      layer2 = [v16 layer];
      [layer2 setShadowOffset:{0.0, 5.0}];

      layer3 = [v16 layer];
      LODWORD(v23) = 1045220557;
      [layer3 setShadowOpacity:v23];

      layer4 = [v16 layer];
      [layer4 setShadowRadius:10.0];

      layer5 = [v16 layer];
      [layer5 setMasksToBounds:0];
    }

    [(CACBannerView *)v3 addSubview:v16];
    [(CACBannerView *)v3 setBaseView:v16];
    if (_UISolariumEnabled())
    {
      v26 = objc_opt_new();
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      layer6 = [v26 layer];
      [layer6 setCornerRadius:v15];

      v28 = *MEMORY[0x277CDA138];
      layer7 = [v26 layer];
      [layer7 setCornerCurve:v28];

      [v26 vc_setWantsGlassAppearance:1];
      v30 = objc_opt_new();
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v16 addSubview:v26];
      [v26 addSubview:v30];
    }

    else
    {
      v31 = [MEMORY[0x277D75210] effectWithStyle:1200];
      v26 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v31];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      layer8 = [v26 layer];
      [layer8 setCornerRadius:v15];

      v33 = *MEMORY[0x277CDA138];
      layer9 = [v26 layer];
      [layer9 setCornerCurve:v33];

      layer10 = [v26 layer];
      [layer10 setMasksToBounds:1];

      [v16 addSubview:v26];
      v36 = objc_alloc(MEMORY[0x277D75D68]);
      v37 = [MEMORY[0x277D75D00] _effectForBlurEffect:v31 vibrancyStyle:102];
      v30 = [v36 initWithEffect:v37];

      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [v26 contentView];
      [contentView addSubview:v30];
    }

    v39 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v39 setFont:v8];
    [v39 setNumberOfLines:0];
    [v39 setTextAlignment:4];
    if (_UISolariumEnabled())
    {
      [v30 addSubview:v39];
    }

    else
    {
      contentView2 = [v30 contentView];
      [contentView2 addSubview:v39];
    }

    [(CACBannerView *)v3 setTextLabel:v39];
    v41 = [MEMORY[0x277D755D0] configurationWithTextStyle:*v7 scale:2];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:16.0];
    v44 = v43;

    v45 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [v45 setPreferredSymbolConfiguration:v41];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v45 setContentMode:2];
    v128 = v41;
    [v45 setPreferredSymbolConfiguration:v41];
    v129 = v8;
    if (_UISolariumEnabled())
    {
      [v30 addSubview:v45];
    }

    else
    {
      contentView3 = [v30 contentView];
      [contentView3 addSubview:v45];
    }

    [(CACBannerView *)v3 setAccessoryImageView:v45];
    leadingAnchor = [v39 leadingAnchor];
    [(CACBannerView *)v3 accessoryImageView];
    v49 = v48 = v39;
    trailingAnchor = [v49 trailingAnchor];
    [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    v51 = v127 = v45;
    [(CACBannerView *)v3 setImageToTextConstraint:v51];

    imageToTextConstraint = [(CACBannerView *)v3 imageToTextConstraint];
    LODWORD(v53) = 1144750080;
    [imageToTextConstraint setPriority:v53];

    leadingAnchor2 = [v48 leadingAnchor];
    leadingAnchor3 = [v30 leadingAnchor];
    v56 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:12.0];
    [(CACBannerView *)v3 setContainerToTextConstraint:v56];

    containerToTextConstraint = [(CACBannerView *)v3 containerToTextConstraint];
    LODWORD(v58) = 1132068864;
    [containerToTextConstraint setPriority:v58];

    v101 = MEMORY[0x277CCAAD0];
    topAnchor = [v16 topAnchor];
    topAnchor2 = [(CACBannerView *)v3 topAnchor];
    v124 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v131[0] = v124;
    bottomAnchor = [v16 bottomAnchor];
    bottomAnchor2 = [(CACBannerView *)v3 bottomAnchor];
    v121 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v131[1] = v121;
    centerXAnchor = [v16 centerXAnchor];
    centerXAnchor2 = [(CACBannerView *)v3 centerXAnchor];
    v118 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v131[2] = v118;
    widthAnchor = [v16 widthAnchor];
    v116 = [widthAnchor constraintGreaterThanOrEqualToConstant:24.0];
    v131[3] = v116;
    widthAnchor2 = [v16 widthAnchor];
    widthAnchor3 = [v26 widthAnchor];
    v113 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v131[4] = v113;
    heightAnchor = [v16 heightAnchor];
    heightAnchor2 = [v26 heightAnchor];
    v110 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v131[5] = v110;
    widthAnchor4 = [v26 widthAnchor];
    widthAnchor5 = [(CACBannerView *)v3 widthAnchor];
    v107 = [widthAnchor4 constraintLessThanOrEqualToAnchor:widthAnchor5];
    v131[6] = v107;
    topAnchor3 = [v26 topAnchor];
    topAnchor4 = [v16 topAnchor];
    v104 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v131[7] = v104;
    leadingAnchor4 = [v26 leadingAnchor];
    leadingAnchor5 = [v16 leadingAnchor];
    v100 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v131[8] = v100;
    trailingAnchor2 = [v26 trailingAnchor];
    trailingAnchor3 = [v48 trailingAnchor];
    v97 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    v131[9] = v97;
    topAnchor5 = [v30 topAnchor];
    topAnchor6 = [v26 topAnchor];
    v92 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v131[10] = v92;
    leadingAnchor6 = [v30 leadingAnchor];
    leadingAnchor7 = [v26 leadingAnchor];
    v87 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v131[11] = v87;
    bottomAnchor3 = [v30 bottomAnchor];
    bottomAnchor4 = [v26 bottomAnchor];
    v84 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v131[12] = v84;
    trailingAnchor4 = [v30 trailingAnchor];
    trailingAnchor5 = [v26 trailingAnchor];
    v81 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v131[13] = v81;
    accessoryImageView = [(CACBannerView *)v3 accessoryImageView];
    centerYAnchor = [accessoryImageView centerYAnchor];
    centerYAnchor2 = [v48 centerYAnchor];
    v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v131[14] = v77;
    accessoryImageView2 = [(CACBannerView *)v3 accessoryImageView];
    leadingAnchor8 = [accessoryImageView2 leadingAnchor];
    leadingAnchor9 = [v30 leadingAnchor];
    v73 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:12.0];
    v131[15] = v73;
    accessoryImageView3 = [(CACBannerView *)v3 accessoryImageView];
    widthAnchor6 = [accessoryImageView3 widthAnchor];
    [widthAnchor6 constraintEqualToConstant:v44];
    v60 = v59 = v30;
    v131[16] = v60;
    v91 = v48;
    topAnchor7 = [v48 topAnchor];
    v94 = v59;
    topAnchor8 = [v59 topAnchor];
    v63 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:12.0];
    v131[17] = v63;
    bottomAnchor5 = [v59 bottomAnchor];
    [v48 bottomAnchor];
    v65 = v93 = v16;
    v66 = [bottomAnchor5 constraintEqualToAnchor:v65 constant:12.0];
    v131[18] = v66;
    [(CACBannerView *)v3 containerToTextConstraint];
    v89 = v26;
    v68 = v67 = v3;
    v131[19] = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:20];
    [v101 activateConstraints:v69];

    v3 = v67;
  }

  return v3;
}

uint64_t __31__CACBannerView_initWithFrame___block_invoke()
{
  v0 = objc_opt_new();
  v1 = initWithFrame__sSizingLabel;
  initWithFrame__sSizingLabel = v0;

  v2 = initWithFrame__sSizingLabel;

  return [v2 setText:@"a"];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  baseView = [(CACBannerView *)self baseView];
  v9 = [baseView hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  y = test.y;
  x = test.x;
  baseView = [(CACBannerView *)self baseView];
  v8 = [baseView hitTest:event forEvent:{x, y}];

  return v8;
}

- (void)setText:(id)text
{
  textCopy = text;
  textLabel = [(CACBannerView *)self textLabel];
  [textLabel setText:textCopy];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  textLabel = [(CACBannerView *)self textLabel];
  [textLabel setAttributedText:textCopy];
}

- (void)setSymbolImage:(id)image
{
  v26[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (self->_symbolImage != imageCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&self->_symbolImage, image);
    symbolImage = [(CACBannerView *)selfCopy symbolImage];
    if (symbolImage)
    {
      v8 = MEMORY[0x277D755B8];
      symbolImage2 = [(CACBannerView *)selfCopy symbolImage];
      v10 = [v8 _systemImageNamed:symbolImage2];
    }

    else
    {
      v10 = 0;
    }

    accessoryImageView = [(CACBannerView *)selfCopy accessoryImageView];
    [accessoryImageView setImage:v10];

    accessoryImageView2 = [(CACBannerView *)selfCopy accessoryImageView];
    image = [accessoryImageView2 image];

    v14 = MEMORY[0x277CCAAD0];
    if (image)
    {
      containerToTextConstraint = [(CACBannerView *)selfCopy containerToTextConstraint];
      v24 = containerToTextConstraint;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [v14 deactivateConstraints:v16];

      v17 = MEMORY[0x277CCAAD0];
      imageToTextConstraint = [(CACBannerView *)selfCopy imageToTextConstraint];
      v23 = imageToTextConstraint;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [v17 activateConstraints:v19];
    }

    else
    {
      imageToTextConstraint2 = [(CACBannerView *)selfCopy imageToTextConstraint];
      v26[0] = imageToTextConstraint2;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [v14 deactivateConstraints:v21];

      v22 = MEMORY[0x277CCAAD0];
      imageToTextConstraint = [(CACBannerView *)selfCopy containerToTextConstraint];
      v25 = imageToTextConstraint;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v22 activateConstraints:v19];
    }

    objc_sync_exit(selfCopy);
  }
}

- (NSString)text
{
  textLabel = [(CACBannerView *)self textLabel];
  text = [textLabel text];

  return text;
}

@end