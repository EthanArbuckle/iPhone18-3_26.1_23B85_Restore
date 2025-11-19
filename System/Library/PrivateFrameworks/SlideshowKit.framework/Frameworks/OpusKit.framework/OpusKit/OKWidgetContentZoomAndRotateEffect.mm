@interface OKWidgetContentZoomAndRotateEffect
+ (id)supportedSettings;
- (OKWidgetContentZoomAndRotateEffect)init;
- (OKWidgetContentZoomAndRotateEffect)initWithSettings:(id)a3;
- (void)dealloc;
@end

@implementation OKWidgetContentZoomAndRotateEffect

- (OKWidgetContentZoomAndRotateEffect)init
{
  v3.receiver = self;
  v3.super_class = OKWidgetContentZoomAndRotateEffect;
  return [(OKWidgetContentEffect *)&v3 init];
}

- (OKWidgetContentZoomAndRotateEffect)initWithSettings:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = OKWidgetContentZoomAndRotateEffect;
  v4 = [(OKWidgetContentEffect *)&v20 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"duration"];
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 60.0;
    }

    v8 = [a3 objectForKey:@"maximumZoom"];
    if (v8)
    {
      [v8 doubleValue];
      v10 = v9;
    }

    else
    {
      v10 = 1.29999995;
    }

    v11 = [a3 objectForKey:@"maximumRotation"];
    if (v11)
    {
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 0.0981747704;
    }

    v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v14 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
    [v14 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v10)}];
    v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
    [v15 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
    v16 = MEMORY[0x277CCABB0];
    if (arc4random())
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    [v15 setToValue:{objc_msgSend(v16, "numberWithDouble:", v13 * v17)}];
    v18 = [MEMORY[0x277CD9E00] animation];
    v21[0] = v14;
    v21[1] = v15;
    [v18 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v21, 2)}];
    [v18 setDuration:v7];
    [v18 setRemovedOnCompletion:0];
    [v18 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C8])}];
    [v18 setFillMode:*MEMORY[0x277CDA230]];
    [v18 setAutoreverses:1];
    [(OKWidgetContentEffect *)v4 setAnimation:v18];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetContentZoomAndRotateEffect;
  [(OKWidgetContentEffect *)&v2 dealloc];
}

+ (id)supportedSettings
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetContentZoomAndRotateEffect;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v11[0] = @"duration";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF1628;
  v10[1] = &unk_287AF2388;
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[1] = @"maximumZoom";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF1628;
  v8[1] = &unk_287AF2398;
  v12[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[2] = @"maximumRotation";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF1628;
  v6[1] = &unk_287AF23A8;
  v12[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  return v2;
}

@end