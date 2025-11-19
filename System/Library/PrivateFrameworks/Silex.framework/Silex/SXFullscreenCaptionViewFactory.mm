@interface SXFullscreenCaptionViewFactory
- (SXFullscreenCaptionViewFactory)initWithTextSourceFactory:(id)a3 actionHandler:(id)a4;
- (id)createCaptionView;
@end

@implementation SXFullscreenCaptionViewFactory

- (SXFullscreenCaptionViewFactory)initWithTextSourceFactory:(id)a3 actionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXFullscreenCaptionViewFactory;
  v9 = [(SXFullscreenCaptionViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSourceFactory, a3);
    objc_storeStrong(&v10->_actionHandler, a4);
  }

  return v10;
}

- (id)createCaptionView
{
  v3 = [SXFullscreenCaptionView alloc];
  v4 = [(SXFullscreenCaptionViewFactory *)self textSourceFactory];
  v5 = [(SXFullscreenCaptionViewFactory *)self actionHandler];
  v6 = [(SXFullscreenCaptionView *)v3 initWithTextSourceFactory:v4 actionHandler:v5];

  return v6;
}

@end