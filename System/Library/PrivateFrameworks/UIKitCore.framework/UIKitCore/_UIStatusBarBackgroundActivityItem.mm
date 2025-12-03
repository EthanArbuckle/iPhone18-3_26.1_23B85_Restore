@interface _UIStatusBarBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)image;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)image;
+ (double)_fontSizeAdjustmentForActivityType:(int64_t)type;
+ (double)_verticalOffsetForActivityType:(int64_t)type;
- (BOOL)_shouldPulseForActivityType:(int64_t)type traitCollection:(id)collection;
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (BOOL)crossfadeForUpdate:(id)update;
- (_UIStatusBarActivityIconView)iconView;
- (_UIStatusBarBackgroundActivityItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (_UIStatusBarImageView)secondaryIconView;
- (_UIStatusBarPillView)backgroundView;
- (id)_backgroundActivityViewForIdentifier:(id)identifier;
- (id)_backgroundColorForActivityType:(int64_t)type;
- (id)_imageNameForActivityType:(int64_t)type;
- (id)_systemImageNameForActivityType:(int64_t)type;
- (id)_textLabelForActivityType:(int64_t)type;
- (id)_visualEffectForActivityType:(int64_t)type traitCollection:(id)collection;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)imageForUpdate:(id)update;
- (id)imageNameForUpdate:(id)update;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)secondaryImageForUpdate:(id)update;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_backgroundView;
- (void)_create_iconView;
- (void)_create_secondaryIconView;
- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item;
- (void)updatedDisplayItemsWithData:(id)data;
@end

@implementation _UIStatusBarBackgroundActivityItem

- (_UIStatusBarBackgroundActivityItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarBackgroundActivityItem;
  result = [(_UIStatusBarItem *)&v5 initWithIdentifier:identifier statusBar:bar];
  if (result)
  {
    result->_previousType = -1;
  }

  return result;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarBackgroundActivityItem;
  v3 = [(_UIStatusBarItem *)&v7 createDisplayItemForIdentifier:identifier];
  identifier = [v3 identifier];
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (identifier == backgroundDisplayIdentifier)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (id)_backgroundActivityViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    backgroundView = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

+ (BOOL)_identifierContainsItemImage:(id)image
{
  imageCopy = image;
  defaultDisplayIdentifier = [self defaultDisplayIdentifier];

  return defaultDisplayIdentifier == imageCopy;
}

+ (BOOL)_identifierContainsSecondaryItemImage:(id)image
{
  imageCopy = image;
  secondaryIconDisplayIdentifier = [self secondaryIconDisplayIdentifier];

  return secondaryIconDisplayIdentifier == imageCopy;
}

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  itemCopy = item;
  dataCopy = data;
  identifier = [itemCopy identifier];
  secondaryIconDisplayIdentifier = [objc_opt_class() secondaryIconDisplayIdentifier];

  if (identifier == secondaryIconDisplayIdentifier)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIStatusBarBackgroundActivityItem;
    v10 = [(_UIStatusBarItem *)&v12 canEnableDisplayItem:itemCopy fromData:dataCopy];
  }

  return v10;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v52 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  itemCopy = item;
  v49.receiver = self;
  v49.super_class = _UIStatusBarBackgroundActivityItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v49 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];

  type = [backgroundActivityEntry type];
  if ([updateCopy dataChanged])
  {
    v12 = _UIStatusBar_Log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = type;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Updating background activity item to type: %li", buf, 0xCu);
    }

    identifier = [itemCopy identifier];
    v14 = [(_UIStatusBarBackgroundActivityItem *)self _backgroundActivityViewForIdentifier:identifier];

    if (v14)
    {
      v43 = backgroundActivityEntry;
      v15 = [(_UIStatusBarBackgroundActivityItem *)self _backgroundColorForActivityType:type];
      if ([(_UIStatusBarBackgroundActivityItem *)self crossfadeForUpdate:updateCopy])
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

      styleAttributes = [updateCopy styleAttributes];
      traitCollection = [styleAttributes traitCollection];
      v19 = [(_UIStatusBarBackgroundActivityItem *)self _visualEffectForActivityType:type traitCollection:traitCollection];
      [v14 setVisualEffect:v19];

      styleAttributes2 = [updateCopy styleAttributes];
      traitCollection2 = [styleAttributes2 traitCollection];
      [v14 setPulsing:{-[_UIStatusBarBackgroundActivityItem _shouldPulseForActivityType:traitCollection:](self, "_shouldPulseForActivityType:traitCollection:", type, traitCollection2)}];

      v8 = v16;
      backgroundActivityEntry = v43;
    }

    iconView = [(_UIStatusBarBackgroundActivityItem *)self iconView];
    styleAttributes3 = [updateCopy styleAttributes];
    traitCollection3 = [styleAttributes3 traitCollection];
    [iconView setRinging:-[_UIStatusBarBackgroundActivityItem _shouldRingForActivityType:traitCollection:](self forUpdate:{"_shouldRingForActivityType:traitCollection:", type, traitCollection3), updateCopy}];
  }

  v25 = objc_opt_class();
  identifier2 = [itemCopy identifier];
  if (![v25 _identifierContainsItemImage:identifier2] || !objc_msgSend(itemCopy, "isEnabled"))
  {
    goto LABEL_18;
  }

  if ([updateCopy styleAttributesChanged])
  {

LABEL_15:
    styleAttributes4 = [updateCopy styleAttributes];
    identifier2 = [styleAttributes4 copy];

    [objc_opt_class() _fontSizeAdjustmentForActivityType:type];
    if (v29 != 0.0)
    {
      v30 = v29;
      font = [identifier2 font];
      fontDescriptor = [font fontDescriptor];
      [identifier2 font];
      v44 = backgroundActivityEntry;
      v34 = v33 = v8;
      [v34 pointSize];
      v36 = [off_1E70ECC18 fontWithDescriptor:fontDescriptor size:v30 + v35];
      [identifier2 setFont:v36];

      v8 = v33;
      backgroundActivityEntry = v44;
    }

    [objc_opt_class() _verticalOffsetForActivityType:type];
    [itemCopy setCenterOffset:?];
    v45.receiver = self;
    v45.super_class = _UIStatusBarBackgroundActivityItem;
    [(_UIStatusBarItem *)&v45 applyStyleAttributes:identifier2 toDisplayItem:itemCopy];
LABEL_18:

    goto LABEL_19;
  }

  dataChanged = [updateCopy dataChanged];

  if (dataChanged)
  {
    goto LABEL_15;
  }

LABEL_19:
  v37 = objc_opt_class();
  identifier3 = [itemCopy identifier];
  if ([v37 _identifierContainsSecondaryItemImage:identifier3] && objc_msgSend(itemCopy, "isEnabled"))
  {
    dataChanged2 = [updateCopy dataChanged];

    if (!dataChanged2)
    {
      goto LABEL_24;
    }

    identifier3 = [(_UIStatusBarBackgroundActivityItem *)self secondaryImageForUpdate:updateCopy];
    secondaryIconView = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [secondaryIconView setEnabled:identifier3 != 0];

    secondaryIconView2 = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [secondaryIconView2 setImage:identifier3];
  }

LABEL_24:

  return v8;
}

- (void)updatedDisplayItemsWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarBackgroundActivityItem;
  dataCopy = data;
  [(_UIStatusBarItem *)&v6 updatedDisplayItemsWithData:dataCopy];
  backgroundActivityEntry = [dataCopy backgroundActivityEntry];

  if (backgroundActivityEntry)
  {
    self->_previousType = [backgroundActivityEntry type];
  }
}

- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  v8 = objc_opt_class();
  identifier = [itemCopy identifier];
  LOBYTE(v8) = [v8 _identifierContainsItemImage:identifier];

  if ((v8 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = _UIStatusBarBackgroundActivityItem;
    [(_UIStatusBarItem *)&v10 applyStyleAttributes:attributesCopy toDisplayItem:itemCopy];
  }
}

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _systemImageNameForActivityType:](self, "_systemImageNameForActivityType:", [backgroundActivityEntry type]);

  return v6;
}

