@interface SXGalleryComponentView
- (SXGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider;
@end

@implementation SXGalleryComponentView

- (SXGalleryComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider
{
  policyProviderCopy = policyProvider;
  v21.receiver = self;
  v21.super_class = SXGalleryComponentView;
  v17 = [(SXMediaComponentView *)&v21 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor];
  if (v17)
  {
    v18 = -[SXDragManager initWithSharingPolicy:dataSource:]([SXDragManager alloc], "initWithSharingPolicy:dataSource:", [policyProviderCopy mediaSharingPolicy], v17);
    dragManager = v17->_dragManager;
    v17->_dragManager = v18;
  }

  return v17;
}

@end