@interface _UIStatusBarBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)a3;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)a3;
+ (double)_fontSizeAdjustmentForActivityType:(int64_t)a3;
+ (double)_verticalOffsetForActivityType:(int64_t)a3;
- (BOOL)_shouldPulseForActivityType:(int64_t)a3 traitCollection:(id)a4;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (BOOL)crossfadeForUpdate:(id)a3;
- (_UIStatusBarActivityIconView)iconView;
- (_UIStatusBarBackgroundActivityItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (_UIStatusBarImageView)secondaryIconView;
- (_UIStatusBarPillView)backgroundView;
- (id)_backgroundActivityViewForIdentifier:(id)a3;
- (id)_backgroundColorForActivityType:(int64_t)a3;
- (id)_imageNameForActivityType:(int64_t)a3;
- (id)_systemImageNameForActivityType:(int64_t)a3;
- (id)_textLabelForActivityType:(int64_t)a3;
- (id)_visualEffectForActivityType:(int64_t)a3 traitCollection:(id)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)imageForUpdate:(id)a3;
- (id)imageNameForUpdate:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)secondaryImageForUpdate:(id)a3;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_backgroundView;
- (void)_create_iconView;
- (void)_create_secondaryIconView;
- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4;
- (void)updatedDisplayItemsWithData:(id)a3;
@end

@implementation _UIStatusBarBackgroundActivityItem

- (_UIStatusBarBackgroundActivityItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarBackgroundActivityItem;
  result = [(_UIStatusBarItem *)&v5 initWithIdentifier:a3 statusBar:a4];
  if (result)
  {
    result->_previousType = -1;
  }

  return result;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarBackgroundActivityItem;
  v3 = [(_UIStatusBarItem *)&v7 createDisplayItemForIdentifier:a3];
  v4 = [v3 identifier];
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v4 == v5)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (id)_backgroundActivityViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_identifierContainsItemImage:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultDisplayIdentifier];

  return v5 == v4;
}

+ (BOOL)_identifierContainsSecondaryItemImage:(id)a3
{
  v4 = a3;
  v5 = [a1 secondaryIconDisplayIdentifier];

  return v5 == v4;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [objc_opt_class() secondaryIconDisplayIdentifier];

  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIStatusBarBackgroundActivityItem;
    v10 = [(_UIStatusBarItem *)&v12 canEnableDisplayItem:v6 fromData:v7];
  }

  return v10;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = _UIStatusBarBackgroundActivityItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v49 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 backgroundActivityEntry];

  v11 = [v10 type];
  if ([v6 dataChanged])
  {
    v12 = _UIStatusBar_Log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = v11;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Updating background activity item to type: %li", buf, 0xCu);
    }

    v13 = [v7 identifier];
    v14 = [(_UIStatusBarBackgroundActivityItem *)self _backgroundActivityViewForIdentifier:v13];

    if (v14)
    {
      v43 = v10;
      v15 = [(_UIStatusBarBackgroundActivityItem *)self _backgroundColorForActivityType:v11];
      if ([(_UIStatusBarBackgroundActivityItem *)self crossfadeForUpdate:v6])
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __64___UIStatusBarBackgroundActivityItem_applyUpdate_toDisplayItem___block_invoke;
        v46[3] = &unk_1E711FA28;
        v47 = v14;
        v48 = v15;
        v16 = [_UIStatusBarAnimation animationWithBlock:v46];
      }

      else
      {
        v16 = v8;
        [v14 setPillColor:v15];
      }

      v17 = [v6 styleAttributes];
      v18 = [v17 traitCollection];
      v19 = [(_UIStatusBarBackgroundActivityItem *)self _visualEffectForActivityType:v11 traitCollection:v18];
      [v14 setVisualEffect:v19];

      v20 = [v6 styleAttributes];
      v21 = [v20 traitCollection];
      [v14 setPulsing:{-[_UIStatusBarBackgroundActivityItem _shouldPulseForActivityType:traitCollection:](self, "_shouldPulseForActivityType:traitCollection:", v11, v21)}];

      v8 = v16;
      v10 = v43;
    }

    v22 = [(_UIStatusBarBackgroundActivityItem *)self iconView];
    v23 = [v6 styleAttributes];
    v24 = [v23 traitCollection];
    [v22 setRinging:-[_UIStatusBarBackgroundActivityItem _shouldRingForActivityType:traitCollection:](self forUpdate:{"_shouldRingForActivityType:traitCollection:", v11, v24), v6}];
  }

  v25 = objc_opt_class();
  v26 = [v7 identifier];
  if (![v25 _identifierContainsItemImage:v26] || !objc_msgSend(v7, "isEnabled"))
  {
    goto LABEL_18;
  }

  if ([v6 styleAttributesChanged])
  {

LABEL_15:
    v28 = [v6 styleAttributes];
    v26 = [v28 copy];

    [objc_opt_class() _fontSizeAdjustmentForActivityType:v11];
    if (v29 != 0.0)
    {
      v30 = v29;
      v31 = [v26 font];
      v32 = [v31 fontDescriptor];
      [v26 font];
      v44 = v10;
      v34 = v33 = v8;
      [v34 pointSize];
      v36 = [off_1E70ECC18 fontWithDescriptor:v32 size:v30 + v35];
      [v26 setFont:v36];

      v8 = v33;
      v10 = v44;
    }

    [objc_opt_class() _verticalOffsetForActivityType:v11];
    [v7 setCenterOffset:?];
    v45.receiver = self;
    v45.super_class = _UIStatusBarBackgroundActivityItem;
    [(_UIStatusBarItem *)&v45 applyStyleAttributes:v26 toDisplayItem:v7];
LABEL_18:

    goto LABEL_19;
  }

  v27 = [v6 dataChanged];

  if (v27)
  {
    goto LABEL_15;
  }

