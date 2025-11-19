@interface OKWidgetContentColorControlsFilter
+ (id)filterWithInputSaturation:(id)a3 inputBrightness:(id)a4 inputContrast:(id)a5;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputBrightness:(id)a3;
- (void)setSettingInputContrast:(id)a3;
- (void)setSettingInputSaturation:(id)a3;
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
  v2 = [MEMORY[0x277CBEB38] dictionary];
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
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 3)}];
  return v2;
}

- (void)setSettingInputSaturation:(id)a3
{
  inputSaturation = self->_inputSaturation;
  if (inputSaturation)
  {

    self->_inputSaturation = 0;
  }

  self->_inputSaturation = a3;
}

- (void)setSettingInputBrightness:(id)a3
{
  inputBrightness = self->_inputBrightness;
  if (inputBrightness)
  {

    self->_inputBrightness = 0;
  }

  self->_inputBrightness = a3;
}

- (void)setSettingInputContrast:(id)a3
{
  inputContrast = self->_inputContrast;
  if (inputContrast)
  {

    self->_inputContrast = 0;
  }

  self->_inputContrast = a3;
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
  v5 = [(OKWidgetBasicFilter *)self inputImage];
  v6 = [v3 filterWithName:@"CIColorControls" keysAndValues:{v4, v5, *MEMORY[0x277CBFAC0], self->_inputBrightness, *MEMORY[0x277CBFB10], self->_inputSaturation, *MEMORY[0x277CBFAD8], self->_inputContrast, 0}];
  v7 = *MEMORY[0x277CBFB50];

  return [v6 valueForKey:v7];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentColorControlsFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

+ (id)filterWithInputSaturation:(id)a3 inputBrightness:(id)a4 inputContrast:(id)a5
{
  v8 = objc_alloc_init(OKWidgetContentColorControlsFilter);
  [(OKWidgetContentColorControlsFilter *)v8 setInputSaturation:a3];
  [(OKWidgetContentColorControlsFilter *)v8 setInputBrightness:a4];
  [(OKWidgetContentColorControlsFilter *)v8 setInputContrast:a5];

  return v8;
}

@end