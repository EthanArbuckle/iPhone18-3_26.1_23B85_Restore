@interface PRWidgetEducationView
- (PRWidgetEducationView)initWithFrame:(CGRect)frame;
- (PRWidgetEducationViewDelegate)delegate;
@end

@implementation PRWidgetEducationView

- (PRWidgetEducationView)initWithFrame:(CGRect)frame
{
  v64[4] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = PRWidgetEducationView;
  val = [(PRWidgetEducationView *)&v62 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (val)
  {
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    [(PRWidgetEducationView *)val setBackgroundColor:systemGray5Color];

    v53 = objc_alloc_init(_PRWidgetEducationHeaderView);
    v56 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v56 setFont:v4];

    [v56 setAdjustsFontForContentSizeCategory:1];
    [v56 setTextAlignment:1];
    [v56 setNumberOfLines:0];
    v5 = PRBundle();
    v6 = [v5 localizedStringForKey:@"WIDGET_EDUCATION_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v56 setText:v6];

    v57 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v57 setFont:v7];

    [v57 setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v57 setTextColor:secondaryLabelColor];

    [v57 setTextAlignment:1];
    [v57 setNumberOfLines:0];
    v9 = PRBundle();
    v10 = [v9 localizedStringForKey:@"WIDGET_EDUCATION_BODY" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v57 setText:v10];

    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setButtonSize:3];
    v11 = PRBundle();
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_1F1C13D90 table:@"PosterKit"];
    [filledButtonConfiguration setTitle:v12];

    v55 = objc_alloc_init(MEMORY[0x1E69DC738]);
    [v55 setConfiguration:filledButtonConfiguration];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v55 setTintColor:systemBlueColor];

    objc_initWeak(&location, val);
    v14 = MEMORY[0x1E69DC628];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __39__PRWidgetEducationView_initWithFrame___block_invoke;
    v59[3] = &unk_1E7843448;
    objc_copyWeak(&v60, &location);
    v28 = [v14 actionWithHandler:v59];
    [v55 addAction:? forControlEvents:?];
    v15 = objc_alloc(MEMORY[0x1E69DCF90]);
    v64[0] = v53;
    v64[1] = v56;
    v64[2] = v57;
    v64[3] = v55;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    v17 = [v15 initWithArrangedSubviews:v16];

    [v17 setSpacing:12.0];
    [v17 setCustomSpacing:v53 afterView:20.0];
    [v17 setCustomSpacing:v57 afterView:24.0];
    [v17 setAxis:1];
    [v17 setAlignment:3];
    [v17 setLayoutMarginsRelativeArrangement:1];
    [v17 setLayoutMargins:{24.0, 24.0, 24.0, 24.0}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRWidgetEducationView *)val addSubview:v18];
    [v18 addSubview:v17];
    objc_storeStrong(&val->_contentView, v17);
    v29 = MEMORY[0x1E696ACD8];
    widthAnchor = [v55 widthAnchor];
    widthAnchor2 = [(PRWidgetEducationView *)val widthAnchor];
    v50 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.6];
    v63[0] = v50;
    leadingAnchor = [v17 leadingAnchor];
    leadingAnchor2 = [v18 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v63[1] = v47;
    trailingAnchor = [v17 trailingAnchor];
    trailingAnchor2 = [v18 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v63[2] = v44;
    topAnchor = [v17 topAnchor];
    topAnchor2 = [v18 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v63[3] = v41;
    bottomAnchor = [v17 bottomAnchor];
    bottomAnchor2 = [v18 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v63[4] = v38;
    widthAnchor3 = [v17 widthAnchor];
    widthAnchor4 = [v18 widthAnchor];
    v35 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v63[5] = v35;
    leadingAnchor3 = [v18 leadingAnchor];
    leadingAnchor4 = [(PRWidgetEducationView *)val leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v63[6] = v32;
    trailingAnchor3 = [v18 trailingAnchor];
    trailingAnchor4 = [(PRWidgetEducationView *)val trailingAnchor];
    v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v63[7] = v19;
    bottomAnchor3 = [v18 bottomAnchor];
    bottomAnchor4 = [(PRWidgetEducationView *)val bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v63[8] = v22;
    topAnchor3 = [v18 topAnchor];
    topAnchor4 = [(PRWidgetEducationView *)val topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v63[9] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:10];
    [v29 activateConstraints:v26];

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return val;
}

void __39__PRWidgetEducationView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 widgetEducationViewDidDismiss:WeakRetained];
}

- (PRWidgetEducationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end