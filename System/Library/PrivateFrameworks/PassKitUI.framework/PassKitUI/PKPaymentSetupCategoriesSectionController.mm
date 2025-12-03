@interface PKPaymentSetupCategoriesSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (BOOL)updateWithRequirements:(unint64_t)requirements provisioningController:(id)controller paymentSetupProductModel:(id)model forceProductConfiguration:(BOOL)configuration;
- (PKPaymentSetupCategoriesSectionController)init;
- (PKPaymentSetupCategoriesSectionControllerDelegate)delegate;
- (id)_listItemForItemIdentifier:(id)identifier paymentSetupProductModel:(id)model;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)orderedAnalyticsProductCategories;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_updateItemIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)hideLoadingIndicatorsAnimated:(BOOL)animated;
@end

@implementation PKPaymentSetupCategoriesSectionController

- (PKPaymentSetupCategoriesSectionController)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupCategoriesSectionController;
  v2 = [(PKPaymentSetupListSectionController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    p_width = &v2->_iconSize.width;
    v5 = _UISolariumFeatureFlagEnabled();
    v6 = 32.0;
    if (!v5)
    {
      v6 = 28.0;
    }

    *p_width = v6;
    v3->_iconSize.height = v6;
  }

  return v3;
}

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  cellCopy = cell;
  itemCopy = item;
  identifier = [itemCopy identifier];
  v10 = *MEMORY[0x1E69BC2B0];
  v11 = identifier;
  v12 = v11;
  if (v11 == v10)
  {

    goto LABEL_7;
  }

  if (v11 && v10)
  {
    v13 = [v11 isEqualToString:v10];

    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_7:
    [(PKPaymentSetupListSectionController *)&v19 decoratePaymentSetListCell:cellCopy forItem:itemCopy style:1, v18.receiver, v18.super_class, self, PKPaymentSetupCategoriesSectionController];
    goto LABEL_10;
  }

LABEL_9:
  [(PKPaymentSetupListSectionController *)&v18 decoratePaymentSetListCell:cellCopy forItem:itemCopy style:0, self, PKPaymentSetupCategoriesSectionController, v19.receiver, v19.super_class];
  v14 = LABEL_10:;
  imageProperties = [v14 imageProperties];
  p_iconSize = &self->_iconSize;
  [imageProperties setMaximumSize:{p_iconSize->width, p_iconSize->height}];
  [imageProperties setReservedLayoutSize:{p_iconSize->width, p_iconSize->height}];
  [imageProperties setCornerRadius:6.0];
  [cellCopy setContentConfiguration:v14];

  return v14;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMutableDictionary *)self->_sectionIdentifiersToItemIdentifierMapping objectForKey:identifierCopy, 0];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:*(*(&v15 + 1) + 8 * i)];
        [v7 safelyAddObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v6 appendItems:v7];

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  environmentCopy = environment;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  v9 = [(NSMutableDictionary *)self->_sectionIdentifierToSectionTitleMapping objectForKey:identifierCopy];

  [defaultListLayout setHeaderMode:{objc_msgSend(v9, "length") != 0}];
  v10 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  [v10 contentInsets];
  [v10 setContentInsets:PKSetupViewConstantsListSectionInset(v11)];

  return v10;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DCC28];
  identifierCopy = identifier;
  registrationCopy = registration;
  headerConfiguration = [v7 headerConfiguration];
  [headerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
  v11 = [(NSMutableDictionary *)self->_sectionIdentifierToSectionTitleMapping objectForKey:identifierCopy];

  if ([v11 length])
  {
    v19[0] = *MEMORY[0x1E69DB648];
    v12 = PKOBKListHeaderFont();
    v20[0] = v12;
    v19[1] = *MEMORY[0x1E69DB650];
    v13 = PKOBKListHeaderTextColor();
    v20[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v14];
    [headerConfiguration setAttributedText:v15];

    v16 = PKSetupViewConstantsViewMargin();
    v17 = PKSetupListViewConstantsViewMargin();
    v18 = v16 - v17;
    if (v17 > v16)
    {
      v18 = 0.0;
    }

    [headerConfiguration setDirectionalLayoutMargins:{10.0, v18, 10.0, v18}];
  }

  else
  {
    [headerConfiguration setAttributedText:0];
  }

  [registrationCopy setContentConfiguration:headerConfiguration];
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  self->_didHideLoadingIndicators = 0;
  identifier = [itemCopy identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x1E69BC2B0]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained didSelectYourCardsWithCompletion:0];
  }

  else
  {
    category = [itemCopy category];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __59__PKPaymentSetupCategoriesSectionController_didSelectItem___block_invoke;
    v15 = &unk_1E8012FD0;
    selfCopy = self;
    v10 = identifier;
    v17 = v10;
    v11 = [v8 didSelectCategory:category completion:&v12];

    if (v11 && !self->_didHideLoadingIndicators)
    {
      [(PKPaymentSetupCategoriesSectionController *)self _updateItemIdentifier:v10 loadingIndicatorVisibility:1 animated:0, v12, v13, v14, v15, selfCopy];
    }
  }
}

