@interface STUIStatusBarVoiceControlPillItem
- (CGSize)pillSize;
- (STUIStatusBarPillView)pillView;
- (double)imageOpacityForVoiceControlType:(int64_t)type;
- (id)_backgroundColorForVoiceControlType:(int64_t)type styleAttributes:(id)attributes;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
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

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = STUIStatusBarVoiceControlPillItem;
  v21 = [(STUIStatusBarItem *)&v29 createDisplayItemForIdentifier:identifier];
  [(STUIStatusBarVoiceControlPillItem *)self pillSize];
  v5 = v4;
  v7 = v6;
  pillView = [(STUIStatusBarVoiceControlPillItem *)self pillView];
  [pillView setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView = [(STUIStatusBarIndicatorItem *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [imageView setFontStyle:0];
  [pillView addSubview:imageView];
  [pillView setSubviewForBaselineAlignment:imageView];
  centerXAnchor = [imageView centerXAnchor];
  centerXAnchor2 = [pillView centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[0] = v26;
  centerYAnchor = [imageView centerYAnchor];
  centerYAnchor2 = [pillView centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[1] = v23;
  widthAnchor = [imageView widthAnchor];
  [(STUIStatusBarVoiceControlPillItem *)self pillPadding];
  v11 = [widthAnchor constraintEqualToConstant:v5 - v10];
  v30[2] = v11;
  heightAnchor = [imageView heightAnchor];
  [(STUIStatusBarVoiceControlPillItem *)self pillPadding];
  v14 = [heightAnchor constraintEqualToConstant:v7 - v13];
  v30[3] = v14;
  widthAnchor2 = [pillView widthAnchor];
  v16 = [widthAnchor2 constraintEqualToConstant:v5];
  v30[4] = v16;
  heightAnchor2 = [pillView heightAnchor];
  v18 = [heightAnchor2 constraintEqualToConstant:v7];
  v30[5] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];

  [MEMORY[0x277CCAAD0] activateConstraints:v19];

  return v21;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  v15.receiver = self;
  v15.super_class = STUIStatusBarVoiceControlPillItem;
  v7 = [(STUIStatusBarVoiceControlItem *)&v15 applyUpdate:updateCopy toDisplayItem:item];
  data = [updateCopy data];
  voiceControlEntry = [data voiceControlEntry];

  if (([updateCopy dataChanged] & 1) != 0 || objc_msgSend(updateCopy, "styleAttributesChanged"))
  {
    type = [voiceControlEntry type];
    pillView = [(STUIStatusBarVoiceControlPillItem *)self pillView];
    styleAttributes = [updateCopy styleAttributes];
    v13 = [(STUIStatusBarVoiceControlPillItem *)self _backgroundColorForVoiceControlType:type styleAttributes:styleAttributes];
    [pillView setPillColor:v13];

    [pillView setPulsing:{-[STUIStatusBarVoiceControlPillItem _pulsingForVoiceControlType:](self, "_pulsingForVoiceControlType:", type)}];
  }

  return v7;
}

- (double)imageOpacityForVoiceControlType:(int64_t)type
{
  if (!type)
  {
    return 0.75;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarVoiceControlPillItem;
  [(STUIStatusBarVoiceControlItem *)&v4 imageOpacityForVoiceControlType:?];
  return result;
}

- (id)_backgroundColorForVoiceControlType:(int64_t)type styleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  switch(type)
  {
    case 2:
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_7;
    case 1:
      systemRedColor = [MEMORY[0x277D75348] systemBlueColor];
LABEL_7:
      v4 = systemRedColor;
      break;
    case 0:
      imageTintColor = [attributesCopy imageTintColor];
      v4 = [imageTintColor colorWithAlphaComponent:0.12];

      break;
  }

  return v4;
}

@end