LABEL_19:
  v37 = objc_opt_class();
  v38 = [v7 identifier];
  if ([v37 _identifierContainsSecondaryItemImage:v38] && objc_msgSend(v7, "isEnabled"))
  {
    v39 = [v6 dataChanged];

    if (!v39)
    {
      goto LABEL_24;
    }

    v38 = [(_UIStatusBarBackgroundActivityItem *)self secondaryImageForUpdate:v6];
    v40 = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [v40 setEnabled:v38 != 0];

    v41 = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [v41 setImage:v38];
  }

LABEL_24:

  return v8;
}

- (void)updatedDisplayItemsWithData:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarBackgroundActivityItem;
  v4 = a3;
  [(_UIStatusBarItem *)&v6 updatedDisplayItemsWithData:v4];
  v5 = [v4 backgroundActivityEntry];

  if (v5)
  {
    self->_previousType = [v5 type];
  }
}

- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 identifier];
  LOBYTE(v8) = [v8 _identifierContainsItemImage:v9];

  if ((v8 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = _UIStatusBarBackgroundActivityItem;
    [(_UIStatusBarItem *)&v10 applyStyleAttributes:v6 toDisplayItem:v7];
  }
}

- (id)systemImageNameForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _systemImageNameForActivityType:](self, "_systemImageNameForActivityType:", [v5 type]);

  return v6;
}

- (id)imageNameForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _imageNameForActivityType:](self, "_imageNameForActivityType:", [v5 type]);

  return v6;
}

- (id)_systemImageNameForActivityType:(int64_t)a3
{
  if ((a3 - 2) > 0x23)
  {
    return 0;
  }

  else
  {
    return off_1E711FA48[a3 - 2];
  }
}

- (id)_imageNameForActivityType:(int64_t)a3
{
  if (a3 <= 19)
  {
    v4 = @"BackgroundTask_satellite-disconnected";
    if (a3 != 1)
    {
      v4 = 0;
    }

    if (a3)
    {
      return v4;
    }

    else
    {
      return @"BackgroundTask_satellite";
    }
  }

  else
  {
    switch(a3)
    {
      case 20:
        return @"BackgroundTask_screen-sharing";
      case 23:
        return @"BackgroundTask_dongle";
      case 25:
        return @"BackgroundTask_screen-sharing";
      default:
        return 0;
    }
  }
}

- (id)_textLabelForActivityType:(int64_t)a3
{
  if (a3 == 36)
  {
    return @"SOS";
  }

  else
  {
    return 0;
  }
}

- (id)imageForUpdate:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 data];
  v6 = [v5 backgroundActivityEntry];
  v7 = [v6 type];

  v8 = [(_UIStatusBarBackgroundActivityItem *)self _textLabelForActivityType:v7];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23[0] = *off_1E70EC918;
    v10 = [v4 styleAttributes];
    v11 = [v10 smallFont];
    v24[0] = v11;
    v23[1] = *off_1E70EC920;
    v12 = +[UIColor whiteColor];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v14 = [v9 initWithString:v8 attributes:v13];

    v15 = [UIGraphicsImageRenderer alloc];
    [v14 size];
    v16 = [(UIGraphicsImageRenderer *)v15 initWithSize:?];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53___UIStatusBarBackgroundActivityItem_imageForUpdate___block_invoke;
    v21[3] = &unk_1E70F6970;
    v22 = v14;
    v17 = v14;
    v18 = [(UIGraphicsImageRenderer *)v16 imageWithActions:v21];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _UIStatusBarBackgroundActivityItem;
    v18 = [(_UIStatusBarIndicatorItem *)&v20 imageForUpdate:v4];
  }

  return v18;
}

