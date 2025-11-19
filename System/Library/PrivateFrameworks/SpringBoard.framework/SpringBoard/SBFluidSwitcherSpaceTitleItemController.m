@interface SBFluidSwitcherSpaceTitleItemController
- (SBFluidSwitcherSpaceTitleItemController)initWithAppLayout:(id)a3 applicationSceneHandleProvider:(id)a4 displayIdentity:(id)a5 showCanvasTitles:(BOOL)a6 isChamoisOrFlexibleWindowingEnabled:(BOOL)a7 isFooterViewOfItemContainer:(BOOL)a8;
- (id)_computeHeaderItems;
- (id)_iconForDisplayItem:(id)a3;
- (id)_iconImageAppearance;
- (id)_iconImageForDisplayItem:(id)a3;
- (id)_iconViewForDisplayItem:(id)a3;
- (void)_performUpdateHandler;
- (void)_updateDisplayItemIcons;
- (void)dealloc;
- (void)iconImageDidUpdate:(id)a3;
- (void)setCustomTitleText:(id)a3 forDisplayItem:(id)a4;
- (void)setMaximumNumberOfVisibleIcons:(int64_t)a3;
- (void)setMultiWindowIndicatorRoles:(id)a3;
- (void)setUpdateHandler:(id)a3;
- (void)setUseDarkLabels:(BOOL)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation SBFluidSwitcherSpaceTitleItemController

- (void)_updateDisplayItemIcons
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_displayItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:v8, v16];
        v10 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconForDisplayItem:v8];
        v11 = v10;
        if (v10 != v9 && ([v10 isEqual:v9] & 1) == 0)
        {
          [v9 removeObserver:self];
          displayItemToIcon = self->_displayItemToIcon;
          if (v11)
          {
            if (!displayItemToIcon)
            {
              v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](self->_displayItems, "count")}];
              v14 = self->_displayItemToIcon;
              self->_displayItemToIcon = v13;

              displayItemToIcon = self->_displayItemToIcon;
            }

            [(NSMutableDictionary *)displayItemToIcon setObject:v11 forKey:v8];
            [v11 addObserver:self];
          }

          else
          {
            [(NSMutableDictionary *)displayItemToIcon removeObjectForKey:v8];
            if (![(NSMutableDictionary *)self->_displayItemToIcon count])
            {
              v15 = self->_displayItemToIcon;
              self->_displayItemToIcon = 0;
            }
          }
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_performUpdateHandler
{
  if (!self->_invalidated)
  {
    updateHandler = self->_updateHandler;
    if (updateHandler)
    {
      v4 = [(SBFluidSwitcherSpaceTitleItemController *)self _computeHeaderItems];
      updateHandler[2](updateHandler, self, v4);
    }
  }
}

- (id)_computeHeaderItems
{
  v23 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
  v3 = 0;
  if ([(NSArray *)self->_displayItems count])
  {
    v4 = 0;
    v5 = off_2783A0000;
    v22 = @"SBIconLocationAppSwitcher";
    v6 = 0x277D75000;
    do
    {
      v7 = [(NSArray *)self->_displayItems objectAtIndex:v4, v22];
      v8 = [objc_alloc(v5[9]) initWithDisplayItem:v7];
      if ([v7 type] == 6)
      {
        v9 = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [v9 localizedStringForKey:@"SHELF_PLUS_CONTROL_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        [v8 setTitleText:v10];
      }

      else
      {
        v9 = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:v7];
        v11 = [(NSMutableDictionary *)self->_displayItemToCustomTitleText objectForKey:v7];
        v10 = v11;
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = [v9 displayNameForLocation:v22];
        }

        v13 = v12;
        [v8 setTitleText:v12];
        v14 = [(NSMutableDictionary *)self->_displayItemToSceneHandle objectForKey:v7];
        v15 = [v14 sceneTitle];
        [v8 setSubtitleText:v15];

        if (v4 < self->_numVisibleIcons)
        {
          v16 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconViewForDisplayItem:v7];
          [v8 setImageView:v16];

          v17 = [v9 uniqueIdentifier];
          [v8 setIconIdentifier:v17];

          [v8 setImageAppearance:v23];
        }

        v5 = off_2783A0000;
        v6 = 0x277D75000uLL;
      }

      v18 = *(v6 + 840);
      if (self->_useDarkLabels)
      {
        [v18 blackColor];
      }

      else
      {
        [v18 whiteColor];
      }
      v19 = ;
      [v8 setTitleTextColor:v19];

      if (self->_useDarkLabels)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      [v8 setSubtitleInterfaceStyle:v20];
      [v8 setShowsMultiWindowIndicator:{-[SBLayoutRoleSet containsRole:](self->_multiWindowIndicatorRoles, "containsRole:", -[SBAppLayout layoutRoleForItem:](self->_appLayout, "layoutRoleForItem:", v7))}];
      if (!v3)
      {
        v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_displayItems, "count")}];
      }

      [v3 addObject:v8];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_displayItems count]);
  }

  return v3;
}

