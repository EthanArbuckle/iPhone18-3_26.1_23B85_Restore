@interface OKWidgetMicaViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)isPlaying;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (OKWidgetMicaViewProxy)initWithWidget:(id)widget;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)countOfDictionaryProxy:(id)proxy;
- (void)dealloc;
- (void)layoutSubviews;
- (void)loadMicaDocumentIfNeeded;
- (void)pause;
- (void)prepareForRefresh;
- (void)restart;
- (void)resume;
- (void)setSettingAutoplay:(BOOL)autoplay;
- (void)setSettingDuration:(double)duration;
- (void)setSettingOptions:(id)options;
- (void)setSettingResource:(id)resource;
- (void)setSettingScaleToFit:(BOOL)fit;
- (void)unloadMicaDocument;
- (void)updateMicaDocumentLayer;
@end

@implementation OKWidgetMicaViewProxy

- (OKWidgetMicaViewProxy)initWithWidget:(id)widget
{
  v4.receiver = self;
  v4.super_class = OKWidgetMicaViewProxy;
  result = [(OKWidgetViewProxy *)&v4 initWithWidget:widget];
  if (result)
  {
    result->_resourceName = 0;
    result->_options = 0;
    result->_micaDocument = 0;
    result->_scaleToFit = 0;
    result->_autoplay = 1;
    result->_duration = INFINITY;
  }

  return result;
}

- (void)dealloc
{
  [(OKWidgetMicaViewProxy *)self unloadMicaDocument];
  resourceName = self->_resourceName;
  if (resourceName)
  {

    self->_resourceName = 0;
  }

  options = self->_options;
  if (options)
  {

    self->_options = 0;
  }

  micaDocument = self->_micaDocument;
  if (micaDocument)
  {

    self->_micaDocument = 0;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetMicaViewProxy;
  [(OKWidgetView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = OKWidgetMicaViewProxy;
  [(OKWidgetViewProxy *)&v4 layoutSubviews];
  if (self->_micaDocument)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __39__OKWidgetMicaViewProxy_layoutSubviews__block_invoke;
    v3[3] = &unk_279C8E818;
    v3[4] = self;
    [(OKWidgetMicaViewProxy *)self performBlockWithoutAnimations:v3];
  }
}

uint64_t __39__OKWidgetMicaViewProxy_layoutSubviews__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "contentView")];
  [objc_msgSend(*(*(a1 + 32) + 1504) "rootLayer")];
  [objc_msgSend(*(*(a1 + 32) + 1504) "rootLayer")];
  v4 = *(a1 + 32);
  if (*(v4 + 1512))
  {
    [*(v4 + 1504) documentWidth];
    v6 = v5;
    [*(*(a1 + 32) + 1504) documentHeight];
    [objc_msgSend(*(*(a1 + 32) + 1504) "rootLayer")];
    [objc_msgSend(*(a1 + 32) "contentView")];
    v9 = v8;
    [*(*(a1 + 32) + 1504) documentWidth];
    v11 = v9 / v10;
    [objc_msgSend(*(a1 + 32) "contentView")];
    v13 = v12;
    [*(*(a1 + 32) + 1504) documentHeight];
    CATransform3DMakeScale(&v27, v11, v13 / v14, 1.0);
    v15 = [*(*(a1 + 32) + 1504) rootLayer];
    v26 = v27;
    return [v15 setTransform:&v26];
  }

  else
  {
    [objc_msgSend(v4 "contentView")];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [*(*(a1 + 32) + 1504) rootLayer];

    return [v25 setBounds:{v18, v20, v22, v24}];
  }
}

