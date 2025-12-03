@interface PKPassEntitlementCapabilitySectionController
- (BOOL)shouldHighlightItem:(id)item;
- (PKPassEntitlementCapabilitySectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer composerView:(id)view isDisabled:(BOOL)disabled delegate:(id)delegate;
- (id)decorateListCell:(id)cell forRowItem:(id)item;
- (id)footerAttributedStringForIdentifier:(id)identifier;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_allowSharingSwitchValueChanged:(id)changed;
- (void)_buildRowItemsWithNotify:(BOOL)notify;
- (void)_canSeeAllSwitchValueChanged:(id)changed;
- (void)_updateAllowSharingTo:(BOOL)to;
- (void)didSelectItem:(id)item;
- (void)setIsDisabled:(BOOL)disabled;
@end

@implementation PKPassEntitlementCapabilitySectionController

- (PKPassEntitlementCapabilitySectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer composerView:(id)view isDisabled:(BOOL)disabled delegate:(id)delegate
{
  composerCopy = composer;
  viewCopy = view;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = PKPassEntitlementCapabilitySectionController;
  v16 = [(PKPassShareSectionController *)&v28 initWithIdentifiers:MEMORY[0x1E695E0F0]];
  v17 = v16;
  if (v16)
  {
    v16->_mode = mode;
    objc_storeStrong(&v16->_entitlementComposer, composer);
    objc_storeStrong(&v17->_composerView, view);
    v17->_isDisabled = disabled;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    [(PKPassEntitlementCapabilitySectionController *)v17 _buildRowItemsWithNotify:0];
    objc_initWeak(&location, v17);
    v18 = MEMORY[0x1E69DC800];
    v19 = objc_opt_class();
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __114__PKPassEntitlementCapabilitySectionController_initWithMode_entitlementComposer_composerView_isDisabled_delegate___block_invoke;
    v25 = &unk_1E8012088;
    objc_copyWeak(&v26, &location);
    v20 = [v18 registrationWithCellClass:v19 configurationHandler:&v22];
    [(PKPaymentSetupListSectionController *)v17 setCellRegistration:v20, v22, v23, v24, v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __114__PKPassEntitlementCapabilitySectionController_initWithMode_entitlementComposer_composerView_isDisabled_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forRowItem:v6];
  }
}

- (void)_buildRowItemsWithNotify:(BOOL)notify
{
  notifyCopy = notify;
  v123 = *MEMORY[0x1E69E9840];
  v5 = 0x1E695D000uLL;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  editable = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  shareability = [(PKPassEntitlementsComposerView *)self->_composerView shareability];
  visibility = [(PKPassEntitlementsComposerView *)self->_composerView visibility];
  manageability = [(PKPassEntitlementsComposerView *)self->_composerView manageability];
  selfCopy = self;
  allPossibleCapabilitySets = [(PKPassEntitlementsComposerView *)self->_composerView allPossibleCapabilitySets];
  v90 = notifyCopy;
  v89 = allPossibleCapabilitySets;
  if (PKSharingUsePredefinedCapabilitySets() && [allPossibleCapabilitySets count])
  {
    v91 = v7;
    v92 = v6;
    v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = allPossibleCapabilitySets;
    v11 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v116;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v116 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v115 + 1) + 8 * i);
          v16 = shareability == [v15 shareability] && visibility == objc_msgSend(v15, "visibility") && manageability == objc_msgSend(v15, "manageability");
          if (v16 | editable)
          {
            v17 = objc_alloc(MEMORY[0x1E696AEC0]);
            localizedName = [v15 localizedName];
            v19 = [v17 initWithFormat:@"%@-%@", @"CapabilitySetSectionIdentifier", localizedName];

            v20 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v19];
            [(PKShareCapabilityRowItem *)v20 setSectionIdentifier:@"CapabilitySetSectionIdentifier"];
            [(PKShareCapabilityRowItem *)v20 setCapabilitySet:v15];
            localizedName2 = [v15 localizedName];
            [(PKSharePreviewRowItem *)v20 setTitle:localizedName2];

            [(PKSharePreviewRowItem *)v20 setDisplayCheckmark:v16];
            [(PKSharePreviewRowItem *)v20 setEnabled:!selfCopy->_isDisabled];
            [(PKSharePreviewRowItem *)v20 setAccessoryEnabled:editable];
            [v97 addObject:v20];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
      }

      while (v12);
    }

    v22 = @"CapabilitySetSectionIdentifier";
  }

  else
  {
    if (editable && !PKSharingAllowAdvancedCapabilitySelection())
    {
      v72 = v7;
      v73 = v6;
      v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PKPassEntitlementsComposerView *)self->_composerView shareability];
      v74 = PKSharingCapabilityShareabilityMaxDepth();
      v75 = PKSharingCapabilityShareabilityMaxDepth();
      allPossibleShareability = [(PKPassEntitlementsComposerView *)selfCopy->_composerView allPossibleShareability];
      v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      v78 = [allPossibleShareability containsObject:v77];

      if (v78)
      {
        v79 = [(PKPassEntitlementsComposerView *)selfCopy->_composerView possibleVisibility]== 2;
      }

      else
      {
        v79 = 0;
      }

      visibility2 = [(PKPassEntitlementsComposerView *)selfCopy->_composerView visibility];
      v81 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:@"SimpleCapabilityOptionAllowSharingIdentifier"];
      [(PKShareCapabilityRowItem *)v81 setSectionIdentifier:@"SimpleCapabilityOptionsSectionIdentifier"];
      v82 = PKLocalizedShareableCredentialString(&cfstr_SimpleCapabili.isa);
      [(PKSharePreviewRowItem *)v81 setTitle:v82];

      if (v74 >= v75)
      {
        v83 = 1;
      }

      else
      {
        v83 = 2;
      }

      [(PKSharePreviewRowItem *)v81 setDisplayToggleState:v83];
      v84 = v78 && !selfCopy->_isDisabled;
      [(PKSharePreviewRowItem *)v81 setEnabled:v84];
      [(PKSharePreviewRowItem *)v81 setAccessoryEnabled:1];
      [v97 addObject:v81];
      v66 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:@"SimpleCapabilityOptionCanSeeAllIdentifier"];

      [(PKShareCapabilityRowItem *)v66 setSectionIdentifier:@"SimpleCapabilityOptionsSectionIdentifier"];
      v85 = PKLocalizedShareableCredentialString(&cfstr_SimpleCapabili_0.isa);
      [(PKSharePreviewRowItem *)v66 setTitle:v85];

      if (visibility2 == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 2;
      }

      [(PKSharePreviewRowItem *)v66 setDisplayToggleState:v86];
      v87 = v79 && !selfCopy->_isDisabled;
      v65 = v73;
      v67 = v72;
      [(PKSharePreviewRowItem *)v66 setEnabled:v87];
      [(PKSharePreviewRowItem *)v66 setAccessoryEnabled:1];
      [v97 addObject:v66];
      [v73 addObject:@"SimpleCapabilityOptionsSectionIdentifier"];
      v88 = [v97 copy];
      [v72 setObject:v88 forKeyedSubscript:@"SimpleCapabilityOptionsSectionIdentifier"];

      goto LABEL_64;
    }

    v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    allPossibleShareability2 = [(PKPassEntitlementsComposerView *)self->_composerView allPossibleShareability];
    v24 = [allPossibleShareability2 countByEnumeratingWithState:&v111 objects:v121 count:16];
    v91 = v7;
    v92 = v6;
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v112;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v112 != v27)
          {
            objc_enumerationMutation(allPossibleShareability2);
          }

          v29 = *(*(&v111 + 1) + 8 * j);
          unsignedIntegerValue = [v29 unsignedIntegerValue];
          v31 = [(PKPassEntitlementsComposerView *)selfCopy->_composerView shareability]== unsignedIntegerValue;
          if ((v31 | editable))
          {
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"SharabilitySectionIdentifier", v29];
            v33 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v32];
            [(PKShareCapabilityRowItem *)v33 setSectionIdentifier:@"SharabilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v33 setCapability:unsignedIntegerValue];
            v110 = 0;
            v34 = PKSharingCapabilityShareabilityToLocalizedString();
            [(PKSharePreviewRowItem *)v33 setTitle:v34];

            [(PKSharePreviewRowItem *)v33 setSubtitle:0];
            [(PKSharePreviewRowItem *)v33 setDisplayCheckmark:v31 & editable];
            [(PKSharePreviewRowItem *)v33 setEnabled:!selfCopy->_isDisabled];
            [(PKSharePreviewRowItem *)v33 setAccessoryEnabled:editable];
            [v98 addObject:v33];

            v26 = unsignedIntegerValue;
          }
        }

        v25 = [allPossibleShareability2 countByEnumeratingWithState:&v111 objects:v121 count:16];
      }

      while (v25);
      v35 = v26 != 0;
      v7 = v91;
      v6 = v92;
      v5 = 0x1E695D000;
    }

    else
    {
      v35 = 0;
    }

    [v6 addObject:@"SharabilitySectionIdentifier"];
    v36 = [v98 copy];
    [v7 setObject:v36 forKeyedSubscript:@"SharabilitySectionIdentifier"];

    v93 = objc_alloc_init(*(v5 + 3952));
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v37 = selfCopy;
    allPossibleVisibility = [(PKPassEntitlementsComposerView *)selfCopy->_composerView allPossibleVisibility];
    v38 = [allPossibleVisibility countByEnumeratingWithState:&v106 objects:v120 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v107;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v107 != v40)
          {
            objc_enumerationMutation(allPossibleVisibility);
          }

          v42 = *(*(&v106 + 1) + 8 * k);
          unsignedIntegerValue2 = [v42 unsignedIntegerValue];
          visibility3 = [(PKPassEntitlementsComposerView *)v37->_composerView visibility];
          v45 = unsignedIntegerValue2 != 1 || v35;
          if ((visibility3 == unsignedIntegerValue2) | editable & 1 && v45)
          {
            v46 = visibility3 == unsignedIntegerValue2;
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"VisibilitySectionIdentifier", v42];
            v48 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v47];
            [(PKShareCapabilityRowItem *)v48 setSectionIdentifier:@"VisibilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v48 setCapability:unsignedIntegerValue2];
            v49 = PKSharingCapabilityVisibilityToLocalizedString();
            [(PKSharePreviewRowItem *)v48 setTitle:v49];

            [(PKSharePreviewRowItem *)v48 setDisplayCheckmark:v46 & editable];
            if (PKSharingCapabilityIsVisibilityValidForManageability())
            {
              v37 = selfCopy;
              v50 = !selfCopy->_isDisabled;
            }

            else
            {
              v50 = 0;
              v37 = selfCopy;
            }

            [(PKSharePreviewRowItem *)v48 setEnabled:v50];
            [(PKSharePreviewRowItem *)v48 setAccessoryEnabled:editable];
            [v93 addObject:v48];
          }
        }

        v39 = [allPossibleVisibility countByEnumeratingWithState:&v106 objects:v120 count:16];
      }

      while (v39);
    }

    [v92 addObject:@"VisibilitySectionIdentifier"];
    v51 = [v93 copy];
    [v91 setObject:v51 forKeyedSubscript:@"VisibilitySectionIdentifier"];

    v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    allPossibleManageability = [(PKPassEntitlementsComposerView *)v37->_composerView allPossibleManageability];
    v52 = [allPossibleManageability countByEnumeratingWithState:&v102 objects:v119 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v103;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v103 != v54)
          {
            objc_enumerationMutation(allPossibleManageability);
          }

          v56 = *(*(&v102 + 1) + 8 * m);
          unsignedIntegerValue3 = [v56 unsignedIntegerValue];
          manageability2 = [(PKPassEntitlementsComposerView *)v37->_composerView manageability];
          v59 = unsignedIntegerValue3 == -1 || v35;
          if ((manageability2 == unsignedIntegerValue3) | editable & 1 && v59)
          {
            v60 = manageability2 == unsignedIntegerValue3;
            v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"ManageabilitySectionIdentifier", v56];
            v62 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v61];
            [(PKShareCapabilityRowItem *)v62 setSectionIdentifier:@"ManageabilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v62 setCapability:unsignedIntegerValue3];
            v63 = PKSharingCapabilityManageabilityToLocalizedString();
            [(PKSharePreviewRowItem *)v62 setTitle:v63];

            [(PKSharePreviewRowItem *)v62 setDisplayCheckmark:v60 & editable];
            if (PKSharingCapabilityIsManageabilityValidForVisibility())
            {
              v37 = selfCopy;
              v64 = !selfCopy->_isDisabled;
            }

            else
            {
              v64 = 0;
              v37 = selfCopy;
            }

            [(PKSharePreviewRowItem *)v62 setEnabled:v64];
            [(PKSharePreviewRowItem *)v62 setAccessoryEnabled:editable];
            [v97 addObject:v62];
          }
        }

        v53 = [allPossibleManageability countByEnumeratingWithState:&v102 objects:v119 count:16];
      }

      while (v53);
    }

    v22 = @"ManageabilitySectionIdentifier";
  }

  v65 = v92;
  [v92 addObject:v22];
  v66 = [v97 copy];
  v67 = v91;
  [v91 setObject:v66 forKeyedSubscript:v22];