uint64_t __59__PKPaymentSetupCategoriesSectionController_didSelectItem___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateItemIdentifier:*(result + 40) loadingIndicatorVisibility:0 animated:0];
  }

  return result;
}

- (BOOL)shouldHighlightItem:(id)item
{
  identifier = [item identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E69BC2B0]])
  {
    hasCardsOnFileSelectable = self->_hasCardsOnFileSelectable;
  }

  else
  {
    hasCardsOnFileSelectable = 1;
  }

  return hasCardsOnFileSelectable;
}

- (void)_updateItemIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:?];
  v9 = v8;
  if (v8 && [v8 loadingIndicatorVisible] != visibilityCopy)
  {
    v10 = [v9 copy];
    [v10 setLoadingIndicatorVisible:visibilityCopy];
    [(NSMutableDictionary *)self->_itemIdentifierToItemMapping setObject:v10 forKey:identifierCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadItem:v10 animated:animatedCopy];
  }
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  self->_didHideLoadingIndicators = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x1E69BC2B0];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = v11;
        if (v11 == v9)
        {
        }

        else
        {
          if (!v9 || !v11)
          {

LABEL_15:
            [(PKPaymentSetupCategoriesSectionController *)self _updateItemIdentifier:v12 loadingIndicatorVisibility:0 animated:animatedCopy];
            goto LABEL_16;
          }

          v13 = [v11 isEqualToString:v9];

          if (!v13)
          {
            goto LABEL_15;
          }
        }

        if (self->_hasCardsOnFileSelectable)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v10;
      }

      while (v7 != v10);
      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)orderedAnalyticsProductCategories
{
  v2 = [(NSMutableArray *)self->_orderedAnalyticsProductCategories copy];

  return v2;
}