- (id)secondaryImageForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _secondarySystemImageNameForActivityType:](self, "_secondarySystemImageNameForActivityType:", [v5 type]);

  if (v6)
  {
    v7 = [UIImage _systemImageNamed:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (double)_verticalOffsetForActivityType:(int64_t)a3
{
  v3 = 0.0;
  if (a3 == 6)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v3 = 1.0 / v5;
  }

  return v3;
}

+ (double)_fontSizeAdjustmentForActivityType:(int64_t)a3
{
  v3 = a3 == 37 || a3 == 3;
  result = 0.0;
  if (v3)
  {
    return -1.0;
  }

  return result;
}

- (id)_backgroundColorForActivityType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
    case 6:
    case 7:
    case 19:
    case 34:
      v5 = +[UIColor systemGreenColor];
      goto LABEL_12;
    case 1:
    case 21:
      v5 = +[UIColor systemGray4Color];
      goto LABEL_12;
    case 2:
    case 3:
    case 4:
    case 5:
      v5 = +[UIColor clearColor];
      goto LABEL_12;
    case 8:
    case 9:
    case 14:
    case 15:
    case 16:
    case 23:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 35:
      v5 = +[UIColor systemBlueColor];
      goto LABEL_12;
    case 10:
    case 12:
    case 26:
    case 36:
      v5 = +[UIColor systemRedColor];
      goto LABEL_12;
    case 11:
    case 13:
    case 17:
    case 18:
      v5 = +[UIColor systemOrangeColor];
      goto LABEL_12;
    case 20:
    case 25:
      v5 = +[UIColor systemIndigoColor];
      goto LABEL_12;
    case 22:
      v5 = +[UIColor _swiftColor];
      goto LABEL_12;
    case 33:
      v5 = [UIColor colorWithRed:0.28627451 green:0.0901960784 blue:0.439215686 alpha:1.0, v3];
      goto LABEL_12;
    case 37:
      v5 = +[UIColor systemGrayColor];
LABEL_12:

      break;
    default:
      v5 = 0;

      break;
  }

  return v5;
}

- (BOOL)_shouldPulseForActivityType:(int64_t)a3 traitCollection:(id)a4
{
  v5 = [a4 userInterfaceIdiom];
  if (a3 <= 0x1B)
  {
    v6 = 0x7FFFDF0u >> a3;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (v5 == 3)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (id)_visualEffectForActivityType:(int64_t)a3 traitCollection:(id)a4
{
  v5 = [a4 userInterfaceIdiom];
  v6 = 0;
  if ((a3 - 2) <= 3 && v5 != 3)
  {
    v6 = [UIBlurEffect effectWithStyle:2];
  }

  return v6;
}

- (_UIStatusBarPillView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    [(_UIStatusBarBackgroundActivityItem *)self _create_backgroundView];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)_create_backgroundView
{
  v3 = [_UIStatusBarPillView alloc];
  v4 = [(_UIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;
}

- (_UIStatusBarActivityIconView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    [(_UIStatusBarBackgroundActivityItem *)self _create_iconView];
    iconView = self->_iconView;
  }

  return iconView;
}

- (void)_create_iconView
{
  v3 = [_UIStatusBarActivityIconView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;
}

- (_UIStatusBarImageView)secondaryIconView
{
  secondaryIconView = self->_secondaryIconView;
  if (!secondaryIconView)
  {
    [(_UIStatusBarBackgroundActivityItem *)self _create_secondaryIconView];
    secondaryIconView = self->_secondaryIconView;
  }

  return secondaryIconView;
}

- (void)_create_secondaryIconView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  secondaryIconView = self->_secondaryIconView;
  self->_secondaryIconView = v4;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    v6 = [objc_opt_class() secondaryIconDisplayIdentifier];

    if (v6 == v4)
    {
      v7 = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = _UIStatusBarBackgroundActivityItem;
      v7 = [(_UIStatusBarIndicatorItem *)&v10 viewForIdentifier:v4];
    }
  }

  v8 = v7;

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _UIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Adding default background activity item view", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = _UIStatusBarBackgroundActivityItem;
  v6 = [(_UIStatusBarItem *)&v8 additionAnimationForDisplayItemWithIdentifier:v4];

  return v6;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = _UIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Removing default background activity item view", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = _UIStatusBarBackgroundActivityItem;
  v6 = [(_UIStatusBarItem *)&v8 removalAnimationForDisplayItemWithIdentifier:v4];

  return v6;
}

- (BOOL)crossfadeForUpdate:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 backgroundActivityEntry];
  v6 = [v5 type];

  previousType = self->_previousType;
  if (previousType == 21 && v6 == 19)
  {
    v10 = 1;
  }

  else
  {
    v10 = previousType == 19 && v6 == 21;
    if (previousType == 1 && v6 == 0)
    {
      v12 = 1;
      return v12 & 1;
    }
  }

  if (previousType)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6 == 1;
  }

  v14 = v13;
  v12 = v14 | v10;
  return v12 & 1;
}

@end