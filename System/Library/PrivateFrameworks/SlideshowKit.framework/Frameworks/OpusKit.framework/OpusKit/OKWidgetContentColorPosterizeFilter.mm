@interface OKWidgetContentColorPosterizeFilter
+ (id)filterWithInputLevels:(id)levels;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (id)inputKeys;
- (id)outputImage;
- (void)setSettingInputLevels:(id)levels;
@end

@implementation OKWidgetContentColorPosterizeFilter

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentColorPosterizeFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF25D8];
  return v2;
}

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIColorPosterize" keysAndValues:{*MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), @"inputLevels", self->_inputLevels, 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentColorPosterizeFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"inputLevels";
  v5 = @"type";
  v6 = &unk_287AF1AA8;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingInputLevels:(id)levels
{
  inputLevels = self->_inputLevels;
  if (inputLevels)
  {

    self->_inputLevels = 0;
  }

  self->_inputLevels = levels;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentColorPosterizeFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

+ (id)filterWithInputLevels:(id)levels
{
  v4 = objc_alloc_init(OKWidgetContentColorPosterizeFilter);
  [(OKWidgetContentColorPosterizeFilter *)v4 setInputLevels:levels];

  return v4;
}

@end