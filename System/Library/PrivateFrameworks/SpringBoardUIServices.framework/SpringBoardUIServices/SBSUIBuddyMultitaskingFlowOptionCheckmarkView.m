@interface SBSUIBuddyMultitaskingFlowOptionCheckmarkView
- (SBSUIBuddyMultitaskingFlowOptionCheckmarkView)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SBSUIBuddyMultitaskingFlowOptionCheckmarkView

- (SBSUIBuddyMultitaskingFlowOptionCheckmarkView)initWithFrame:(CGRect)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = SBSUIBuddyMultitaskingFlowOptionCheckmarkView;
  v3 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v21 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v54[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v23 = [v20 configurationWithPaletteColors:v22];
    v24 = [v19 systemImageNamed:@"circle" withConfiguration:v23];
    [(UIImageView *)v18 setImage:v24];

    [(UIImageView *)v3->_circleImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = v3->_circleImageView;
    v26 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v14 scale:3];
    [(UIImageView *)v25 setPreferredSymbolConfiguration:v26];

    [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 addSubview:v3->_circleImageView];
    v27 = [MEMORY[0x1E695DF70] array];
    v28 = [(UIImageView *)v3->_checkmarkImageView leadingAnchor];
    v29 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v27 addObject:v30];

    v31 = [(UIImageView *)v3->_checkmarkImageView trailingAnchor];
    v32 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v27 addObject:v33];

    v34 = [(UIImageView *)v3->_checkmarkImageView topAnchor];
    v35 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v27 addObject:v36];

    v37 = [(UIImageView *)v3->_checkmarkImageView bottomAnchor];
    v38 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v27 addObject:v39];

    v40 = [(UIImageView *)v3->_circleImageView leadingAnchor];
    v41 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v27 addObject:v42];

    v43 = [(UIImageView *)v3->_circleImageView trailingAnchor];
    v44 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v27 addObject:v45];

    v46 = [(UIImageView *)v3->_circleImageView topAnchor];
    v47 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v27 addObject:v48];

    v49 = [(UIImageView *)v3->_circleImageView bottomAnchor];
    v50 = [(SBSUIBuddyMultitaskingFlowOptionCheckmarkView *)v3 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v27 addObject:v51];

    [MEMORY[0x1E696ACD8] activateConstraints:v27];
  }

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    checkmarkImageView = self->_checkmarkImageView;
    if (a3)
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