LABEL_64:

  v68 = [v67 copy];
  rowItemsForSection = selfCopy->_rowItemsForSection;
  selfCopy->_rowItemsForSection = v68;

  v70 = [v65 copy];
  [(PKPaymentSetupListSectionController *)selfCopy setIdentifiers:v70];

  if (v90)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained reloadDataAnimated:1];
  }
}

- (void)setIsDisabled:(BOOL)disabled
{
  if (self->_isDisabled == !disabled)
  {
    self->_isDisabled = disabled;
    [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
  }
}

- (id)decorateListCell:(id)cell forRowItem:(id)item
{
  v24[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  title = [itemCopy title];
  [subtitleCellConfiguration setText:title];

  subtitle = [itemCopy subtitle];
  [subtitleCellConfiguration setSecondaryText:subtitle];

  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [cellCopy setContentConfiguration:subtitleCellConfiguration];
  [cellCopy setUserInteractionEnabled:{objc_msgSend(itemCopy, "enabled")}];
  if (([itemCopy displayChevron] & 1) != 0 || !objc_msgSend(itemCopy, "displayToggleState"))
  {
    displayToggleState = objc_alloc_init(MEMORY[0x1E69DC788]);
    [displayToggleState setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
    [displayToggleState setHidden:{objc_msgSend(itemCopy, "displayCheckmark") ^ 1}];
    goto LABEL_11;
  }

  displayToggleState = [itemCopy displayToggleState];
  if (!displayToggleState)
  {
    goto LABEL_11;
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  identifier = [itemCopy identifier];
  v16 = PKEqualObjects();

  if (v16)
  {
    v17 = &selRef__allowSharingSwitchValueChanged_;
LABEL_9:
    [v14 addTarget:self action:*v17 forControlEvents:4096];
    goto LABEL_10;
  }

  identifier2 = [itemCopy identifier];
  v19 = PKEqualObjects();

  if (v19)
  {
    v17 = &selRef__canSeeAllSwitchValueChanged_;
    goto LABEL_9;
  }

LABEL_10:
  [v14 setOn:displayToggleState == 1];
  [v14 setEnabled:{objc_msgSend(itemCopy, "accessoryEnabled")}];
  displayToggleState = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v14 placement:1];
  [displayToggleState setMaintainsFixedSize:1];

LABEL_11:
  if ([itemCopy accessoryEnabled])
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemDarkGrayColor];
  }
  v20 = ;
  [displayToggleState setTintColor:v20];

  v24[0] = displayToggleState;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [cellCopy setAccessories:v21];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__PKPassEntitlementCapabilitySectionController_decorateListCell_forRowItem___block_invoke;
  v23[3] = &unk_1E8012AC8;
  v23[4] = self;
  [cellCopy setConfigurationUpdateHandler:v23];

  return subtitleCellConfiguration;
}

void __76__PKPassEntitlementCapabilitySectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x1E69DC6E8];
  v6 = a2;
  v7 = [v5 listCellConfiguration];
  if (*(*(a1 + 32) + 72) == 2)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v8 = ;
  if ([v10 isHighlighted] & 1) != 0 || (objc_msgSend(v10, "isSelected"))
  {
    v9 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v7 setBackgroundColor:v9];
  }

  else
  {
    [v7 setBackgroundColor:v8];
  }

  [v6 setBackgroundConfiguration:v7];
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v26[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy == @"SharabilitySectionIdentifier")
  {
    goto LABEL_4;
  }

  if (!identifierCopy)
  {
LABEL_18:

    goto LABEL_19;
  }

  v5 = [(__CFString *)identifierCopy isEqualToString:@"SharabilitySectionIdentifier"];

  if (v5)
  {
LABEL_4:
    v6 = @"SHARED_ENTITLEMENT_CAPABILITY_SHAREABILITY_HEADER";
    goto LABEL_5;
  }

  v14 = v4;
  if (v14 == @"VisibilitySectionIdentifier" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"VisibilitySectionIdentifier"], v15, (v16 & 1) != 0))
  {
    v6 = @"SHARED_ENTITLEMENT_CAPABILITY_VISIBILITY_HEADER";
    goto LABEL_5;
  }

  v17 = v15;
  if (v17 == @"ManageabilitySectionIdentifier" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"ManageabilitySectionIdentifier"], v18, (v19 & 1) != 0))
  {
    v6 = @"SHARED_ENTITLEMENT_CAPABILITY_MANAGEABILITY_HEADER";
    goto LABEL_5;
  }

  v20 = v18;
  if (v20 != @"CapabilitySetSectionIdentifier")
  {
    v21 = v20;
    v22 = [(__CFString *)v20 isEqualToString:@"CapabilitySetSectionIdentifier"];

    if ((v22 & 1) == 0)
    {
      v23 = v21;
      if (v23 != @"OverviewSectionIdentifier")
      {
        [(__CFString *)v23 isEqualToString:@"OverviewSectionIdentifier"];
      }

      goto LABEL_18;
    }
  }

  v6 = @"SHARED_ENTITLEMENT_CAPABILITY_SET_HEADER";