+ (id)supportedSettings
{
  v20[6] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___OKWidgetMicaViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v6, sel_supportedSettings)}];
  v19[0] = @"resource";
  v18[0] = &unk_287AF13B8;
  v17[0] = @"type";
  v17[1] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v17[2] = @"priority";
  v18[1] = null;
  v18[2] = &unk_287AF13D0;
  v20[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v19[1] = @"options";
  v16[0] = &unk_287AF13E8;
  v15[0] = @"type";
  v15[1] = @"default";
  null2 = [MEMORY[0x277CBEB68] null];
  v15[2] = @"priority";
  v16[1] = null2;
  v16[2] = &unk_287AF1400;
  v20[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v19[2] = @"autoplay";
  v13[0] = @"type";
  v13[1] = @"default";
  v14[0] = &unk_287AF1418;
  v14[1] = MEMORY[0x277CBEC28];
  v13[2] = @"priority";
  v14[2] = &unk_287AF1430;
  v20[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v19[3] = @"seekToTime";
  v11[0] = @"type";
  v11[1] = @"default";
  v12[0] = &unk_287AF1448;
  v12[1] = &unk_287AF2368;
  v11[2] = @"jsExport";
  v12[2] = @"readwrite";
  v20[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v19[4] = @"duration";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF1448;
  v10[1] = &unk_287AF2638;
  v9[2] = @"priority";
  v10[2] = &unk_287AF1430;
  v20[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v19[5] = @"scaleToFit";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF1418;
  v8[1] = MEMORY[0x277CBEC38];
  v20[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 6)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"options"])
  {
    v5 = objc_opt_new();
    [v5 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKWidgetMicaViewProxy;
    return [(OKWidgetViewProxy *)&v7 valueForUndefinedKey:key];
  }
}

- (void)setSettingOptions:(id)options
{
  if (([(NSDictionary *)self->_options isEqual:?]& 1) == 0)
  {
    [(OKWidgetMicaViewProxy *)self setOptions:options];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__OKWidgetMicaViewProxy_setSettingOptions___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"reloadMicaDocumentLayer"];
  }
}

uint64_t __43__OKWidgetMicaViewProxy_setSettingOptions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unloadMicaDocument];
  v2 = *(a1 + 32);

  return [v2 updateMicaDocumentLayer];
}

- (void)setSettingResource:(id)resource
{
  if (![(NSString *)self->_resourceName isEqualToString:?])
  {
    [(OKWidgetMicaViewProxy *)self setResourceName:resource];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__OKWidgetMicaViewProxy_setSettingResource___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"reloadMicaDocumentLayer"];
  }
}

uint64_t __44__OKWidgetMicaViewProxy_setSettingResource___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unloadMicaDocument];
  v2 = *(a1 + 32);

  return [v2 updateMicaDocumentLayer];
}

- (void)setSettingScaleToFit:(BOOL)fit
{
  if (self->_scaleToFit != fit)
  {
    self->_scaleToFit = fit;
    [(OKWidgetMicaViewProxy *)self setNeedsLayout];
  }
}

- (void)setSettingAutoplay:(BOOL)autoplay
{
  if (self->_autoplay != autoplay)
  {
    self->_autoplay = autoplay;
  }
}

- (void)setSettingDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
  }
}

- (void)loadMicaDocumentIfNeeded
{
  resourceName = self->_resourceName;
  micaDocument = self->_micaDocument;
  if (resourceName)
  {
    if (!micaDocument)
    {
      [(OKWidgetMicaViewProxy *)self setMicaDocument:[(OKResourceManager *)[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] resourceManager] resourceWithURL:[(OKDocument *)[[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] document] URLForResource:[(NSString *)self->_resourceName stringByDeletingPathExtension] withExtension:[(NSString *)self->_resourceName pathExtension]] copy:1]];
      v5 = self->_micaDocument;
      if (!v5)
      {
        return;
      }

      [(OKWidgetMicaDocument *)v5 setWidgetMicaView:self];
      [(OKWidgetMicaDocument *)self->_micaDocument applySettings:self->_options withResolution:[(OKWidgetViewDelegate *)[(OKWidgetViewProxy *)self delegate] widgetViewResolution:self]];
      goto LABEL_7;
    }
  }

  else if (!micaDocument)
  {
    return;
  }

  if (![(CALayer *)[(OKWidgetMicaDocument *)micaDocument rootLayer] superlayer])
  {
LABEL_7:
    [-[OFUIView layer](-[OKWidgetViewProxy contentView](self "contentView")];
  }

  [(OKWidgetMicaViewProxy *)self setNeedsLayout];
}

