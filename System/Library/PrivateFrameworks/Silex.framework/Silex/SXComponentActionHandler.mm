@interface SXComponentActionHandler
- (SXComponentActionHandler)initWithActionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider;
- (void)handleAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect invocationType:(unint64_t)type;
- (void)handledAction:(id)action state:(unint64_t)state;
@end

@implementation SXComponentActionHandler

- (SXComponentActionHandler)initWithActionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider
{
  managerCopy = manager;
  serializerCopy = serializer;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = SXComponentActionHandler;
  v12 = [(SXAnalyticsEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionManager, manager);
    objc_storeStrong(&v13->_actionSerializer, serializer);
    objc_storeStrong(&v13->_analyticsReportingProvider, provider);
  }

  return v13;
}

- (void)handleAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect invocationType:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v12 = type == 1;
  viewCopy = view;
  actionCopy = action;
  actionManager = [(SXComponentActionHandler *)self actionManager];
  v17[0] = self;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [actionManager performAction:actionCopy postActionHandlers:v16 sourceView:viewCopy sourceRect:v12 mode:{x, y, width, height}];
}

- (void)handledAction:(id)action state:(unint64_t)state
{
  actionCopy = action;
  if (state == 2)
  {
    v14 = actionCopy;
    actionSerializer = [(SXComponentActionHandler *)self actionSerializer];
    v8 = [actionSerializer URLForAction:v14 type:0];

    if (v8)
    {
      v9 = [SXLinkTapEvent alloc];
      analytics = [v14 analytics];
      v11 = [(SXLinkTapEvent *)v9 initWithDestinationURL:v8 analytics:analytics];

      analyticsReportingProvider = [(SXComponentActionHandler *)self analyticsReportingProvider];
      analyticsReporting = [analyticsReportingProvider analyticsReporting];
      [analyticsReporting reportEvent:v11];
    }

    actionCopy = v14;
  }
}

@end