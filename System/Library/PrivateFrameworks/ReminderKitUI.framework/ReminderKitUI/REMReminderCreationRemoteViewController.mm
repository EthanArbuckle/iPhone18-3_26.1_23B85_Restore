@interface REMReminderCreationRemoteViewController
- (REMReminderCreationPublicViewController)publicViewController;
- (void)viewHostDidDismiss;
- (void)viewServiceDidCancel;
- (void)viewServiceDidFailWithError:(id)a3;
- (void)viewServiceDidFinish;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewServicePreferredSizeDidChange:(CGSize)a3;
@end

@implementation REMReminderCreationRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = REMReminderCreationRemoteViewController;
  v4 = a3;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:v4];
  [(REMReminderCreationRemoteViewController *)self viewServiceDidFailWithError:v4, v5.receiver, v5.super_class];
}

- (void)viewServicePreferredSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [v5 viewServicePreferredSizeDidChange:{width, height}];
}

- (void)viewServiceDidCancel
{
  v2 = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [v2 viewServiceDidCancel];
}

- (void)viewServiceDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [v5 viewServiceDidFailWithError:v4];
}

- (void)viewServiceDidFinish
{
  v2 = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [v2 viewServiceDidFinish];
}

- (void)viewHostDidDismiss
{
  v3 = [(REMReminderCreationRemoteViewController *)self viewServiceViewController];
  [v3 viewHostDidDismiss];

  [(REMReminderCreationRemoteViewController *)self setPublicViewController:0];
}

- (REMReminderCreationPublicViewController)publicViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicViewController);

  return WeakRetained;
}

@end