- (void)unloadMicaDocument
{
  micaDocument = self->_micaDocument;
  if (micaDocument)
  {
    [(CALayer *)[(OKWidgetMicaDocument *)micaDocument rootLayer] removeFromSuperlayer];
    v4 = self->_micaDocument;
    if (v4)
    {

      self->_micaDocument = 0;
    }
  }
}

- (void)updateMicaDocumentLayer
{
  if ([(OKWidgetViewProxy *)self prepareMode]== 1)
  {
    [(OKWidgetMicaViewProxy *)self loadMicaDocumentIfNeeded];
    micaDocument = self->_micaDocument;
    if (micaDocument)
    {
      [(CALayer *)[(OKWidgetMicaDocument *)micaDocument rootLayer] setHidden:0];
      if (self->_autoplay)
      {
        [(OKWidgetMicaViewProxy *)self restart];
      }

      seekToTime = self->_seekToTime;
      rootLayer = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];

      [(CALayer *)rootLayer setTimeOffset:seekToTime];
    }
  }

  else
  {
    prepareMode = [(OKWidgetViewProxy *)self prepareMode];
    v7 = self->_micaDocument;
    if (prepareMode == 2)
    {
      if (v7)
      {
        if ([(OKWidgetMicaViewProxy *)self isPlaying])
        {
          [(OKWidgetMicaViewProxy *)self pause];
        }

        rootLayer2 = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];

        [(CALayer *)rootLayer2 setHidden:1];
      }

      else
      {

        [(OKWidgetMicaViewProxy *)self loadMicaDocumentIfNeeded];
      }
    }

    else
    {
      rootLayer3 = [(OKWidgetMicaDocument *)v7 rootLayer];

      [(CALayer *)rootLayer3 removeFromSuperlayer];
    }
  }
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v6.receiver = self;
  v6.super_class = OKWidgetMicaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:display];
  if (v4)
  {
    [(OKWidgetMicaViewProxy *)self updateMicaDocumentLayer];
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v6.receiver = self;
  v6.super_class = OKWidgetMicaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForWarmup:warmup];
  if (v4)
  {
    [(OKWidgetMicaViewProxy *)self updateMicaDocumentLayer];
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v6.receiver = self;
  v6.super_class = OKWidgetMicaViewProxy;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForUnload:unload];
  if (v4)
  {
    [(OKWidgetMicaViewProxy *)self updateMicaDocumentLayer];
  }

  return v4;
}

- (void)prepareForRefresh
{
  v2.receiver = self;
  v2.super_class = OKWidgetMicaViewProxy;
  [(OKWidgetViewProxy *)&v2 prepareForRefresh];
}

- (void)pause
{
  if ([(OKWidgetMicaDocument *)self->_micaDocument rootLayer])
  {
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] convertTime:0 fromLayer:CACurrentMediaTime()];
    v4 = v3;
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setSpeed:0.0];
    rootLayer = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];

    [(CALayer *)rootLayer setTimeOffset:v4];
  }
}

- (void)resume
{
  if ([(OKWidgetMicaDocument *)self->_micaDocument rootLayer])
  {
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] timeOffset];
    v4 = v3;
    rootLayer = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];
    LODWORD(v6) = 1.0;
    [(CALayer *)rootLayer setSpeed:v6];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setTimeOffset:0.0];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setBeginTime:0.0];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] convertTime:0 fromLayer:CACurrentMediaTime()];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setBeginTime:v7 - v4];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setDuration:self->_duration];
    v8 = *MEMORY[0x277CDA230];
    rootLayer2 = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];

    [(CALayer *)rootLayer2 setFillMode:v8];
  }
}

