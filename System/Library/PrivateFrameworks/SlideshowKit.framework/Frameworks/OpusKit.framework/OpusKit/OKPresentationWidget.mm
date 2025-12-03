@interface OKPresentationWidget
+ (OKPresentationWidget)widgetWithName:(id)name templateName:(id)templateName className:(id)className settings:(id)settings userData:(id)data subWidgets:(id)widgets materials:(id)materials;
- (OKPresentationWidget)init;
- (OKPresentationWidget)initWithDictionary:(id)dictionary forPresentation:(id)presentation andParent:(id)parent;
- (id)canvasWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)materialWithName:(id)name;
- (id)parentPage;
- (id)parentWidget;
- (id)subWidgetWithName:(id)name;
- (id)widgetTemplate;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationWidget

- (OKPresentationWidget)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationWidget;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_templateName = 0;
    result->_internalName = 0;
    result->_internalClassName = 0;
    result->_internalSettings = 0;
    result->_internalUserData = 0;
    result->_internalSubWidgets = 0;
    result->_internalMaterials = 0;
    result->_className = 0;
    result->_subWidgets = 0;
    result->_materials = 0;
  }

  return result;
}

- (OKPresentationWidget)initWithDictionary:(id)dictionary forPresentation:(id)presentation andParent:(id)parent
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = [(OKPresentationWidget *)self init];
  v9 = v8;
  if (v8)
  {
    [(OKPresentationCanvas *)v8 setPresentation:presentation];
    [(OKPresentationCanvas *)v9 setParent:parent];
    -[OKPresentationWidget setTemplateName:](v9, "setTemplateName:", [dictionary objectForKey:@"template"]);
    v9->_internalName = [objc_msgSend(dictionary objectForKey:{@"name", "copy"}];
    v9->_internalClassName = [objc_msgSend(dictionary objectForKey:{@"class", "copy"}];
    v9->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"settings", 1}];
    v9->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionary copyItems:{"objectForKey:", @"userData", 1}];
    v9->_internalSubWidgets = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9->_internalMaterials = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    dictionaryCopy = dictionary;
    v10 = [dictionary objectForKey:@"widgets"];
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[OKPresentationWidget alloc] initWithDictionary:*(*(&v28 + 1) + 8 * i) forPresentation:presentation andParent:v9];
          [(NSMutableArray *)v9->_internalSubWidgets addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [dictionaryCopy objectForKey:@"materials"];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[OKPresentationMaterial alloc] initWithDictionary:*(*(&v24 + 1) + 8 * j) forPresentation:presentation andParent:v9];
          [(NSMutableArray *)v9->_internalMaterials addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [(OKPresentationCanvas *)v9 setName:v9->_internalName];
    [(OKPresentationWidget *)v9 setClassName:v9->_internalClassName];
    -[OKPresentationCanvas setProperties:](v9, "setProperties:", [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(dictionaryCopy copyItems:{"objectForKey:", @"properties", 1}]);
  }

  return v9;
}

- (void)dealloc
{
  templateName = self->_templateName;
  if (templateName)
  {

    self->_templateName = 0;
  }

  internalName = self->_internalName;
  if (internalName)
  {

    self->_internalName = 0;
  }

  internalClassName = self->_internalClassName;
  if (internalClassName)
  {

    self->_internalClassName = 0;
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

  internalSubWidgets = self->_internalSubWidgets;
  if (internalSubWidgets)
  {

    self->_internalSubWidgets = 0;
  }

  internalMaterials = self->_internalMaterials;
  if (internalMaterials)
  {

    self->_internalMaterials = 0;
  }

  materials = self->_materials;
  if (materials)
  {

    self->_materials = 0;
  }

  className = self->_className;
  if (className)
  {

    self->_className = 0;
  }

  subWidgets = self->_subWidgets;
  if (subWidgets)
  {

    self->_subWidgets = 0;
  }

  v13.receiver = self;
  v13.super_class = OKPresentationWidget;
  [(OKPresentationCanvas *)&v13 dealloc];
}

+ (OKPresentationWidget)widgetWithName:(id)name templateName:(id)templateName className:(id)className settings:(id)settings userData:(id)data subWidgets:(id)widgets materials:(id)materials
{
  v15 = objc_alloc_init(OKPresentationWidget);
  [(OKPresentationWidget *)v15 setTemplateName:templateName];
  v15->_internalName = [name copy];
  v15->_internalClassName = [className copy];
  v15->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:settings copyItems:1];
  v15->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:data copyItems:1];
  v15->_internalSubWidgets = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:widgets copyItems:1];
  v15->_internalMaterials = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:materials copyItems:1];
  [(OKPresentationCanvas *)v15 setName:name];
  [(OKPresentationWidget *)v15 setClassName:className];
  [(NSMutableArray *)v15->_internalSubWidgets makeObjectsPerformSelector:sel_setParent_ withObject:v15];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = OKPresentationWidget;
  v4 = [(OKPresentationCanvas *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[10] = [(NSString *)self->_templateName copy];
    v4[11] = [(NSString *)self->_internalName copy];
    v4[12] = [(NSString *)self->_internalClassName copy];
    v4[13] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    v4[14] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalUserData copyItems:1];
    v4[15] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_internalSubWidgets copyItems:1];
    v4[16] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_internalMaterials copyItems:1];
    v4[17] = [(NSString *)self->_className copy];
    if (self->_subWidgets)
    {
      v4[18] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_subWidgets copyItems:1];
    }

    if (self->_materials)
    {
      v4[19] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_materials copyItems:1];
    }
  }

  return v4;
}

