@interface OKWidgetContentBlackAndWhiteFilter
+ (id)filter;
+ (void)setupJavascriptContext:(id)context;
- (id)outputImage;
@end

@implementation OKWidgetContentBlackAndWhiteFilter

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIPhotoEffectTonal" keysAndValues:{*MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentBlackAndWhiteFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

+ (id)filter
{
  v2 = objc_alloc_init(OKWidgetContentBlackAndWhiteFilter);

  return v2;
}

@end