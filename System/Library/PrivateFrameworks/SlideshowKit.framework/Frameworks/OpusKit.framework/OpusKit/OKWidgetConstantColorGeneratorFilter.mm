@interface OKWidgetConstantColorGeneratorFilter
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputColor:(id)color;
@end

@implementation OKWidgetConstantColorGeneratorFilter

- (void)dealloc
{
  inputColor = self->_inputColor;
  if (inputColor)
  {

    self->_inputColor = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetConstantColorGeneratorFilter;
  [(OKWidgetBasicFilter *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetConstantColorGeneratorFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"inputColor";
  v5 = @"type";
  v6 = &unk_287AF0410;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingInputColor:(id)color
{
  inputColor = self->_inputColor;
  if (inputColor)
  {

    self->_inputColor = 0;
  }

  self->_inputColor = [MEMORY[0x277CBF730] colorWithCGColor:{objc_msgSend(color, "CGColor")}];
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetConstantColorGeneratorFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF24A0];
  return v2;
}

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIConstantColorGenerator" keysAndValues:{*MEMORY[0x277CBFAD0], self->_inputColor, 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetConstantColorGeneratorFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end