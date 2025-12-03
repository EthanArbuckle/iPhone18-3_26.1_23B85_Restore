@interface SXFullscreenCanvasControllerFactory
- (SXFullscreenCanvasControllerFactory)initWithCaptionViewFactory:(id)factory presentationAttributesProvider:(id)provider mediaSharingPolicyProvider:(id)policyProvider;
- (id)fullscreenCanvasControllerForShowable:(id)showable;
@end

@implementation SXFullscreenCanvasControllerFactory

- (SXFullscreenCanvasControllerFactory)initWithCaptionViewFactory:(id)factory presentationAttributesProvider:(id)provider mediaSharingPolicyProvider:(id)policyProvider
{
  factoryCopy = factory;
  providerCopy = provider;
  policyProviderCopy = policyProvider;
  v15.receiver = self;
  v15.super_class = SXFullscreenCanvasControllerFactory;
  v12 = [(SXFullscreenCanvasControllerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_captionViewFactory, factory);
    objc_storeStrong(&v13->_presentationAttributesProvider, provider);
    objc_storeStrong(&v13->_mediaSharingPolicyProvider, policyProvider);
  }

  return v13;
}

- (id)fullscreenCanvasControllerForShowable:(id)showable
{
  showableCopy = showable;
  v5 = [SXFullscreenCanvasController alloc];
  captionViewFactory = [(SXFullscreenCanvasControllerFactory *)self captionViewFactory];
  mediaSharingPolicyProvider = [(SXFullscreenCanvasControllerFactory *)self mediaSharingPolicyProvider];
  v8 = -[SXFullscreenCanvasController initWithShowable:captionViewFactory:sharingPolicy:](v5, "initWithShowable:captionViewFactory:sharingPolicy:", showableCopy, captionViewFactory, [mediaSharingPolicyProvider mediaSharingPolicy]);

  return v8;
}

@end