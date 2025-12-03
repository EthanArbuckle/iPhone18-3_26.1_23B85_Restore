@interface VUIDebugCollectionViewDefaultsCell
- (VUIDebugCollectionViewDefaultsCell)initWithFrame:(CGRect)frame;
- (void)configureCellWithDefaults:(id)defaults;
- (void)layoutSubviews;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation VUIDebugCollectionViewDefaultsCell

- (VUIDebugCollectionViewDefaultsCell)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = VUIDebugCollectionViewDefaultsCell;
  v3 = [(VUIDebugCollectionViewDefaultsCell *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setNumberOfLines:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v4 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v4 setTextStyle:3];
    [(VUITextLayout *)v4 setMaximumContentSizeCategory:3];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v4 setColor:blackColor];

    titleLayout = v3->_titleLayout;
    v3->_titleLayout = v4;
    v7 = v4;

    v8 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v7 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    contentView = [(VUIDebugCollectionViewDefaultsCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    v11 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v11 setNumberOfLines:1];
    [(VUITextLayout *)v11 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v11 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v11 setTextStyle:13];
    [(VUITextLayout *)v11 setMaximumContentSizeCategory:3];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v11 setColor:blackColor2];

    subtitleLayout = v3->_subtitleLayout;
    v3->_subtitleLayout = v11;
    v14 = v11;

    v15 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v14 existingLabel:0];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v15;

    contentView2 = [(VUIDebugCollectionViewDefaultsCell *)v3 contentView];
    [contentView2 addSubview:v3->_subtitleLabel];

    v18 = objc_alloc(MEMORY[0x1E69DCFD0]);
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x1E695F058], v20, v21, v22}];
    defaultsSwitch = v3->_defaultsSwitch;
    v3->_defaultsSwitch = v23;

    [(UISwitch *)v3->_defaultsSwitch sendActionsForControlEvents:64];
    [(UISwitch *)v3->_defaultsSwitch addTarget:v3 action:sel__defaultsSwitchPressed_ forControlEvents:64];
    contentView3 = [(VUIDebugCollectionViewDefaultsCell *)v3 contentView];
    [contentView3 addSubview:v3->_defaultsSwitch];

    v26 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v19, v20, v21, v22}];
    textField = v3->_textField;
    v3->_textField = v26;

    [(UITextField *)v3->_textField setKeyboardType:2];
    [(UITextField *)v3->_textField setReturnKeyType:1];
    [(UITextField *)v3->_textField setEnablesReturnKeyAutomatically:1];
    [(UITextField *)v3->_textField setClearsOnBeginEditing:1];
    [(UITextField *)v3->_textField setAdjustsFontSizeToFitWidth:1];
    [(UITextField *)v3->_textField setBorderStyle:3];
    [(UITextField *)v3->_textField setDelegate:v3];
    contentView4 = [(VUIDebugCollectionViewDefaultsCell *)v3 contentView];
    [contentView4 addSubview:v3->_textField];

    contentView5 = [(VUIDebugCollectionViewDefaultsCell *)v3 contentView];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [contentView5 setBackgroundColor:whiteColor];

    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:systemLightGrayColor];

    v32 = objc_alloc_init(VUISeparatorView);
    separatorView = v3->_separatorView;
    v3->_separatorView = v32;

    [(VUIDebugCollectionViewDefaultsCell *)v3 addSubview:v3->_separatorView];
  }

  return v3;
}

- (void)configureCellWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  title = [(VUIDebugViewDefaults *)defaultsCopy title];
  titleLayout = [(VUIDebugCollectionViewDefaultsCell *)self titleLayout];
  titleLabel = [(VUIDebugCollectionViewDefaultsCell *)self titleLabel];
  v8 = [VUILabel labelWithString:title textLayout:titleLayout existingLabel:titleLabel];

  subtitleLabel = [(VUIDebugCollectionViewDefaultsCell *)self subtitleLabel];
  subtitle = [(VUIDebugViewDefaults *)defaultsCopy subtitle];
  [subtitleLabel setHidden:{objc_msgSend(subtitle, "length") == 0}];

  subtitle2 = [(VUIDebugViewDefaults *)defaultsCopy subtitle];
  v12 = [subtitle2 length];

  if (v12)
  {
    subtitle3 = [(VUIDebugViewDefaults *)defaultsCopy subtitle];
    subtitleLayout = [(VUIDebugCollectionViewDefaultsCell *)self subtitleLayout];
    subtitleLabel2 = [(VUIDebugCollectionViewDefaultsCell *)self subtitleLabel];
    v16 = [VUILabel labelWithString:subtitle3 textLayout:subtitleLayout existingLabel:subtitleLabel2];
  }

  if ([(VUIDebugViewDefaults *)defaultsCopy integerValueType])
  {
    textField = self->_textField;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[VUIDebugViewDefaults defaultIntegerValue](defaultsCopy, "defaultIntegerValue")];
    [(UITextField *)textField setText:v18];
  }

  else
  {
    [(UISwitch *)self->_defaultsSwitch setOn:[(VUIDebugViewDefaults *)defaultsCopy defaultBoolValue] animated:0];
  }

  defaults = self->_defaults;
  self->_defaults = defaultsCopy;
}