- (BOOL)updateWithRequirements:(unint64_t)requirements provisioningController:(id)controller paymentSetupProductModel:(id)model forceProductConfiguration:(BOOL)configuration
{
  v169 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v9 = configuration || (requirements & 2) != 0 && (self->_currentConfiguredRequirements & 2) == 0 || (requirements & 8) != 0 && (self->_currentConfiguredRequirements & 8) == 0;
  v10 = self->_sectionIdentifierToSectionTitleMapping;
  v11 = self->_itemIdentifierToItemMapping;
  v99 = 80;
  v12 = self->_sectionIdentifiersToItemIdentifierMapping;
  v13 = self->_orderedSectionIdentifiers;
  v14 = v13;
  selfCopy = self;
  if (v9)
  {
    v103 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v111 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    obj = [modelCopy allSections];
    v108 = [obj countByEnumeratingWithState:&v157 objects:v168 count:16];
    if (!v108)
    {
      goto LABEL_84;
    }

    v16 = 0x1E695D000uLL;
    v107 = *v158;
    v104 = *MEMORY[0x1E69BC288];
    v113 = v15;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v158 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v110 = v17;
        v18 = *(*(&v157 + 1) + 8 * v17);
        v121 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v116 = objc_alloc_init(*(v16 + 3952));
        v19 = objc_alloc_init(*(v16 + 3952));
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v109 = v18;
        categories = [v18 categories];
        v20 = [categories countByEnumeratingWithState:&v153 objects:v167 count:16];
        v114 = v19;
        if (v20)
        {
          v21 = v20;
          v22 = *v154;
          v112 = *v154;
          do
          {
            v23 = 0;
            v115 = v21;
            do
            {
              if (*v154 != v22)
              {
                objc_enumerationMutation(categories);
              }

              v24 = *(*(&v153 + 1) + 8 * v23);
              identifier = [v24 identifier];
              [v121 appendString:identifier];
              v26 = [(NSMutableDictionary *)self->_itemIdentifierToItemMapping objectForKey:identifier];
              v123 = v26;
              if (v26)
              {
                v27 = [v26 copy];
              }

              else
              {
                v27 = [(PKPaymentSetupCategoriesSectionController *)self _listItemForItemIdentifier:identifier paymentSetupProductModel:modelCopy];
                [v27 setIdentifier:identifier];
                [v27 setDisplayChevron:1];
              }

              if (identifier)
              {
                v28 = v27 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (!v28)
              {
                [(NSMutableDictionary *)v15 setObject:v27 forKey:identifier];
                [v19 addObject:identifier];
                [v116 addObject:v27];
                [v27 setCategory:v24];
                localizedDisplayName = [v24 localizedDisplayName];
                if (localizedDisplayName)
                {
                  [v27 setTitle:localizedDisplayName];
                }

                v120 = localizedDisplayName;
                v122 = v27;
                v151 = 0u;
                v152 = 0u;
                v149 = 0u;
                v150 = 0u;
                productIdentifiers = [v24 productIdentifiers];
                v129 = [productIdentifiers countByEnumeratingWithState:&v149 objects:v166 count:16];
                if (v129)
                {
                  v124 = productIdentifiers;
                  v118 = v23;
                  v31 = 0;
                  v126 = *v150;
                  do
                  {
                    for (i = 0; i != v129; ++i)
                    {
                      if (*v150 != v126)
                      {
                        objc_enumerationMutation(v124);
                      }

                      v33 = identifier;
                      v34 = [modelCopy productForProductIdentifier:*(*(&v149 + 1) + 8 * i)];
                      v145 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v148 = 0u;
                      featureApplications = [v34 featureApplications];
                      v36 = [featureApplications countByEnumeratingWithState:&v145 objects:v165 count:16];
                      if (v36)
                      {
                        v37 = v36;
                        v38 = 0;
                        v39 = *v146;
                        do
                        {
                          for (j = 0; j != v37; ++j)
                          {
                            if (*v146 != v39)
                            {
                              objc_enumerationMutation(featureApplications);
                            }

                            v41 = *(*(&v145 + 1) + 8 * j);
                            if ([v41 applicationState] == 5 && objc_msgSend(v41, "applicationType") == 1)
                            {
                              ++v38;
                            }
                          }

                          v37 = [featureApplications countByEnumeratingWithState:&v145 objects:v165 count:16];
                        }

                        while (v37);
                      }

                      else
                      {
                        v38 = 0;
                      }

                      provisioningStatus = [v34 provisioningStatus];
                      if (v38 <= 1)
                      {
                        v43 = 1;
                      }

                      else
                      {
                        v43 = v38;
                      }

                      if (v38)
                      {
                        v44 = 1;
                      }

                      else
                      {
                        v44 = provisioningStatus > 1;
                      }

                      if (!v44)
                      {
                        v43 = 0;
                      }

                      v31 += v43;

                      identifier = v33;
                    }

                    v129 = [v124 countByEnumeratingWithState:&v149 objects:v166 count:16];
                  }

                  while (v129);

                  v15 = v113;
                  v19 = v114;
                  v21 = v115;
                  v22 = v112;
                  v23 = v118;
                  if (v31)
                  {
                    v45 = MEMORY[0x1E696ADA0];
                    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
                    v47 = [v45 localizedStringFromNumber:v46 numberStyle:0];
                    [v122 setBadgeText:v47];

LABEL_59:
                    self = selfCopy;

                    v27 = v122;
                    goto LABEL_60;
                  }
                }

                else
                {
                }

                [v122 setBadgeText:0];
                goto LABEL_59;
              }

LABEL_60:

              ++v23;
            }

            while (v23 != v21);
            v21 = [categories countByEnumeratingWithState:&v153 objects:v167 count:16];
          }

          while (v21);
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v48 = v116;
        v49 = [v48 countByEnumeratingWithState:&v141 objects:v164 count:16];
        v50 = v121;
        if (v49)
        {
          v51 = v49;
          v52 = *v142;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v142 != v52)
              {
                objc_enumerationMutation(v48);
              }

              v54 = *(*(&v141 + 1) + 8 * k);
              [v54 setSectionIdentifier:{v50, v99}];
              if (![v54 isLoadingIcon])
              {
                [v54 setIsLoadingIcon:1];
                category = [v54 category];
                v139[0] = MEMORY[0x1E69E9820];
                v139[1] = 3221225472;
                v139[2] = __142__PKPaymentSetupCategoriesSectionController_updateWithRequirements_provisioningController_paymentSetupProductModel_forceProductConfiguration___block_invoke;
                v139[3] = &unk_1E80134E0;
                v139[4] = v54;
                v139[5] = self;
                v140 = v50;
                v56 = [category logoCachedImage:v139];
                if (v56)
                {
                  [v54 setIcon:v56];
                }

                else
                {
                  v57 = PKUIImageNamed(@"default_welcome_icon");
                  [v54 setIcon:v57];

                  self = selfCopy;
                }

                v50 = v121;
              }
            }

            v51 = [v48 countByEnumeratingWithState:&v141 objects:v164 count:16];
          }

          while (v51);
        }

        v15 = v113;
        if ([v114 count] && objc_msgSend(v121, "length"))
        {
          if ([v114 containsObject:v104])
          {
            [(NSMutableArray *)v105 insertObject:v121 atIndex:0];
          }

          else
          {
            [(NSMutableArray *)v105 addObject:v121];
          }

          localizedTitle = [v109 localizedTitle];
          if (localizedTitle)
          {
            [(NSMutableDictionary *)v103 setObject:localizedTitle forKey:v121];
          }

          [(NSMutableDictionary *)v111 setObject:v114 forKey:v121];
        }

        v17 = v110 + 1;
        v16 = 0x1E695D000;
      }

      while (v110 + 1 != v108);
      v108 = [obj countByEnumeratingWithState:&v157 objects:v168 count:16];
      if (!v108)
      {
LABEL_84:

        goto LABEL_86;
      }
    }
  }

  v105 = v13;
  v111 = v12;
  v15 = v11;
  v103 = v10;
