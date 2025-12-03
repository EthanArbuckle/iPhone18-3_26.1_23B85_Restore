@interface OKPresentationNavigator
+ (id)navigatorWithName:(id)name className:(id)className pagesNames:(id)names settings:(id)settings userData:(id)data;
- (NSMutableArray)pagesNames;
- (OKPresentationNavigator)init;
- (OKPresentationNavigator)initWithDictionary:(id)dictionary andName:(id)name forPresentation:(id)presentation andParent:(id)parent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)pageWithName:(id)name;
- (id)pages;
- (id)parentPage;
- (void)addPageName:(id)name;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationNavigator

- (OKPresentationNavigator)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationNavigator;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_className = 0;
    result->_pagesNames = 0;
    result->_internalSettings = 0;
    result->_internalUserData = 0;
  }

  return result;
}

- (OKPresentationNavigator)initWithDictionary:(id)dictionary andName:(id)name forPresentation:(id)presentation andParent:(id)parent
{
  v10 = [(OKPresentationNavigator *)self init];
  v11 = v10;
  if (v10)
  {
    [(OKPresentationCanvas *)v10 setPresentation:presentation];
    [(OKPresentationCanvas *)v11 setParent:parent];
    [(OKPresentationCanvas *)v11 setName:name];
    v11->_className = [objc_msgSend(dictionary objectForKey:{@"class", "copy"}];
    v11->_pagesNames = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:objc_msgSend(dictionary copyItems:{"objectForKey:", @"pages", 1}];
    v11->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"settings", 1}];
    v11->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"userData", 1}];
    -[OKPresentationCanvas setProperties:](v11, "setProperties:", [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"properties", 1}]);
  }

  return v11;
}

- (void)dealloc
{
  className = self->_className;
  if (className)
  {

    self->_className = 0;
  }

  pagesNames = self->_pagesNames;
  if (pagesNames)
  {

    self->_pagesNames = 0;
  }

  internalSettings = self->_internalSettings;
  if (internalSettings)
  {

    self->_internalSettings = 0;
  }

  internalUserData = self->_internalUserData;
  if (internalUserData)
  {

    self->_internalUserData = 0;
  }

  v7.receiver = self;
  v7.super_class = OKPresentationNavigator;
  [(OKPresentationCanvas *)&v7 dealloc];
}

+ (id)navigatorWithName:(id)name className:(id)className pagesNames:(id)names settings:(id)settings userData:(id)data
{
  v12 = objc_alloc_init(OKPresentationNavigator);
  [(OKPresentationCanvas *)v12 setName:name];
  v12->_className = [className copy];
  v12->_pagesNames = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:names copyItems:1];
  v12->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:settings copyItems:1];
  v12->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:data copyItems:1];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKPresentationNavigator;
  v4 = [(OKPresentationCanvas *)&v7 copyWithZone:zone];
  if (v4)
  {
    v4[10] = [(NSString *)self->_className copy];
    pagesNames = self->_pagesNames;
    objc_sync_enter(pagesNames);
    v4[11] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_pagesNames copyItems:1];
    objc_sync_exit(pagesNames);
    v4[12] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    v4[13] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalUserData copyItems:1];
  }

  return v4;
}

- (id)dictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  className = self->_className;
  if (className)
  {
    [dictionary setObject:className forKey:@"class"];
  }

  pagesNames = self->_pagesNames;
  objc_sync_enter(pagesNames);
  if ([(NSMutableArray *)self->_pagesNames count])
  {
    [v4 setObject:self->_pagesNames forKey:@"pages"];
  }

  objc_sync_exit(pagesNames);
  if (self->_internalSettings)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
  }

  if (self->_internalUserData)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"userData"}];
  }

  return v4;
}

- (id)parentPage
{
  [(OKPresentationCanvas *)self parent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(OKPresentationCanvas *)self parent];
}

