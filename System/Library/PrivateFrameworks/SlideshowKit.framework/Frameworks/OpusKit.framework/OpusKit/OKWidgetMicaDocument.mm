@interface OKWidgetMicaDocument
+ (id)supportedSettings;
- (OKWidgetMicaDocument)initWithURL:(id)a3;
- (double)documentHeight;
- (double)documentWidth;
- (id)copyWithZone:(_NSZone *)a3;
- (id)settingObjectForKey:(id)a3;
- (void)applySettings:(id)a3 withResolution:(id)a4;
- (void)dealloc;
- (void)loadMicaDocument;
@end

@implementation OKWidgetMicaDocument

- (OKWidgetMicaDocument)initWithURL:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKWidgetMicaDocument;
  v4 = [(OKWidgetMicaDocument *)&v9 init];
  if (v4)
  {
    v8 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:1 error:&v8];
    v4->_data = v5;
    if (v5)
    {
      v6 = v8 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      [(OKWidgetMicaDocument *)v4 loadMicaDocument];
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMicaDocument.m" line:69 andFormat:@"Failed to load mica document %@: %@", a3, objc_msgSend(v8, "localizedDescription")];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OKWidgetMicaDocument);
  v5 = v4;
  if (v4)
  {
    [(OKWidgetMicaDocument *)v4 setData:self->_data];
    [(OKWidgetMicaDocument *)v5 loadMicaDocument];
  }

  return v5;
}

- (void)loadMicaDocument
{
  v7[7] = *MEMORY[0x277D85DE8];
  if (self->_data)
  {
    v6 = 0;
    v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:self->_data error:&v6];
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x277CBEB98];
      v7[0] = objc_opt_class();
      v7[1] = objc_opt_class();
      v7[2] = objc_opt_class();
      v7[3] = objc_opt_class();
      v7[4] = objc_opt_class();
      v7[5] = objc_opt_class();
      v7[6] = objc_opt_class();
      -[OKWidgetMicaDocument setRootDictionary:](self, "setRootDictionary:", [v4 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 7)), @"root"}]);
      [v4 finishDecoding];

      [(OKWidgetMicaDocument *)self setRootLayer:[(NSDictionary *)self->_rootDictionary objectForKey:@"rootLayer"]];
      [(OKWidgetMicaDocument *)self setPublishedObjects:[(NSDictionary *)self->_rootDictionary objectForKey:@"publishedObjects"]];
      -[CALayer setGeometryFlipped:](-[OKWidgetMicaDocument rootLayer](self, "rootLayer"), "setGeometryFlipped:", [-[NSDictionary valueForKey:](self->_rootDictionary valueForKey:{@"geometryFlipped", "BOOLValue"}] ^ 1);
    }

    else if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetMicaDocument.m" line:115 andFormat:@"Failed to create keyed unarchiver for mica document: %@", v6];
    }
  }
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {

    self->_data = 0;
  }

  rootDictionary = self->_rootDictionary;
  if (rootDictionary)
  {

    self->_rootDictionary = 0;
  }

  rootLayer = self->_rootLayer;
  if (rootLayer)
  {

    self->_rootLayer = 0;
  }

  publishedObjects = self->_publishedObjects;
  if (publishedObjects)
  {

    self->_publishedObjects = 0;
  }

  objc_storeWeak(&self->_widgetMicaView, 0);
  v7.receiver = self;
  v7.super_class = OKWidgetMicaDocument;
  [(OKWidgetMicaDocument *)&v7 dealloc];
}

- (void)applySettings:(id)a3 withResolution:(id)a4
{
  +[OKSettings beginApplyingSettings];
  [OKSettings resetAndApplySettings:a3 toObject:self withResolution:a4];

  +[OKSettings commitApplyingSettings];
}

- (double)documentWidth
{
  v2 = [(OKWidgetMicaDocument *)self settingsForKey:@"documentWidth"];

  [v2 doubleValue];
  return result;
}

- (double)documentHeight
{
  v2 = [(OKWidgetMicaDocument *)self settingsForKey:@"documentHeight"];

  [v2 doubleValue];
  return result;
}

+ (id)supportedSettings
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (id)settingObjectForKey:(id)a3
{
  v4 = [(OKWidgetMicaDocument *)self publishedObjectWithName:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = [OKWidgetCALayerProxy proxyForLayer:v4];
  [v5 setWidgetMicaDocument:self];
  return v5;
}

@end