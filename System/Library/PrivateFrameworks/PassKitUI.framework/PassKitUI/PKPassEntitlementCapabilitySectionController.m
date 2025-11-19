@interface PKPassEntitlementCapabilitySectionController
- (BOOL)shouldHighlightItem:(id)a3;
- (PKPassEntitlementCapabilitySectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 composerView:(id)a5 isDisabled:(BOOL)a6 delegate:(id)a7;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)footerAttributedStringForIdentifier:(id)a3;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_allowSharingSwitchValueChanged:(id)a3;
- (void)_buildRowItemsWithNotify:(BOOL)a3;
- (void)_canSeeAllSwitchValueChanged:(id)a3;
- (void)_updateAllowSharingTo:(BOOL)a3;
- (void)didSelectItem:(id)a3;
- (void)setIsDisabled:(BOOL)a3;
@end

@implementation PKPassEntitlementCapabilitySectionController

- (PKPassEntitlementCapabilitySectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 composerView:(id)a5 isDisabled:(BOOL)a6 delegate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = PKPassEntitlementCapabilitySectionController;
  v16 = [(PKPassShareSectionController *)&v28 initWithIdentifiers:MEMORY[0x1E695E0F0]];
  v17 = v16;
  if (v16)
  {
    v16->_mode = a3;
    objc_storeStrong(&v16->_entitlementComposer, a4);
    objc_storeStrong(&v17->_composerView, a5);
    v17->_isDisabled = a6;
    objc_storeWeak(&v17->_delegate, v15);
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

- (void)_buildRowItemsWithNotify:(BOOL)a3
{
  v3 = a3;
  v123 = *MEMORY[0x1E69E9840];
  v5 = 0x1E695D000uLL;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  v9 = [(PKPassEntitlementsComposerView *)self->_composerView shareability];
  v96 = [(PKPassEntitlementsComposerView *)self->_composerView visibility];
  v94 = [(PKPassEntitlementsComposerView *)self->_composerView manageability];
  v101 = self;
  v10 = [(PKPassEntitlementsComposerView *)self->_composerView allPossibleCapabilitySets];
  v90 = v3;
  v89 = v10;
  if (PKSharingUsePredefinedCapabilitySets() && [v10 count])
  {
    v91 = v7;
    v92 = v6;
    v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v10;
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
          v16 = v9 == [v15 shareability] && v96 == objc_msgSend(v15, "visibility") && v94 == objc_msgSend(v15, "manageability");
          if (v16 | v8)
          {
            v17 = objc_alloc(MEMORY[0x1E696AEC0]);
            v18 = [v15 localizedName];
            v19 = [v17 initWithFormat:@"%@-%@", @"CapabilitySetSectionIdentifier", v18];

            v20 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v19];
            [(PKShareCapabilityRowItem *)v20 setSectionIdentifier:@"CapabilitySetSectionIdentifier"];
            [(PKShareCapabilityRowItem *)v20 setCapabilitySet:v15];
            v21 = [v15 localizedName];
            [(PKSharePreviewRowItem *)v20 setTitle:v21];

            [(PKSharePreviewRowItem *)v20 setDisplayCheckmark:v16];
            [(PKSharePreviewRowItem *)v20 setEnabled:!v101->_isDisabled];
            [(PKSharePreviewRowItem *)v20 setAccessoryEnabled:v8];
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
    if (v8 && !PKSharingAllowAdvancedCapabilitySelection())
    {
      v72 = v7;
      v73 = v6;
      v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PKPassEntitlementsComposerView *)self->_composerView shareability];
      v74 = PKSharingCapabilityShareabilityMaxDepth();
      v75 = PKSharingCapabilityShareabilityMaxDepth();
      v76 = [(PKPassEntitlementsComposerView *)v101->_composerView allPossibleShareability];
      v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
      v78 = [v76 containsObject:v77];

      if (v78)
      {
        v79 = [(PKPassEntitlementsComposerView *)v101->_composerView possibleVisibility]== 2;
      }

      else
      {
        v79 = 0;
      }

      v80 = [(PKPassEntitlementsComposerView *)v101->_composerView visibility];
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
      v84 = v78 && !v101->_isDisabled;
      [(PKSharePreviewRowItem *)v81 setEnabled:v84];
      [(PKSharePreviewRowItem *)v81 setAccessoryEnabled:1];
      [v97 addObject:v81];
      v66 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:@"SimpleCapabilityOptionCanSeeAllIdentifier"];

      [(PKShareCapabilityRowItem *)v66 setSectionIdentifier:@"SimpleCapabilityOptionsSectionIdentifier"];
      v85 = PKLocalizedShareableCredentialString(&cfstr_SimpleCapabili_0.isa);
      [(PKSharePreviewRowItem *)v66 setTitle:v85];

      if (v80 == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 2;
      }

      [(PKSharePreviewRowItem *)v66 setDisplayToggleState:v86];
      v87 = v79 && !v101->_isDisabled;
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
    v23 = [(PKPassEntitlementsComposerView *)self->_composerView allPossibleShareability];
    v24 = [v23 countByEnumeratingWithState:&v111 objects:v121 count:16];
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
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v111 + 1) + 8 * j);
          v30 = [v29 unsignedIntegerValue];
          v31 = [(PKPassEntitlementsComposerView *)v101->_composerView shareability]== v30;
          if ((v31 | v8))
          {
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"SharabilitySectionIdentifier", v29];
            v33 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v32];
            [(PKShareCapabilityRowItem *)v33 setSectionIdentifier:@"SharabilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v33 setCapability:v30];
            v110 = 0;
            v34 = PKSharingCapabilityShareabilityToLocalizedString();
            [(PKSharePreviewRowItem *)v33 setTitle:v34];

            [(PKSharePreviewRowItem *)v33 setSubtitle:0];
            [(PKSharePreviewRowItem *)v33 setDisplayCheckmark:v31 & v8];
            [(PKSharePreviewRowItem *)v33 setEnabled:!v101->_isDisabled];
            [(PKSharePreviewRowItem *)v33 setAccessoryEnabled:v8];
            [v98 addObject:v33];

            v26 = v30;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v111 objects:v121 count:16];
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
    v37 = v101;
    v99 = [(PKPassEntitlementsComposerView *)v101->_composerView allPossibleVisibility];
    v38 = [v99 countByEnumeratingWithState:&v106 objects:v120 count:16];
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
            objc_enumerationMutation(v99);
          }

          v42 = *(*(&v106 + 1) + 8 * k);
          v43 = [v42 unsignedIntegerValue];
          v44 = [(PKPassEntitlementsComposerView *)v37->_composerView visibility];
          v45 = v43 != 1 || v35;
          if ((v44 == v43) | v8 & 1 && v45)
          {
            v46 = v44 == v43;
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"VisibilitySectionIdentifier", v42];
            v48 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v47];
            [(PKShareCapabilityRowItem *)v48 setSectionIdentifier:@"VisibilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v48 setCapability:v43];
            v49 = PKSharingCapabilityVisibilityToLocalizedString();
            [(PKSharePreviewRowItem *)v48 setTitle:v49];

            [(PKSharePreviewRowItem *)v48 setDisplayCheckmark:v46 & v8];
            if (PKSharingCapabilityIsVisibilityValidForManageability())
            {
              v37 = v101;
              v50 = !v101->_isDisabled;
            }

            else
            {
              v50 = 0;
              v37 = v101;
            }

            [(PKSharePreviewRowItem *)v48 setEnabled:v50];
            [(PKSharePreviewRowItem *)v48 setAccessoryEnabled:v8];
            [v93 addObject:v48];
          }
        }

        v39 = [v99 countByEnumeratingWithState:&v106 objects:v120 count:16];
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
    v95 = [(PKPassEntitlementsComposerView *)v37->_composerView allPossibleManageability];
    v52 = [v95 countByEnumeratingWithState:&v102 objects:v119 count:16];
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
            objc_enumerationMutation(v95);
          }

          v56 = *(*(&v102 + 1) + 8 * m);
          v57 = [v56 unsignedIntegerValue];
          v58 = [(PKPassEntitlementsComposerView *)v37->_composerView manageability];
          v59 = v57 == -1 || v35;
          if ((v58 == v57) | v8 & 1 && v59)
          {
            v60 = v58 == v57;
            v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", @"ManageabilitySectionIdentifier", v56];
            v62 = [(PKSharePreviewRowItem *)[PKShareCapabilityRowItem alloc] initWithIdentifier:v61];
            [(PKShareCapabilityRowItem *)v62 setSectionIdentifier:@"ManageabilitySectionIdentifier"];
            [(PKShareCapabilityRowItem *)v62 setCapability:v57];
            v63 = PKSharingCapabilityManageabilityToLocalizedString();
            [(PKSharePreviewRowItem *)v62 setTitle:v63];

            [(PKSharePreviewRowItem *)v62 setDisplayCheckmark:v60 & v8];
            if (PKSharingCapabilityIsManageabilityValidForVisibility())
            {
              v37 = v101;
              v64 = !v101->_isDisabled;
            }

            else
            {
              v64 = 0;
              v37 = v101;
            }

            [(PKSharePreviewRowItem *)v62 setEnabled:v64];
            [(PKSharePreviewRowItem *)v62 setAccessoryEnabled:v8];
            [v97 addObject:v62];
          }
        }

        v53 = [v95 countByEnumeratingWithState:&v102 objects:v119 count:16];
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
  rowItemsForSection = v101->_rowItemsForSection;
  v101->_rowItemsForSection = v68;

  v70 = [v65 copy];
  [(PKPaymentSetupListSectionController *)v101 setIdentifiers:v70];

  if (v90)
  {
    WeakRetained = objc_loadWeakRetained(&v101->_delegate);
    [WeakRetained reloadDataAnimated:1];
  }
}

