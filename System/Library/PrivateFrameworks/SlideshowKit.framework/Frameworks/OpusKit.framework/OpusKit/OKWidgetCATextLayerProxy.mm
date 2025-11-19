@interface OKWidgetCATextLayerProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (OKWidgetCATextLayerProxy)init;
- (id)settingString;
- (void)dealloc;
- (void)setSettingString:(id)a3;
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
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKWidgetCATextLayerProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v8 = @"string";
  v7[0] = &unk_287AF14C0;
  v6[0] = @"type";
  v6[1] = @"default";
  v3 = [MEMORY[0x277CBEB68] null];
  v6[2] = @"jsExport";
  v7[1] = v3;
  v7[2] = @"readwrite";
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  return v2;
}

- (id)settingString
{
  v2 = [(OKWidgetCALayerProxy *)self layer];

  return [(CALayer *)v2 string];
}

- (void)setSettingString:(id)a3
{
  v4 = [(OKWidgetCALayerProxy *)self layer];

  [(CALayer *)v4 setString:a3];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetCATextLayerProxy"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end