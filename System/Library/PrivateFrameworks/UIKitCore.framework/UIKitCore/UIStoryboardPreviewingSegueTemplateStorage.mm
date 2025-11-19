@interface UIStoryboardPreviewingSegueTemplateStorage
- (UIStoryboardPreviewingSegueTemplate)previewTemplate;
- (UIStoryboardPreviewingSegueTemplateStorage)initWithCoder:(id)a3;
- (UIStoryboardSegueTemplate)commitTemplate;
- (UIView)sender;
@end

@implementation UIStoryboardPreviewingSegueTemplateStorage

- (UIStoryboardPreviewingSegueTemplateStorage)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIStoryboardPreviewingSegueTemplateStorage;
  return [(UIStoryboardPreviewingSegueTemplateStorage *)&v4 init];
}

- (UIView)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

- (UIStoryboardPreviewingSegueTemplate)previewTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewTemplate);

  return WeakRetained;
}

- (UIStoryboardSegueTemplate)commitTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_commitTemplate);

  return WeakRetained;
}

@end