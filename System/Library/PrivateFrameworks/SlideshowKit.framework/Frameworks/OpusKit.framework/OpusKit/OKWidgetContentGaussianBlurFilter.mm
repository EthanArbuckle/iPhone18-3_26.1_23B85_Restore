@interface OKWidgetContentGaussianBlurFilter
+ (id)filterWithInputRadius:(id)a3;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputRadius:(id)a3;
@end

@implementation OKWidgetContentGaussianBlurFilter

- (void)dealloc
{
  inputRadius = self->_inputRadius;
  if (inputRadius)
  {

    self->_inputRadius = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetContentGaussianBlurFilter;
  [(OKWidgetBasicFilter *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentGaussianBlurFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"inputRadius";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF08F0;
  v6[1] = &unk_287AF0908;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingInputRadius:(id)a3
{
  inputRadius = self->_inputRadius;
  if (inputRadius)
  {

    self->_inputRadius = 0;
  }

  self->_inputRadius = a3;
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentGaussianBlurFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF2518];
  return v2;
}

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur" keysAndValues:{*MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), @"inputRadius", self->_inputRadius, 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentGaussianBlurFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

+ (id)filterWithInputRadius:(id)a3
{
  v4 = objc_alloc_init(OKWidgetContentGaussianBlurFilter);
  [(OKWidgetContentGaussianBlurFilter *)v4 setInputRadius:a3];

  return v4;
}

@end