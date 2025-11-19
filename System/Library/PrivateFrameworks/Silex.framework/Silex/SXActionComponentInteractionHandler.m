@interface SXActionComponentInteractionHandler
- (SXActionComponentInteractionHandler)initWithAction:(id)a3 actionManager:(id)a4 actionSerializer:(id)a5 analyticsReportingProvider:(id)a6;
- (id)contextMenuForComponentView:(id)a3 sourceRect:(CGRect)a4;
- (id)previewViewController;
- (id)toolTipForComponentView:(id)a3;
- (void)commitViewController:(id)a3;
- (void)handleInteractionType:(unint64_t)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)handledAction:(id)a3 state:(unint64_t)a4;
@end

@implementation SXActionComponentInteractionHandler

- (SXActionComponentInteractionHandler)initWithAction:(id)a3 actionManager:(id)a4 actionSerializer:(id)a5 analyticsReportingProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SXActionComponentInteractionHandler;
  v15 = [(SXActionComponentInteractionHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_action, a3);
    objc_storeStrong(&v16->_actionManager, a4);
    objc_storeStrong(&v16->_actionSerializer, a5);
    objc_storeStrong(&v16->_analyticsReportingProvider, a6);
  }

  return v16;
}

- (void)handleInteractionType:(unint64_t)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [(SXActionComponentInteractionHandler *)self actionManager];
  v12 = [(SXActionComponentInteractionHandler *)self action];
  v14[0] = self;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v11 performAction:v12 postActionHandlers:v13 sourceView:v10 sourceRect:0 mode:{x, y, width, height}];
}

- (id)contextMenuForComponentView:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(SXActionComponentInteractionHandler *)self actionManager];
  v11 = [(SXActionComponentInteractionHandler *)self action];
  v12 = [v10 contextMenuConfigurationForAction:v11 sourceView:v9 sourceRect:{x, y, width, height}];

  return v12;
}

- (id)toolTipForComponentView:(id)a3
{
  v4 = [(SXActionComponentInteractionHandler *)self actionSerializer];
  v5 = [(SXActionComponentInteractionHandler *)self action];
  v6 = [v4 URLForAction:v5 type:1];
  v7 = [v6 absoluteString];

  return v7;
}

- (void)handledAction:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v14 = v6;
    v7 = [(SXActionComponentInteractionHandler *)self actionSerializer];
    v8 = [v7 URLForAction:v14 type:0];

    if (v8)
    {
      v9 = [SXLinkTapEvent alloc];
      v10 = [v14 analytics];
      v11 = [(SXLinkTapEvent *)v9 initWithDestinationURL:v8 analytics:v10];

      v12 = [(SXActionComponentInteractionHandler *)self analyticsReportingProvider];
      v13 = [v12 analyticsReporting];
      [v13 reportEvent:v11];
    }

    v6 = v14;
  }
}

- (id)previewViewController
{
  v3 = [(SXActionComponentInteractionHandler *)self actionManager];
  v4 = [(SXActionComponentInteractionHandler *)self action];
  v5 = [v3 previewViewControllerForAction:v4];

  return v5;
}

- (void)commitViewController:(id)a3
{
  v4 = a3;
  v5 = [(SXActionComponentInteractionHandler *)self actionManager];
  [v5 commitPreviewViewController:v4];
}

@end