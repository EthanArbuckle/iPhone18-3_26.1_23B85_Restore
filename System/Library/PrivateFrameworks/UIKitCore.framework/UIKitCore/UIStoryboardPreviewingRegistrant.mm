@interface UIStoryboardPreviewingRegistrant
- (UIStoryboardPreviewingRegistrant)initWithCoder:(id)a3;
- (UIView)sourceView;
- (UIViewController)viewController;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)registerForPreviewing;
- (void)unregisterForPreviewing;
@end

@implementation UIStoryboardPreviewingRegistrant

- (UIStoryboardPreviewingRegistrant)initWithCoder:(id)a3
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIStoryboardPreviewingRegistrant.m" lineNumber:37 description:@"Cannot register without a source view to register for."];
  }

  if (self->_previewingContext)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIStoryboardPreviewingRegistrant.m" lineNumber:39 description:@"It is a programming error to register multiple times."];
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

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  segueTemplateStorage = self->_segueTemplateStorage;
  self->_segueTemplateStorage = 0;

  v9 = [v7 sourceView];
  v10 = [v9 hitTest:0 withEvent:{x, y}];
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
      v13 = [v10 _previewingSegueTemplateStorageForLocation:v9 inView:{x, y}];
      v14 = self->_segueTemplateStorage;
      self->_segueTemplateStorage = v13;

      if (v10 == v9)
      {
        break;
      }

      v15 = [v10 superview];

      v11 = self->_segueTemplateStorage;
      if (!v11)
      {
        v10 = v15;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v11 = self->_segueTemplateStorage;
  }

  v15 = v10;
LABEL_11:
  v16 = [(UIStoryboardPreviewingSegueTemplateStorage *)v11 sender];
  v17 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  [v17 bounds];
  [v16 convertRect:v9 toView:?];
  [v7 setSourceRect:?];

  v18 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage previewTemplate];
  v19 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  v20 = [v18 perform:v19];
  v21 = [v20 destinationViewController];

  return v21;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v9 = a4;
  v5 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage commitTemplate];
  v6 = [(UIStoryboardPreviewingSegueTemplateStorage *)self->_segueTemplateStorage sender];
  v7 = [v5 _performWithDestinationViewController:v9 sender:v6];

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