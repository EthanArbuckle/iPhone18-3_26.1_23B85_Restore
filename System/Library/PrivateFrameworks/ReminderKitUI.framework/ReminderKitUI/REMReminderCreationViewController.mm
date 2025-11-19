@interface REMReminderCreationViewController
- (REMReminderCreationViewController)initWithDelegate:(id)a3;
- (void)remoteViewControllerDidLoad:(id)a3 setupCompletion:(id)a4;
- (void)viewServiceDidCancel;
- (void)viewServiceDidFailWithError:(id)a3;
- (void)viewServiceDidFinish;
@end

@implementation REMReminderCreationViewController

- (REMReminderCreationViewController)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderCreationViewController;
  v6 = [(REMReminderCreationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

- (void)remoteViewControllerDidLoad:(id)a3 setupCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [REMReminderCreationContext alloc];
  v9 = [(REMReminderCreationViewController *)self delegate];
  v10 = [(REMReminderCreationContext *)v8 initWithDelegate:v9];

  [v7 displayForCreationWithContext:v10 completion:v6];
}

- (void)viewServiceDidCancel
{
  v3.receiver = self;
  v3.super_class = REMReminderCreationViewController;
  [(REMReminderServiceViewController *)&v3 viewServiceDidCancel];
  [(REMReminderCreationViewController *)self sendDidCreate:0 error:0];
}

- (void)viewServiceDidFailWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = REMReminderCreationViewController;
  v4 = a3;
  [(REMReminderServiceViewController *)&v5 viewServiceDidFailWithError:v4];
  [(REMReminderCreationViewController *)self sendDidCreate:0 error:v4, v5.receiver, v5.super_class];
}

- (void)viewServiceDidFinish
{
  v3.receiver = self;
  v3.super_class = REMReminderCreationViewController;
  [(REMReminderServiceViewController *)&v3 viewServiceDidFinish];
  [(REMReminderCreationViewController *)self sendDidCreate:1 error:0];
}

@end