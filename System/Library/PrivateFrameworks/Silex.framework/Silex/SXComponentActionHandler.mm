@interface SXComponentActionHandler
- (SXComponentActionHandler)initWithActionManager:(id)a3 actionSerializer:(id)a4 analyticsReportingProvider:(id)a5;
- (void)handleAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 invocationType:(unint64_t)a6;
- (void)handledAction:(id)a3 state:(unint64_t)a4;
@end

@implementation SXComponentActionHandler

- (SXComponentActionHandler)initWithActionManager:(id)a3 actionSerializer:(id)a4 analyticsReportingProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXComponentActionHandler;
  v12 = [(SXAnalyticsEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionManager, a3);
    objc_storeStrong(&v13->_actionSerializer, a4);
    objc_storeStrong(&v13->_analyticsReportingProvider, a5);
  }

  return v13;
}

- (void)handleAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 invocationType:(unint64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v12 = a6 == 1;
  v13 = a4;
  v14 = a3;
  v15 = [(SXComponentActionHandler *)self actionManager];
  v17[0] = self;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v15 performAction:v14 postActionHandlers:v16 sourceView:v13 sourceRect:v12 mode:{x, y, width, height}];
}

- (void)handledAction:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v14 = v6;
    v7 = [(SXComponentActionHandler *)self actionSerializer];
    v8 = [v7 URLForAction:v14 type:0];

    if (v8)
    {
      v9 = [SXLinkTapEvent alloc];
      v10 = [v14 analytics];
      v11 = [(SXLinkTapEvent *)v9 initWithDestinationURL:v8 analytics:v10];

      v12 = [(SXComponentActionHandler *)self analyticsReportingProvider];
      v13 = [v12 analyticsReporting];
      [v13 reportEvent:v11];
    }

    v6 = v14;
  }
}

@end