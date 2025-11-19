@interface OKWidgetBasicFilter
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (OKWidgetBasicFilter)initWithSettings:(id)a3;
- (id)outputImage;
- (void)dealloc;
@end

@implementation OKWidgetBasicFilter

- (OKWidgetBasicFilter)initWithSettings:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetBasicFilter;
  v4 = [(OKWidgetBasicFilter *)&v6 init];
  if (v4)
  {
    [OKSettings applySettings:a3 toObject:v4 withResolution:0];
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
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (id)outputImage
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Filters/OKWidgetBasicFilter.m" line:62 andFormat:@"Subclass need to implement is own %@", "-[OKWidgetBasicFilter outputImage]"];
  }

  return 0;
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetBasicFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end