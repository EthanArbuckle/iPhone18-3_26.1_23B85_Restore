@interface OKWidgetContentColorControlsFilter
+ (id)filterWithInputSaturation:(id)saturation inputBrightness:(id)brightness inputContrast:(id)contrast;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputBrightness:(id)brightness;
- (void)setSettingInputContrast:(id)contrast;
- (void)setSettingInputSaturation:(id)saturation;
@end

@implementation OKWidgetContentColorControlsFilter

- (void)dealloc
{
  inputSaturation = self->_inputSaturation;
  if (inputSaturation)
  {

    self->_inputSaturation = 0;
  }

  inputBrightness = self->_inputBrightness;
  if (inputBrightness)
  {

    self->_inputBrightness = 0;
  }

  inputContrast = self->_inputContrast;
  if (inputContrast)
  {

    self->_inputContrast = 0;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetContentColorControlsFilter;
  [(OKWidgetBasicFilter *)&v6 dealloc];
}

+ (id)supportedSettings
{
  v11[3] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = @"inputSaturation";
  v8 = @"type";
  v9 = &unk_287AF0260;
  v11[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v10[1] = @"inputBrightness";
  v6 = @"type";
  v7 = &unk_287AF0260;
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v10[2] = @"inputContrast";
  v4 = @"type";
  v5 = &unk_287AF0260;
  v11[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 3)}];
  return dictionary;
}

- (void)setSettingInputSaturation:(id)saturation
{
  inputSaturation = self->_inputSaturation;
  if (inputSaturation)
  {

    self->_inputSaturation = 0;
  }

  self->_inputSaturation = saturation;
}

- (void)setSettingInputBrightness:(id)brightness
{
  inputBrightness = self->_inputBrightness;
  if (inputBrightness)
  {

    self->_inputBrightness = 0;
  }

  self->_inputBrightness = brightness;
}

- (void)setSettingInputContrast:(id)contrast
{
  inputContrast = self->_inputContrast;
  if (inputContrast)
  {

    self->_inputContrast = 0;
  }

  self->_inputContrast = contrast;
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentColorControlsFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF2470];
  return v2;
}

- (id)outputImage
{
  v3 = MEMORY[0x277CBF750];
  v4 = *MEMORY[0x277CBFAF0];
  inputImage = [(OKWidgetBasicFilter *)self inputImage];
  v6 = [v3 filterWithName:@"CIColorControls" keysAndValues:{v4, inputImage, *MEMORY[0x277CBFAC0], self->_inputBrightness, *MEMORY[0x277CBFB10], self->_inputSaturation, *MEMORY[0x277CBFAD8], self->_inputContrast, 0}];
  v7 = *MEMORY[0x277CBFB50];

  return [v6 valueForKey:v7];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentColorControlsFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

+ (id)filterWithInputSaturation:(id)saturation inputBrightness:(id)brightness inputContrast:(id)contrast
{
  v8 = objc_alloc_init(OKWidgetContentColorControlsFilter);
  [(OKWidgetContentColorControlsFilter *)v8 setInputSaturation:saturation];
  [(OKWidgetContentColorControlsFilter *)v8 setInputBrightness:brightness];
  [(OKWidgetContentColorControlsFilter *)v8 setInputContrast:contrast];

  return v8;
}

@end