@interface OKPresentationPage
+ (OKPresentationPage)pageWithName:(id)name templateName:(id)templateName navigatorName:(id)navigatorName properties:(id)properties settings:(id)settings userData:(id)data widgets:(id)widgets;
- (OKPresentationPage)init;
- (OKPresentationPage)initWithDictionary:(id)dictionary andName:(id)name forPresentation:(id)presentation andParent:(id)parent;
- (id)canvasWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)navigator;
- (id)pageTemplate;
- (id)parentNavigator;
- (id)widgetWithName:(id)name;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationPage

- (OKPresentationPage)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationPage;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_templateName = 0;
    result->_internalNavigatorName = 0;
    result->_internalSettings = 0;
    result->_internalUserData = 0;
    result->_internalWidgets = 0;
    result->_navigatorName = 0;
    result->_widgets = 0;
  }

  return result;
}

- (OKPresentationPage)initWithDictionary:(id)dictionary andName:(id)name forPresentation:(id)presentation andParent:(id)parent
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = [(OKPresentationPage *)self init];
  v11 = v10;
  if (v10)
  {
    [(OKPresentationCanvas *)v10 setPresentation:presentation];
    [(OKPresentationCanvas *)v11 setParent:parent];
    [(OKPresentationCanvas *)v11 setName:name];
    v11->_templateName = [objc_msgSend(dictionary objectForKey:{@"template", "copy"}];
    v11->_internalNavigatorName = [objc_msgSend(dictionary objectForKey:{@"navigator", "copy"}];
    v11->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"settings", 1}];
    v11->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"userData", 1}];
    v11->_internalWidgets = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [dictionary objectForKey:@"widgets"];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[OKPresentationWidget alloc] initWithDictionary:*(*(&v19 + 1) + 8 * i) forPresentation:presentation andParent:v11];
          [(NSMutableArray *)v11->_internalWidgets addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [(OKPresentationPage *)v11 setNavigatorName:v11->_internalNavigatorName];
    -[OKPresentationCanvas setProperties:](v11, "setProperties:", [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"properties", 1}]);
  }

  return v11;
}

- (void)dealloc
{
  templateName = self->_templateName;
  if (templateName)
  {

    self->_templateName = 0;
  }

  internalNavigatorName = self->_internalNavigatorName;
  if (internalNavigatorName)
  {

    self->_internalNavigatorName = 0;
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

  internalWidgets = self->_internalWidgets;
  if (internalWidgets)
  {

    self->_internalWidgets = 0;
  }

  navigatorName = self->_navigatorName;
  if (navigatorName)
  {

    self->_navigatorName = 0;
  }

  widgets = self->_widgets;
  if (widgets)
  {

    self->_widgets = 0;
  }

  v10.receiver = self;
  v10.super_class = OKPresentationPage;
  [(OKPresentationCanvas *)&v10 dealloc];
}

+ (OKPresentationPage)pageWithName:(id)name templateName:(id)templateName navigatorName:(id)navigatorName properties:(id)properties settings:(id)settings userData:(id)data widgets:(id)widgets
{
  v15 = objc_alloc_init(OKPresentationPage);
  [(OKPresentationCanvas *)v15 setName:name];
  v15->_templateName = [templateName copy];
  v15->_internalNavigatorName = [navigatorName copy];
  v15->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:settings copyItems:1];
  v15->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:data copyItems:1];
  v15->_internalWidgets = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:widgets copyItems:1];
  -[OKPresentationCanvas setProperties:](v15, "setProperties:", [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:properties copyItems:1]);
  [(OKPresentationPage *)v15 setNavigatorName:v15->_internalNavigatorName];
  [(NSMutableArray *)v15->_internalWidgets makeObjectsPerformSelector:sel_setParent_ withObject:v15];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = OKPresentationPage;
  v4 = [(OKPresentationCanvas *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[10] = [(NSString *)self->_templateName copy];
    v4[11] = [(NSString *)self->_internalNavigatorName copy];
    v4[12] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    v4[13] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalUserData copyItems:1];
    v4[14] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_internalWidgets copyItems:1];
    v4[15] = [(NSString *)self->_navigatorName copy];
    if (self->_widgets)
    {
      v4[16] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_widgets copyItems:1];
    }
  }

  return v4;
}

