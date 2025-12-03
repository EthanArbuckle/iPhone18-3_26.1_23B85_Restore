@interface REMReminderCreationRemoteViewController
- (REMReminderCreationPublicViewController)publicViewController;
- (void)viewHostDidDismiss;
- (void)viewServiceDidCancel;
- (void)viewServiceDidFailWithError:(id)error;
- (void)viewServiceDidFinish;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewServicePreferredSizeDidChange:(CGSize)change;
@end

@implementation REMReminderCreationRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = REMReminderCreationRemoteViewController;
  errorCopy = error;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:errorCopy];
  [(REMReminderCreationRemoteViewController *)self viewServiceDidFailWithError:errorCopy, v5.receiver, v5.super_class];
}

- (void)viewServicePreferredSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  publicViewController = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [publicViewController viewServicePreferredSizeDidChange:{width, height}];
}

- (void)viewServiceDidCancel
{
  publicViewController = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [publicViewController viewServiceDidCancel];
}

- (void)viewServiceDidFailWithError:(id)error
{
  errorCopy = error;
  publicViewController = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [publicViewController viewServiceDidFailWithError:errorCopy];
}

- (void)viewServiceDidFinish
{
  publicViewController = [(REMReminderCreationRemoteViewController *)self publicViewController];
  [publicViewController viewServiceDidFinish];
}

- (void)viewHostDidDismiss
{
  viewServiceViewController = [(REMReminderCreationRemoteViewController *)self viewServiceViewController];
  [viewServiceViewController viewHostDidDismiss];

  [(REMReminderCreationRemoteViewController *)self setPublicViewController:0];
}

- (REMReminderCreationPublicViewController)publicViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicViewController);

  return WeakRetained;
}

@end