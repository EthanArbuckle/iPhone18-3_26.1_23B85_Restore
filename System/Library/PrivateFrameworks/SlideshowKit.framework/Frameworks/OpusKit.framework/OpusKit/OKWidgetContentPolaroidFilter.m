@interface OKWidgetContentPolaroidFilter
+ (void)setupJavascriptContext:(id)a3;
- (id)outputImage;
@end

@implementation OKWidgetContentPolaroidFilter

- (id)outputImage
{
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIPhotoEffectProcess" keysAndValues:{*MEMORY[0x277CBFAF0], -[OKWidgetBasicFilter inputImage](self, "inputImage"), 0}];
  v3 = *MEMORY[0x277CBFB50];

  return [v2 valueForKey:v3];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetContentPolaroidFilter"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end