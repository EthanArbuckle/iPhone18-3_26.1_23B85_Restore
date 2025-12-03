@interface STUIStatusBarPillBackgroundActivityItem
+ (BOOL)_identifierContainsItemImage:(id)image;
+ (BOOL)_identifierContainsSecondaryItemImage:(id)image;
+ (BOOL)shouldKeepIconVisibleForActivityWithIdentifier:(id)identifier;
- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier;
- (CGSize)pillSize;
- (STUIStatusBarDisplayableContainerView)iconsView;
- (STUIStatusBarPillView)combinedView;
- (id)_backgroundActivityViewForIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_combinedView;
- (void)_create_iconsView;
@end

@implementation STUIStatusBarPillBackgroundActivityItem

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
    v8.super_class = &OBJC_METACLASS___STUIStatusBarPillBackgroundActivityItem;
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
    v8.super_class = &OBJC_METACLASS___STUIStatusBarPillBackgroundActivityItem;
    v6 = objc_msgSendSuper2(&v8, sel__identifierContainsItemImage_, imageCopy);
  }

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v49[9] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = STUIStatusBarPillBackgroundActivityItem;
  v4 = [(STUIStatusBarBackgroundActivityItem *)&v48 createDisplayItemForIdentifier:identifier];
  identifier = [v4 identifier];
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (identifier == pillCombinedDisplayIdentifier)
  {
    [(STUIStatusBarPillBackgroundActivityItem *)self pillSize];
    v8 = v7;
    v10 = v9;
    [v4 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
    v47 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v47 setImageTintColor:whiteColor];

    [v4 setOverriddenStyleAttributes:v47];
    combinedView = [(STUIStatusBarPillBackgroundActivityItem *)self combinedView];
    [combinedView setTranslatesAutoresizingMaskIntoConstraints:0];
    iconsView = [(STUIStatusBarPillBackgroundActivityItem *)self iconsView];
    [iconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = [(STUIStatusBarBackgroundActivityItem *)self imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [iconsView addSubview:imageView];
    secondaryIconView = [(STUIStatusBarBackgroundActivityItem *)self secondaryIconView];
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
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:9];

    [MEMORY[0x277CCAAD0] activateConstraints:v28];
  }

  return v4;
}

- (id)_backgroundActivityViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (pillCombinedDisplayIdentifier == identifierCopy)
  {
    combinedView = [(STUIStatusBarPillBackgroundActivityItem *)self combinedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarPillBackgroundActivityItem;
    combinedView = [(STUIStatusBarBackgroundActivityItem *)&v9 _backgroundActivityViewForIdentifier:identifierCopy];
  }

  v7 = combinedView;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = STUIStatusBarPillBackgroundActivityItem;
  updateCopy = update;
  v8 = [(STUIStatusBarBackgroundActivityItem *)&v19 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  backgroundActivityEntry = [data backgroundActivityEntry];

  LODWORD(data) = [updateCopy dataChanged];
  if (data)
  {
    backgroundActivityIdentifier = [backgroundActivityEntry backgroundActivityIdentifier];
    identifier = [itemCopy identifier];
    pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

    if (identifier == pillCombinedDisplayIdentifier)
    {
      v14 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:backgroundActivityIdentifier];
      [itemCopy setAction:v14];
    }

    previousBackgroundActivityIdentifier = [(STUIStatusBarBackgroundActivityItem *)self previousBackgroundActivityIdentifier];
    v16 = [(STUIStatusBarPillBackgroundActivityItem *)self _shouldBounceWhenTransitioningActivityWithIdentifier:previousBackgroundActivityIdentifier toActivityWithIdentifier:backgroundActivityIdentifier];

    if (v16)
    {
      v17 = [STUIStatusBarAnimationFactory pulseAnimationWithDuration:0.333 scale:1.333];

      v8 = v17;
    }
  }

  return v8;
}

+ (BOOL)shouldKeepIconVisibleForActivityWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6B920];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];

  LOBYTE(sharedInstance) = [v6 prefersToKeepContentVisible];
  return sharedInstance;
}

- (STUIStatusBarPillView)combinedView
{
  combinedView = self->_combinedView;
  if (!combinedView)
  {
    [(STUIStatusBarPillBackgroundActivityItem *)self _create_combinedView];
    combinedView = self->_combinedView;
  }

  return combinedView;
}

- (void)_create_combinedView
{
  v3 = [STUIStatusBarPillView alloc];
  v4 = [(STUIStatusBarPillView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  combinedView = self->_combinedView;
  self->_combinedView = v4;

  MEMORY[0x2821F96F8](v4, combinedView);
}

- (STUIStatusBarDisplayableContainerView)iconsView
{
  iconsView = self->_iconsView;
  if (!iconsView)
  {
    [(STUIStatusBarPillBackgroundActivityItem *)self _create_iconsView];
    iconsView = self->_iconsView;
  }

  return iconsView;
}

- (void)_create_iconsView
{
  v3 = [STUIStatusBarDisplayableContainerView alloc];
  v4 = [(STUIStatusBarDisplayableContainerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  iconsView = self->_iconsView;
  self->_iconsView = v4;

  MEMORY[0x2821F96F8](v4, iconsView);
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pillCombinedDisplayIdentifier = [objc_opt_class() pillCombinedDisplayIdentifier];

  if (pillCombinedDisplayIdentifier == identifierCopy)
  {
    combinedView = [(STUIStatusBarPillBackgroundActivityItem *)self combinedView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarPillBackgroundActivityItem;
    combinedView = [(STUIStatusBarBackgroundActivityItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = combinedView;

  return v7;
}

- (BOOL)shouldUpdateIndicatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = STUIStatusBarPillBackgroundActivityItem;
  if ([(STUIStatusBarIndicatorItem *)&v8 shouldUpdateIndicatorForIdentifier:identifierCopy])
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