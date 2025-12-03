@interface REMReminderCreationViewController
- (REMReminderCreationViewController)initWithDelegate:(id)delegate;
- (void)remoteViewControllerDidLoad:(id)load setupCompletion:(id)completion;
- (void)viewServiceDidCancel;
- (void)viewServiceDidFailWithError:(id)error;
- (void)viewServiceDidFinish;
@end

@implementation REMReminderCreationViewController

- (REMReminderCreationViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = REMReminderCreationViewController;
  v6 = [(REMReminderCreationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
  }

  return v7;
}

- (void)remoteViewControllerDidLoad:(id)load setupCompletion:(id)completion
{
  completionCopy = completion;
  loadCopy = load;
  v8 = [REMReminderCreationContext alloc];
  delegate = [(REMReminderCreationViewController *)self delegate];
  v10 = [(REMReminderCreationContext *)v8 initWithDelegate:delegate];

  [loadCopy displayForCreationWithContext:v10 completion:completionCopy];
}

- (void)viewServiceDidCancel
{
  v3.receiver = self;
  v3.super_class = REMReminderCreationViewController;
  [(REMReminderServiceViewController *)&v3 viewServiceDidCancel];
  [(REMReminderCreationViewController *)self sendDidCreate:0 error:0];
}

- (void)viewServiceDidFailWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = REMReminderCreationViewController;
  errorCopy = error;
  [(REMReminderServiceViewController *)&v5 viewServiceDidFailWithError:errorCopy];
  [(REMReminderCreationViewController *)self sendDidCreate:0 error:errorCopy, v5.receiver, v5.super_class];
}

- (void)viewServiceDidFinish
{
  v3.receiver = self;
  v3.super_class = REMReminderCreationViewController;
  [(REMReminderServiceViewController *)&v3 viewServiceDidFinish];
  [(REMReminderCreationViewController *)self sendDidCreate:1 error:0];
}

@end