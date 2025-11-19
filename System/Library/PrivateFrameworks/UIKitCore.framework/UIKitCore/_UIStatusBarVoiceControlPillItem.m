@interface _UIStatusBarVoiceControlPillItem
- (CGSize)pillSize;
- (_UIStatusBarPillView)pillView;
- (double)imageOpacityForVoiceControlType:(int64_t)a3;
- (id)_backgroundColorForVoiceControlType:(int64_t)a3 styleAttributes:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (void)_create_pillView;
@end

@implementation _UIStatusBarVoiceControlPillItem

- (id)createDisplayItemForIdentifier:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = _UIStatusBarVoiceControlPillItem;
  v19 = [(_UIStatusBarItem *)&v23 createDisplayItemForIdentifier:a3];
  [(_UIStatusBarVoiceControlPillItem *)self pillSize];
  v5 = v4;
  v7 = v6;
  v8 = [(_UIStatusBarVoiceControlPillItem *)self pillView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(_UIStatusBarIndicatorItem *)self imageView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setFontStyle:0];
  [v8 addSubview:v9];
  [v8 setSubviewForBaselineAlignment:v9];
  v22 = [v9 centerXAnchor];
  v21 = [v8 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v10 = [v9 centerYAnchor];
  v11 = [v8 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v24[1] = v12;
  v13 = [v8 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v5];
  v24[2] = v14;
  v15 = [v8 heightAnchor];
  v16 = [v15 constraintEqualToConstant:v7];
  v24[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  [MEMORY[0x1E69977A0] activateConstraints:v17];

  return v19;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = _UIStatusBarVoiceControlPillItem;
  v7 = [(_UIStatusBarVoiceControlItem *)&v15 applyUpdate:v6 toDisplayItem:a4];
  v8 = [v6 data];
  v9 = [v8 voiceControlEntry];

  if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
  {
    v10 = [v9 type];
    v11 = [(_UIStatusBarVoiceControlPillItem *)self pillView];
    v12 = [v6 styleAttributes];
    v13 = [(_UIStatusBarVoiceControlPillItem *)self _backgroundColorForVoiceControlType:v10 styleAttributes:v12];
    [v11 setPillColor:v13];

    [v11 setPulsing:{-[_UIStatusBarVoiceControlPillItem _pulsingForVoiceControlType:](self, "_pulsingForVoiceControlType:", v10)}];
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
  v4.super_class = _UIStatusBarVoiceControlPillItem;
  [(_UIStatusBarVoiceControlItem *)&v4 imageOpacityForVoiceControlType:?];
  return result;
}

- (id)_backgroundColorForVoiceControlType:(int64_t)a3 styleAttributes:(id)a4
{
  v6 = a4;
  v7 = v6;
  switch(a3)
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
      v8 = [v6 imageTintColor];
      v4 = [v8 colorWithAlphaComponent:0.12];

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