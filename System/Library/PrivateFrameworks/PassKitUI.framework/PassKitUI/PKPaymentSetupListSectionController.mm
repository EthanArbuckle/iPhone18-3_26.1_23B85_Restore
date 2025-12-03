@interface PKPaymentSetupListSectionController
- (NSDirectionalEdgeInsets)headerDirectionalLayoutMargins;
- (PKPaymentSetupListSectionController)init;
- (PKPaymentSetupListSectionController)initWithIdentifiers:(id)identifiers;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentSetupListSectionController

- (PKPaymentSetupListSectionController)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupListSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifiers, identifiers);
    *&v7->_headerDirectionalLayoutMargins.top = xmmword_1BE115AF0;
    *&v7->_headerDirectionalLayoutMargins.bottom = xmmword_1BE115AF0;
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x1E69DC800];
    v9 = objc_opt_class();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__PKPaymentSetupListSectionController_initWithIdentifiers___block_invoke;
    v13[3] = &unk_1E8012088;
    objc_copyWeak(&v14, &location);
    v10 = [v8 registrationWithCellClass:v9 configurationHandler:v13];
    cellRegistration = v7->_cellRegistration;
    v7->_cellRegistration = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __59__PKPaymentSetupListSectionController_initWithIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decoratePaymentSetListCell:v9 forItem:v6 style:1];
  }
}

- (PKPaymentSetupListSectionController)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v3 UUIDString];
  v8[0] = uUIDString;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(PKPaymentSetupListSectionController *)self initWithIdentifiers:v5];

  return v6;
}

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  cellCopy = cell;
  result = item;
  v9 = result;
  if (style == 1)
  {
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    textProperties = [subtitleCellConfiguration textProperties];
    v20 = PKOBKListSubtitleCellTitleFont();
    [textProperties setFont:v20];

    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [secondaryTextProperties setColor:secondaryLabelColor];

    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    icon = [v9 icon];
    v23 = PKOBKListSubtitleCellSubtitleFont(icon != 0);
    [secondaryTextProperties2 setFont:v23];

    v17 = 15.0;
    v18 = 13.0;
  }

  else
  {
    if (style)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
    textProperties2 = [subtitleCellConfiguration textProperties];
    v12 = PKOBKListInlineCellTitleFont();
    [textProperties2 setFont:v12];

    secondaryTextProperties3 = [subtitleCellConfiguration secondaryTextProperties];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [secondaryTextProperties3 setColor:secondaryLabelColor2];

    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    icon = PKOBKListInlineCellSubtitleFont();
    [secondaryTextProperties2 setFont:icon];
    v17 = 1.0;
    v18 = 15.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v24 = v18;
  }

  else
  {
    v24 = 16.0;
  }

  [subtitleCellConfiguration setImageToTextPadding:v24];
  [subtitleCellConfiguration directionalLayoutMargins];
  v26 = v25;
  if (_UISolariumFeatureFlagEnabled())
  {
    v27 = v17;
  }

  else
  {
    v27 = 16.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v28 = v18;
  }

  else
  {
    v28 = 16.0;
  }

  [subtitleCellConfiguration setDirectionalLayoutMargins:{v27, v28, v27, v26}];
  v29 = _UISolariumFeatureFlagEnabled();
  result = _UISolariumFeatureFlagEnabled();
  if (!subtitleCellConfiguration)
  {
    goto LABEL_47;
  }

  v30 = result;
  imageProperties = [subtitleCellConfiguration imageProperties];
  [imageProperties setAccessibilityIgnoresInvertColors:1];
  title = [v9 title];
  [subtitleCellConfiguration setText:title];

  subtitle = [v9 subtitle];
  [subtitleCellConfiguration setSecondaryText:subtitle];

  icon2 = [v9 icon];
  [subtitleCellConfiguration setImage:icon2];

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  badgeText = [v9 badgeText];
  if (badgeText)
  {
    v37 = [PKCellAccessoryBadge accessoryBadgeWithTitle:badgeText];
    [v35 addObject:v37];
  }

  labelText = [v9 labelText];
  v57 = labelText;
  if (labelText)
  {
    v39 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:labelText];
    v40 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
    [v39 setFont:v40];

    [v35 addObject:v39];
  }

  if ([v9 loadingIndicatorVisible])
  {
    v41 = +[PKCellAccessoryLoadingIndicator accessory];
LABEL_24:
    v43 = v41;
    goto LABEL_25;
  }

  if ([v9 displayChevron])
  {
    v42 = MEMORY[0x1E69DC7A8];
LABEL_23:
    v41 = objc_alloc_init(v42);
    goto LABEL_24;
  }

  if ([v9 displayInfo])
  {
    v53 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v54 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
    v55 = [v53 initWithImage:v54];

    v43 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v55 placement:1];
  }

  else
  {
    if ([v9 selected] && (objc_msgSend(v9, "useMultiSelectAccessory") & 1) == 0)
    {
      v42 = MEMORY[0x1E69DC788];
      goto LABEL_23;
    }

    v43 = 0;
  }

