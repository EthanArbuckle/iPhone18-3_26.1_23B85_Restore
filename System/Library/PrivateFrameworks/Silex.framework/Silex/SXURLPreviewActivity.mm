@interface SXURLPreviewActivity
- (SXURLPreviewActivity)initWithURLPreviewing:(id)previewing URL:(id)l;
- (id)previewViewControllerForAction:(id)action;
- (void)commitViewController:(id)controller action:(id)action;
@end

@implementation SXURLPreviewActivity

- (SXURLPreviewActivity)initWithURLPreviewing:(id)previewing URL:(id)l
{
  previewingCopy = previewing;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = SXURLPreviewActivity;
  v9 = [(SXURLPreviewActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URLPreviewing, previewing);
    objc_storeStrong(&v10->_URL, l);
  }

  return v10;
}

- (id)previewViewControllerForAction:(id)action
{
  uRLPreviewing = [(SXURLPreviewActivity *)self URLPreviewing];
  v5 = [(SXURLPreviewActivity *)self URL];
  v6 = [uRLPreviewing viewControllerForURL:v5];

  return v6;
}

- (void)commitViewController:(id)controller action:(id)action
{
  controllerCopy = controller;
  uRLPreviewing = [(SXURLPreviewActivity *)self URLPreviewing];
  v6 = [(SXURLPreviewActivity *)self URL];
  [uRLPreviewing commitViewController:controllerCopy URL:v6];
}

@end