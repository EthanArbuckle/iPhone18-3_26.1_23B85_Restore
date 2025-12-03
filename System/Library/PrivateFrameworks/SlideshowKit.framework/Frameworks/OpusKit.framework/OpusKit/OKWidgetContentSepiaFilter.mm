@interface OKWidgetContentSepiaFilter
+ (id)filterWithIntensity:(id)intensity;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputIntensity:(id)intensity;
@end

@implementation OKWidgetContentSepiaFilter

- (void)dealloc
{
  inputIntensity = self->_inputIntensity;
  if (inputIntensity)
  {

    self->_inputIntensity = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetContentSepiaFilter;
  [(OKWidgetBasicFilter *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentSepiaFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"inputIntensity";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF15E0;
  v6[1] = &unk_287AF15F8;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingInputIntensity:(id)intensity
{
  inputIntensity = self->_inputIntensity;
  if (inputIntensity)
  {

    self->_inputIntensity = 0;
  }

  self->_inputIntensity = intensity;
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentSepiaFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF25C0];
  return v2;
}

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CISepiaTone" keysAndValues:{*MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), @"inputIntensity", self->_inputIntensity, 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentSepiaFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

+ (id)filterWithIntensity:(id)intensity
{
  v4 = objc_alloc_init(OKWidgetContentSepiaFilter);
  [(OKWidgetContentSepiaFilter *)v4 setInputIntensity:intensity];

  return v4;
}

@end