LABEL_5:
  v7 = PKLocalizedShareableCredentialString(&v6->isa);
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25[0] = *MEMORY[0x1E69DB648];
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
    v26[0] = v10;
    v25[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v26[1] = secondaryLabelColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [v9 initWithString:v8 attributes:v12];

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (id)footerAttributedStringForIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy == @"CapabilitySetSectionIdentifier")
  {
    goto LABEL_4;
  }

  if (!identifierCopy)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = [(__CFString *)identifierCopy isEqualToString:@"CapabilitySetSectionIdentifier"];

  if (v5)
  {
LABEL_4:
    v6 = @"SHARED_ENTITLEMENT_CAPABILITY_SET_FOOTER";
    goto LABEL_5;
  }

  v14 = v4;
  if (v14 != @"SimpleCapabilityOptionsSectionIdentifier")
  {
    v15 = v14;
    v16 = [(__CFString *)v14 isEqualToString:@"SimpleCapabilityOptionsSectionIdentifier"];

    if ((v16 & 1) == 0)
    {
      v17 = v15;
      if (v17 != @"OverviewSectionIdentifier")
      {
        [(__CFString *)v17 isEqualToString:@"OverviewSectionIdentifier"];
      }

      goto LABEL_12;
    }
  }

  v6 = @"SIMPLE_CAPABILITY_CREATION_FOOTER";
