@interface PUAssignToContactActivity
- (PXActivityItemSourceController)itemSourceController;
- (id)_embeddedActivityViewController;
- (id)activityViewController;
@end

@implementation PUAssignToContactActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (id)activityViewController
{
  v5.receiver = self;
  v5.super_class = PUAssignToContactActivity;
  activityViewController = [(UIAssignToContactActivity *)&v5 activityViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [activityViewController setDelegate:self];
  }

  return activityViewController;
}

- (id)_embeddedActivityViewController
{
  v5.receiver = self;
  v5.super_class = PUAssignToContactActivity;
  _embeddedActivityViewController = [(UIAssignToContactActivity *)&v5 _embeddedActivityViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_embeddedActivityViewController setDelegate:self];
  }

  return _embeddedActivityViewController;
}

@end