LABEL_25:
  [v35 safelyAddObject:v43];
  [v43 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
  if ([v9 reserverSpaceForSelectedAccessory] && !objc_msgSend(v35, "count"))
  {
    v44 = objc_alloc_init(MEMORY[0x1E69DC788]);
    [v44 setHidden:1];
    [v44 setIsAccessibilityElement:0];
    [v35 addObject:v44];
  }

  if ([v9 useMultiSelectAccessory])
  {
    v56 = badgeText;
    v45 = v30;
    v46 = imageProperties;
    v47 = v29;
    accessories = [cellCopy accessories];
    v49 = [accessories pk_firstObjectPassingTest:&__block_literal_global_149];

    if (!v49)
    {
      v49 = objc_alloc_init(PKCellAccessoryMultiSelectIndicator);
    }

    -[PKCellAccessoryMultiSelectIndicator setSelected:](v49, "setSelected:", [v9 selected]);
    [v35 safelyAddObject:v49];

    v29 = v47;
    imageProperties = v46;
    v30 = v45;
    badgeText = v56;
  }

  if (v30)
  {
    v50 = v17;
  }

  else
  {
    v50 = 16.0;
  }

  if (v29)
  {
    v51 = v18;
  }

  else
  {
    v51 = 16.0;
  }

  [cellCopy setContentConfiguration:subtitleCellConfiguration];
  [cellCopy setConfigurationUpdateHandler:&__block_literal_global_36_0];
  [cellCopy setAccessories:v35];
  [cellCopy setIndentsAccessories:0];
  identifier = [v9 identifier];
  [cellCopy setAccessibilityIdentifier:identifier];

  [cellCopy setDirectionalLayoutMargins:{v50, v51, v50, v51}];

  return subtitleCellConfiguration;
}

uint64_t __80__PKPaymentSetupListSectionController_decoratePaymentSetListCell_forItem_style___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __80__PKPaymentSetupListSectionController_decoratePaymentSetListCell_forItem_style___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (id)defaultListLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = _UISolariumFeatureFlagEnabled();
    v5 = 10.0;
    if (v4)
    {
      v5 = 26.0;
    }

    [v2 _setCornerRadius:v5];
  }

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = v5;
  if (self->_items)
  {
    [v5 appendItems:?];
  }

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v9 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:identifierCopy];
  if (v9)
  {
    [defaultListLayout setHeaderMode:1];
  }

  v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:identifierCopy];
  if (v10)
  {
    [defaultListLayout setFooterMode:1];
  }

  v11 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];
  [v11 contentInsets];
  v13 = v12;
  v15 = v14;
  v16 = PKSetupListViewConstantsViewMargin();
  [v11 setContentInsets:{v13, v16, v15, v16}];

  return v11;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v13 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:identifierCopy];
    if (!v13)
    {
      goto LABEL_8;
    }

    v11 = v13;
    headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
    [headerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
    [headerConfiguration setAttributedText:v11];
    [headerConfiguration setDirectionalLayoutMargins:{self->_headerDirectionalLayoutMargins.top, self->_headerDirectionalLayoutMargins.leading, self->_headerDirectionalLayoutMargins.bottom, self->_headerDirectionalLayoutMargins.trailing}];
    goto LABEL_7;
  }

  if (*MEMORY[0x1E69DDC00] == kindCopy)
  {
    v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:identifierCopy];
    if (v10)
    {
      v11 = v10;
      headerConfiguration = [MEMORY[0x1E69DCC28] footerConfiguration];
      [headerConfiguration setAttributedText:v11];
LABEL_7:
      [registrationCopy setContentConfiguration:headerConfiguration];
    }
  }

LABEL_8:
}

- (NSDirectionalEdgeInsets)headerDirectionalLayoutMargins
{
  top = self->_headerDirectionalLayoutMargins.top;
  leading = self->_headerDirectionalLayoutMargins.leading;
  bottom = self->_headerDirectionalLayoutMargins.bottom;
  trailing = self->_headerDirectionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end