- (void)setIsDisabled:(BOOL)a3
{
  if (self->_isDisabled == !a3)
  {
    self->_isDisabled = a3;
    [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
  }
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 subtitle];
  [v8 setSecondaryText:v10];

  v11 = [v8 secondaryTextProperties];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setColor:v12];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v6 setContentConfiguration:v8];
  [v6 setUserInteractionEnabled:{objc_msgSend(v7, "enabled")}];
  if (([v7 displayChevron] & 1) != 0 || !objc_msgSend(v7, "displayToggleState"))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DC788]);
    [v13 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
    [v13 setHidden:{objc_msgSend(v7, "displayCheckmark") ^ 1}];
    goto LABEL_11;
  }

  v13 = [v7 displayToggleState];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  v15 = [v7 identifier];
  v16 = PKEqualObjects();

  if (v16)
  {
    v17 = &selRef__allowSharingSwitchValueChanged_;
LABEL_9:
    [v14 addTarget:self action:*v17 forControlEvents:4096];
    goto LABEL_10;
  }

  v18 = [v7 identifier];
  v19 = PKEqualObjects();

  if (v19)
  {
    v17 = &selRef__canSeeAllSwitchValueChanged_;
    goto LABEL_9;
  }

LABEL_10:
  [v14 setOn:v13 == 1];
  [v14 setEnabled:{objc_msgSend(v7, "accessoryEnabled")}];
  v13 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v14 placement:1];
  [v13 setMaintainsFixedSize:1];

