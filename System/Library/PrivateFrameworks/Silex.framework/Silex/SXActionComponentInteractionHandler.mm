@interface SXActionComponentInteractionHandler
- (SXActionComponentInteractionHandler)initWithAction:(id)action actionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider;
- (id)contextMenuForComponentView:(id)view sourceRect:(CGRect)rect;
- (id)previewViewController;
- (id)toolTipForComponentView:(id)view;
- (void)commitViewController:(id)controller;
- (void)handleInteractionType:(unint64_t)type sourceView:(id)view sourceRect:(CGRect)rect;
- (void)handledAction:(id)action state:(unint64_t)state;
@end

@implementation SXActionComponentInteractionHandler

- (SXActionComponentInteractionHandler)initWithAction:(id)action actionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider
{
  actionCopy = action;
  managerCopy = manager;
  serializerCopy = serializer;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = SXActionComponentInteractionHandler;
  v15 = [(SXActionComponentInteractionHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_action, action);
    objc_storeStrong(&v16->_actionManager, manager);
    objc_storeStrong(&v16->_actionSerializer, serializer);
    objc_storeStrong(&v16->_analyticsReportingProvider, provider);
  }

  return v16;
}

- (void)handleInteractionType:(unint64_t)type sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  actionManager = [(SXActionComponentInteractionHandler *)self actionManager];
  action = [(SXActionComponentInteractionHandler *)self action];
  v14[0] = self;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [actionManager performAction:action postActionHandlers:v13 sourceView:viewCopy sourceRect:0 mode:{x, y, width, height}];
}

- (id)contextMenuForComponentView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  actionManager = [(SXActionComponentInteractionHandler *)self actionManager];
  action = [(SXActionComponentInteractionHandler *)self action];
  v12 = [actionManager contextMenuConfigurationForAction:action sourceView:viewCopy sourceRect:{x, y, width, height}];

  return v12;
}

- (id)toolTipForComponentView:(id)view
{
  actionSerializer = [(SXActionComponentInteractionHandler *)self actionSerializer];
  action = [(SXActionComponentInteractionHandler *)self action];
  v6 = [actionSerializer URLForAction:action type:1];
  absoluteString = [v6 absoluteString];

  return absoluteString;
}

- (void)handledAction:(id)action state:(unint64_t)state
{
  actionCopy = action;
  if (state == 2)
  {
    v14 = actionCopy;
    actionSerializer = [(SXActionComponentInteractionHandler *)self actionSerializer];
    v8 = [actionSerializer URLForAction:v14 type:0];

    if (v8)
    {
      v9 = [SXLinkTapEvent alloc];
      analytics = [v14 analytics];
      v11 = [(SXLinkTapEvent *)v9 initWithDestinationURL:v8 analytics:analytics];

      analyticsReportingProvider = [(SXActionComponentInteractionHandler *)self analyticsReportingProvider];
      analyticsReporting = [analyticsReportingProvider analyticsReporting];
      [analyticsReporting reportEvent:v11];
    }

    actionCopy = v14;
  }
}

- (id)previewViewController
{
  actionManager = [(SXActionComponentInteractionHandler *)self actionManager];
  action = [(SXActionComponentInteractionHandler *)self action];
  v5 = [actionManager previewViewControllerForAction:action];

  return v5;
}

- (void)commitViewController:(id)controller
{
  controllerCopy = controller;
  actionManager = [(SXActionComponentInteractionHandler *)self actionManager];
  [actionManager commitPreviewViewController:controllerCopy];
}

@end