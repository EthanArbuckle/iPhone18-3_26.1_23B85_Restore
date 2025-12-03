@interface SBFluidSwitcherSpaceTitleItemController
- (SBFluidSwitcherSpaceTitleItemController)initWithAppLayout:(id)layout applicationSceneHandleProvider:(id)provider displayIdentity:(id)identity showCanvasTitles:(BOOL)titles isChamoisOrFlexibleWindowingEnabled:(BOOL)enabled isFooterViewOfItemContainer:(BOOL)container;
- (id)_computeHeaderItems;
- (id)_iconForDisplayItem:(id)item;
- (id)_iconImageAppearance;
- (id)_iconImageForDisplayItem:(id)item;
- (id)_iconViewForDisplayItem:(id)item;
- (void)_performUpdateHandler;
- (void)_updateDisplayItemIcons;
- (void)dealloc;
- (void)iconImageDidUpdate:(id)update;
- (void)setCustomTitleText:(id)text forDisplayItem:(id)item;
- (void)setMaximumNumberOfVisibleIcons:(int64_t)icons;
- (void)setMultiWindowIndicatorRoles:(id)roles;
- (void)setUpdateHandler:(id)handler;
- (void)setUseDarkLabels:(BOOL)labels;
- (void)setUserInterfaceStyle:(int64_t)style;
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
      _computeHeaderItems = [(SBFluidSwitcherSpaceTitleItemController *)self _computeHeaderItems];
      updateHandler[2](updateHandler, self, _computeHeaderItems);
    }
  }
}

- (id)_computeHeaderItems
{
  _iconImageAppearance = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
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
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v10 = [mainBundle localizedStringForKey:@"SHELF_PLUS_CONTROL_TITLE" value:&stru_283094718 table:@"SpringBoard"];
        [v8 setTitleText:v10];
      }

      else
      {
        mainBundle = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:v7];
        v11 = [(NSMutableDictionary *)self->_displayItemToCustomTitleText objectForKey:v7];
        v10 = v11;
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = [mainBundle displayNameForLocation:v22];
        }

        v13 = v12;
        [v8 setTitleText:v12];
        v14 = [(NSMutableDictionary *)self->_displayItemToSceneHandle objectForKey:v7];
        sceneTitle = [v14 sceneTitle];
        [v8 setSubtitleText:sceneTitle];

        if (v4 < self->_numVisibleIcons)
        {
          v16 = [(SBFluidSwitcherSpaceTitleItemController *)self _iconViewForDisplayItem:v7];
          [v8 setImageView:v16];

          uniqueIdentifier = [mainBundle uniqueIdentifier];
          [v8 setIconIdentifier:uniqueIdentifier];

          [v8 setImageAppearance:_iconImageAppearance];
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
  windowSceneManager = [SBApp windowSceneManager];
  v4 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  homeScreenController = [v4 homeScreenController];
  currentIconImageStyleConfiguration = [homeScreenController currentIconImageStyleConfiguration];

  v7 = [currentIconImageStyleConfiguration iconImageAppearanceWithUserInterfaceStyle:{-[SBFluidSwitcherSpaceTitleItemController userInterfaceStyle](self, "userInterfaceStyle")}];

  return v7;
}

