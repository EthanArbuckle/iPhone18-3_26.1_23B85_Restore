@interface UIStoryboardPreviewingRegistrant
- (UIStoryboardPreviewingRegistrant)initWithCoder:(id)coder;
- (UIView)sourceView;
- (UIViewController)viewController;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)registerForPreviewing;
- (void)unregisterForPreviewing;
@end

@implementation UIStoryboardPreviewingRegistrant

- (UIStoryboardPreviewingRegistrant)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = UIStoryboardPreviewingRegistrant;
  return [(UIStoryboardPreviewingRegistrant *)&v4 init];
}

- (void)registerForPreviewing
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  if (!WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStoryboardPreviewingRegistrant.m" lineNumber:37 description:@"Cannot register without a source view to register for."];
  }

  if (self->_previewingContext)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIStoryboardPreviewingRegistrant.m" lineNumber:39 description:@"It is a programming error to register multiple times."];
  }

  v10 = objc_loadWeakRetained(&self->_viewController);
  v5 = objc_loadWeakRetained(&self->_sourceView);
  v6 = [v10 registerForPreviewingWithDelegate:self sourceView:v5];
  previewingContext = self->_previewingContext;
  self->_previewingContext = v6;
}

- (void)unregisterForPreviewing
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained unregisterForPreviewingWithContext:self->_previewingContext];

  previewingContext = self->_previewingContext;
  self->_previewingContext = 0;
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  segueTemplateStorage = self->_segueTemplateStorage;
  self->_segueTemplateStorage = 0;

  sourceView = [contextCopy sourceView];
  v10 = [sourceView hitTest:0 withEvent:{x, y}];
  v11 = self->_segueTemplateStorage;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    while (1)
    {
      v13 = [v10 _previewingSegueTemplateStorageForLocation:sourceView inView:{x, y}];
      v14 = self->_segueTemplateStorage;
      self->_segueTemplateStorage = v13;

      if (v10 == sourceView)
      {
        break;
      }

      superview = [v10 superview];

      v11 = self->_segueTemplateStorage;
      if (!v11)
      {
        v10 = superview;
        if (superview)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v11 = self->_segueTemplateStorage;
  }

  superview = v10;
LABEL_11:
  sender = [(UIStoryboardPreviewingSegueTemplateStorage *)v11 sender];
  sender2 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  [sender2 bounds];
  [sender convertRect:sourceView toView:?];
  [contextCopy setSourceRect:?];

  previewTemplate = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage previewTemplate];
  sender3 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  v20 = [previewTemplate perform:sender3];
  destinationViewController = [v20 destinationViewController];

  return destinationViewController;
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  controllerCopy = controller;
  commitTemplate = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage commitTemplate];
  sender = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  v7 = [commitTemplate _performWithDestinationViewController:controllerCopy sender:sender];

  segueTemplateStorage = self->_segueTemplateStorage;
  self->_segueTemplateStorage = 0;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end