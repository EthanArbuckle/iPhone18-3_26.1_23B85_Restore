@interface OKWidgetWebView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (OKWidgetWebView)initWithWidget:(id)widget;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForRefresh;
- (void)reloadWebView;
- (void)setSettingOptions:(id)options;
- (void)setSettingScaleToFit:(BOOL)fit;
- (void)setSettingUrlText:(id)text;
- (void)setSettingWebDidLoadActionScript:(id)script;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation OKWidgetWebView

- (OKWidgetWebView)initWithWidget:(id)widget
{
  v8.receiver = self;
  v8.super_class = OKWidgetWebView;
  v3 = [(OKWidgetViewProxy *)&v8 initWithWidget:widget];
  v4 = v3;
  if (v3)
  {
    v3->_urlText = 0;
    v3->_options = 0;
    v3->_scaleToFit = 0;
    v3->_isFrameLoaded = 0;
    v5 = objc_alloc(MEMORY[0x277D75D88]);
    [(OFUIView *)[(OKWidgetViewProxy *)v4 contentView] bounds];
    v6 = [v5 initWithFrame:?];
    v4->_webView = v6;
    [(UIWebView *)v6 setDelegate:0];
    [(UIWebView *)v4->_webView setAutoresizingMask:18];
    [(OFUIView *)[(OKWidgetViewProxy *)v4 contentView] addSubview:v4->_webView];
  }

  return v4;
}

