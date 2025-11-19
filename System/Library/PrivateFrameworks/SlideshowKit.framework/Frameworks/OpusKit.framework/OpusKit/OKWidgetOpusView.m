@interface OKWidgetOpusView
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (OKWidgetOpusView)initWithWidget:(id)a3;
- (void)_loadDocumentIfNeeded;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSettingUrl:(id)a3;
@end

@implementation OKWidgetOpusView

- (OKWidgetOpusView)initWithWidget:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetOpusView;
  result = [(OKWidgetViewProxy *)&v4 initWithWidget:a3];
  if (result)
  {
    result->_url = 0;
    result->_document = 0;
    result->_presentationViewController = 0;
  }

  return result;
}

- (void)dealloc
{
  url = self->_url;
  if (url)
  {

    self->_url = 0;
  }

  document = self->_document;
  if (document)
  {

    self->_document = 0;
  }

  presentationViewController = self->_presentationViewController;
  if (presentationViewController)
  {

    self->_presentationViewController = 0;
  }

  v6.receiver = self;
  v6.super_class = OKWidgetOpusView;
  [(OKWidgetView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = OKWidgetOpusView;
  [(OKWidgetViewProxy *)&v7 layoutSubviews];
  [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
  [-[OKPresentationViewController view](self->_presentationViewController "view")];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetOpusView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"url";
  v5 = @"type";
  v6 = &unk_287AF13A0;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)setSettingUrl:(id)a3
{
  url = self->_url;
  if (url)
  {

    self->_url = 0;
  }

  self->_url = a3;
}

- (void)_loadDocumentIfNeeded
{
  if (!self->_document && !self->_presentationViewController)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if (([v3 fileExistsAtPath:{-[NSURL path](self->_url, "path")}] & 1) == 0)
    {
      v4 = [objc_msgSend(objc_msgSend(objc_msgSend(-[OKWidgetViewProxy pageViewController](self "pageViewController")];
      url = self->_url;
      if (url)
      {

        self->_url = 0;
      }

      self->_url = v4;
    }

    if (v3)
    {
    }

    v6 = [[OKDocument alloc] initWithFileURL:self->_url];
    self->_document = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__OKWidgetOpusView__loadDocumentIfNeeded__block_invoke;
    v7[3] = &unk_279C8FA38;
    v7[4] = self;
    [(OKDocument *)v6 openWithCompletionHandler:v7];
  }
}

uint64_t __41__OKWidgetOpusView__loadDocumentIfNeeded__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    *(*(result + 32) + 1504) = -[OKPresentationViewControllerProxy initWithPresentation:]([OKPresentationViewController alloc], "initWithPresentation:", [*(*(result + 32) + 1496) presentation]);
    [objc_msgSend(*(v2 + 32) "contentView")];
    [objc_msgSend(*(*(v2 + 32) + 1504) "view")];
    v7 = [*(v2 + 32) contentView];
    v8 = [*(*(v2 + 32) + 1504) view];

    return [v7 addSubview:v8];
  }

  return result;
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetOpusView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:a3];
  if (v4)
  {
    [(OKWidgetOpusView *)self _loadDocumentIfNeeded];
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetOpusView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForWarmup:a3];
  if (v4)
  {
    [(OKWidgetOpusView *)self _loadDocumentIfNeeded];
  }

  return v4;
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = OKWidgetOpusView;
  v4 = [(OKWidgetViewProxy *)&v8 prepareForUnload:a3];
  if (v4)
  {
    document = self->_document;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__OKWidgetOpusView_prepareForUnload___block_invoke;
    v7[3] = &unk_279C8FA38;
    v7[4] = self;
    [(OKDocument *)document closeWithCompletionHandler:v7];
  }

  return v4;
}

void __37__OKWidgetOpusView_prepareForUnload___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 1504) willMoveToParentViewController:0];
    [*(*(a1 + 32) + 1504) removeFromParentViewController];
    [objc_msgSend(*(*(a1 + 32) + 1504) "view")];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1496);
    if (v4)
    {

      *(*(a1 + 32) + 1496) = 0;
      v3 = *(a1 + 32);
    }

    v5 = *(v3 + 1504);
    if (v5)
    {

      *(*(a1 + 32) + 1504) = 0;
    }
  }
}

+ (void)setupJavascriptContext:(id)a3
{
  v7[3] = *MEMORY[0x277D85DE8];
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetOpusView"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:a3];
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{@"OKWidgetOpusView", "objectForKeyedSubscript:", @"prototype"}];
  v5 = *MEMORY[0x277CD4618];
  v6[0] = *MEMORY[0x277CD4620];
  v6[1] = v5;
  v7[0] = &__block_literal_global_29;
  v7[1] = MEMORY[0x277CBEC28];
  v6[2] = *MEMORY[0x277CD4610];
  v7[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"document" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, v6, 3)}];
}

@end