- (id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  templateName = self->_templateName;
  if (templateName)
  {
    [dictionary setObject:templateName forKey:@"template"];
  }

  internalName = self->_internalName;
  if (internalName)
  {
    [v4 setObject:internalName forKey:@"name"];
  }

  internalClassName = self->_internalClassName;
  if (internalClassName)
  {
    [v4 setObject:internalClassName forKey:@"class"];
  }

  if (self->_internalSettings)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
  }

  if (self->_internalUserData)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"userData"}];
  }

  if (self->_internalMaterials)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    internalMaterials = self->_internalMaterials;
    v10 = [(NSMutableArray *)internalMaterials countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(internalMaterials);
          }

          [array addObject:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "dictionary")}];
        }

        v11 = [(NSMutableArray *)internalMaterials countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    [v4 setObject:array forKey:@"materials"];
  }

  if ([(NSMutableArray *)self->_internalSubWidgets count])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    internalSubWidgets = self->_internalSubWidgets;
    v16 = [(NSMutableArray *)internalSubWidgets countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(internalSubWidgets);
          }

          [array2 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * j), "dictionary")}];
        }

        v17 = [(NSMutableArray *)internalSubWidgets countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    [v4 setObject:array2 forKey:@"widgets"];
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

- (id)parentWidget
{
  [(OKPresentationCanvas *)self parent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(OKPresentationCanvas *)self parent];
}

- (id)widgetTemplate
{
  if (self->_templateName)
  {
    if ([(OKPresentationCanvas *)self presentation])
    {
      result = [[(OKPresentationCanvas *)self presentation] widgetTemplateWithName:self->_templateName];
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
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:297 andFormat:@"Failed to resolve widget template %@ for page %@: Widget template not found", self->_templateName, -[OKPresentationCanvas name](self, "name")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:302 andFormat:@"Failed to resolve widget template %@ for widget %@: Not attached to any presentation", self->_templateName, -[OKPresentationCanvas name](self, "name")];
    }
  }

  return 0;
}

- (id)subWidgetWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subWidgets = self->_subWidgets;
    v6 = [(NSMutableArray *)subWidgets countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(subWidgets);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([objc_msgSend(v10 "name")])
          {
            return v10;
          }
        }

        v7 = [(NSMutableArray *)subWidgets countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:320 andFormat:@"Failed to resolve sub-widget %@ for widget %@: Sub-widget not found", name, -[OKPresentationCanvas name](self, "name")];
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:324 andFormat:@"Failed to resolve sub-widget %@ for widget %@: Not attached to any presentation", name, -[OKPresentationCanvas name](self, "name")];
  }

  return 0;
}

- (id)materialWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    internalMaterials = self->_internalMaterials;
    v6 = [(NSMutableArray *)internalMaterials countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(internalMaterials);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([objc_msgSend(v10 "name")])
          {
            return v10;
          }
        }

        v7 = [(NSMutableArray *)internalMaterials countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:344 andFormat:@"Failed to resolve material %@ for widget %@: Material not found", name, -[OKPresentationCanvas name](self, "name")];
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:348 andFormat:@"Failed to resolve material %@ for widget %@: Not attached to any presentation", name, -[OKPresentationCanvas name](self, "name")];
  }

  return 0;
}

- (id)canvasWithName:(id)name
{
  result = [(OKPresentationWidget *)self subWidgetWithName:?];
  if (!result)
  {

    return [(OKPresentationWidget *)self materialWithName:name];
  }

  return result;
}

