@interface SXGalleryComponentView
- (SXGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9;
@end

@implementation SXGalleryComponentView

- (SXGalleryComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 mediaSharingPolicyProvider:(id)a9
{
  v16 = a9;
  v21.receiver = self;
  v21.super_class = SXGalleryComponentView;
  v17 = [(SXMediaComponentView *)&v21 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8];
  if (v17)
  {
    v18 = -[SXDragManager initWithSharingPolicy:dataSource:]([SXDragManager alloc], "initWithSharingPolicy:dataSource:", [v16 mediaSharingPolicy], v17);
    dragManager = v17->_dragManager;
    v17->_dragManager = v18;
  }

  return v17;
}

@end