- (void)layoutSubviews
{
  [(VUIDebugCollectionViewDefaultsCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v12 = v11;
  v14 = v13;
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  Width = CGRectGetWidth(v53);
  v16 = MEMORY[0x1E695F058];
  v48 = v14;
  v17 = Width - v12 - v14;
  v18 = *(MEMORY[0x1E695F058] + 8);
  v54.origin.x = v4;
  v54.origin.y = v6;
  v54.size.width = v8;
  v54.size.height = v10;
  v45 = v17;
  [(VUILabel *)self->_titleLabel sizeThatFits:v17, CGRectGetHeight(v54)];
  v20 = v19;
  v22 = v21;
  v49 = v4;
  v50 = v10;
  v55.origin.x = v4;
  v51 = v8;
  v55.origin.y = v6;
  v55.size.width = v8;
  v55.size.height = v10;
  Height = CGRectGetHeight(v55);
  v56.origin.x = v12;
  v56.origin.y = v18;
  v56.size.width = v20;
  v56.size.height = v22;
  v24 = (Height - CGRectGetHeight(v56)) * 0.5;
  [(VUILabel *)self->_titleLabel setFrame:v12, v24, v20, v22];
  if (([(VUILabel *)self->_subtitleLabel isHidden]& 1) == 0)
  {
    v57.origin.x = v4;
    v57.origin.y = v6;
    v57.size.width = v8;
    v57.size.height = v50;
    [(VUILabel *)self->_subtitleLabel sizeThatFits:v45, CGRectGetHeight(v57)];
    v44 = v26;
    v46 = v25;
    v58.origin.x = v4;
    v58.origin.y = v6;
    v58.size.width = v8;
    v58.size.height = v50;
    v27 = CGRectGetHeight(v58);
    v59.origin.x = v12;
    v59.origin.y = v24;
    v59.size.width = v20;
    v59.size.height = v22;
    v28 = CGRectGetHeight(v59);
    v60.origin.x = v12;
    v60.origin.y = v18;
    v60.size.width = v46;
    v60.size.height = v44;
    v29 = (v27 - (v28 + CGRectGetHeight(v60))) * 0.5;
    [(VUILabel *)self->_titleLabel setFrame:v12, v29, v20, v22];
    v61.origin.x = v12;
    v61.origin.y = v29;
    v61.size.width = v20;
    v61.size.height = v22;
    [(VUILabel *)self->_subtitleLabel setFrame:v12, v29 + CGRectGetHeight(v61), v46, v44];
  }

  v30 = *v16;
  [(UISwitch *)self->_defaultsSwitch sizeToFit];
  [(UISwitch *)self->_defaultsSwitch bounds];
  v32 = v31;
  v34 = v33;
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v51;
  v62.size.height = v50;
  v35 = CGRectGetHeight(v62);
  v63.origin.x = v30;
  v47 = v30;
  v63.origin.y = v18;
  v63.size.width = v32;
  v63.size.height = v34;
  v36 = (v35 - CGRectGetHeight(v63)) * 0.5;
  v64.origin.x = v4;
  v64.origin.y = v6;
  v64.size.width = v51;
  v64.size.height = v50;
  v37 = CGRectGetWidth(v64) - v48;
  v65.origin.x = v30;
  v65.origin.y = v36;
  v65.size.width = v32;
  v65.size.height = v34;
  [(UISwitch *)self->_defaultsSwitch setFrame:v37 - CGRectGetWidth(v65), v36, v32, v34];
  v66.origin.x = v49;
  v66.origin.y = v6;
  v66.size.width = v51;
  v66.size.height = v50;
  v38 = CGRectGetWidth(v66) - v48;
  v67.origin.x = v47;
  v67.origin.y = v18;
  v67.size.width = v32;
  v67.size.height = v34;
  v39 = v38 - CGRectGetWidth(v67);
  v68.origin.x = v49;
  v68.origin.y = v6;
  v68.size.width = v51;
  v68.size.height = v50;
  v40 = CGRectGetHeight(v68);
  v69.origin.x = v39;
  v69.origin.y = v18;
  v69.size.width = v32;
  v69.size.height = v34;
  [(UITextField *)self->_textField setFrame:v39, (v40 - CGRectGetHeight(v69)) * 0.5, v32, v34];
  [(UISwitch *)self->_defaultsSwitch setHidden:[(VUIDebugViewDefaults *)self->_defaults integerValueType]];
  [(UITextField *)self->_textField setHidden:[(VUIDebugViewDefaults *)self->_defaults integerValueType]^ 1];
  separatorView = self->_separatorView;
  [(VUIDebugCollectionViewDefaultsCell *)self bounds];
  v42 = CGRectGetHeight(v70) + -1.0;
  v71.origin.x = v49;
  v71.origin.y = v6;
  v71.size.width = v51;
  v71.size.height = v50;
  v43 = CGRectGetWidth(v71);

  [(VUISeparatorView *)separatorView setFrame:0.0, v42, v43, 1.0];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  if (objc_opt_respondsToSelector())
  {
    -[VUIDebugViewDefaults setDefaultIntegerValue:](self->_defaults, "setDefaultIntegerValue:", [text integerValue]);
  }
}

@end