- (void)dealloc
{
  webView = self->_webView;
  if (webView)
  {

    self->_webView = 0;
  }

  urlText = self->_urlText;
  if (urlText)
  {

    self->_urlText = 0;
  }

  options = self->_options;
  if (options)
  {

    self->_options = 0;
  }

  webDidLoadActionScript = self->_webDidLoadActionScript;
  if (webDidLoadActionScript)
  {

    self->_webDidLoadActionScript = 0;
  }

  v7.receiver = self;
  v7.super_class = OKWidgetWebView;
  [(OKWidgetView *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKWidgetWebView;
  [(OKWidgetViewProxy *)&v2 layoutSubviews];
}

+ (id)supportedSettings
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetWebView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v13[0] = @"urlText";
  v11[0] = @"type";
  v11[1] = @"default";
  v12[0] = &unk_287AF03C8;
  v12[1] = [MEMORY[0x277CBEB68] null];
  v14[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[1] = @"options";
  v9[1] = @"default";
  v10[0] = &unk_287AF03E0;
  v9[0] = @"type";
  v10[1] = [MEMORY[0x277CBEB68] null];
  v14[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v13[2] = @"scaleToFit";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF03F8;
  v8[1] = MEMORY[0x277CBEC38];
  v14[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v13[3] = @"webDidLoadActionScript";
  v5[1] = @"default";
  v6[0] = &unk_287AF03C8;
  v5[0] = @"type";
  v6[1] = [MEMORY[0x277CBEB68] null];
  v14[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, v13, 4)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetWebView;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (void)setSettingOptions:(id)options
{
  if (([(NSDictionary *)self->_options isEqual:?]& 1) == 0)
  {

    [(OKWidgetWebView *)self setOptions:options];
  }
}

- (void)setSettingUrlText:(id)text
{
  if (![(NSString *)self->_urlText isEqualToString:?])
  {
    [(OKWidgetWebView *)self setUrlText:text];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__OKWidgetWebView_setSettingUrlText___block_invoke;
    v5[3] = &unk_279C8E818;
    v5[4] = self;
    [OKSettings applyUpdateBlockOnce:v5 forKey:@"reloadWebView"];
  }
}

- (void)setSettingScaleToFit:(BOOL)fit
{
  if (self->_scaleToFit != fit)
  {
    self->_scaleToFit = fit;
    [(OKWidgetWebView *)self setNeedsLayout];
  }
}

- (void)setSettingWebDidLoadActionScript:(id)script
{
  webDidLoadActionScript = self->_webDidLoadActionScript;
  if (webDidLoadActionScript)
  {

    self->_webDidLoadActionScript = 0;
  }

  self->_webDidLoadActionScript = [script copy];
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v4.receiver = self;
  v4.super_class = OKWidgetWebView;
  return [(OKWidgetViewProxy *)&v4 prepareForDisplay:display];
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v4.receiver = self;
  v4.super_class = OKWidgetWebView;
  return [(OKWidgetViewProxy *)&v4 prepareForWarmup:warmup];
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v4.receiver = self;
  v4.super_class = OKWidgetWebView;
  return [(OKWidgetViewProxy *)&v4 prepareForUnload:unload];
}

- (void)prepareForRefresh
{
  v2.receiver = self;
  v2.super_class = OKWidgetWebView;
  [(OKWidgetViewProxy *)&v2 prepareForRefresh];
}

- (void)reloadWebView
{
  urlText = [(OKWidgetWebView *)self urlText];
  v4 = [(OKDocument *)[[(OKPresentationViewControllerProxy *)[(OKWidgetViewProxy *)self presentationViewController] presentation] document] URLForResource:[(NSString *)urlText stringByDeletingPathExtension] withExtension:[(NSString *)urlText pathExtension]];
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = 0;
  v6 = [v5 fileExistsAtPath:objc_msgSend(v4 isDirectory:{"path"), &v9}];
  v7 = v9;

  if (!v6 || v7)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:{-[OKWidgetWebView urlText](self, "urlText")}];
  }

  self->_isFrameLoaded = 0;
  webView = [(OKWidgetWebView *)self webView];
  -[UIWebView loadRequest:](webView, "loadRequest:", [MEMORY[0x277CCAD20] requestWithURL:v4]);
}

- (void)webViewDidFinishLoad:(id)load
{
  self->_isFrameLoaded = 1;
  if (self->_webDidLoadActionScript)
  {
    delegate = [(OKWidgetViewProxy *)self delegate];
    webDidLoadActionScript = self->_webDidLoadActionScript;
    v6 = MEMORY[0x277CBEC10];

    [(OKWidgetViewDelegate *)delegate evaluateScript:webDidLoadActionScript withInfoDictionary:v6 andCompletionBlock:0 forWidgetView:self];
  }
}

+ (void)setupJavascriptContext:(id)context
{
  v15[3] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetWebView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetWebView", "objectForKeyedSubscript:", @"prototype"}];
  v5 = *MEMORY[0x277CD4618];
  v6 = MEMORY[0x277CBEC28];
  v13[0] = *MEMORY[0x277CD4620];
  v13[1] = v5;
  v15[0] = &__block_literal_global_17;
  v15[1] = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277CD4610];
  v7 = v14;
  v8 = MEMORY[0x277CBEC38];
  v15[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"isFrameLoaded" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, v13, 3)}];
  v9 = [objc_msgSend(context objectForKeyedSubscript:{@"OKWidgetWebView", "objectForKeyedSubscript:", @"prototype"}];
  v10 = *MEMORY[0x277CD4638];
  v11[0] = *MEMORY[0x277CD4630];
  v11[1] = v10;
  v12[0] = &__block_literal_global_60;
  v12[1] = v8;
  v11[2] = v5;
  v11[3] = v7;
  v12[2] = v6;
  v12[3] = v8;
  [v9 defineProperty:@"evaluateWebScript" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 4)}];
}

uint64_t __42__OKWidgetWebView_setupJavascriptContext___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];

  return [v0 isFrameLoaded];
}

uint64_t __42__OKWidgetWebView_setupJavascriptContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(MEMORY[0x277CD4640] "currentThis")];
  if ([v3 isFrameLoaded])
  {
    v4 = [v3 valueForKeyPath:@"webView.presentationView.webView.mainFrame.javaScriptContext"];

    return [v4 evaluateScript:a2];
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetWebView.m" line:399 andFormat:@"Cannot evaluate web script: Web frame is not loaded yet"];
    }

    return 0;
  }
}

@end