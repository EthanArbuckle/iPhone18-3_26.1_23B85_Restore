@interface SUStorePageProtocol
- (SUStorePageProtocol)init;
- (id)_initCommon;
- (id)_newNavigationButtonsFromArray:(id)array;
- (id)_newNavigationHistoryItemsFromArray:(id)array;
- (id)_newNavigationMenusFromArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)navigationButtonForLocation:(id)location;
- (id)navigationMenuForLocation:(int64_t)location;
- (id)overlayBackgroundURLRequest;
- (void)setOverlayBackgroundURLRequest:(id)request;
- (void)setValuesFromStorePageDictionary:(id)dictionary;
@end

@implementation SUStorePageProtocol

- (id)_initCommon
{
  v3.receiver = self;
  v3.super_class = SUStorePageProtocol;
  return [(SUStorePageProtocol *)&v3 init];
}

- (SUStorePageProtocol)init
{
  _initCommon = [(SUStorePageProtocol *)self _initCommon];
  if (_initCommon)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    if (userInterfaceIdiom == 1)
    {
      v6 = [v5 initWithObjects:{@"portrait", @"portrait-upside-down", @"landscape-left", @"landscape-right", 0}];
    }

    else
    {
      v6 = [v5 initWithObjects:{@"portrait", 0, v9, v10, v11}];
    }

    allowedOrientations = _initCommon->_allowedOrientations;
    _initCommon->_allowedOrientations = v6;
  }

  return _initCommon;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initCommon"}];
  v6 = [(NSArray *)self->_allowedOrientations copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_copyright copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSArray *)self->_expectedClientIdentifiers copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSNumber *)self->_focusedItemIdentifier copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSArray *)self->_navigationButtons copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSArray *)self->_navigationMenus copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(SSURLRequestProperties *)self->_overlayBackgroundURLRequestProperties copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(NSArray *)self->_navigationHistoryItems copyWithZone:zone];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(NSString *)self->_rootSectionIdentifier copyWithZone:zone];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  *(v5 + 80) = self->_shouldDisplayInOverlay;
  *(v5 + 81) = self->_shouldExcludeFromNavigationHistory;
  *(v5 + 82) = self->_shouldReplaceRootViewController;
  return v5;
}

- (id)navigationButtonForLocation:(id)location
{
  v18 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_navigationButtons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        buttonLocation = [v9 buttonLocation];
        v11 = [buttonLocation isEqualToString:locationCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)navigationMenuForLocation:(int64_t)location
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_navigationMenus;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 location] == location)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)overlayBackgroundURLRequest
{
  v2 = [objc_alloc(MEMORY[0x1E69E4818]) initWithRequestProperties:self->_overlayBackgroundURLRequestProperties];

  return v2;
}

- (void)setOverlayBackgroundURLRequest:(id)request
{
  self->_overlayBackgroundURLRequestProperties = [request requestProperties];

  MEMORY[0x1EEE66BB8]();
}

- (void)setValuesFromStorePageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"protocol"];
  if (!v4)
  {
    v4 = dictionaryCopy;
  }

  v5 = [v4 objectForKey:@"allowed-orientations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageProtocol *)self setAllowedOrientations:v5];
  }

  v6 = [v4 objectForKey:@"copyright"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageProtocol *)self setCopyright:v6];
  }

  v7 = [v4 objectForKey:@"store-client-applications"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageProtocol *)self setExpectedClientIdentifiers:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      [(SUStorePageProtocol *)self setExpectedClientIdentifiers:v8];
    }
  }

  v9 = [v4 objectForKey:@"selected-track-item-id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageProtocol *)self setFocusedItemIdentifier:v9];
  }

  v10 = [v4 objectForKey:@"navigation-buttons"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SUStorePageProtocol *)self _newNavigationButtonsFromArray:v10];
    navigationButtons = self->_navigationButtons;
    self->_navigationButtons = v11;
  }

  v13 = [v4 objectForKey:@"navigation-stack"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(SUStorePageProtocol *)self _newNavigationHistoryItemsFromArray:v13];
    navigationHistoryItems = self->_navigationHistoryItems;
    self->_navigationHistoryItems = v14;
  }

  v16 = [v4 objectForKey:@"popovers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(SUStorePageProtocol *)self _newNavigationMenusFromArray:v16];
    navigationMenus = self->_navigationMenus;
    self->_navigationMenus = v17;
  }

  v19 = [v4 objectForKey:@"selected-footer-section"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageProtocol *)self setRootSectionIdentifier:v19];
  }

  v20 = [v4 objectForKey:@"replace-footer-section"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v20 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(SUStorePageProtocol *)self setShouldReplaceRootViewController:bOOLValue];
  v22 = [v4 objectForKey:@"overlay-parent-url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v22];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:v23];
      [(SUStorePageProtocol *)self setOverlayBackgroundURLRequestProperties:v24];
    }
  }

  v25 = [v4 objectForKey:@"show-in-overlay"];

  if (v25)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue2 = [v25 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [(SUStorePageProtocol *)self setShouldDisplayInOverlay:bOOLValue2];
  }

  v27 = [v4 objectForKey:@"exclude-from-navigation-history"];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v28 = [dictionaryCopy objectForKey:@"exclude-from-navigation-history"];

    v27 = v28;
  }

  if (v27)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue3 = [v27 BOOLValue];
    }

    else
    {
      bOOLValue3 = 0;
    }

    [(SUStorePageProtocol *)self setShouldExcludeFromNavigationHistory:bOOLValue3];
  }
}

- (id)_newNavigationButtonsFromArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [SUProtocolButton alloc];
          v12 = [(SUProtocolButton *)v11 initWithButtonDictionary:v10, v14];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_newNavigationHistoryItemsFromArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [SUNavigationHistoryItem alloc];
          v12 = [(SUNavigationHistoryItem *)v11 initWithDictionary:v10, v14];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_newNavigationMenusFromArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [SUNavigationMenu alloc];
        v12 = [(SUNavigationMenu *)v11 initWithDictionary:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  return v4;
}

@end