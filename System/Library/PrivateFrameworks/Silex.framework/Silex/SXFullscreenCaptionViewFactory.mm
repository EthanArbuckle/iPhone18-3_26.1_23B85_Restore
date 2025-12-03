@interface SXFullscreenCaptionViewFactory
- (SXFullscreenCaptionViewFactory)initWithTextSourceFactory:(id)factory actionHandler:(id)handler;
- (id)createCaptionView;
@end

@implementation SXFullscreenCaptionViewFactory

- (SXFullscreenCaptionViewFactory)initWithTextSourceFactory:(id)factory actionHandler:(id)handler
{
  factoryCopy = factory;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = SXFullscreenCaptionViewFactory;
  v9 = [(SXFullscreenCaptionViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSourceFactory, factory);
    objc_storeStrong(&v10->_actionHandler, handler);
  }

  return v10;
}

- (id)createCaptionView
{
  v3 = [SXFullscreenCaptionView alloc];
  textSourceFactory = [(SXFullscreenCaptionViewFactory *)self textSourceFactory];
  actionHandler = [(SXFullscreenCaptionViewFactory *)self actionHandler];
  v6 = [(SXFullscreenCaptionView *)v3 initWithTextSourceFactory:textSourceFactory actionHandler:actionHandler];

  return v6;
}

@end