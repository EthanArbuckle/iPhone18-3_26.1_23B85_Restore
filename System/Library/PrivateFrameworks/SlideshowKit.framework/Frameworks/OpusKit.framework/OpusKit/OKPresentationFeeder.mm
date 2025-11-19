@interface OKPresentationFeeder
+ (id)feederWithName:(id)a3 className:(id)a4 settings:(id)a5;
- (OKPresentationFeeder)init;
- (OKPresentationFeeder)initWithDictionary:(id)a3 andName:(id)a4 forPresentation:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationFeeder

- (OKPresentationFeeder)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationFeeder;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_className = 0;
    result->_internalSettings = 0;
  }

  return result;
}

- (OKPresentationFeeder)initWithDictionary:(id)a3 andName:(id)a4 forPresentation:(id)a5
{
  v8 = [(OKPresentationFeeder *)self init];
  v9 = v8;
  if (v8)
  {
    [(OKPresentationCanvas *)v8 setPresentation:a5];
    [(OKPresentationCanvas *)v9 setName:a4];
    v9->_className = [objc_msgSend(a3 objectForKey:{@"class", "copy"}];
    v9->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(a3 copyItems:{"objectForKey:", @"settings", 1}];
  }

  return v9;
}

- (void)dealloc
{
  className = self->_className;
  if (className)
  {

    self->_className = 0;
  }

  internalSettings = self->_internalSettings;
  if (internalSettings)
  {

    self->_internalSettings = 0;
  }

  v5.receiver = self;
  v5.super_class = OKPresentationFeeder;
  [(OKPresentationCanvas *)&v5 dealloc];
}

+ (id)feederWithName:(id)a3 className:(id)a4 settings:(id)a5
{
  v8 = objc_alloc_init(OKPresentationFeeder);
  [(OKPresentationCanvas *)v8 setName:a3];
  [(OKPresentationFeeder *)v8 setClassName:a4];
  v8->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a5 copyItems:1];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = OKPresentationFeeder;
  v4 = [(OKPresentationCanvas *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[10] = [(NSString *)self->_className copy];
    v4[11] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
  }

  return v4;
}

- (id)dictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_internalSettings)
  {
    [v3 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
  }

  return v3;
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
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationFeeder.m" line:166 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end