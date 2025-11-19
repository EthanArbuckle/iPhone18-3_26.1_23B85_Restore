@interface PKPaymentSetupListSectionController
- (NSDirectionalEdgeInsets)headerDirectionalLayoutMargins;
- (PKPaymentSetupListSectionController)init;
- (PKPaymentSetupListSectionController)initWithIdentifiers:(id)a3;
- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5;
- (id)defaultListLayout;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPaymentSetupListSectionController

- (PKPaymentSetupListSectionController)initWithIdentifiers:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PKPaymentSetupListSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifiers, a3);
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
  v4 = [v3 UUIDString];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(PKPaymentSetupListSectionController *)self initWithIdentifiers:v5];

  return v6;
}

- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5
{
  v7 = a3;
  result = a4;
  v9 = result;
  if (a5 == 1)
  {
    v10 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v19 = [v10 textProperties];
    v20 = PKOBKListSubtitleCellTitleFont();
    [v19 setFont:v20];

    v21 = [v10 secondaryTextProperties];
    v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v21 setColor:v22];

    v15 = [v10 secondaryTextProperties];
    v16 = [v9 icon];
    v23 = PKOBKListSubtitleCellSubtitleFont(v16 != 0);
    [v15 setFont:v23];

    v17 = 15.0;
    v18 = 13.0;
  }

  else
  {
    if (a5)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    v10 = [MEMORY[0x1E69DCC28] cellConfiguration];
    v11 = [v10 textProperties];
    v12 = PKOBKListInlineCellTitleFont();
    [v11 setFont:v12];

    v13 = [v10 secondaryTextProperties];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v13 setColor:v14];

    v15 = [v10 secondaryTextProperties];
    v16 = PKOBKListInlineCellSubtitleFont();
    [v15 setFont:v16];
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

  [v10 setImageToTextPadding:v24];
  [v10 directionalLayoutMargins];
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

  [v10 setDirectionalLayoutMargins:{v27, v28, v27, v26}];
  v29 = _UISolariumFeatureFlagEnabled();
  result = _UISolariumFeatureFlagEnabled();
  if (!v10)
  {
    goto LABEL_47;
  }

  v30 = result;
  v31 = [v10 imageProperties];
  [v31 setAccessibilityIgnoresInvertColors:1];
  v32 = [v9 title];
  [v10 setText:v32];

  v33 = [v9 subtitle];
  [v10 setSecondaryText:v33];

  v34 = [v9 icon];
  [v10 setImage:v34];

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [v9 badgeText];
  if (v36)
  {
    v37 = [PKCellAccessoryBadge accessoryBadgeWithTitle:v36];
    [v35 addObject:v37];
  }

  v38 = [v9 labelText];
  v57 = v38;
  if (v38)
  {
    v39 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:v38];
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
    v56 = v36;
    v45 = v30;
    v46 = v31;
    v47 = v29;
    v48 = [v7 accessories];
    v49 = [v48 pk_firstObjectPassingTest:&__block_literal_global_149];

    if (!v49)
    {
      v49 = objc_alloc_init(PKCellAccessoryMultiSelectIndicator);
    }

    -[PKCellAccessoryMultiSelectIndicator setSelected:](v49, "setSelected:", [v9 selected]);
    [v35 safelyAddObject:v49];

    v29 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v56;
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

  [v7 setContentConfiguration:v10];
  [v7 setConfigurationUpdateHandler:&__block_literal_global_36_0];
  [v7 setAccessories:v35];
  [v7 setIndentsAccessories:0];
  v52 = [v9 identifier];
  [v7 setAccessibilityIdentifier:v52];

  [v7 setDirectionalLayoutMargins:{v50, v51, v50, v51}];

  return v10;
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
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

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

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = v5;
  if (self->_items)
  {
    [v5 appendItems:?];
  }

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v9 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:v7];
  if (v9)
  {
    [v8 setHeaderMode:1];
  }

  v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:v7];
  if (v10)
  {
    [v8 setFooterMode:1];
  }

  v11 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:v6];
  [v11 contentInsets];
  v13 = v12;
  v15 = v14;
  v16 = PKSetupListViewConstantsViewMargin();
  [v11 setContentInsets:{v13, v16, v15, v16}];

  return v11;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v13 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:v9];
    if (!v13)
    {
      goto LABEL_8;
    }

    v11 = v13;
    v12 = [MEMORY[0x1E69DCC28] headerConfiguration];
    [v12 setAxesPreservingSuperviewLayoutMargins:0];
    [v12 setAttributedText:v11];
    [v12 setDirectionalLayoutMargins:{self->_headerDirectionalLayoutMargins.top, self->_headerDirectionalLayoutMargins.leading, self->_headerDirectionalLayoutMargins.bottom, self->_headerDirectionalLayoutMargins.trailing}];
    goto LABEL_7;
  }

  if (*MEMORY[0x1E69DDC00] == v8)
  {
    v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E69DCC28] footerConfiguration];
      [v12 setAttributedText:v11];
LABEL_7:
      [v14 setContentConfiguration:v12];
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