- (SBFluidSwitcherSpaceTitleItemController)initWithAppLayout:(id)layout applicationSceneHandleProvider:(id)provider displayIdentity:(id)identity showCanvasTitles:(BOOL)titles isChamoisOrFlexibleWindowingEnabled:(BOOL)enabled isFooterViewOfItemContainer:(BOOL)container
{
  enabledCopy = enabled;
  titlesCopy = titles;
  v59 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  providerCopy = provider;
  identityCopy = identity;
  if ((providerCopy == 0) != (identityCopy == 0))
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
    objc_storeStrong(&v17->_appLayout, layout);
    objc_storeStrong(&v18->_displayIdentity, identity);
    v18->_isChamoisOrFlexibleWindowingEnabled = enabledCopy;
    v18->_isFooterViewOfItemContainer = container;
    if (enabledCopy)
    {
      allItems = [(SBAppLayout *)v18->_appLayout allItems];
      displayItems = v18->_displayItems;
      v18->_displayItems = allItems;
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
    if (titlesCopy)
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
        v49 = providerCopy;
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
              bundleIdentifier = [v30 bundleIdentifier];
              if (bundleIdentifier)
              {
                v32 = +[SBApplicationController sharedInstance];
                v33 = [v32 applicationWithBundleIdentifier:bundleIdentifier];

                info = [v33 info];
                supportsMultiwindow = [info supportsMultiwindow];

                if (supportsMultiwindow)
                {
                  uniqueIdentifier = [v30 uniqueIdentifier];
                  v37 = [providerCopy sceneIdentityForApplication:v33 uniqueIdentifier:uniqueIdentifier];

                  if (v37)
                  {
                    v38 = v51;
                    v52 = v37;
                    v39 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v33 sceneIdentity:v37 displayIdentity:v51->_displayIdentity];
                    v40 = objc_opt_class();
                    v41 = [providerCopy fetchOrCreateApplicationSceneHandleForRequest:v39];
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

                    providerCopy = v49;
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
  objectEnumerator = [(NSMutableDictionary *)self->_displayItemToSceneHandle objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:self];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBFluidSwitcherSpaceTitleItemController;
  [(SBFluidSwitcherSpaceTitleItemController *)&v8 dealloc];
}

- (void)iconImageDidUpdate:(id)update
{
  updateCopy = update;
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
  v6 = updateCopy;
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

- (void)setUseDarkLabels:(BOOL)labels
{
  if (self->_useDarkLabels != labels)
  {
    self->_useDarkLabels = labels;
    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setMultiWindowIndicatorRoles:(id)roles
{
  obj = roles;
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

- (void)setUpdateHandler:(id)handler
{
  if (self->_updateHandler != handler)
  {
    v5 = [handler copy];
    updateHandler = self->_updateHandler;
    self->_updateHandler = v5;

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setUserInterfaceStyle:(int64_t)style
{
  if (self->_userInterfaceStyle != style)
  {
    self->_userInterfaceStyle = style;
    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setCustomTitleText:(id)text forDisplayItem:(id)item
{
  textCopy = text;
  itemCopy = item;
  displayItemToCustomTitleText = self->_displayItemToCustomTitleText;
  if (!displayItemToCustomTitleText)
  {
    v8 = objc_opt_new();
    v9 = self->_displayItemToCustomTitleText;
    self->_displayItemToCustomTitleText = v8;

    displayItemToCustomTitleText = self->_displayItemToCustomTitleText;
  }

  v10 = [(NSMutableDictionary *)displayItemToCustomTitleText objectForKey:itemCopy];
  v11 = BSEqualStrings();

  if ((v11 & 1) == 0)
  {
    v12 = self->_displayItemToCustomTitleText;
    if (textCopy)
    {
      [(NSMutableDictionary *)v12 setObject:textCopy forKey:itemCopy];
    }

    else
    {
      [(NSMutableDictionary *)v12 removeObjectForKey:itemCopy];
    }

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (void)setMaximumNumberOfVisibleIcons:(int64_t)icons
{
  v5 = [(NSArray *)self->_displayItems count];
  if (v5 >= icons)
  {
    iconsCopy = icons;
  }

  else
  {
    iconsCopy = v5;
  }

  if (self->_numVisibleIcons != iconsCopy)
  {
    self->_numVisibleIcons = iconsCopy;

    [(SBFluidSwitcherSpaceTitleItemController *)self _performUpdateHandler];
  }
}

- (id)_iconForDisplayItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] == 5)
  {
    [itemCopy webClipIdentifier];
  }

  else
  {
    [itemCopy bundleIdentifier];
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
      windowSceneManager = [SBApp windowSceneManager];
      v8 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

      iconController = [v8 iconController];
      iconModel = [iconController iconModel];

      v6 = [iconModel leafIconForIdentifier:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iconImageForDisplayItem:(id)item
{
  v4 = SBApp;
  itemCopy = item;
  windowSceneManager = [v4 windowSceneManager];
  v7 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  iconController = [v7 iconController];
  appSwitcherHeaderIconImageCache = [iconController appSwitcherHeaderIconImageCache];

  _iconImageAppearance = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
  v11 = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:itemCopy];

  if (v11)
  {
    [appSwitcherHeaderIconImageCache imageForIcon:v11 imageAppearance:_iconImageAppearance options:0];
  }

  else
  {
    [appSwitcherHeaderIconImageCache genericImageWithImageAppearance:_iconImageAppearance options:0];
  }
  v12 = ;

  return v12;
}

- (id)_iconViewForDisplayItem:(id)item
{
  v4 = SBApp;
  itemCopy = item;
  windowSceneManager = [v4 windowSceneManager];
  v7 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  iconController = [v7 iconController];
  appSwitcherHeaderIconImageCache = [iconController appSwitcherHeaderIconImageCache];

  _iconImageAppearance = [(SBFluidSwitcherSpaceTitleItemController *)self _iconImageAppearance];
  v11 = [MEMORY[0x277D75C80] sbh_traitCollectionWithIconImageAppearance:_iconImageAppearance];
  [appSwitcherHeaderIconImageCache iconImageInfo];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  genericApplicationIcon = [(NSMutableDictionary *)self->_displayItemToIcon objectForKey:itemCopy];

  if (!genericApplicationIcon)
  {
    genericApplicationIcon = [MEMORY[0x277D66368] genericApplicationIcon];
  }

  v21 = [genericApplicationIcon iconLayerViewWithInfo:v11 traitCollection:1 options:-1 priority:{v13, v15, v17, v19}];

  return v21;
}

- (void)initWithAppLayout:(uint64_t)a1 applicationSceneHandleProvider:(uint64_t)a2 displayIdentity:showCanvasTitles:isChamoisOrFlexibleWindowingEnabled:isFooterViewOfItemContainer:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherSpaceTitleItemController.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"(applicationSceneHandleProvider == nil && displayIdentity == nil) || (applicationSceneHandleProvider != nil && displayIdentity != nil)"}];
}

@end