- (NSMutableArray)pagesNames
{
  pagesNames = self->_pagesNames;
  objc_sync_enter(pagesNames);
  v4 = [(NSMutableArray *)self->_pagesNames copy];
  objc_sync_exit(pagesNames);
  return v4;
}

- (id)pages
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    obj = self->_pagesNames;
    objc_sync_enter(obj);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    pagesNames = self->_pagesNames;
    v5 = [(NSMutableArray *)pagesNames countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = MEMORY[0x277D62808];
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(pagesNames);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [[(OKPresentationCanvas *)self presentation] pageWithName:v9];
          if (v10)
          {
            [v3 addObject:v10];
          }

          else if (*v6 >= 4)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:212 andFormat:@"Failed to resolve page %@ for navigator %@: Page not found", v9, -[OKPresentationCanvas name](self, "name", 0)];
          }
        }

        v5 = [(NSMutableArray *)pagesNames countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    objc_sync_exit(obj);
    return v3;
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:220 andFormat:@"Failed to resolve pages for navigator %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
    }

    return 0;
  }
}

- (void)addPageName:(id)name
{
  pagesNames = self->_pagesNames;
  objc_sync_enter(pagesNames);
  [(NSMutableArray *)self->_pagesNames addObject:name];

  objc_sync_exit(pagesNames);
}

- (id)pageWithName:(id)name
{
  if (![(OKPresentationCanvas *)self presentation])
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:261 andFormat:@"Failed to resolve page %@ for navigator %@: Not attached to any presentation", name, -[OKPresentationCanvas name](self, "name")];
    }

    return 0;
  }

  pagesNames = self->_pagesNames;
  objc_sync_enter(pagesNames);
  if (![(NSMutableArray *)self->_pagesNames containsObject:name])
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:255 andFormat:@"Failed to resolve page %@ for navigator %@: Page is not listed in navigator", name, -[OKPresentationCanvas name](self, "name")];
    }

    goto LABEL_11;
  }

  v6 = [[(OKPresentationCanvas *)self presentation] pageWithName:name];
  if (!v6)
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:250 andFormat:@"Failed to resolve page %@ for navigator %@: Page not found", name, -[OKPresentationCanvas name](self, "name")];
    }

LABEL_11:
    objc_sync_exit(pagesNames);
    return 0;
  }

  objc_sync_exit(pagesNames);
  return v6;
}

- (void)resolveIfNeeded
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    pages = [(OKPresentationNavigator *)self pages];
    isResolved = [(OKPresentationCanvas *)self isResolved];
    if (!isResolved)
    {
      [pages makeObjectsPerformSelector:sel_setPresentation_ withObject:{-[OKPresentationCanvas presentation](self, "presentation")}];
      [pages makeObjectsPerformSelector:sel_setParent_ withObject:self];
      [(OKPresentationCanvas *)self setIsResolved:1];
    }

    v5 = !isResolved;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [pages countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(pages);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          if (([v10 isResolved] & 1) == 0)
          {
            [v10 resolveIfNeeded];
            v5 = 1;
          }
        }

        v7 = [pages countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    if (v5)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      allKeys = [(NSMutableDictionary *)self->_internalSettings allKeys];
      v12 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(allKeys);
            }

            [(OKPresentationCanvas *)self setSettingsObject:[(NSMutableDictionary *)self->_internalSettings objectForKey:*(*(&v25 + 1) + 8 * j)] forKeyPath:*(*(&v25 + 1) + 8 * j)];
          }

          v13 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v13);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      allKeys2 = [(NSMutableDictionary *)self->_internalUserData allKeys];
      v17 = [allKeys2 countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          for (k = 0; k != v18; ++k)
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(allKeys2);
            }

            [(OKPresentationCanvas *)self setUserDataObject:[(NSMutableDictionary *)self->_internalUserData objectForKey:*(*(&v21 + 1) + 8 * k)] forKeyPath:*(*(&v21 + 1) + 8 * k)];
          }

          v18 = [allKeys2 countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v18);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationNavigator.m" line:316 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end