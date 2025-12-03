@interface OKWidgetBasicFilter
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (OKWidgetBasicFilter)initWithSettings:(id)settings;
- (id)outputImage;
- (void)dealloc;
@end

@implementation OKWidgetBasicFilter

- (OKWidgetBasicFilter)initWithSettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = OKWidgetBasicFilter;
  v4 = [(OKWidgetBasicFilter *)&v6 init];
  if (v4)
  {
    [OKSettings applySettings:settings toObject:v4 withResolution:0];
  }

  return v4;
}

- (void)dealloc
{
  inputImage = self->_inputImage;
  if (inputImage)
  {

    self->_inputImage = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetBasicFilter;
  [(OKWidgetBasicFilter *)&v4 dealloc];
}

+ (id)supportedSettings
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return dictionary;
}

- (id)outputImage
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Filters/OKWidgetBasicFilter.m" line:62 andFormat:@"Subclass need to implement is own %@", "-[OKWidgetBasicFilter outputImage]"];
  }

  return 0;
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetBasicFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end