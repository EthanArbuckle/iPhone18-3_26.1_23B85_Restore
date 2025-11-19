@interface OKTransitionRotate
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (OKTransitionRotate)init;
- (OKTransitionRotate)initWithSettings:(id)a3;
- (void)prepareInView:(id)a3;
@end

@implementation OKTransitionRotate

- (OKTransitionRotate)init
{
  v3.receiver = self;
  v3.super_class = OKTransitionRotate;
  result = [(OKTransitionParallaxPush *)&v3 init];
  if (result)
  {
    result->_direction = 1;
  }

  return result;
}

- (OKTransitionRotate)initWithSettings:(id)a3
{
  v8.receiver = self;
  v8.super_class = OKTransitionRotate;
  v4 = [(OKTransitionParallaxPush *)&v8 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"rotationDirection"];
    if (v5)
    {
      v6 = [v5 integerValue];
    }

    else
    {
      v6 = 1;
    }

    v4->_direction = v6;
  }

  return v4;
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKTransitionRotate;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"rotationDirection";
  v5[0] = @"type";
  v5[1] = @"mapping";
  v6[0] = &unk_287AF0638;
  v6[1] = &unk_287AF1FF0;
  v5[2] = @"default";
  v5[3] = @"jsExport";
  v6[2] = &unk_287AF0668;
  v6[3] = @"readwrite";
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)prepareInView:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKTransitionRotate;
  [(OKTransitionCATransition *)&v6 prepareInView:a3];
  [(CATransition *)self->super._transition setType:@"rotate"];
  direction = self->_direction;
  if (direction != 2)
  {
    if (direction == 1 && [(OKTransition *)self isForward])
    {
      goto LABEL_4;
    }

LABEL_6:
    v5 = @"90ccw";
    goto LABEL_7;
  }

  if ([(OKTransition *)self isForward])
  {
    goto LABEL_6;
  }

LABEL_4:
  v5 = @"90cw";
LABEL_7:
  [(CATransition *)self->super._transition setSubtype:v5];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKTransitionRotate"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end