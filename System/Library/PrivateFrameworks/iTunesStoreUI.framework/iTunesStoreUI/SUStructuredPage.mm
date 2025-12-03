@interface SUStructuredPage
+ (int64_t)pageTypeForStorePageDictionary:(id)dictionary;
+ (int64_t)pageTypeForStorePageString:(id)string;
- (BOOL)loadFromDictionary:(id)dictionary;
- (id)_copyItemFromDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_displayStyleForString:(id)string;
- (void)_parseItemsFromDictionary:(id)dictionary;
- (void)_parseProtocolFromDictionary:(id)dictionary;
- (void)_parseTemplateParametersFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)setItem:(id)item;
@end

@implementation SUStructuredPage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPage;
  [(SUStructuredPage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_artworkShouldFitWidth;
  *(v5 + 16) = self->_artworkWidth;
  *(v5 + 24) = self->_didShowDialog;
  *(v5 + 32) = self->_displayStyle;
  *(v5 + 40) = self->_item;
  *(v5 + 48) = [(SUItemList *)self->_itemList copyWithZone:zone];
  *(v5 + 56) = [(SUStorePageProtocol *)self->_protocol copyWithZone:zone];
  *(v5 + 64) = [(SUPageSectionGroup *)self->_sectionsGroup copyWithZone:zone];
  *(v5 + 80) = [(NSString *)self->_title copyWithZone:zone];
  *(v5 + 88) = self->_type;
  *(v5 + 96) = self->_wantsIndexBar;
  return v5;
}

+ (int64_t)pageTypeForStorePageDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"page-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v4 = [v4 objectForKey:@"template-name"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [self pageTypeForStorePageString:v4];
}

+ (int64_t)pageTypeForStorePageString:(id)string
{
  if ([string isEqualToString:@"album"] & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"tracks") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"mix") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"podcast") & 1) != 0 || (objc_msgSend(string, "isEqualToString:", @"course"))
  {
    return 1;
  }

  if ([string isEqualToString:@"software"])
  {
    return 3;
  }

  if ([string isEqualToString:@"split-view"])
  {
    return 6;
  }

  if ([string isEqualToString:@"search"])
  {
    return 7;
  }

  if ([string isEqualToString:@"software-update"])
  {
    return 4;
  }

  if ([string isEqualToString:@"reviews"])
  {
    return 2;
  }

  if ([string isEqualToString:@"eula"])
  {
    return 5;
  }

  if ([string isEqualToString:@"software-updates"])
  {
    return 8;
  }

  if ([string isEqualToString:@"downloads"])
  {
    return 9;
  }

  return 0;
}

- (BOOL)loadFromDictionary:(id)dictionary
{
  [(SUStructuredPage *)self _parseItemsFromDictionary:?];
  -[SUStructuredPage setType:](self, "setType:", [objc_opt_class() pageTypeForStorePageDictionary:dictionary]);
  [(SUStructuredPage *)self _parseTemplateParametersFromDictionary:dictionary];
  [(SUStructuredPage *)self _parseProtocolFromDictionary:dictionary];
  v5 = [dictionary objectForKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(SUPageSectionGroup);
    if ([(SUPageSectionGroup *)v6 loadFromDictionary:v5])
    {
      [(SUStructuredPage *)self setSectionsGroup:v6];
    }
  }

  else
  {
    [(SUStructuredPage *)self setSectionsGroup:0];
  }

  v7 = [dictionary objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [(SUStructuredPage *)self setTitle:v8];
  return 1;
}

- (void)setItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  item = self->_item;
  if (item != item)
  {

    self->_item = item;
    copyItems = [(SUItemList *)[(SUStructuredPage *)self itemList] copyItems];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [copyItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(copyItems);
          }

          [*(*(&v11 + 1) + 8 * v10++) setContainerItem:self->_item];
        }

        while (v8 != v10);
        v8 = [copyItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)_copyItemFromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"item-metadata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [dictionary objectForKey:@"album-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [dictionary objectForKey:@"software-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [dictionary objectForKey:@"wemix-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = +[SUItemDataSource sharedDataSource];

  return [v5 newItemWithItemDictionary:v4];
}

- (int64_t)_displayStyleForString:(id)string
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([string isEqualToString:@"grouped"])
  {
    return 1;
  }

  if ([string isEqualToString:@"plain"])
  {
    return 2;
  }

  return 0;
}

- (void)_parseItemsFromDictionary:(id)dictionary
{
  v5 = [dictionary objectForKey:@"items"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(SUItemList);
    [(SUItemList *)v6 setItemsFromPropertyList:v5];
    -[SUItemList setHintText:](v6, "setHintText:", [dictionary objectForKey:@"hint-text"]);
    [(SUStructuredPage *)self setItemList:v6];
  }

  else
  {
    [(SUStructuredPage *)self setItemList:0];
  }

  v7 = [(SUStructuredPage *)self _copyItemFromDictionary:dictionary];
  [(SUStructuredPage *)self setItem:v7];
}

- (void)_parseProtocolFromDictionary:(id)dictionary
{
  v5 = objc_alloc_init(SUStorePageProtocol);
  [(SUStorePageProtocol *)v5 setValuesFromStorePageDictionary:dictionary];
  [(SUStructuredPage *)self setProtocol:v5];

  v6 = [objc_alloc(MEMORY[0x1E69D48B8]) initWithResponseDictionary:dictionary];
  self->_didShowDialog = [objc_msgSend(v6 actionsWithActionType:{*MEMORY[0x1E69D4D38]), "count"}] != 0;
}

- (void)_parseTemplateParametersFromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"page-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"template-parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    self->_displayStyle = -[SUStructuredPage _displayStyleForString:](self, "_displayStyleForString:", [v6 objectForKey:@"list-display-style"]);
    v7 = [v6 objectForKey:@"hide-sign-in-button"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    self->_shouldHideSignInButton = bOOLValue;
    v9 = [v6 objectForKey:@"wants-index-bar"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue2 = [v9 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    self->_wantsIndexBar = bOOLValue2;
    v11 = [v6 objectForKey:@"artwork-display-style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKey:@"width"];
      v13 = objc_opt_respondsToSelector();
      v14 = -1.0;
      if (v13)
      {
        [v12 floatValue];
        v14 = v15;
      }

      self->_artworkWidth = v14;
      v16 = [v11 objectForKey:@"fit-width"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue3 = [v16 BOOLValue];
      }

      else
      {
        bOOLValue3 = 0;
      }

      self->_artworkShouldFitWidth = bOOLValue3;
    }

    else
    {
      self->_artworkShouldFitWidth = 0;
      self->_artworkWidth = -1.0;
    }
  }

  else
  {
    self->_artworkShouldFitWidth = 0;
    self->_artworkWidth = -1.0;
    self->_displayStyle = 0;
    self->_wantsIndexBar = 0;
  }
}

@end