LABEL_86:
  associatedCredentials = [controllerCopy associatedCredentials];
  v60 = [associatedCredentials count];

  v61 = *MEMORY[0x1E69BC2B0];
  v62 = [(NSMutableDictionary *)v15 objectForKey:*MEMORY[0x1E69BC2B0]];
  if (v62)
  {
    firstObject = v62;
    v64 = [v62 copy];
  }

  else
  {
    v65 = [PKPaymentSetupListItem alloc];
    v66 = PKLocalizedPaymentString(&cfstr_PaymentSetupYo.isa);
    v67 = PKLocalizedPaymentString(&cfstr_PaymentSetupYo_0.isa);
    v68 = PKUIImageNamed(@"your_cards_welcome_icon");
    v64 = [(PKPaymentSetupListItem *)v65 initWithTitle:v66 subtitle:v67 icon:v68];

    [(PKPaymentSetupListItem *)v64 setIdentifier:v61];
    [(PKPaymentSetupListItem *)v64 setDisplayChevron:1];
    firstObject = [(NSMutableArray *)v105 firstObject];
    if (firstObject)
    {
      [(NSMutableDictionary *)v103 removeObjectForKey:firstObject];
    }

    v163 = v61;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];
    [(NSMutableDictionary *)v111 setObject:v69 forKey:v61];

    [(NSMutableArray *)v105 insertObject:v61 atIndex:0];
    self = selfCopy;
  }

  if ((requirements & 0x20) != 0)
  {
    if (v60)
    {
      v71 = MEMORY[0x1E696ADA0];
      v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v60];
      v73 = [v71 localizedStringFromNumber:v72 numberStyle:0];
      [(PKPaymentSetupListItem *)v64 setLabelText:v73];

      v70 = 1;
    }

    else
    {
      v72 = PKLocalizedPaymentString(&cfstr_None_0.isa);
      [(PKPaymentSetupListItem *)v64 setLabelText:v72];
      v70 = 0;
    }

    [(PKPaymentSetupListItem *)v64 setDisplayChevron:v60 != 0];
  }

  else
  {
    [(PKPaymentSetupListItem *)v64 setLabelText:0];
    v70 = 0;
  }

  self->_hasCardsOnFileSelectable = v70;
  [(PKPaymentSetupListItem *)v64 setLoadingIndicatorVisible:(requirements & 0x20) == 0];
  v125 = v64;
  [(NSMutableDictionary *)v15 setObject:v64 forKey:v61];
  v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v127 = v105;
  v75 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v135 objects:v162 count:16];
  if (v75)
  {
    v76 = v75;
    v130 = *v136;
    do
    {
      for (m = 0; m != v76; ++m)
      {
        if (*v136 != v130)
        {
          objc_enumerationMutation(v127);
        }

        v78 = *(*(&v135 + 1) + 8 * m);
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v79 = [(NSMutableDictionary *)v111 objectForKey:v78];
        v80 = [v79 countByEnumeratingWithState:&v131 objects:v161 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v132;
          do
          {
            for (n = 0; n != v81; ++n)
            {
              if (*v132 != v82)
              {
                objc_enumerationMutation(v79);
              }

              v84 = [(NSMutableDictionary *)v15 objectForKey:*(*(&v131 + 1) + 8 * n)];
              [v84 identifier];
              v86 = v85 = v15;
              [(NSMutableArray *)v74 safelyAddObject:v86];

              v15 = v85;
            }

            v81 = [v79 countByEnumeratingWithState:&v131 objects:v161 count:16];
          }

          while (v81);
        }
      }

      v76 = [(NSMutableArray *)v127 countByEnumeratingWithState:&v135 objects:v162 count:16];
    }

    while (v76);
  }

  itemIdentifierToItemMapping = selfCopy->_itemIdentifierToItemMapping;
  selfCopy->_itemIdentifierToItemMapping = v15;
  v88 = v15;

  v89 = *(&selfCopy->super.super.isa + v100);
  *(&selfCopy->super.super.isa + v100) = v111;
  v90 = v111;

  sectionIdentifierToSectionTitleMapping = selfCopy->_sectionIdentifierToSectionTitleMapping;
  selfCopy->_sectionIdentifierToSectionTitleMapping = v103;
  v92 = v103;

  orderedSectionIdentifiers = selfCopy->_orderedSectionIdentifiers;
  selfCopy->_orderedSectionIdentifiers = v127;
  v94 = v127;

  orderedAnalyticsProductCategories = selfCopy->_orderedAnalyticsProductCategories;
  selfCopy->_orderedAnalyticsProductCategories = v74;
  v96 = v74;

  selfCopy->_currentConfiguredRequirements = requirements;
  v97 = [(NSMutableArray *)selfCopy->_orderedSectionIdentifiers count];

  return v97 != 0;
}