- (void)restart
{
  if ([(OKWidgetMicaDocument *)self->_micaDocument rootLayer])
  {
    rootLayer = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];
    LODWORD(v4) = 1.0;
    [(CALayer *)rootLayer setSpeed:v4];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setTimeOffset:0.0];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setBeginTime:CACurrentMediaTime()];
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] setDuration:self->_duration];
    v5 = *MEMORY[0x277CDA230];
    rootLayer2 = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];

    [(CALayer *)rootLayer2 setFillMode:v5];
  }
}

- (BOOL)isPlaying
{
  rootLayer = [(OKWidgetMicaDocument *)self->_micaDocument rootLayer];
  if (rootLayer)
  {
    [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] speed];
    if (v4 <= 0.0)
    {
      LOBYTE(rootLayer) = 0;
    }

    else
    {
      v5 = CACurrentMediaTime();
      [(CALayer *)[(OKWidgetMicaDocument *)self->_micaDocument rootLayer] beginTime];
      LOBYTE(rootLayer) = v5 - v6 < self->_duration;
    }
  }

  return rootLayer;
}

+ (void)setupJavascriptContext:(id)context
{
  v27[4] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetMicaView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMicaView", "objectForKeyedSubscript:", @"prototype"}];
  v6 = *MEMORY[0x277CD4638];
  v24[0] = *MEMORY[0x277CD4630];
  v5 = v24[0];
  v24[1] = v6;
  v7 = MEMORY[0x277CBEC38];
  v27[0] = &__block_literal_global_30;
  v27[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277CD4610];
  v25 = *MEMORY[0x277CD4618];
  v8 = v25;
  v26 = v9;
  v27[2] = MEMORY[0x277CBEC28];
  v27[3] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"pause" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v24, 4)}];
  v10 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMicaView", "objectForKeyedSubscript:", @"prototype"}];
  v22[0] = v5;
  v22[1] = v6;
  v23[0] = &__block_literal_global_70;
  v23[1] = v7;
  v22[2] = v8;
  v22[3] = v9;
  v23[2] = MEMORY[0x277CBEC28];
  v23[3] = v7;
  [v10 defineProperty:@"resume" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v23, v22, 4)}];
  v11 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMicaView", "objectForKeyedSubscript:", @"prototype"}];
  v20[0] = v5;
  v20[1] = v6;
  v21[0] = &__block_literal_global_75;
  v21[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v12 = MEMORY[0x277CBEC28];
  v21[2] = MEMORY[0x277CBEC28];
  v21[3] = v7;
  [v11 defineProperty:@"restart" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v21, v20, 4)}];
  v13 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMicaView", "objectForKeyedSubscript:", @"prototype"}];
  v18[0] = *MEMORY[0x277CD4620];
  v14 = v18[0];
  v18[1] = v8;
  v19[0] = &__block_literal_global_81;
  v19[1] = v12;
  v18[2] = v9;
  v19[2] = v7;
  [v13 defineProperty:@"isPlaying" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 3)}];
  v15 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetMicaView", "objectForKeyedSubscript:", @"prototype"}];
  v16[0] = v14;
  v16[1] = v8;
  v17[0] = &__block_literal_global_84;
  v17[1] = v12;
  v16[2] = v9;
  v17[2] = v7;
  [v15 defineProperty:@"options" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 3)}];
}

uint64_t __48__OKWidgetMicaViewProxy_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 pause];
}

uint64_t __48__OKWidgetMicaViewProxy_setupJavascriptContext___block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 resume];
}

uint64_t __48__OKWidgetMicaViewProxy_setupJavascriptContext___block_invoke_3()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 restart];
}

uint64_t __48__OKWidgetMicaViewProxy_setupJavascriptContext___block_invoke_4()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 isPlaying];
}

id __48__OKWidgetMicaViewProxy_setupJavascriptContext___block_invoke_5()
{
  v0 = objc_opt_new();
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

- (unint64_t)countOfDictionaryProxy:(id)proxy
{
  publishedObjectNames = [(OKWidgetMicaDocument *)self->_micaDocument publishedObjectNames];

  return [publishedObjectNames count];
}

@end