LABEL_5:
  v7 = PKLocalizedShareableCredentialString(&v6->isa);
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19[0] = *MEMORY[0x1E69DB648];
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
    v20[0] = v10;
    v19[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20[1] = secondaryLabelColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v13 = [v9 initWithString:v8 attributes:v12];

    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  sectionIdentifier = [itemCopy sectionIdentifier];
  v5 = sectionIdentifier;
  if (sectionIdentifier == @"SharabilitySectionIdentifier")
  {
    goto LABEL_4;
  }

  if (sectionIdentifier)
  {
    v6 = [(__CFString *)sectionIdentifier isEqualToString:@"SharabilitySectionIdentifier"];

    if (v6)
    {
LABEL_4:
      -[PKPassEntitlementsComposerView setShareability:](self->_composerView, "setShareability:", [itemCopy capability]);
      goto LABEL_17;
    }

    v7 = v5;
    if (v7 == @"VisibilitySectionIdentifier" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"VisibilitySectionIdentifier"], v8, v9))
    {
      -[PKPassEntitlementsComposerView setVisibility:](self->_composerView, "setVisibility:", [itemCopy capability]);
      goto LABEL_17;
    }

    v10 = v8;
    if (v10 == @"ManageabilitySectionIdentifier" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"ManageabilitySectionIdentifier"], v11, v12))
    {
      -[PKPassEntitlementsComposerView setManageability:](self->_composerView, "setManageability:", [itemCopy capability]);
      goto LABEL_17;
    }

    v13 = v11;
    if (v13 == @"CapabilitySetSectionIdentifier" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"CapabilitySetSectionIdentifier"], v14, v15))
    {
      composerView = self->_composerView;
      capabilitySet = [itemCopy capabilitySet];
      [(PKPassEntitlementsComposerView *)composerView updateCapabilitiesWithSet:capabilitySet];

      goto LABEL_17;
    }

    v18 = v14;
    if (v18 != @"OverviewSectionIdentifier")
    {
      [(__CFString *)v18 isEqualToString:@"OverviewSectionIdentifier"];
    }
  }

