@interface SiriUIBaseTemplateView
- (SiriUIBaseTemplateView)initWithDataSource:(id)source;
- (SiriUITemplateModel)dataSource;
- (SiriUITemplatedView)templatedSuperview;
- (void)removeFromTemplatedSuperview;
@end

@implementation SiriUIBaseTemplateView

- (SiriUIBaseTemplateView)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = SiriUIBaseTemplateView;
  v5 = [(SiriUIBaseTemplateView *)&v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (void)removeFromTemplatedSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_templatedSuperview);
  [WeakRetained templateSubviewWantsToBeRemovedFromHierarchy:self];
}

- (SiriUITemplatedView)templatedSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_templatedSuperview);

  return WeakRetained;
}

- (SiriUITemplateModel)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end