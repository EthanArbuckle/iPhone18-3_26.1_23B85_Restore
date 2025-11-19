@interface _UIStickerPickerServiceRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_UIStickerPickerRemoteViewControllerDelegate)delegate;
- (void)dismissCard;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3;
- (void)stageSticker:(id)a3;
- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7;
- (void)stickerPickerCardDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _UIStickerPickerServiceRemoteViewController

+ (id)serviceViewControllerInterface
{
  if (qword_1ED49DF58 != -1)
  {
    dispatch_once(&qword_1ED49DF58, &__block_literal_global_237);
  }

  v3 = _MergedGlobals_1102;

  return v3;
}

+ (id)exportedInterface
{
  if (qword_1ED49DF68 != -1)
  {
    dispatch_once(&qword_1ED49DF68, &__block_literal_global_84_0);
  }

  v3 = qword_1ED49DF60;

  return v3;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [v5 viewServiceDidTerminateWithError:v4];
}

- (void)stickerPickerCardDidLoad
{
  v2 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [v2 stickerPickerCardDidLoad];
}

- (void)dismissCard
{
  v2 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [v2 dismissCard];
}

- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [v17 stageStickerWithIdentifier:v16 representations:v15 name:v14 externalURI:v13 accessibilityLabel:v12];
}

- (void)stageSticker:(id)a3
{
  v4 = a3;
  v5 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [v5 stageSticker:v4];
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];

    if (v5)
    {
      v6 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
      [v6 remoteHandlesRecentsStickerDonationWithCompletionHandler:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    v4 = v7;
  }
}

- (_UIStickerPickerRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end