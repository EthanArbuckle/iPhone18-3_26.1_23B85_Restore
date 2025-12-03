@interface _UIStickerPickerServiceRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_UIStickerPickerRemoteViewControllerDelegate)delegate;
- (void)dismissCard;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler;
- (void)stageSticker:(id)sticker;
- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label;
- (void)stickerPickerCardDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
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

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [delegate viewServiceDidTerminateWithError:errorCopy];
}

- (void)stickerPickerCardDidLoad
{
  delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [delegate stickerPickerCardDidLoad];
}

- (void)dismissCard
{
  delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [delegate dismissCard];
}

- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label
{
  labelCopy = label;
  iCopy = i;
  nameCopy = name;
  representationsCopy = representations;
  identifierCopy = identifier;
  delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [delegate stageStickerWithIdentifier:identifierCopy representations:representationsCopy name:nameCopy externalURI:iCopy accessibilityLabel:labelCopy];
}

- (void)stageSticker:(id)sticker
{
  stickerCopy = sticker;
  delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
  [delegate stageSticker:stickerCopy];
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
    delegate = [(_UIStickerPickerServiceRemoteViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(_UIStickerPickerServiceRemoteViewController *)self delegate];
      [delegate2 remoteHandlesRecentsStickerDonationWithCompletionHandler:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    handlerCopy = v7;
  }
}

- (_UIStickerPickerRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end