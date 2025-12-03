@interface _UIStatusBarPillBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)image;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)image;
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier;
- (CGSize)pillSize;
- (_UIStatusBarDisplayableContainerView)iconsView;
- (_UIStatusBarPillView)combinedView;
- (id)_backgroundActivityViewForIdentifier:(id)identifier;
- (id)_backgroundColorForActivityType:(int64_t)type;
- (id)_textLabelForActivityType:(int64_t)type;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_combinedView;
- (void)_create_iconsView;
@end

@implementation _UIStatusBarPillBackgroundActivityItem

+ (BOOL)_identifierContainsItemImage:(id)image
{
  imageCopy = image;
  pillCombinedDisplayIdentifier = [self pillCombinedDisplayIdentifier];
  if (pillCombinedDisplayIdentifier == imageCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS____UIStatusBarPillBackgroundActivityItem;
    v6 = objc_msgSendSuper2(&v8, sel__identifierContainsItemImage_, imageCopy);
  }

  return v6;
}

+ (BOOL)_identifierContainsSecondaryItemImage:(id)image
{
  imageCopy = image;
  pillCombinedDisplayIdentifier = [self pillCombinedDisplayIdentifier];
  if (pillCombinedDisplayIdentifier == imageCopy)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS____UIStatusBarPillBackgroundActivityItem;
    v6 = objc_msgSendSuper2(&v8, sel__identifierContainsItemImage_, imageCopy);
  }

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v49[9] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = _UIStatusBarPillBackgroundActivityItem;
  v4 = [(_UIStatusBarBackgroundActivityItem *)&v48 createDisplayItemForIdentifier:identifier];
  identifier = [v4 identifier];
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (identifier == pillCombinedDisplayIdentifier)
  {
    [(_UIStatusBarPillBackgroundActivityItem *)self pillSize];
    v8 = v7;
    v10 = v9;
    [v4 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
    v47 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v11 = +[UIColor whiteColor];
    [v47 setImageTintColor:v11];

    [v4 setOverriddenStyleAttributes:v47];
    combinedView = [(_UIStatusBarPillBackgroundActivityItem *)self combinedView];
    [combinedView setTranslatesAutoresizingMaskIntoConstraints:0];
    iconsView = [(_UIStatusBarPillBackgroundActivityItem *)self iconsView];
    [iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = [(_UIStatusBarBackgroundActivityItem *)self imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:imageView];
    secondaryIconView = [(_UIStatusBarBackgroundActivityItem *)self secondaryIconView];
    [secondaryIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:secondaryIconView];
    [combinedView addSubview:iconsView];
    leadingAnchor = [imageView leadingAnchor];
    leadingAnchor2 = [iconsView leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44 = imageView;
    v49[0] = v43;
    centerYAnchor = [imageView centerYAnchor];
    centerYAnchor2 = [iconsView centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v49[1] = v40;
    leadingAnchor3 = [secondaryIconView leadingAnchor];
    trailingAnchor = [imageView trailingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v49[2] = v36;
    v39 = secondaryIconView;
    centerYAnchor3 = [secondaryIconView centerYAnchor];
    centerYAnchor4 = [iconsView centerYAnchor];
    v32 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v49[3] = v32;
    trailingAnchor2 = [secondaryIconView trailingAnchor];
    trailingAnchor3 = [iconsView trailingAnchor];
    v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v49[4] = v29;
    centerXAnchor = [iconsView centerXAnchor];
    v16 = combinedView;
    centerXAnchor2 = [combinedView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v49[5] = v17;
    centerYAnchor5 = [iconsView centerYAnchor];
    centerYAnchor6 = [combinedView centerYAnchor];
    v20 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v49[6] = v20;
    v33 = combinedView;
    widthAnchor = [combinedView widthAnchor];
    v22 = [widthAnchor constraintEqualToConstant:v8];
    v49[7] = v22;
    heightAnchor = [v16 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:v10];
    v49[8] = v24;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:9];

    [MEMORY[0x1E69977A0] activateConstraints:v28];
  }

  return v4;
}

- (id)_textLabelForActivityType:(int64_t)type
{
  if (type == 33)
  {
    v5 = @"Siri";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = _UIStatusBarPillBackgroundActivityItem;
    v5 = [(_UIStatusBarBackgroundActivityItem *)&v7 _textLabelForActivityType:?];
  }

  return v5;
}

- (id)_backgroundActivityViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (pillCombinedDisplayIdentifier == identifierCopy)
  {
    combinedView = [(_UIStatusBarPillBackgroundActivityItem *)self combinedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarPillBackgroundActivityItem;
    combinedView = [(_UIStatusBarBackgroundActivityItem *)&v9 _backgroundActivityViewForIdentifier:identifierCopy];
  }

  v7 = combinedView;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = _UIStatusBarPillBackgroundActivityItem;
  updateCopy = update;
  v8 = [(_UIStatusBarBackgroundActivityItem *)&v17 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];

  LODWORD(data) = [updateCopy dataChanged];
  if (data)
  {
    type = [backgroundActivityEntry type];
    identifier = [itemCopy identifier];
    pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

    if (identifier == pillCombinedDisplayIdentifier)
    {
      v14 = [_UIStatusBarActivityAction actionForBackgroundActivityType:type];
      [itemCopy setAction:v14];
    }

    if ([(_UIStatusBarPillBackgroundActivityItem *)self _shouldBounceWhenTransitioningFromType:[(_UIStatusBarBackgroundActivityItem *)self previousType] toType:type])
    {
      v15 = [_UIStatusBarAnimationFactory pulseAnimationWithDuration:0.333 scale:1.333];

      v8 = v15;
    }
  }

  return v8;
}

- (id)_backgroundColorForActivityType:(int64_t)type
{
  if (type == 33)
  {
    v3 = [UIImage kitImageNamed:@"BackgroundTask_siri-pill"];
    v4 = [UIColor colorWithPatternImage:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIStatusBarPillBackgroundActivityItem;
    v4 = [(_UIStatusBarBackgroundActivityItem *)&v6 _backgroundColorForActivityType:?];
  }

  return v4;
}

- (_UIStatusBarPillView)combinedView
{
  combinedView = self->_combinedView;
  if (!combinedView)
  {
    [(_UIStatusBarPillBackgroundActivityItem *)self _create_combinedView];
    combinedView = self->_combinedView;
  }

  return combinedView;
}

- (void)_create_combinedView
{
  v3 = [_UIStatusBarPillView alloc];
  v4 = [(_UIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  combinedView = self->_combinedView;
  self->_combinedView = v4;
}

- (_UIStatusBarDisplayableContainerView)iconsView
{
  iconsView = self->_iconsView;
  if (!iconsView)
  {
    [(_UIStatusBarPillBackgroundActivityItem *)self _create_iconsView];
    iconsView = self->_iconsView;
  }

  return iconsView;
}

- (void)_create_iconsView
{
  v3 = [_UIStatusBarDisplayableContainerView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconsView = self->_iconsView;
  self->_iconsView = v4;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (pillCombinedDisplayIdentifier == identifierCopy)
  {
    combinedView = [(_UIStatusBarPillBackgroundActivityItem *)self combinedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarPillBackgroundActivityItem;
    combinedView = [(_UIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = combinedView;

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = _UIStatusBarPillBackgroundActivityItem;
  if ([(_UIStatusBarIndicatorItem *)&v8 shouldUpdateIndicatorForIdentifier:identifierCopy])
  {
    v5 = 1;
  }

  else
  {
    pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];
    v5 = pillCombinedDisplayIdentifier == identifierCopy;
  }

  return v5;
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