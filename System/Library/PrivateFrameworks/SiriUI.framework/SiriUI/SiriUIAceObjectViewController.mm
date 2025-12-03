@interface SiriUIAceObjectViewController
- (SiriUIAceObjectViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SiriUIAceObjectViewControllerDelegate)delegate;
- (id)_privateDelegate;
@end

@implementation SiriUIAceObjectViewController

- (SiriUIAceObjectViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = SiriUIAceObjectViewController;
  return [(SiriUIAceObjectViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (SiriUIAceObjectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_privateDelegate
{
  delegate = [(SiriUIAceObjectViewController *)self delegate];
  v4 = [objc_opt_class() conformsToProtocol:&unk_287A67FC0];

  if (v4)
  {
    delegate2 = [(SiriUIAceObjectViewController *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

@end