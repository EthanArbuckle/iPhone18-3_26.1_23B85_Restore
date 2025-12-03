@interface OKWidgetMediaAnimationView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (OKWidgetMediaAnimationView)initWithWidget:(id)widget;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)playAnimation;
- (void)setSettingAutoplay:(BOOL)autoplay;
- (void)setSettingContentMode:(int64_t)mode;
- (void)setSettingLoop:(BOOL)loop;
- (void)setSettingUrls:(id)urls;
- (void)stopAnimation;
@end

@implementation OKWidgetMediaAnimationView

- (OKWidgetMediaAnimationView)initWithWidget:(id)widget
{
  v5.receiver = self;
  v5.super_class = OKWidgetMediaAnimationView;
  v3 = [(OKWidgetViewProxy *)&v5 initWithWidget:widget];
  if (v3)
  {
    v3->_uuid = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", objc_msgSend(objc_opt_class(), "animationKeyPrefix"), objc_msgSend(MEMORY[0x277CCACA8], "generateUUID")];
  }

  return v3;
}

- (void)dealloc
{
  CGImages = self->_CGImages;
  if (CGImages)
  {

    self->_CGImages = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetMediaAnimationView;
  [(OKWidgetView *)&v4 dealloc];
}

- (void)stopAnimation
{
  layer = [(OKWidgetMediaAnimationView *)self layer];
  uuid = self->_uuid;

  [layer removeAnimationForKey:uuid];
}

- (void)playAnimation
{
  [(OKWidgetMediaAnimationView *)self stopAnimation];
  if (self->_duration > 0.0)
  {
    v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"contents"];
    [v3 setValues:self->_CGImages];
    [v3 setCalculationMode:*MEMORY[0x277CDA068]];
    [v3 setDuration:self->_duration];
    [v3 setRemovedOnCompletion:0];
    if (self->_loop)
    {
      LODWORD(v4) = 2139095039;
      [v3 setRepeatCount:v4];
    }

    layer = [(OKWidgetMediaAnimationView *)self layer];
    uuid = self->_uuid;

    [layer addAnimation:v3 forKey:uuid];
  }
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v6.receiver = self;
  v6.super_class = OKWidgetMediaAnimationView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:display];
  if (v4 && self->_autoplay)
  {
    [(OKWidgetMediaAnimationView *)self playAnimation];
  }

  return v4;
}

+ (id)supportedSettings
{
  v17[5] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKWidgetMediaAnimationView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v16[0] = @"contentMode";
  v14[0] = @"type";
  v14[1] = @"mapping";
  v15[0] = &unk_287AEFD98;
  v15[1] = &unk_287AF1DC0;
  v14[2] = @"default";
  v15[2] = @"scaleAspectFill";
  v17[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v16[1] = @"urls";
  v12[0] = @"type";
  v12[1] = @"jsExport";
  v13[0] = &unk_287AEFDF8;
  v13[1] = @"writeonly";
  v12[2] = @"default";
  v13[2] = [MEMORY[0x277CBEB68] null];
  v17[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v16[2] = @"autoplay";
  v10[0] = @"type";
  v10[1] = @"jsExport";
  v11[0] = &unk_287AEFE10;
  v11[1] = @"readwrite";
  v10[2] = @"default";
  v3 = MEMORY[0x277CBEC28];
  v11[2] = MEMORY[0x277CBEC28];
  v17[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v16[3] = @"loop";
  v8[0] = @"type";
  v8[1] = @"jsExport";
  v9[0] = &unk_287AEFE10;
  v9[1] = @"readwrite";
  v8[2] = @"default";
  v9[2] = v3;
  v17[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v16[4] = @"duration";
  v6[0] = @"type";
  v6[1] = @"jsExport";
  v7[0] = &unk_287AEFE28;
  v7[1] = @"readwrite";
  v17[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 5)}];
  return v2;
}

- (void)setSettingContentMode:(int64_t)mode
{
  if ([(OKWidgetMediaAnimationView *)self contentMode]!= mode)
  {

    [(OKWidgetMediaAnimationView *)self setContentMode:mode];
  }
}

- (void)setSettingUrls:(id)urls
{
  v16 = *MEMORY[0x277D85DE8];
  CGImages = self->_CGImages;
  if (CGImages)
  {

    self->_CGImages = 0;
  }

  self->_CGImages = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(urls, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [urls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(urls);
        }

        v10 = [[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] mediaItemForURL:*(*(&v11 + 1) + 8 * v9)];
        -[NSMutableArray addObject:](self->_CGImages, "addObject:", [objc_msgSend(MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(v10, "resourceURL"), "relativePath")), "CGImage"}]);
        ++v9;
      }

      while (v7 != v9);
      v7 = [urls countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setSettingAutoplay:(BOOL)autoplay
{
  if (self->_autoplay != autoplay)
  {
    self->_autoplay = autoplay;
  }
}

- (void)setSettingLoop:(BOOL)loop
{
  if (self->_loop != loop)
  {
    self->_loop = loop;
  }
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetMediaAnimationView;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

+ (void)setupJavascriptContext:(id)context
{
  v17[4] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetMediaAnimationView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMediaAnimationView", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v14[0] = *MEMORY[0x277CD4630];
  v5 = v14[0];
  v14[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v17[0] = &__block_literal_global;
  v17[1] = MEMORY[0x277CBEC38];
  v9 = MEMORY[0x277CBEC28];
  v10 = *MEMORY[0x277CD4610];
  v15 = *MEMORY[0x277CD4618];
  v8 = v15;
  v16 = v10;
  v17[2] = MEMORY[0x277CBEC28];
  v17[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"playAnimation" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v14, 4)}];
  v11 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMediaAnimationView", "objectForKeyedSubscript:", @"prototype"}];
  v12[0] = v5;
  v12[1] = v6;
  v13[0] = &__block_literal_global_78;
  v13[1] = v7;
  v12[2] = v8;
  v12[3] = v10;
  v13[2] = v9;
  v13[3] = v7;
  [v11 defineProperty:@"stopAnimation" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, v12, 4)}];
}

uint64_t __53__OKWidgetMediaAnimationView_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 playAnimation];
}

uint64_t __53__OKWidgetMediaAnimationView_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 stopAnimation];
}

@end