- (id)imageNameForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _imageNameForActivityType:](self, "_imageNameForActivityType:", [backgroundActivityEntry type]);

  return v6;
}

- (id)_systemImageNameForActivityType:(int64_t)type
{
  if ((type - 2) > 0x23)
  {
    return 0;
  }

  else
  {
    return off_1E711FA48[type - 2];
  }
}

- (id)_imageNameForActivityType:(int64_t)type
{
  if (type <= 19)
  {
    v4 = @"BackgroundTask_satellite-disconnected";
    if (type != 1)
    {
      v4 = 0;
    }

    if (type)
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
    switch(type)
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

- (id)_textLabelForActivityType:(int64_t)type
{
  if (type == 36)
  {
    return @"SOS";
  }

  else
  {
    return 0;
  }
}

- (id)imageForUpdate:(id)update
{
  v24[2] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  type = [backgroundActivityEntry type];

  v8 = [(_UIStatusBarBackgroundActivityItem *)self _textLabelForActivityType:type];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23[0] = *off_1E70EC918;
    styleAttributes = [updateCopy styleAttributes];
    smallFont = [styleAttributes smallFont];
    v24[0] = smallFont;
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
    v18 = [(_UIStatusBarIndicatorItem *)&v20 imageForUpdate:updateCopy];
  }

  return v18;
}

- (id)secondaryImageForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  v6 = -[_UIStatusBarBackgroundActivityItem _secondarySystemImageNameForActivityType:](self, "_secondarySystemImageNameForActivityType:", [backgroundActivityEntry type]);

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

+ (double)_verticalOffsetForActivityType:(int64_t)type
{
  v3 = 0.0;
  if (type == 6)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v3 = 1.0 / v5;
  }

  return v3;
}

+ (double)_fontSizeAdjustmentForActivityType:(int64_t)type
{
  v3 = type == 37 || type == 3;
  result = 0.0;
  if (v3)
  {
    return -1.0;
  }

  return result;
}

- (id)_backgroundColorForActivityType:(int64_t)type
{
  switch(type)
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

- (BOOL)_shouldPulseForActivityType:(int64_t)type traitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  if (type <= 0x1B)
  {
    v6 = 0x7FFFDF0u >> type;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (userInterfaceIdiom == 3)
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (id)_visualEffectForActivityType:(int64_t)type traitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  v6 = 0;
  if ((type - 2) <= 3 && userInterfaceIdiom != 3)
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    backgroundView = [(_UIStatusBarBackgroundActivityItem *)self backgroundView];
  }

  else
  {
    secondaryIconDisplayIdentifier = [objc_opt_class() secondaryIconDisplayIdentifier];

    if (secondaryIconDisplayIdentifier == identifierCopy)
    {
      backgroundView = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = _UIStatusBarBackgroundActivityItem;
      backgroundView = [(_UIStatusBarIndicatorItem *)&v10 viewForIdentifier:identifierCopy];
    }
  }

  v8 = backgroundView;

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _UIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Adding default background activity item view", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = _UIStatusBarBackgroundActivityItem;
  v6 = [(_UIStatusBarItem *)&v8 additionAnimationForDisplayItemWithIdentifier:identifierCopy];

  return v6;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _UIStatusBar_Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Removing default background activity item view", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = _UIStatusBarBackgroundActivityItem;
  v6 = [(_UIStatusBarItem *)&v8 removalAnimationForDisplayItemWithIdentifier:identifierCopy];

  return v6;
}

- (BOOL)crossfadeForUpdate:(id)update
{
  data = [update data];
  backgroundActivityEntry = [data backgroundActivityEntry];
  type = [backgroundActivityEntry type];

  previousType = self->_previousType;
  if (previousType == 21 && type == 19)
  {
    v10 = 1;
  }

  else
  {
    v10 = previousType == 19 && type == 21;
    if (previousType == 1 && type == 0)
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
    v13 = type == 1;
  }

  v14 = v13;
  v12 = v14 | v10;
  return v12 & 1;
}

@end