- (id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  templateName = self->_templateName;
  if (templateName)
  {
    [dictionary setObject:templateName forKey:@"template"];
  }

  internalNavigatorName = self->_internalNavigatorName;
  if (internalNavigatorName)
  {
    [v4 setObject:internalNavigatorName forKey:@"navigator"];
  }

  if (self->_internalSettings)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
  }

  if (self->_internalUserData)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"userData"}];
  }

  if ([(NSMutableArray *)self->_internalWidgets count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    internalWidgets = self->_internalWidgets;
    v9 = [(NSMutableArray *)internalWidgets countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(internalWidgets);
          }

          [array addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionary")}];
        }

        v10 = [(NSMutableArray *)internalWidgets countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [v4 setObject:array forKey:@"widgets"];
  }

  return v4;
}

- (id)parentNavigator
{
  [(OKPresentationCanvas *)self parent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(OKPresentationCanvas *)self parent];
}

- (id)pageTemplate
{
  if (self->_templateName)
  {
    if ([(OKPresentationCanvas *)self presentation])
    {
      result = [[(OKPresentationCanvas *)self presentation] pageTemplateWithName:self->_templateName];
      if (result)
      {
        v4 = 1;
      }

      else
      {
        v4 = *MEMORY[0x277D62808] < 4;
      }

      if (v4)
      {
        if (result)
        {
          return result;
        }
      }

      else
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:244 andFormat:@"Failed to resolve page template %@ for page %@: Page template not found", self->_templateName, -[OKPresentationCanvas name](self, "name")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:249 andFormat:@"Failed to resolve page template %@ for page %@: Not attached to any presentation", self->_templateName, -[OKPresentationCanvas name](self, "name")];
    }
  }

  return 0;
}

- (id)navigator
{
  if (self->_navigatorName)
  {
    if ([(OKPresentationCanvas *)self presentation])
    {
      result = [[(OKPresentationCanvas *)self presentation] navigatorWithName:self->_navigatorName];
      if (result)
      {
        v4 = 1;
      }

      else
      {
        v4 = *MEMORY[0x277D62808] < 4;
      }

      if (v4)
      {
        if (result)
        {
          return result;
        }
      }

      else
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:272 andFormat:@"Failed to resolve navigator %@ for page %@: Page template not found", self->_navigatorName, -[OKPresentationCanvas name](self, "name")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:277 andFormat:@"Failed to resolve navigator %@ for page %@: Not attached to any presentation", self->_navigatorName, -[OKPresentationCanvas name](self, "name")];
    }
  }

  return 0;
}

- (id)widgetWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    widgets = self->_widgets;
    v6 = [(NSMutableArray *)widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(widgets);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([objc_msgSend(v10 "name")])
          {
            return v10;
          }
        }

        v7 = [(NSMutableArray *)widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:295 andFormat:@"Failed to resolve widget %@ for page %@: Widget not found", name, -[OKPresentationCanvas name](self, "name")];
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:299 andFormat:@"Failed to resolve widget %@ for page %@: Not attached to any presentation", name, -[OKPresentationCanvas name](self, "name")];
  }

  return 0;
}

- (id)canvasWithName:(id)name
{
  if ([name isEqualToString:self->_navigatorName])
  {

    return [(OKPresentationPage *)self navigator];
  }

  else
  {

    return [(OKPresentationPage *)self widgetWithName:name];
  }
}