- (void)resolveIfNeeded
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    isResolved = [(OKPresentationCanvas *)self isResolved];
    if (!isResolved)
    {
      subWidgets = self->_subWidgets;
      if (subWidgets)
      {

        self->_subWidgets = 0;
      }

      materials = self->_materials;
      if (materials)
      {

        self->_materials = 0;
      }

      [(OKPresentationCanvas *)self parentApplyValueForKeyPath:0];
      self->_subWidgets = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_materials = objc_alloc_init(MEMORY[0x277CBEB18]);
      internalSubWidgets = self->_internalSubWidgets;
      if (internalSubWidgets && [(NSMutableArray *)internalSubWidgets count])
      {
        -[NSMutableArray addObjectsFromArray:](self->_subWidgets, "addObjectsFromArray:", [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_internalSubWidgets copyItems:1]);
      }

      internalMaterials = self->_internalMaterials;
      if (internalMaterials && [(NSMutableArray *)internalMaterials count])
      {
        -[NSMutableArray addObjectsFromArray:](self->_materials, "addObjectsFromArray:", [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_internalMaterials copyItems:1]);
      }

      if ([(OKPresentationWidget *)self templateName])
      {
        v8 = [[(OKPresentationCanvas *)self presentation] widgetTemplateWithName:[(OKPresentationWidget *)self templateName]];
        if (v8)
        {
          v9 = v8;
          -[OKPresentationCanvas setName:](self, "setName:", [v8 name]);
          -[OKPresentationWidget setClassName:](self, "setClassName:", [v9 className]);
          v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:objc_msgSend(v9 copyItems:{"subWidgets"), 1}];
          v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:objc_msgSend(v9 copyItems:{"materials"), 1}];
          [v10 makeObjectsPerformSelector:sel_setParent_ withObject:self];
          [v11 makeObjectsPerformSelector:sel_setParent_ withObject:self];
          [(NSMutableArray *)self->_subWidgets addObjectsFromArray:v10];
          [(NSMutableArray *)self->_materials addObjectsFromArray:v11];
          v12 = v10;
          v13 = v11;
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:421 andFormat:@"%@ widget template cannot be found", self->_templateName];
        }
      }

      if (self->_internalName)
      {
        [(OKPresentationCanvas *)self setName:?];
      }

      if (self->_internalClassName)
      {
        [(OKPresentationWidget *)self setClassName:?];
      }

      [(NSMutableArray *)self->_subWidgets makeObjectsPerformSelector:sel_setPresentation_ withObject:[(OKPresentationCanvas *)self presentation]];
      [(NSMutableArray *)self->_materials makeObjectsPerformSelector:sel_setPresentation_ withObject:[(OKPresentationCanvas *)self presentation]];
      [(OKPresentationCanvas *)self setIsResolved:1];
    }

    v14 = !isResolved;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = self->_subWidgets;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          if (([v20 isResolved] & 1) == 0)
          {
            [v20 resolveIfNeeded];
            v14 = 1;
          }
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v17);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = self->_materials;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v51 + 1) + 8 * j);
          if (([v26 isResolved] & 1) == 0)
          {
            [v26 resolveIfNeeded];
            v14 = 1;
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v23);
    }

    if (v14)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      if (self->_templateName)
      {
        v29 = [[(OKPresentationCanvas *)self presentation] widgetTemplateWithName:self->_templateName];
        if (v29)
        {
          v30 = v29;
          [dictionary addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v29, "settings"), 1)}];
          [dictionary2 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v30, "userData"), 1)}];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:478 andFormat:@"%@ widget template cannot be found", self->_templateName];
        }
      }

      internalSettings = self->_internalSettings;
      if (internalSettings && [(NSMutableDictionary *)internalSettings count])
      {
        [dictionary addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalSettings, 1)}];
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      allKeys = [dictionary allKeys];
      v33 = [allKeys countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v48;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v48 != v35)
            {
              objc_enumerationMutation(allKeys);
            }

            -[OKPresentationCanvas setSettingsObject:forKeyPath:](self, "setSettingsObject:forKeyPath:", [dictionary objectForKey:*(*(&v47 + 1) + 8 * k)], *(*(&v47 + 1) + 8 * k));
          }

          v34 = [allKeys countByEnumeratingWithState:&v47 objects:v60 count:16];
        }

        while (v34);
      }

      internalUserData = self->_internalUserData;
      if (internalUserData && [(NSMutableDictionary *)internalUserData count])
      {
        [dictionary2 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalUserData, 1)}];
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      allKeys2 = [dictionary2 allKeys];
      v39 = [allKeys2 countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v44;
        do
        {
          for (m = 0; m != v40; ++m)
          {
            if (*v44 != v41)
            {
              objc_enumerationMutation(allKeys2);
            }

            -[OKPresentationCanvas setUserDataObject:forKeyPath:](self, "setUserDataObject:forKeyPath:", [dictionary2 objectForKey:*(*(&v43 + 1) + 8 * m)], *(*(&v43 + 1) + 8 * m));
          }

          v40 = [allKeys2 countByEnumeratingWithState:&v43 objects:v59 count:16];
        }

        while (v40);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationWidget.m" line:505 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end