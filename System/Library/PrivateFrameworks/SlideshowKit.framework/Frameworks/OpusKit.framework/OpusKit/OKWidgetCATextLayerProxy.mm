@interface OKWidgetCATextLayerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (OKWidgetCATextLayerProxy)init;
- (id)settingString;
- (void)dealloc;
- (void)setSettingString:(id)string;
@end

@implementation OKWidgetCATextLayerProxy

- (OKWidgetCATextLayerProxy)init
{
  v3.receiver = self;
  v3.super_class = OKWidgetCATextLayerProxy;
  return [(OKWidgetCALayerProxy *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetCATextLayerProxy;
  [(OKWidgetCALayerProxy *)&v2 dealloc];
}

+ (id)supportedSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKWidgetCATextLayerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v8 = @"string";
  v7[0] = &unk_287AF14C0;
  v6[0] = @"type";
  v6[1] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v6[2] = @"jsExport";
  v7[1] = null;
  v7[2] = @"readwrite";
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  return v2;
}

- (id)settingString
{
  layer = [(OKWidgetCALayerProxy *)self layer];

  return [(CALayer *)layer string];
}

- (void)setSettingString:(id)string
{
  layer = [(OKWidgetCALayerProxy *)self layer];

  [(CALayer *)layer setString:string];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetCATextLayerProxy"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end