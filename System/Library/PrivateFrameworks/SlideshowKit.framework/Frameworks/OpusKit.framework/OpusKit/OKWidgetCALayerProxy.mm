@interface OKWidgetCALayerProxy
+ (id)proxyForLayer:(id)layer;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (OKWidgetCALayerProxy)init;
- (OKWidgetCALayerProxy)initWithLayer:(id)layer;
- (void)dealloc;
- (void)setSettingContents:(id)contents;
@end

@implementation OKWidgetCALayerProxy

- (OKWidgetCALayerProxy)init
{
  v3.receiver = self;
  v3.super_class = OKWidgetCALayerProxy;
  result = [(OKWidgetCALayerProxy *)&v3 init];
  if (result)
  {
    result->_layer = 0;
  }

  return result;
}

- (OKWidgetCALayerProxy)initWithLayer:(id)layer
{
  v4 = [(OKWidgetCALayerProxy *)self init];
  if (v4)
  {
    v4->_layer = layer;
  }

  return v4;
}

- (void)dealloc
{
  layer = self->_layer;
  if (layer)
  {

    self->_layer = 0;
  }

  objc_storeWeak(&self->_widgetMicaDocument, 0);
  v4.receiver = self;
  v4.super_class = OKWidgetCALayerProxy;
  [(OKWidgetCALayerProxy *)&v4 dealloc];
}

+ (id)proxyForLayer:(id)layer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_279C8DC80;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v4 = off_279C8DC78;
  }

  v5 = [objc_alloc(*v4) initWithLayer:layer];

  return v5;
}

+ (id)supportedSettings
{
  v7[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = @"contents";
  v5[0] = &unk_287AF14A8;
  v4[0] = @"type";
  v4[1] = @"default";
  v4[2] = @"jsExport";
  v5[1] = [MEMORY[0x277CBEB68] null];
  v5[2] = @"writeonly";
  v7[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  return dictionary;
}

- (void)setSettingContents:(id)contents
{
  v4 = [(OKResourceManager *)[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)[(OKWidgetMicaDocument *)[(OKWidgetCALayerProxy *)self widgetMicaDocument] widgetMicaView] presentationViewController] resourceManager] resourceWithURL:contents copy:0];
  layer = [(OKWidgetCALayerProxy *)self layer];

  [(CALayer *)layer setContents:v4];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetCALayerProxy"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end