LABEL_17:
  [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  v8 = 0;
  if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    sectionIdentifier = [itemCopy sectionIdentifier];
    if (sectionIdentifier != @"SimpleCapabilityOptionsSectionIdentifier")
    {
      v6 = sectionIdentifier;
      if (!sectionIdentifier || (v7 = [(__CFString *)sectionIdentifier isEqualToString:@"SimpleCapabilityOptionsSectionIdentifier"], v6, v6, !v7))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E69DC5D0];
  identifierCopy = identifier;
  v7 = objc_alloc_init(v5);
  v8 = [(NSDictionary *)self->_rowItemsForSection objectForKeyedSubscript:identifierCopy];

  [v7 appendItems:v8];

  return v7;
}

- (void)_allowSharingSwitchValueChanged:(id)changed
{
  -[PKPassEntitlementCapabilitySectionController _updateAllowSharingTo:](self, "_updateAllowSharingTo:", [changed isOn]);

  [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
}

- (void)_canSeeAllSwitchValueChanged:(id)changed
{
  isOn = [changed isOn];
  if (isOn)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(PKPassEntitlementsComposerView *)self->_composerView setVisibility:v5];
  [(PKPassEntitlementCapabilitySectionController *)self _updateAllowSharingTo:isOn];

  [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
}

- (void)_updateAllowSharingTo:(BOOL)to
{
  composerView = self->_composerView;
  if (to)
  {
    visibility = [(PKPassEntitlementsComposerView *)composerView visibility];
    v6 = self->_composerView;
    if (visibility == 2 && (-[PKPassEntitlementsComposerView allPossibleShareability](v6, "allPossibleShareability"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v6 = self->_composerView, v9))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [(PKPassEntitlementsComposerView *)v6 setShareability:v10];
  }

  else
  {
    [(PKPassEntitlementsComposerView *)composerView setShareability:0];
    v11 = self->_composerView;

    [(PKPassEntitlementsComposerView *)v11 setVisibility:1];
  }
}

@end