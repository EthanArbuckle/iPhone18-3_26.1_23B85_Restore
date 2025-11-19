@interface SiriUITemplateViewController
+ (id)templateViewControllerForTemplateModel:(id)a3;
- (SiriUITemplateModelPrivate)templateModelPrivate;
- (SiriUITemplateViewControllerDelegate)delegate;
- (id)_initWithTemplateModel:(id)a3;
- (void)loadView;
- (void)setCompressed:(BOOL)a3;
@end

@implementation SiriUITemplateViewController

+ (id)templateViewControllerForTemplateModel:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_msgSend(v3 "templateViewControllerClass"))];

  return v4;
}

- (id)_initWithTemplateModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriUITemplateViewController;
  v6 = [(SiriUITemplateViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateModel, a3);
    v7->_active = 1;
  }

  return v7;
}

- (void)loadView
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SiriUITemplateViewController.m" lineNumber:32 description:@"The 'view' property of this class must conform to SiriUITemplateView."];
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

- (void)setCompressed:(BOOL)a3
{
  if (self->_compressed != a3)
  {
    self->_compressed = a3;
    v5 = [(SiriUITemplateViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(SiriUITemplateViewController *)self view];
    [v6 setNeedsUpdateConstraints];
  }
}

- (SiriUITemplateViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end