- (id)_iconImageAppearance
{
  v3 = [SBApp windowSceneManager];
  v4 = [v3 windowSceneForDisplayIdentity:self->_displayIdentity];

  v5 = [v4 homeScreenController];
  v6 = [v5 currentIconImageStyleConfiguration];

  v7 = [v6 iconImageAppearanceWithUserInterfaceStyle:{-[SBFluidSwitcherSpaceTitleItemController userInterfaceStyle](self, "userInterfaceStyle")}];

  return v7;
}

- (SBFluidSwitcherSpaceTitleItemController)initWithAppLayout:(id)a3 applicationSceneHandleProvider:(id)a4 displayIdentity:(id)a5 showCanvasTitles:(BOOL)a6 isChamoisOrFlexibleWindowingEnabled:(BOOL)a7 isFooterViewOfItemContainer:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v59 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v16 = a4;
  v47 = a5;
  if ((v16 == 0) != (v47 == 0))
  {
    [SBFluidSwitcherSpaceTitleItemController initWithAppLayout:a2 applicationSceneHandleProvider:self displayIdentity:? showCanvasTitles:? isChamoisOrFlexibleWindowingEnabled:? isFooterViewOfItemContainer:?];
  }

  v57.receiver = self;
  v57.super_class = SBFluidSwitcherSpaceTitleItemController;
  v17 = [(SBFluidSwitcherSpaceTitleItemController *)&v57 init];
  v51 = v17;
  if (v17)
  {
    v18 = v17;
    objc_storeStrong(&v17->_appLayout, a3);
    objc_storeStrong(&v18->_displayIdentity, a5);
    v18->_isChamoisOrFlexibleWindowingEnabled = v9;
    v18->_isFooterViewOfItemContainer = a8;
    if (v9)
    {
      v19 = [(SBAppLayout *)v18->_appLayout allItems];
      displayItems = v18->_displayItems;
      v18->_displayItems = v19;
    }

    else
    {
      displayItems = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      v21 = [(SBAppLayout *)v18->_appLayout itemForLayoutRole:1];
      if (v21)
      {
        [(NSArray *)displayItems addObject:v21];
      }

      v22 = [(SBAppLayout *)v51->_appLayout itemForLayoutRole:2];
      if (v22)
      {
        [(NSArray *)displayItems addObject:v22];
      }

      v23 = [(NSArray *)displayItems copy];
      v18 = v51;
      v24 = v51->_displayItems;
      v51->_displayItems = v23;
    }

    v18->_numVisibleIcons = [(NSArray *)v18->_displayItems count];
    if (v10)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = v18->_displayItems;
      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v54;
        v49 = v16;
        v50 = v25;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v53 + 1) + 8 * i);
            if (![v30 type])
            {
              v31 = [v30 bundleIdentifier];
              if (v31)
              {
                v32 = +[SBApplicationController sharedInstance];
                v33 = [v32 applicationWithBundleIdentifier:v31];

                v34 = [v33 info];
                v35 = [v34 supportsMultiwindow];

                if (v35)
                {
                  v36 = [v30 uniqueIdentifier];
                  v37 = [v16 sceneIdentityForApplication:v33 uniqueIdentifier:v36];

                  if (v37)
                  {
                    v38 = v51;
                    v52 = v37;
                    v39 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v33 sceneIdentity:v37 displayIdentity:v51->_displayIdentity];
                    v40 = objc_opt_class();
                    v41 = [v16 fetchOrCreateApplicationSceneHandleForRequest:v39];
                    v42 = SBSafeCast(v40, v41);

                    if (v42)
                    {
                      displayItemToSceneHandle = v51->_displayItemToSceneHandle;
                      if (!displayItemToSceneHandle)
                      {
                        v38 = v51;
                        v44 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](v51->_displayItems, "count")}];
                        v45 = v51->_displayItemToSceneHandle;
                        v51->_displayItemToSceneHandle = v44;

                        displayItemToSceneHandle = v51->_displayItemToSceneHandle;
                      }

                      [(NSMutableDictionary *)displayItemToSceneHandle setObject:v42 forKey:v30];
                      [v42 addObserver:v38];
                    }

                    v16 = v49;
                    v37 = v52;
                  }

                  v25 = v50;
                }
              }
            }
          }

          v27 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v27);
      }

      v18 = v51;
    }

    [(SBFluidSwitcherSpaceTitleItemController *)v18 _updateDisplayItemIcons];
  }

  return v51;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_displayItemToSceneHandle objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBFluidSwitcherSpaceTitleItemController;
  [(SBFluidSwitcherSpaceTitleItemController *)&v8 dealloc];
}