- (void)resolveIfNeeded
{
  v51 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    isResolved = [(OKPresentationCanvas *)self isResolved];
    if (!isResolved)
    {
      widgets = self->_widgets;
      if (widgets)
      {

        self->_widgets = 0;
      }

      self->_widgets = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(OKPresentationCanvas *)self parentApplyValueForKeyPath:[(OKPresentationCanvas *)self name]];
      internalWidgets = self->_internalWidgets;
      if (internalWidgets && [(NSMutableArray *)internalWidgets count])
      {
        -[NSMutableArray addObjectsFromArray:](self->_widgets, "addObjectsFromArray:", [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_internalWidgets copyItems:1]);
      }

      if (self->_templateName)
      {
        v6 = [[(OKPresentationCanvas *)self presentation] pageTemplateWithName:self->_templateName];
        if (v6)
        {
          v7 = v6;
          -[OKPresentationPage setNavigatorName:](self, "setNavigatorName:", [v6 navigatorName]);
          v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:objc_msgSend(v7 copyItems:{"widgets"), 1}];
          [v8 makeObjectsPerformSelector:sel_setParent_ withObject:self];
          [(NSMutableArray *)self->_widgets addObjectsFromArray:v8];
          v9 = v8;
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:362 andFormat:@"%@ page template cannot be found", self->_templateName];
        }
      }

      if (self->_internalNavigatorName)
      {
        [(OKPresentationPage *)self setNavigatorName:?];
      }

      if (self->_navigatorName)
      {
        v10 = [[(OKPresentationCanvas *)self presentation] navigatorWithName:self->_navigatorName];
        if (v10)
        {
          v11 = v10;
          [v10 setParent:self];
          [v11 setPresentation:{-[OKPresentationCanvas presentation](self, "presentation")}];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:382 andFormat:@"%@ navigator cannot be found", self->_navigatorName];
        }
      }

      [(NSMutableArray *)self->_widgets makeObjectsPerformSelector:sel_setPresentation_ withObject:[(OKPresentationCanvas *)self presentation]];
      [(OKPresentationCanvas *)self setIsResolved:1];
    }

    v12 = !isResolved;
    if (self->_navigatorName)
    {
      navigator = [(OKPresentationPage *)self navigator];
      if (([navigator isResolved] & 1) == 0)
      {
        [navigator resolveIfNeeded];
        v12 = 1;
      }
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = self->_widgets;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          if (([v19 isResolved] & 1) == 0)
          {
            [v19 resolveIfNeeded];
            v12 = 1;
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v16);
    }

    if (v12)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      if (self->_templateName)
      {
        v22 = [[(OKPresentationCanvas *)self presentation] pageTemplateWithName:self->_templateName];
        if (v22)
        {
          v23 = v22;
          [dictionary addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v22, "settings"), 1)}];
          [dictionary2 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v23, "userData"), 1)}];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:431 andFormat:@"%@ page template cannot be found", self->_templateName];
        }
      }

      internalSettings = self->_internalSettings;
      if (internalSettings && [(NSMutableDictionary *)internalSettings count])
      {
        [dictionary addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalSettings, 1)}];
      }

      internalUserData = self->_internalUserData;
      if (internalUserData && [(NSMutableDictionary *)internalUserData count])
      {
        [dictionary2 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalUserData, 1)}];
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allKeys = [dictionary allKeys];
      v27 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v41;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v41 != v29)
            {
              objc_enumerationMutation(allKeys);
            }

            -[OKPresentationCanvas setSettingsObject:forKeyPath:](self, "setSettingsObject:forKeyPath:", [dictionary objectForKey:*(*(&v40 + 1) + 8 * j)], *(*(&v40 + 1) + 8 * j));
          }

          v28 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v28);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      allKeys2 = [dictionary2 allKeys];
      v32 = [allKeys2 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v37;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v37 != v34)
            {
              objc_enumerationMutation(allKeys2);
            }

            -[OKPresentationCanvas setUserDataObject:forKeyPath:](self, "setUserDataObject:forKeyPath:", [dictionary2 objectForKey:*(*(&v36 + 1) + 8 * k)], *(*(&v36 + 1) + 8 * k));
          }

          v33 = [allKeys2 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v33);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationPage.m" line:458 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end