@interface PRComplicationEmptyStateView
- (PRComplicationEmptyStateView)initWithFrame:(CGRect)frame;
@end

@implementation PRComplicationEmptyStateView

- (PRComplicationEmptyStateView)initWithFrame:(CGRect)frame
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PRComplicationEmptyStateView;
  v3 = [(PRComplicationEmptyStateView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB980]];
    v35 = [MEMORY[0x1E69DCAD8] configurationWithFont:v30];
    v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v35];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v34 = [v5 imageWithTintColor:whiteColor];

    v33 = v4;
    [v4 setImage:v34];
    v31 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v4];
    v7 = PRBundle();
    v8 = [v7 localizedStringForKey:@"EDIT_COMPLICATIONS_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
    localizedUppercaseString = [v8 localizedUppercaseString];

    v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:localizedUppercaseString];
    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@"];
    v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithFormat:v28 options:0 locale:0, v31, v29];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setFont:v30];
    [v9 setTextAlignment:1];
    [v9 setAdjustsFontSizeToFitWidth:1];
    [v9 setAttributedText:v27];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [v9 setTextColor:whiteColor2];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAdjustsFontForContentSizeCategory:1];
    [v9 setNumberOfLines:0];
    [(PRComplicationEmptyStateView *)v3 addSubview:v9];
    v21 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [(PRComplicationEmptyStateView *)v3 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v24;
    trailingAnchor = [v9 trailingAnchor];
    trailingAnchor2 = [(PRComplicationEmptyStateView *)v3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[1] = v11;
    topAnchor = [v9 topAnchor];
    topAnchor2 = [(PRComplicationEmptyStateView *)v3 topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2];
    v15 = v14 = v3;
    v37[2] = v15;
    bottomAnchor = [v9 bottomAnchor];
    bottomAnchor2 = [(PRComplicationEmptyStateView *)v14 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v21 activateConstraints:v19];

    v3 = v14;
    [(PRComplicationEmptyStateView *)v14 setUserInteractionEnabled:0];
  }

  return v3;
}

@end