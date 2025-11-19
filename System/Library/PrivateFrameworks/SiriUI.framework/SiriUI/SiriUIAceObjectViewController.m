@interface SiriUIAceObjectViewController
- (SiriUIAceObjectViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SiriUIAceObjectViewControllerDelegate)delegate;
- (id)_privateDelegate;
@end

@implementation SiriUIAceObjectViewController

- (SiriUIAceObjectViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = SiriUIAceObjectViewController;
  return [(SiriUIAceObjectViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (SiriUIAceObjectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_privateDelegate
{
  v3 = [(SiriUIAceObjectViewController *)self delegate];
  v4 = [objc_opt_class() conformsToProtocol:&unk_287A67FC0];

  if (v4)
  {
    v5 = [(SiriUIAceObjectViewController *)self delegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end