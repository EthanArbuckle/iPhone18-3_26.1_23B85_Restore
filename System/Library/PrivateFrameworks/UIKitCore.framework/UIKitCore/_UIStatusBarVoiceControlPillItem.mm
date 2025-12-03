@interface _UIStatusBarVoiceControlPillItem
- (CGSize)pillSize;
- (_UIStatusBarPillView)pillView;
- (double)imageOpacityForVoiceControlType:(int64_t)type;
- (id)_backgroundColorForVoiceControlType:(int64_t)type styleAttributes:(id)attributes;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (void)_create_pillView;
@end

@implementation _UIStatusBarVoiceControlPillItem

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _UIStatusBarVoiceControlPillItem;
  v19 = [(_UIStatusBarItem *)&v23 createDisplayItemForIdentifier:identifier];
  [(_UIStatusBarVoiceControlPillItem *)self pillSize];
  v5 = v4;
  v7 = v6;
  pillView = [(_UIStatusBarVoiceControlPillItem *)self pillView];
  [pillView setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView = [(_UIStatusBarIndicatorItem *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [imageView setFontStyle:0];
  [pillView addSubview:imageView];
  [pillView setSubviewForBaselineAlignment:imageView];
  centerXAnchor = [imageView centerXAnchor];
  centerXAnchor2 = [pillView centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v24[0] = v20;
  centerYAnchor = [imageView centerYAnchor];
  centerYAnchor2 = [pillView centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[1] = v12;
  widthAnchor = [pillView widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:v5];
  v24[2] = v14;
  heightAnchor = [pillView heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:v7];
  v24[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v17];

  return v19;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  v15.receiver = self;
  v15.super_class = _UIStatusBarVoiceControlPillItem;
  v7 = [(_UIStatusBarVoiceControlItem *)&v15 applyUpdate:updateCopy toDisplayItem:item];
  data = [updateCopy data];
  voiceControlEntry = [data voiceControlEntry];

  if (([updateCopy dataChanged] & 1) != 0 || objc_msgSend(updateCopy, "styleAttributesChanged"))
  {
    type = [voiceControlEntry type];
    pillView = [(_UIStatusBarVoiceControlPillItem *)self pillView];
    styleAttributes = [updateCopy styleAttributes];
    v13 = [(_UIStatusBarVoiceControlPillItem *)self _backgroundColorForVoiceControlType:type styleAttributes:styleAttributes];
    [pillView setPillColor:v13];

    [pillView setPulsing:{-[_UIStatusBarVoiceControlPillItem _pulsingForVoiceControlType:](self, "_pulsingForVoiceControlType:", type)}];
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
  v4.super_class = _UIStatusBarVoiceControlPillItem;
  [(_UIStatusBarVoiceControlItem *)&v4 imageOpacityForVoiceControlType:?];
  return result;
}

- (id)_backgroundColorForVoiceControlType:(int64_t)type styleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  switch(type)
  {
    case 2:
      v9 = +[UIColor systemRedColor];
      goto LABEL_7;
    case 1:
      v9 = +[UIColor systemBlueColor];
LABEL_7:
      v4 = v9;
      break;
    case 0:
      imageTintColor = [attributesCopy imageTintColor];
      v4 = [imageTintColor colorWithAlphaComponent:0.12];

      break;
  }

  return v4;
}

- (_UIStatusBarPillView)pillView
{
  pillView = self->_pillView;
  if (!pillView)
  {
    [(_UIStatusBarVoiceControlPillItem *)self _create_pillView];
    pillView = self->_pillView;
  }

  return pillView;
}

- (void)_create_pillView
{
  v3 = [_UIStatusBarPillView alloc];
  v4 = [(_UIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  pillView = self->_pillView;
  self->_pillView = v4;
}

- (CGSize)pillSize
{
  width = self->_pillSize.width;
  height = self->_pillSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end