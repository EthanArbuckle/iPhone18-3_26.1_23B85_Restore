@interface OKTransitionCameraIris
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (CGPoint)settingLocation;
- (OKTransitionCameraIris)initWithSettings:(id)settings;
- (void)prepareInView:(id)view;
@end

@implementation OKTransitionCameraIris

- (OKTransitionCameraIris)initWithSettings:(id)settings
{
  v10.receiver = self;
  v10.super_class = OKTransitionCameraIris;
  v4 = [(OKTransitionParallaxPush *)&v10 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"location"];
    v6 = v4 + 80;
    if (v5)
    {
      [v5 CGPointValue];
      *v6 = v7;
      *(v4 + 11) = v8;
    }

    else
    {
      *v6 = *MEMORY[0x277CBF348];
    }
  }

  return v4;
}

+ (id)supportedSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKTransitionCameraIris;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v8 = @"location";
  v7[0] = &unk_287AF06C8;
  v6[0] = @"type";
  v6[1] = @"default";
  v3 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v6[2] = @"jsExport";
  v7[1] = v3;
  v7[2] = @"readwrite";
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  return v2;
}

- (CGPoint)settingLocation
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)prepareInView:(id)view
{
  v4.receiver = self;
  v4.super_class = OKTransitionCameraIris;
  [(OKTransitionCATransition *)&v4 prepareInView:view];
  [(CATransition *)self->super._transition setType:@"cameraIris"];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKTransitionCameraIris"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end