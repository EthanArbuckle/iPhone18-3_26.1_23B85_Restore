@interface OKWidgetCALayerProxy
+ (id)proxyForLayer:(id)a3;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (OKWidgetCALayerProxy)init;
- (OKWidgetCALayerProxy)initWithLayer:(id)a3;
- (void)dealloc;
- (void)setSettingContents:(id)a3;
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

- (OKWidgetCALayerProxy)initWithLayer:(id)a3
{
  v4 = [(OKWidgetCALayerProxy *)self init];
  if (v4)
  {
    v4->_layer = a3;
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

+ (id)proxyForLayer:(id)a3
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

  v5 = [objc_alloc(*v4) initWithLayer:a3];

  return v5;
}

+ (id)supportedSettings
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = @"contents";
  v5[0] = &unk_287AF14A8;
  v4[0] = @"type";
  v4[1] = @"default";
  v4[2] = @"jsExport";
  v5[1] = [MEMORY[0x277CBEB68] null];
  v5[2] = @"writeonly";
  v7[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  return v2;
}

- (void)setSettingContents:(id)a3
{
  v4 = [(OKResourceManager *)[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)[(OKWidgetMicaDocument *)[(OKWidgetCALayerProxy *)self widgetMicaDocument] widgetMicaView] presentationViewController] resourceManager] resourceWithURL:a3 copy:0];
  v5 = [(OKWidgetCALayerProxy *)self layer];

  [(CALayer *)v5 setContents:v4];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetCALayerProxy"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end