LABEL_11:
  if ([v7 accessoryEnabled])
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemDarkGrayColor];
  }
  v20 = ;
  [v13 setTintColor:v20];

  v24[0] = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v6 setAccessories:v21];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__PKPassEntitlementCapabilitySectionController_decorateListCell_forRowItem___block_invoke;
  v23[3] = &unk_1E8012AC8;
  v23[4] = self;
  [v6 setConfigurationUpdateHandler:v23];

  return v8;
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

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 == @"SharabilitySectionIdentifier")
  {
    goto LABEL_4;
  }

  if (!v3)
  {
LABEL_18:

    goto LABEL_19;
  }

  v5 = [(__CFString *)v3 isEqualToString:@"SharabilitySectionIdentifier"];

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
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v26[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = [v9 initWithString:v8 attributes:v12];

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (id)footerAttributedStringForIdentifier:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 == @"CapabilitySetSectionIdentifier")
  {
    goto LABEL_4;
  }

  if (!v3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = [(__CFString *)v3 isEqualToString:@"CapabilitySetSectionIdentifier"];

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
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v13 = [v9 initWithString:v8 attributes:v12];

    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)didSelectItem:(id)a3
{
  v20 = a3;
  v4 = [v20 sectionIdentifier];
  v5 = v4;
  if (v4 == @"SharabilitySectionIdentifier")
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"SharabilitySectionIdentifier"];

    if (v6)
    {
LABEL_4:
      -[PKPassEntitlementsComposerView setShareability:](self->_composerView, "setShareability:", [v20 capability]);
      goto LABEL_17;
    }

    v7 = v5;
    if (v7 == @"VisibilitySectionIdentifier" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"VisibilitySectionIdentifier"], v8, v9))
    {
      -[PKPassEntitlementsComposerView setVisibility:](self->_composerView, "setVisibility:", [v20 capability]);
      goto LABEL_17;
    }

    v10 = v8;
    if (v10 == @"ManageabilitySectionIdentifier" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"ManageabilitySectionIdentifier"], v11, v12))
    {
      -[PKPassEntitlementsComposerView setManageability:](self->_composerView, "setManageability:", [v20 capability]);
      goto LABEL_17;
    }

    v13 = v11;
    if (v13 == @"CapabilitySetSectionIdentifier" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"CapabilitySetSectionIdentifier"], v14, v15))
    {
      composerView = self->_composerView;
      v17 = [v20 capabilitySet];
      [(PKPassEntitlementsComposerView *)composerView updateCapabilitiesWithSet:v17];

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

- (BOOL)shouldHighlightItem:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    v5 = [v4 sectionIdentifier];
    if (v5 != @"SimpleCapabilityOptionsSectionIdentifier")
    {
      v6 = v5;
      if (!v5 || (v7 = [(__CFString *)v5 isEqualToString:@"SimpleCapabilityOptionsSectionIdentifier"], v6, v6, !v7))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69DC5D0];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [(NSDictionary *)self->_rowItemsForSection objectForKeyedSubscript:v6];

  [v7 appendItems:v8];

  return v7;
}

- (void)_allowSharingSwitchValueChanged:(id)a3
{
  -[PKPassEntitlementCapabilitySectionController _updateAllowSharingTo:](self, "_updateAllowSharingTo:", [a3 isOn]);

  [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
}

- (void)_canSeeAllSwitchValueChanged:(id)a3
{
  v4 = [a3 isOn];
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(PKPassEntitlementsComposerView *)self->_composerView setVisibility:v5];
  [(PKPassEntitlementCapabilitySectionController *)self _updateAllowSharingTo:v4];

  [(PKPassEntitlementCapabilitySectionController *)self _buildRowItemsWithNotify:1];
}

- (void)_updateAllowSharingTo:(BOOL)a3
{
  composerView = self->_composerView;
  if (a3)
  {
    v5 = [(PKPassEntitlementsComposerView *)composerView visibility];
    v6 = self->_composerView;
    if (v5 == 2 && (-[PKPassEntitlementsComposerView allPossibleShareability](v6, "allPossibleShareability"), v7 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v6 = self->_composerView, v9))
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