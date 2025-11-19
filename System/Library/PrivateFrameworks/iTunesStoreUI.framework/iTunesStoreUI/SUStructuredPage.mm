@interface SUStructuredPage
+ (int64_t)pageTypeForStorePageDictionary:(id)a3;
+ (int64_t)pageTypeForStorePageString:(id)a3;
- (BOOL)loadFromDictionary:(id)a3;
- (id)_copyItemFromDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_displayStyleForString:(id)a3;
- (void)_parseItemsFromDictionary:(id)a3;
- (void)_parseProtocolFromDictionary:(id)a3;
- (void)_parseTemplateParametersFromDictionary:(id)a3;
- (void)dealloc;
- (void)setItem:(id)a3;
@end

@implementation SUStructuredPage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPage;
  [(SUStructuredPage *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_artworkShouldFitWidth;
  *(v5 + 16) = self->_artworkWidth;
  *(v5 + 24) = self->_didShowDialog;
  *(v5 + 32) = self->_displayStyle;
  *(v5 + 40) = self->_item;
  *(v5 + 48) = [(SUItemList *)self->_itemList copyWithZone:a3];
  *(v5 + 56) = [(SUStorePageProtocol *)self->_protocol copyWithZone:a3];
  *(v5 + 64) = [(SUPageSectionGroup *)self->_sectionsGroup copyWithZone:a3];
  *(v5 + 80) = [(NSString *)self->_title copyWithZone:a3];
  *(v5 + 88) = self->_type;
  *(v5 + 96) = self->_wantsIndexBar;
  return v5;
}

+ (int64_t)pageTypeForStorePageDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"page-type"];
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

  return [a1 pageTypeForStorePageString:v4];
}

+ (int64_t)pageTypeForStorePageString:(id)a3
{
  if ([a3 isEqualToString:@"album"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"tracks") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"mix") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"podcast") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"course"))
  {
    return 1;
  }

  if ([a3 isEqualToString:@"software"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"split-view"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"search"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"software-update"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"reviews"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"eula"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"software-updates"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"downloads"])
  {
    return 9;
  }

  return 0;
}

- (BOOL)loadFromDictionary:(id)a3
{
  [(SUStructuredPage *)self _parseItemsFromDictionary:?];
  -[SUStructuredPage setType:](self, "setType:", [objc_opt_class() pageTypeForStorePageDictionary:a3]);
  [(SUStructuredPage *)self _parseTemplateParametersFromDictionary:a3];
  [(SUStructuredPage *)self _parseProtocolFromDictionary:a3];
  v5 = [a3 objectForKey:@"tabs"];
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

  v7 = [a3 objectForKey:@"title"];
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

- (void)setItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  item = self->_item;
  if (item != a3)
  {

    self->_item = a3;
    v6 = [(SUItemList *)[(SUStructuredPage *)self itemList] copyItems];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setContainerItem:self->_item];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)_copyItemFromDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"item-metadata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [a3 objectForKey:@"album-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [a3 objectForKey:@"software-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [a3 objectForKey:@"wemix-metadata"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = +[SUItemDataSource sharedDataSource];

  return [v5 newItemWithItemDictionary:v4];
}

- (int64_t)_displayStyleForString:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([a3 isEqualToString:@"grouped"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"plain"])
  {
    return 2;
  }

  return 0;
}

- (void)_parseItemsFromDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"items"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(SUItemList);
    [(SUItemList *)v6 setItemsFromPropertyList:v5];
    -[SUItemList setHintText:](v6, "setHintText:", [a3 objectForKey:@"hint-text"]);
    [(SUStructuredPage *)self setItemList:v6];
  }

  else
  {
    [(SUStructuredPage *)self setItemList:0];
  }

  v7 = [(SUStructuredPage *)self _copyItemFromDictionary:a3];
  [(SUStructuredPage *)self setItem:v7];
}

- (void)_parseProtocolFromDictionary:(id)a3
{
  v5 = objc_alloc_init(SUStorePageProtocol);
  [(SUStorePageProtocol *)v5 setValuesFromStorePageDictionary:a3];
  [(SUStructuredPage *)self setProtocol:v5];

  v6 = [objc_alloc(MEMORY[0x1E69D48B8]) initWithResponseDictionary:a3];
  self->_didShowDialog = [objc_msgSend(v6 actionsWithActionType:{*MEMORY[0x1E69D4D38]), "count"}] != 0;
}

- (void)_parseTemplateParametersFromDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"page-type"];
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
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 0;
    }

    self->_shouldHideSignInButton = v8;
    v9 = [v6 objectForKey:@"wants-index-bar"];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 0;
    }

    self->_wantsIndexBar = v10;
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
        v17 = [v16 BOOLValue];
      }

      else
      {
        v17 = 0;
      }

      self->_artworkShouldFitWidth = v17;
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