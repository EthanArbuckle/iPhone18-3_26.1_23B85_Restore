@interface SBSUIBuddyMultitaskingFlowOptionCheckmarkView
- (SBSUIBuddyMultitaskingFlowOptionCheckmarkView)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation SBSUIBuddyMultitaskingFlowOptionCheckmarkView

- (SBSUIBuddyMultitaskingFlowOptionCheckmarkView)initWithFrame:(CGRect)frame
{
  v54[1] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = SBSUIBuddyMultitaskingFlowOptionCheckmarkView;
  v3 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    checkmarkImageView = v3->_checkmarkImageView;
    v3->_checkmarkImageView = v9;

    v11 = v3->_checkmarkImageView;
    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)v11 setImage:v12];

    [(UIImageView *)v3->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_checkmarkImageView setAlpha:0.0];
    v13 = v3->_checkmarkImageView;
    v14 = *MEMORY[0x1E69DDCF8];
    v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    [(UIImageView *)v13 setPreferredSymbolConfiguration:v15];

    [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 addSubview:v3->_checkmarkImageView];
    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    circleImageView = v3->_circleImageView;
    v3->_circleImageView = v16;

    v18 = v3->_circleImageView;
    v19 = MEMORY[0x1E69DCAB8];
    v20 = MEMORY[0x1E69DCAD8];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v54[0] = tertiaryLabelColor;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v23 = [v20 configurationWithPaletteColors:v22];
    v24 = [v19 systemImageNamed:@"circle" withConfiguration:v23];
    [(UIImageView *)v18 setImage:v24];

    [(UIImageView *)v3->_circleImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = v3->_circleImageView;
    v26 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v14 scale:3];
    [(UIImageView *)v25 setPreferredSymbolConfiguration:v26];

    [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 addSubview:v3->_circleImageView];
    array = [MEMORY[0x1E695DF70] array];
    leadingAnchor = [(UIImageView *)v3->_checkmarkImageView leadingAnchor];
    leadingAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v30];

    trailingAnchor = [(UIImageView *)v3->_checkmarkImageView trailingAnchor];
    trailingAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v33];

    topAnchor = [(UIImageView *)v3->_checkmarkImageView topAnchor];
    topAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v36];

    bottomAnchor = [(UIImageView *)v3->_checkmarkImageView bottomAnchor];
    bottomAnchor2 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v39];

    leadingAnchor3 = [(UIImageView *)v3->_circleImageView leadingAnchor];
    leadingAnchor4 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 leadingAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v42];

    trailingAnchor3 = [(UIImageView *)v3->_circleImageView trailingAnchor];
    trailingAnchor4 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v45];

    topAnchor3 = [(UIImageView *)v3->_circleImageView topAnchor];
    topAnchor4 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 topAnchor];
    v48 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v48];

    bottomAnchor3 = [(UIImageView *)v3->_circleImageView bottomAnchor];
    bottomAnchor4 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 bottomAnchor];
    v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v51];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    checkmarkImageView = self->_checkmarkImageView;
    if (selected)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    [(UIImageView *)checkmarkImageView setAlpha:v5];
    circleImageView = self->_circleImageView;
    if (self->_selected)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    [(UIImageView *)circleImageView setAlpha:v7];
  }
}

@end