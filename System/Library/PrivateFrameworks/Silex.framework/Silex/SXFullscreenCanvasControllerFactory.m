@interface SXFullscreenCanvasControllerFactory
- (SXFullscreenCanvasControllerFactory)initWithCaptionViewFactory:(id)a3 presentationAttributesProvider:(id)a4 mediaSharingPolicyProvider:(id)a5;
- (id)fullscreenCanvasControllerForShowable:(id)a3;
@end

@implementation SXFullscreenCanvasControllerFactory

- (SXFullscreenCanvasControllerFactory)initWithCaptionViewFactory:(id)a3 presentationAttributesProvider:(id)a4 mediaSharingPolicyProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXFullscreenCanvasControllerFactory;
  v12 = [(SXFullscreenCanvasControllerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_captionViewFactory, a3);
    objc_storeStrong(&v13->_presentationAttributesProvider, a4);
    objc_storeStrong(&v13->_mediaSharingPolicyProvider, a5);
  }

  return v13;
}

- (id)fullscreenCanvasControllerForShowable:(id)a3
{
  v4 = a3;
  v5 = [SXFullscreenCanvasController alloc];
  v6 = [(SXFullscreenCanvasControllerFactory *)self captionViewFactory];
  v7 = [(SXFullscreenCanvasControllerFactory *)self mediaSharingPolicyProvider];
  v8 = -[SXFullscreenCanvasController initWithShowable:captionViewFactory:sharingPolicy:](v5, "initWithShowable:captionViewFactory:sharingPolicy:", v4, v6, [v7 mediaSharingPolicy]);

  return v8;
}

@end