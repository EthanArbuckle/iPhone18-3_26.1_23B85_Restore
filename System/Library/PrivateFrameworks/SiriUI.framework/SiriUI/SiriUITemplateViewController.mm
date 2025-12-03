@interface SiriUITemplateViewController
+ (id)templateViewControllerForTemplateModel:(id)model;
- (SiriUITemplateModelPrivate)templateModelPrivate;
- (SiriUITemplateViewControllerDelegate)delegate;
- (id)_initWithTemplateModel:(id)model;
- (void)loadView;
- (void)setCompressed:(BOOL)compressed;
@end

@implementation SiriUITemplateViewController

+ (id)templateViewControllerForTemplateModel:(id)model
{
  modelCopy = model;
  v4 = [objc_alloc(objc_msgSend(modelCopy "templateViewControllerClass"))];

  return v4;
}

- (id)_initWithTemplateModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = SiriUITemplateViewController;
  v6 = [(SiriUITemplateViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateModel, model);
    v7->_active = 1;
  }

  return v7;
}

- (void)loadView
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SiriUITemplateViewController.m" lineNumber:32 description:@"The 'view' property of this class must conform to SiriUITemplateView."];
}

- (SiriUITemplateModelPrivate)templateModelPrivate
{
  if ([(SiriUITemplateModel *)self->_templateModel conformsToProtocol:&unk_287A68020])
  {
    v3 = self->_templateModel;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompressed:(BOOL)compressed
{
  if (self->_compressed != compressed)
  {
    self->_compressed = compressed;
    view = [(SiriUITemplateViewController *)self view];
    [view setNeedsLayout];

    view2 = [(SiriUITemplateViewController *)self view];
    [view2 setNeedsUpdateConstraints];
  }
}

- (SiriUITemplateViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end