@interface OKWidgetLinearGradientView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (CGPoint)settingEndPoint;
- (CGPoint)settingStartPoint;
- (OKWidgetLinearGradientView)initWithWidget:(id)widget;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)setAntialiasing:(BOOL)antialiasing;
- (void)setSettingGradientColors:(id)colors;
- (void)setSettingGradientLocations:(id)locations;
- (void)setSettingOpaque:(BOOL)opaque;
- (void)updateGradient;
@end

@implementation OKWidgetLinearGradientView

- (OKWidgetLinearGradientView)initWithWidget:(id)widget
{
  v7.receiver = self;
  v7.super_class = OKWidgetLinearGradientView;
  v3 = [(OKWidgetViewProxy *)&v7 initWithWidget:widget];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D627B0]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v5 = [v4 initWithFrame:?];
    v3->_gradientView = v5;
    [(OFLinearGradientView *)v5 setAutoresizingMask:18];
    -[OFLinearGradientView setBackgroundColor:](v3->_gradientView, "setBackgroundColor:", [MEMORY[0x277D75348] blackColor]);
    [(OFLinearGradientView *)v3->_gradientView setOpaque:1];
    [-[OFLinearGradientView layer](v3->_gradientView "layer")];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:v3->_gradientView];
  }

  return v3;
}

- (void)dealloc
{
  gradientView = self->_gradientView;
  if (gradientView)
  {

    self->_gradientView = 0;
  }

  gradientColors = self->_gradientColors;
  if (gradientColors)
  {

    self->_gradientColors = 0;
  }

  gradientLocations = self->_gradientLocations;
  if (gradientLocations)
  {

    self->_gradientLocations = 0;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetLinearGradientView;
  [(OKWidgetView *)&v6 dealloc];
}

+ (id)supportedSettings
{
  v20[5] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___OKWidgetLinearGradientView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v8, sel_supportedSettings)}];
  v19[0] = @"gradientColors";
  v17[0] = @"type";
  v17[1] = @"subType";
  v18[0] = &unk_287AF10A0;
  v18[1] = &unk_287AF10B8;
  v17[2] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v17[3] = @"jsExport";
  v18[2] = null;
  v18[3] = @"readwrite";
  v20[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v19[1] = @"gradientLocations";
  v16[0] = &unk_287AF10A0;
  v15[0] = @"type";
  v15[1] = @"default";
  null2 = [MEMORY[0x277CBEB68] null];
  v15[2] = @"jsExport";
  v16[1] = null2;
  v16[2] = @"readwrite";
  v20[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v19[2] = @"startPoint";
  v14[0] = &unk_287AF10D0;
  v13[0] = @"type";
  v13[1] = @"default";
  v5 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.0}];
  v13[2] = @"jsExport";
  v14[1] = v5;
  v14[2] = @"readwrite";
  v20[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v19[3] = @"endPoint";
  v12[0] = &unk_287AF10D0;
  v11[0] = @"type";
  v11[1] = @"default";
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 1.0}];
  v11[2] = @"jsExport";
  v12[1] = v6;
  v12[2] = @"readwrite";
  v20[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v19[4] = @"opaque";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF10E8;
  v10[1] = MEMORY[0x277CBEC38];
  v20[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 5)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetLinearGradientView;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (void)setSettingGradientLocations:(id)locations
{
  gradientLocations = self->_gradientLocations;
  if (gradientLocations)
  {

    self->_gradientLocations = 0;
  }

  self->_gradientLocations = locations;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__OKWidgetLinearGradientView_setSettingGradientLocations___block_invoke;
  v6[3] = &unk_279C8E818;
  v6[4] = self;
  [OKSettings applyUpdateBlockOnce:v6 forKey:@"updateGradient"];
}

- (void)setSettingGradientColors:(id)colors
{
  v17 = *MEMORY[0x277D85DE8];
  gradientColors = self->_gradientColors;
  if (gradientColors)
  {

    self->_gradientColors = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [colors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(colors);
        }

        [array addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "CGColor")}];
      }

      while (v8 != v10);
      v8 = [colors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  self->_gradientColors = array;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__OKWidgetLinearGradientView_setSettingGradientColors___block_invoke;
  v11[3] = &unk_279C8E818;
  v11[4] = self;
  [OKSettings applyUpdateBlockOnce:v11 forKey:@"updateGradient"];
}

- (CGPoint)settingStartPoint
{
  [(OFLinearGradientView *)self->_gradientView startPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)settingEndPoint
{
  [(OFLinearGradientView *)self->_gradientView endPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setSettingOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  if (opaque)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] clearColor];
  }

  [(OFLinearGradientView *)self->_gradientView setBackgroundColor:blackColor];
  gradientView = self->_gradientView;

  [(OFLinearGradientView *)gradientView setOpaque:opaqueCopy];
}

- (void)updateGradient
{
  gradientLocations = self->_gradientLocations;
  v4 = [(NSArray *)self->_gradientColors count];
  if (v4 == [(NSArray *)gradientLocations count])
  {
    [(OFLinearGradientView *)self->_gradientView setColors:self->_gradientColors];
    v5 = self->_gradientLocations;
    gradientView = self->_gradientView;

    [(OFLinearGradientView *)gradientView setLocations:v5];
  }

  else
  {
    [(OFLinearGradientView *)self->_gradientView setLocations:0];
    v7 = self->_gradientView;

    [(OFLinearGradientView *)v7 setColors:0];
  }
}

- (void)setAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  v6.receiver = self;
  v6.super_class = OKWidgetLinearGradientView;
  [(OKWidgetViewProxy *)&v6 setAntialiasing:?];
  if (antialiasingCopy)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  [-[OFLinearGradientView layer](self->_gradientView "layer")];
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v4.receiver = self;
  v4.super_class = OKWidgetLinearGradientView;
  return [(OKWidgetViewProxy *)&v4 prepareForDisplay:display];
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v4.receiver = self;
  v4.super_class = OKWidgetLinearGradientView;
  return [(OKWidgetViewProxy *)&v4 prepareForWarmup:warmup];
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v4.receiver = self;
  v4.super_class = OKWidgetLinearGradientView;
  return [(OKWidgetViewProxy *)&v4 prepareForUnload:unload];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetLinearGradientView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end