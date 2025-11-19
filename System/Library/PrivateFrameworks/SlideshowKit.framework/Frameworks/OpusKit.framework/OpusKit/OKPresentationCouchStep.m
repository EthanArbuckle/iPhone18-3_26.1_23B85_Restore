@interface OKPresentationCouchStep
+ (OKPresentationCouchStep)couchStepWithAnchorPageName:(id)a3 script:(id)a4 duration:(double)a5 settings:(id)a6;
- (OKPresentationCouchStep)init;
- (OKPresentationCouchStep)initWithDictionary:(id)a3 forPresentation:(id)a4 andCouch:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)parentCouch;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationCouchStep

- (OKPresentationCouchStep)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationCouchStep;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_anchorPage = 0;
    result->_script = 0;
    result->_duration = -1.0;
    result->_internalSettings = 0;
  }

  return result;
}

- (OKPresentationCouchStep)initWithDictionary:(id)a3 forPresentation:(id)a4 andCouch:(id)a5
{
  v8 = [(OKPresentationCouchStep *)self init];
  v9 = v8;
  if (v8)
  {
    [(OKPresentationCanvas *)v8 setPresentation:a4];
    [(OKPresentationCanvas *)v9 setParent:a5];
    v9->_anchorPage = [objc_msgSend(a3 objectForKey:{@"anchorPage", "copy"}];
    v9->_script = [objc_msgSend(a3 objectForKey:{@"script", "copy"}];
    if ([a3 objectForKey:@"duration"])
    {
      [objc_msgSend(a3 objectForKey:{@"duration", "doubleValue"}];
      v9->_duration = v10;
    }

    v9->_dependencies = [objc_msgSend(a3 objectForKeyedSubscript:{@"dependencies", "copy"}];
    v9->_ignoresBusiness = [objc_msgSend(a3 objectForKeyedSubscript:{@"ignoresBusiness", "BOOLValue"}];
    v9->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(a3 copyItems:{"objectForKey:", @"settings", 1}];
  }

  return v9;
}

- (void)dealloc
{
  anchorPage = self->_anchorPage;
  if (anchorPage)
  {

    self->_anchorPage = 0;
  }

  script = self->_script;
  if (script)
  {

    self->_script = 0;
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {

    self->_dependencies = 0;
  }

  internalSettings = self->_internalSettings;
  if (internalSettings)
  {

    self->_internalSettings = 0;
  }

  v7.receiver = self;
  v7.super_class = OKPresentationCouchStep;
  [(OKPresentationCanvas *)&v7 dealloc];
}

+ (OKPresentationCouchStep)couchStepWithAnchorPageName:(id)a3 script:(id)a4 duration:(double)a5 settings:(id)a6
{
  v10 = objc_alloc_init(OKPresentationCouchStep);
  v10->_anchorPage = [a3 copy];
  v10->_script = [a4 copy];
  v10->_duration = a5;
  v10->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a6 copyItems:1];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = OKPresentationCouchStep;
  v4 = [(OKPresentationCanvas *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[12] = [(NSString *)self->_anchorPage copy];
    v4[13] = [(NSString *)self->_script copy];
    v4[14] = *&self->_duration;
    v4[15] = [(NSArray *)self->_dependencies copy];
    *(v4 + 88) = self->_ignoresBusiness;
    if (self->_internalSettings)
    {
      v4[10] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    }
  }

  return v4;
}

- (id)dictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  anchorPage = self->_anchorPage;
  if (anchorPage)
  {
    [v3 setObject:anchorPage forKey:@"anchorPage"];
  }

  script = self->_script;
  if (script)
  {
    [v4 setObject:script forKey:@"script"];
  }

  if (self->_duration != -1.0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"duration"}];
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    [v4 setObject:dependencies forKey:@"dependencies"];
  }

  if (self->_ignoresBusiness)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"ignoresBusiness"];
  }

  if (self->_internalSettings)
  {
    [v4 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
  }

  return v4;
}

- (id)parentCouch
{
  [(OKPresentationCanvas *)self parent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(OKPresentationCanvas *)self parent];
}

- (void)resolveIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    if (![(OKPresentationCanvas *)self isResolved])
    {
      [(OKPresentationCanvas *)self setIsResolved:1];
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = [(NSMutableDictionary *)self->_internalSettings allKeys];
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [(OKPresentationCanvas *)self setSettingsObject:[(NSMutableDictionary *)self->_internalSettings objectForKey:*(*(&v8 + 1) + 8 * i)] forKeyPath:*(*(&v8 + 1) + 8 * i)];
          }

          v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCouchStep.m" line:212 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end