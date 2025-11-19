@interface CACBannerView
- (CACBannerView)initWithFrame:(CGRect)a3;
- (NSString)text;
- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setAttributedText:(id)a3;
- (void)setSymbolImage:(id)a3;
- (void)setText:(id)a3;
@end

@implementation CACBannerView

- (CACBannerView)initWithFrame:(CGRect)a3
{
  v131[20] = *MEMORY[0x277D85DE8];
  v130.receiver = self;
  v130.super_class = CACBannerView;
  v3 = [(CACBannerView *)&v130 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    v7 = MEMORY[0x277D76918];
    if (IsAccessibilityCategory)
    {
      v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    }

    else
    {
      v9 = [MEMORY[0x277D75520] defaultMetrics];
      v10 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
      v8 = [v9 scaledFontForFont:v10];
    }

    if (initWithFrame__onceToken != -1)
    {
      [CACBannerView initWithFrame:];
    }

    v11 = [initWithFrame__sSizingLabel font];
    v12 = [v11 isEqual:v8];

    if ((v12 & 1) == 0)
    {
      [initWithFrame__sSizingLabel setFont:v8];
    }

    v13 = [(CACBannerView *)v3 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 3)
    {
      v15 = 10.0;
    }

    else
    {
      v15 = 13.0;
    }

    v16 = objc_opt_new();
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x277D75348] clearColor];
    [v16 setBackgroundColor:v17];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v18 = [MEMORY[0x277D75348] blackColor];
      v19 = [v18 CGColor];
      v20 = [v16 layer];
      [v20 setShadowColor:v19];

      v21 = [v16 layer];
      [v21 setShadowOffset:{0.0, 5.0}];

      v22 = [v16 layer];
      LODWORD(v23) = 1045220557;
      [v22 setShadowOpacity:v23];

      v24 = [v16 layer];
      [v24 setShadowRadius:10.0];

      v25 = [v16 layer];
      [v25 setMasksToBounds:0];
    }

    [(CACBannerView *)v3 addSubview:v16];
    [(CACBannerView *)v3 setBaseView:v16];
    if (_UISolariumEnabled())
    {
      v26 = objc_opt_new();
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
      v27 = [v26 layer];
      [v27 setCornerRadius:v15];

      v28 = *MEMORY[0x277CDA138];
      v29 = [v26 layer];
      [v29 setCornerCurve:v28];

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
      v32 = [v26 layer];
      [v32 setCornerRadius:v15];

      v33 = *MEMORY[0x277CDA138];
      v34 = [v26 layer];
      [v34 setCornerCurve:v33];

      v35 = [v26 layer];
      [v35 setMasksToBounds:1];

      [v16 addSubview:v26];
      v36 = objc_alloc(MEMORY[0x277D75D68]);
      v37 = [MEMORY[0x277D75D00] _effectForBlurEffect:v31 vibrancyStyle:102];
      v30 = [v36 initWithEffect:v37];

      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v38 = [v26 contentView];
      [v38 addSubview:v30];
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
      v40 = [v30 contentView];
      [v40 addSubview:v39];
    }

    [(CACBannerView *)v3 setTextLabel:v39];
    v41 = [MEMORY[0x277D755D0] configurationWithTextStyle:*v7 scale:2];
    v42 = [MEMORY[0x277D75520] defaultMetrics];
    [v42 scaledValueForValue:16.0];
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
      v46 = [v30 contentView];
      [v46 addSubview:v45];
    }

    [(CACBannerView *)v3 setAccessoryImageView:v45];
    v47 = [v39 leadingAnchor];
    [(CACBannerView *)v3 accessoryImageView];
    v49 = v48 = v39;
    v50 = [v49 trailingAnchor];
    [v47 constraintEqualToSystemSpacingAfterAnchor:v50 multiplier:1.0];
    v51 = v127 = v45;
    [(CACBannerView *)v3 setImageToTextConstraint:v51];

    v52 = [(CACBannerView *)v3 imageToTextConstraint];
    LODWORD(v53) = 1144750080;
    [v52 setPriority:v53];

    v54 = [v48 leadingAnchor];
    v55 = [v30 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:12.0];
    [(CACBannerView *)v3 setContainerToTextConstraint:v56];

    v57 = [(CACBannerView *)v3 containerToTextConstraint];
    LODWORD(v58) = 1132068864;
    [v57 setPriority:v58];

    v101 = MEMORY[0x277CCAAD0];
    v126 = [v16 topAnchor];
    v125 = [(CACBannerView *)v3 topAnchor];
    v124 = [v126 constraintEqualToAnchor:v125];
    v131[0] = v124;
    v123 = [v16 bottomAnchor];
    v122 = [(CACBannerView *)v3 bottomAnchor];
    v121 = [v123 constraintEqualToAnchor:v122];
    v131[1] = v121;
    v120 = [v16 centerXAnchor];
    v119 = [(CACBannerView *)v3 centerXAnchor];
    v118 = [v120 constraintEqualToAnchor:v119];
    v131[2] = v118;
    v117 = [v16 widthAnchor];
    v116 = [v117 constraintGreaterThanOrEqualToConstant:24.0];
    v131[3] = v116;
    v115 = [v16 widthAnchor];
    v114 = [v26 widthAnchor];
    v113 = [v115 constraintEqualToAnchor:v114];
    v131[4] = v113;
    v112 = [v16 heightAnchor];
    v111 = [v26 heightAnchor];
    v110 = [v112 constraintEqualToAnchor:v111];
    v131[5] = v110;
    v109 = [v26 widthAnchor];
    v108 = [(CACBannerView *)v3 widthAnchor];
    v107 = [v109 constraintLessThanOrEqualToAnchor:v108];
    v131[6] = v107;
    v106 = [v26 topAnchor];
    v105 = [v16 topAnchor];
    v104 = [v106 constraintEqualToAnchor:v105];
    v131[7] = v104;
    v103 = [v26 leadingAnchor];
    v102 = [v16 leadingAnchor];
    v100 = [v103 constraintEqualToAnchor:v102];
    v131[8] = v100;
    v99 = [v26 trailingAnchor];
    v98 = [v48 trailingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98 constant:12.0];
    v131[9] = v97;
    v96 = [v30 topAnchor];
    v95 = [v26 topAnchor];
    v92 = [v96 constraintEqualToAnchor:v95];
    v131[10] = v92;
    v90 = [v30 leadingAnchor];
    v88 = [v26 leadingAnchor];
    v87 = [v90 constraintEqualToAnchor:v88];
    v131[11] = v87;
    v86 = [v30 bottomAnchor];
    v85 = [v26 bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v131[12] = v84;
    v83 = [v30 trailingAnchor];
    v82 = [v26 trailingAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v131[13] = v81;
    v80 = [(CACBannerView *)v3 accessoryImageView];
    v79 = [v80 centerYAnchor];
    v78 = [v48 centerYAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v131[14] = v77;
    v76 = [(CACBannerView *)v3 accessoryImageView];
    v75 = [v76 leadingAnchor];
    v74 = [v30 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74 constant:12.0];
    v131[15] = v73;
    v72 = [(CACBannerView *)v3 accessoryImageView];
    v71 = [v72 widthAnchor];
    [v71 constraintEqualToConstant:v44];
    v60 = v59 = v30;
    v131[16] = v60;
    v91 = v48;
    v61 = [v48 topAnchor];
    v94 = v59;
    v62 = [v59 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:12.0];
    v131[17] = v63;
    v64 = [v59 bottomAnchor];
    [v48 bottomAnchor];
    v65 = v93 = v16;
    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CACBannerView *)self baseView];
  v9 = [v8 hitTest:v7 withEvent:{x, y}];

  return v9;
}

- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(CACBannerView *)self baseView];
  v8 = [v7 hitTest:a4 forEvent:{x, y}];

  return v8;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(CACBannerView *)self textLabel];
  [v5 setText:v4];
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(CACBannerView *)self textLabel];
  [v5 setAttributedText:v4];
}

- (void)setSymbolImage:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_symbolImage != v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    objc_storeStrong(&self->_symbolImage, a3);
    v7 = [(CACBannerView *)v6 symbolImage];
    if (v7)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = [(CACBannerView *)v6 symbolImage];
      v10 = [v8 _systemImageNamed:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CACBannerView *)v6 accessoryImageView];
    [v11 setImage:v10];

    v12 = [(CACBannerView *)v6 accessoryImageView];
    v13 = [v12 image];

    v14 = MEMORY[0x277CCAAD0];
    if (v13)
    {
      v15 = [(CACBannerView *)v6 containerToTextConstraint];
      v24 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [v14 deactivateConstraints:v16];

      v17 = MEMORY[0x277CCAAD0];
      v18 = [(CACBannerView *)v6 imageToTextConstraint];
      v23 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [v17 activateConstraints:v19];
    }

    else
    {
      v20 = [(CACBannerView *)v6 imageToTextConstraint];
      v26[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [v14 deactivateConstraints:v21];

      v22 = MEMORY[0x277CCAAD0];
      v18 = [(CACBannerView *)v6 containerToTextConstraint];
      v25 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [v22 activateConstraints:v19];
    }

    objc_sync_exit(v6);
  }
}

- (NSString)text
{
  v2 = [(CACBannerView *)self textLabel];
  v3 = [v2 text];

  return v3;
}

@end