- (void)iconImageDidUpdate:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__139;
  v10[4] = __Block_byref_object_dispose__139;
  v11 = 0;
  displayItemToIcon = self->_displayItemToIcon;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBFluidSwitcherSpaceTitleItemController_iconImageDidUpdate___block_invoke;
  v7[3] = &unk_2783C3B80;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [(NSMutableDictionary *)displayItemToIcon enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __62__SBFluidSwitcherSpaceTitleItemController_iconImageDidUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)setUseDarkLabels:(BOOL)a3
{
  if (self->_useDarkLabels != a3)
  {
    self->_useDarkLabels = a3;
    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setMultiWindowIndicatorRoles:(id)a3
{
  obj = a3;
  if ([obj isEmpty])
  {

    v4 = 0;
  }

  else
  {
    v4 = obj;
  }

  obja = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_multiWindowIndicatorRoles, obja);
    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setUpdateHandler:(id)a3
{
  if (self->_updateHandler != a3)
  {
    v5 = [a3 copy];
    updateHandler = self->_updateHandler;
    self->_updateHandler = v5;

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setCustomTitleText:(id)a3 forDisplayItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  displayItemToCustomTitleText = self->_displayItemToCustomTitleText;
  if (!displayItemToCustomTitleText)
  {
    v8 = objc_opt_new();
    v9 = self->_displayItemToCustomTitleText;
    self->_displayItemToCustomTitleText = v8;

    displayItemToCustomTitleText = self->_displayItemToCustomTitleText;
  }

  v10 = [(NSMutableDictionary *)displayItemToCustomTitleText objectForKey:v6];
  v11 = BSEqualStrings();

  if ((v11 & 1) == 0)
  {
    v12 = self->_displayItemToCustomTitleText;
    if (v13)
    {
      [(NSMutableDictionary *)v12 setObject:v13 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)v12 removeObjectForKey:v6];
    }

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setMaximumNumberOfVisibleIcons:(int64_t)a3
{
  v5 = [(NSArray *)self->_displayItems count];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (self->_numVisibleIcons != v6)
  {
    self->_numVisibleIcons = v6;

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (id)_iconForDisplayItem:(id)a3
{
  v4 = a3;
  if ([v4 type] == 5)
  {
    [v4 webClipIdentifier];
  }

  else
  {
    [v4 bundleIdentifier];
  }
  v5 = ;

  if (v5)
  {
    if ([v5 isEqualToString:@"com.apple.InCallService"])
    {
      v6 = objc_alloc_init(SBInCallPresentationScreenSharingIcon);
    }

    else
    {
      v7 = [SBApp windowSceneManager];
      v8 = [v7 windowSceneForDisplayIdentity:self->_displayIdentity];

      v9 = [v8 iconController];
      v10 = [v9 iconModel];

      v6 = [v10 leafIconForIdentifier:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iconImageForDisplayItem:(id)a3
{
  v4 = SBApp;
  v5 = a3;
  v6 = [v4 windowSceneManager];
  v7 = [v6 windowSceneForDisplayIdentity:self->_displayIdentity];

  v8 = [v7 iconController];
  v9 = [v8 appSwitcherHeaderIconImageCache];

  v10 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
  v11 = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:v5];

  if (v11)
  {
    [v9 imageForIcon:v11 imageAppearance:v10 options:0];
  }

  else
  {
    [v9 genericImageWithImageAppearance:v10 options:0];
  }
  v12 = ;

  return v12;
}

- (id)_iconViewForDisplayItem:(id)a3
{
  v4 = SBApp;
  v5 = a3;
  v6 = [v4 windowSceneManager];
  v7 = [v6 windowSceneForDisplayIdentity:self->_displayIdentity];

  v8 = [v7 iconController];
  v9 = [v8 appSwitcherHeaderIconImageCache];

  v10 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
  v11 = [MEMORY[0x277D75C80] sbh_traitCollectionWithIconImageAppearance:v10];
  [v9 iconImageInfo];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:v5];

  if (!v20)
  {
    v20 = [MEMORY[0x277D66368] genericApplicationIcon];
  }

  v21 = [v20 iconLayerViewWithInfo:v11 traitCollection:1 options:-1 priority:{v13, v15, v17, v19}];

  return v21;
}

- (void)initWithAppLayout:(uint64_t)a1 applicationSceneHandleProvider:(uint64_t)a2 displayIdentity:showCanvasTitles:isChamoisOrFlexibleWindowingEnabled:isFooterViewOfItemContainer:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherSpaceTitleItemController.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"(applicationSceneHandleProvider == nil && displayIdentity == nil) || (applicationSceneHandleProvider != nil && displayIdentity != nil)"}];
}

@end