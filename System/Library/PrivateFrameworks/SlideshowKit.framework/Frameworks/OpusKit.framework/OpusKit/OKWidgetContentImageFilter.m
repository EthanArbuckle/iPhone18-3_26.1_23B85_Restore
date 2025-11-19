@interface OKWidgetContentImageFilter
+ (id)filterWithImageURL:(id)a3;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (id)inputKeys;
- (id)outputImage;
- (void)dealloc;
- (void)setSettingInputImageURL:(id)a3;
@end

@implementation OKWidgetContentImageFilter

- (void)dealloc
{
  inputImageURL = self->_inputImageURL;
  if (inputImageURL)
  {

    self->_inputImageURL = 0;
  }

  imageOutput = self->_imageOutput;
  if (imageOutput)
  {

    self->_imageOutput = 0;
  }

  v5.receiver = self;
  v5.super_class = OKWidgetContentImageFilter;
  [(OKWidgetBasicFilter *)&v5 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentImageFilter;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"inputImageURL";
  v5 = @"type";
  v6 = &unk_287AF0428;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingInputImageURL:(id)a3
{
  inputImageURL = self->_inputImageURL;
  if (inputImageURL)
  {

    self->_inputImageURL = 0;
  }

  self->_inputImageURL = 0;
}

- (id)inputKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetContentImageFilter;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetBasicFilter inputKeys](&v4, sel_inputKeys)}];
  [v2 addObjectsFromArray:&unk_287AF24B8];
  return v2;
}

- (id)outputImage
{
  inputImageURL = self->_inputImageURL;
  result = self->_imageOutput;
  if (inputImageURL)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [(OKPresentation *)[(OKWidgetBasicFilter *)self inputPresentation] mediaItemForURL:self->_inputImageURL];
    result = [MEMORY[0x277CBF758] imageWithContentsOfURL:{objc_msgSend(v6, "resourceURL")}];
    self->_imageOutput = result;
  }

  return result;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentImageFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

+ (id)filterWithImageURL:(id)a3
{
  v4 = objc_alloc_init(OKWidgetContentImageFilter);
  -[OKWidgetContentImageFilter setInputImageURL:](v4, "setInputImageURL:", [MEMORY[0x277CBEBC0] URLWithString:a3]);

  return v4;
}

@end