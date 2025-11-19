@interface PRComplicationEmptyStateView
- (PRComplicationEmptyStateView)initWithFrame:(CGRect)a3;
@end

@implementation PRComplicationEmptyStateView

- (PRComplicationEmptyStateView)initWithFrame:(CGRect)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PRComplicationEmptyStateView;
  v3 = [(PRComplicationEmptyStateView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB980]];
    v35 = [MEMORY[0x1E69DCAD8] configurationWithFont:v30];
    v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v35];
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    v34 = [v5 imageWithTintColor:v6];

    v33 = v4;
    [v4 setImage:v34];
    v31 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v4];
    v7 = PRBundle();
    v8 = [v7 localizedStringForKey:@"EDIT_COMPLICATIONS_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
    v32 = [v8 localizedUppercaseString];

    v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v32];
    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@"];
    v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithFormat:v28 options:0 locale:0, v31, v29];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setFont:v30];
    [v9 setTextAlignment:1];
    [v9 setAdjustsFontSizeToFitWidth:1];
    [v9 setAttributedText:v27];
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [v9 setTextColor:v10];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAdjustsFontForContentSizeCategory:1];
    [v9 setNumberOfLines:0];
    [(PRComplicationEmptyStateView *)v3 addSubview:v9];
    v21 = MEMORY[0x1E696ACD8];
    v26 = [v9 leadingAnchor];
    v25 = [(PRComplicationEmptyStateView *)v3 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v37[0] = v24;
    v23 = [v9 trailingAnchor];
    v22 = [(PRComplicationEmptyStateView *)v3 trailingAnchor];
    v11 = [v23 constraintEqualToAnchor:v22];
    v37[1] = v11;
    v12 = [v9 topAnchor];
    v13 = [(PRComplicationEmptyStateView *)v3 topAnchor];
    [v12 constraintEqualToAnchor:v13];
    v15 = v14 = v3;
    v37[2] = v15;
    v16 = [v9 bottomAnchor];
    v17 = [(PRComplicationEmptyStateView *)v14 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v37[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v21 activateConstraints:v19];

    v3 = v14;
    [(PRComplicationEmptyStateView *)v14 setUserInteractionEnabled:0];
  }

  return v3;
}

@end