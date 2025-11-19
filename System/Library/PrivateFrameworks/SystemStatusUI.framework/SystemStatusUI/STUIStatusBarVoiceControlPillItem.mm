@interface STUIStatusBarVoiceControlPillItem
- (CGSize)pillSize;
- (STUIStatusBarPillView)pillView;
- (double)imageOpacityForVoiceControlType:(int64_t)a3;
- (id)_backgroundColorForVoiceControlType:(int64_t)a3 styleAttributes:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (void)_create_pillView;
@end

@implementation STUIStatusBarVoiceControlPillItem

- (STUIStatusBarPillView)pillView
{
  pillView = self->_pillView;
  if (!pillView)
  {
    [(STUIStatusBarVoiceControlPillItem *)self _create_pillView];
    pillView = self->_pillView;
  }

  return pillView;
}

- (void)_create_pillView
{
  v3 = [STUIStatusBarPillView alloc];
  self->_pillView = [(STUIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (CGSize)pillSize
{
  width = self->_pillSize.width;
  height = self->_pillSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = STUIStatusBarVoiceControlPillItem;
  v21 = [(STUIStatusBarItem *)&v29 createDisplayItemForIdentifier:a3];
  [(STUIStatusBarVoiceControlPillItem *)self pillSize];
  v5 = v4;
  v7 = v6;
  v8 = [(STUIStatusBarVoiceControlPillItem *)self pillView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(STUIStatusBarIndicatorItem *)self imageView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setFontStyle:0];
  [v8 addSubview:v9];
  [v8 setSubviewForBaselineAlignment:v9];
  v28 = [v9 centerXAnchor];
  v27 = [v8 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v30[0] = v26;
  v25 = [v9 centerYAnchor];
  v24 = [v8 centerYAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v30[1] = v23;
  v22 = [v9 widthAnchor];
  [(STUIStatusBarVoiceControlPillItem *)self pillPadding];
  v11 = [v22 constraintEqualToConstant:v5 - v10];
  v30[2] = v11;
  v12 = [v9 heightAnchor];
  [(STUIStatusBarVoiceControlPillItem *)self pillPadding];
  v14 = [v12 constraintEqualToConstant:v7 - v13];
  v30[3] = v14;
  v15 = [v8 widthAnchor];
  v16 = [v15 constraintEqualToConstant:v5];
  v30[4] = v16;
  v17 = [v8 heightAnchor];
  v18 = [v17 constraintEqualToConstant:v7];
  v30[5] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];

  [MEMORY[0x277CCAAD0] activateConstraints:v19];

  return v21;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = STUIStatusBarVoiceControlPillItem;
  v7 = [(STUIStatusBarVoiceControlItem *)&v15 applyUpdate:v6 toDisplayItem:a4];
  v8 = [v6 data];
  v9 = [v8 voiceControlEntry];

  if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
  {
    v10 = [v9 type];
    v11 = [(STUIStatusBarVoiceControlPillItem *)self pillView];
    v12 = [v6 styleAttributes];
    v13 = [(STUIStatusBarVoiceControlPillItem *)self _backgroundColorForVoiceControlType:v10 styleAttributes:v12];
    [v11 setPillColor:v13];

    [v11 setPulsing:{-[STUIStatusBarVoiceControlPillItem _pulsingForVoiceControlType:](self, "_pulsingForVoiceControlType:", v10)}];
  }

  return v7;
}

- (double)imageOpacityForVoiceControlType:(int64_t)a3
{
  if (!a3)
  {
    return 0.75;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarVoiceControlPillItem;
  [(STUIStatusBarVoiceControlItem *)&v4 imageOpacityForVoiceControlType:?];
  return result;
}

- (id)_backgroundColorForVoiceControlType:(int64_t)a3 styleAttributes:(id)a4
{
  v6 = a4;
  v7 = v6;
  switch(a3)
  {
    case 2:
      v9 = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_7;
    case 1:
      v9 = [MEMORY[0x277D75348] systemBlueColor];
LABEL_7:
      v4 = v9;
      break;
    case 0:
      v8 = [v6 imageTintColor];
      v4 = [v8 colorWithAlphaComponent:0.12];

      break;
  }

  return v4;
}

@end