void __142__PKPaymentSetupCategoriesSectionController_updateWithRequirements_provisioningController_paymentSetupProductModel_forceProductConfiguration___block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) setIsLoadingIcon:2];
  if (v9 && a2)
  {
    v5 = [*(a1 + 32) copy];
    [v5 setIcon:v9];
    v6 = *(*(a1 + 40) + 72);
    v7 = [*(a1 + 32) identifier];
    [v6 setObject:v5 forKey:v7];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 136));
    [WeakRetained reloadRequiredForSectionIdentifier:*(a1 + 48) animated:0];
  }
}

- (id)_listItemForItemIdentifier:(id)identifier paymentSetupProductModel:(id)model
{
  identifierCopy = identifier;
  modelCopy = model;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC278]])
  {
    v7 = PKLocalizedPaymentString(&cfstr_PaymentSetupAp_2.isa);
    v8 = [modelCopy productsForFeatureIdentifier:2];
    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      displayName = [firstObject displayName];

      v7 = displayName;
    }

    v11 = [PKPaymentSetupCategoriesListItem alloc];
    v12 = PKUIImageNamed(@"apple_card_welcome_icon");
    v13 = [(PKPaymentSetupListItem *)v11 initWithTitle:v7 subtitle:0 icon:v12];

    [(PKPaymentSetupCategoriesListItem *)v13 setIsLoadingIcon:2];
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC270]])
  {
    v7 = PKLocalizedAppleBalanceString(&cfstr_ApplyFlowNewAp.isa);
    v14 = [PKPaymentSetupCategoriesListItem alloc];
    v15 = PKUIImageNamed(@"AppleBalance_welcome_icon");
    v13 = [(PKPaymentSetupListItem *)v14 initWithTitle:v7 subtitle:0 icon:v15];

    [(PKPaymentSetupCategoriesListItem *)v13 setIsLoadingIcon:2];
LABEL_7:

    goto LABEL_21;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC288]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupCr.isa);
    v18 = @"credit_debit_welcome_icon";
LABEL_20:
    v19 = PKUIImageNamed(v18);
    v13 = [(PKPaymentSetupListItem *)v16 initWithTitle:v17 subtitle:0 icon:v19];

    [(PKPaymentSetupCategoriesListItem *)v13 setIsLoadingIcon:2];
    goto LABEL_21;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC2A8]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupRi.isa);
    v18 = @"transit_welcome_icon";
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC280]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupCa.isa);
    v18 = @"carkey_welcome_icon";
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC298]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedIdentityString(&cfstr_PaymentSetupId.isa);
    v18 = @"IDENTITY_welcome_icon";
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC290]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedPaymentString(&cfstr_PaymentSetupEm.isa);
    v18 = @"emoney_welcome_icon";
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x1E69BC2A0]])
  {
    v16 = [PKPaymentSetupCategoriesListItem alloc];
    v17 = PKLocalizedPaymentOffersString(&cfstr_PaymentSetupIs.isa);
    v18 = @"issuer_installments_welcome_icon";
    goto LABEL_20;
  }

  v13 = objc_alloc_init(PKPaymentSetupCategoriesListItem);
LABEL_21:

  return v13;
}

- (PKPaymentSetupCategoriesSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end