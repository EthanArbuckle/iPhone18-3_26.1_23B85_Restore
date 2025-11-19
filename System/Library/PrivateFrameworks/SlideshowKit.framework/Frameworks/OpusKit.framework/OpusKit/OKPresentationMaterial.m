@interface OKPresentationMaterial
+ (id)materialWithName:(id)a3 templateName:(id)a4 className:(id)a5 settings:(id)a6 userData:(id)a7;
- (OKPresentationMaterial)init;
- (OKPresentationMaterial)initWithDictionary:(id)a3 forPresentation:(id)a4 andParent:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)materialTemplate;
- (id)parentWidget;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationMaterial

- (OKPresentationMaterial)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationMaterial;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_templateName = 0;
    result->_internalName = 0;
    result->_internalClassName = 0;
    result->_internalSettings = 0;
    result->_internalUserData = 0;
    result->_className = 0;
  }

  return result;
}

- (OKPresentationMaterial)initWithDictionary:(id)a3 forPresentation:(id)a4 andParent:(id)a5
{
  v8 = [(OKPresentationMaterial *)self init];
  v9 = v8;
  if (v8)
  {
    [(OKPresentationCanvas *)v8 setPresentation:a4];
    [(OKPresentationCanvas *)v9 setParent:a5];
    [(OKPresentationCanvas *)v9 setIsResolved:0];
    v9->_templateName = [objc_msgSend(a3 objectForKey:{@"template", "copy"}];
    v9->_internalName = [objc_msgSend(a3 objectForKey:{@"name", "copy"}];
    v9->_internalClassName = [objc_msgSend(a3 objectForKey:{@"class", "copy"}];
    v9->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(a3 copyItems:{"objectForKey:", @"settings", 1}];
    v9->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(a3 copyItems:{"objectForKey:", @"userData", 1}];
    [(OKPresentationCanvas *)v9 setName:v9->_internalName];
    [(OKPresentationMaterial *)v9 setClassName:v9->_internalClassName];
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

  className = self->_className;
  if (className)
  {

    self->_className = 0;
  }

  v9.receiver = self;
  v9.super_class = OKPresentationMaterial;
  [(OKPresentationCanvas *)&v9 dealloc];
}

+ (id)materialWithName:(id)a3 templateName:(id)a4 className:(id)a5 settings:(id)a6 userData:(id)a7
{
  v12 = objc_alloc_init(OKPresentationMaterial);
  v12->_templateName = [a4 copy];
  v12->_internalName = [a3 copy];
  v12->_internalClassName = [a5 copy];
  v12->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a6 copyItems:1];
  v12->_internalUserData = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a7 copyItems:1];
  [(OKPresentationCanvas *)v12 setName:a3];
  [(OKPresentationMaterial *)v12 setClassName:a5];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = OKPresentationMaterial;
  v4 = [(OKPresentationCanvas *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[10] = [(NSString *)self->_templateName copy];
    v4[11] = [(NSString *)self->_internalName copy];
    v4[12] = [(NSString *)self->_internalClassName copy];
    v4[13] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    v4[14] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalUserData copyItems:1];
    v4[15] = [(NSString *)self->_className copy];
  }

  return v4;
}

- (id)dictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  templateName = self->_templateName;
  if (templateName)
  {
    [v3 setObject:templateName forKey:@"template"];
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

  return v4;
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

- (id)materialTemplate
{
  if (self->_templateName)
  {
    if ([(OKPresentationCanvas *)self presentation])
    {
      result = [[(OKPresentationCanvas *)self presentation] materialTemplateWithName:self->_templateName];
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
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationMaterial.m" line:209 andFormat:@"Failed to resolve widget template %@ for page %@: Widget template not found", self->_templateName, -[OKPresentationCanvas name](self, "name")];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationMaterial.m" line:214 andFormat:@"Failed to resolve widget template %@ for widget %@: Not attached to any presentation", self->_templateName, -[OKPresentationCanvas name](self, "name")];
    }
  }

  return 0;
}

- (void)resolveIfNeeded
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    if (![(OKPresentationCanvas *)self isResolved])
    {
      if (self->_templateName)
      {
        v3 = [[(OKPresentationCanvas *)self presentation] materialTemplateWithName:self->_templateName];
        if (v3)
        {
          v4 = v3;
          -[OKPresentationCanvas setName:](self, "setName:", [v3 name]);
          -[OKPresentationMaterial setClassName:](self, "setClassName:", [v4 className]);
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationMaterial.m" line:244 andFormat:@"%@ widget template cannot be found", self->_templateName];
        }
      }

      if (self->_internalName)
      {
        [(OKPresentationCanvas *)self setName:?];
      }

      if (self->_internalClassName)
      {
        [(OKPresentationMaterial *)self setClassName:?];
      }

      [(OKPresentationCanvas *)self setIsResolved:1];
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = [MEMORY[0x277CBEB38] dictionary];
      if (self->_templateName)
      {
        v7 = [[(OKPresentationCanvas *)self presentation] materialTemplateWithName:self->_templateName];
        if (v7)
        {
          v8 = v7;
          [v5 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v7, "settings"), 1)}];
          [v6 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", objc_msgSend(v8, "userData"), 1)}];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationMaterial.m" line:281 andFormat:@"%@ widget template cannot be found", self->_templateName];
        }
      }

      internalSettings = self->_internalSettings;
      if (internalSettings && [(NSMutableDictionary *)internalSettings count])
      {
        [v5 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalSettings, 1)}];
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [v5 allKeys];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            -[OKPresentationCanvas setSettingsObject:forKeyPath:](self, "setSettingsObject:forKeyPath:", [v5 objectForKey:*(*(&v25 + 1) + 8 * i)], *(*(&v25 + 1) + 8 * i));
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }

      internalUserData = self->_internalUserData;
      if (internalUserData && [(NSMutableDictionary *)internalUserData count])
      {
        [v6 addEntriesFromDictionary:{objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithDictionary:copyItems:", self->_internalUserData, 1)}];
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = [v6 allKeys];
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(v16);
            }

            -[OKPresentationCanvas setUserDataObject:forKeyPath:](self, "setUserDataObject:forKeyPath:", [v6 objectForKey:*(*(&v21 + 1) + 8 * j)], *(*(&v21 + 1) + 8 * j));
          }

          v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v18);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationMaterial.m" line:308 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end