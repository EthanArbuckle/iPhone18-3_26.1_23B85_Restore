@interface UITextInputPayloadController
+ (id)sharedInstance;
+ (void)releaseSharedInstance;
- (BOOL)_isMobileSMS;
- (BOOL)supportsStickerTapbackPayload;
- (UITextInputPayloadDelegate)payloadDelegate;
- (void)setSupportedPayloadIds:(id)ids;
@end

@implementation UITextInputPayloadController

+ (id)sharedInstance
{
  v3 = __payloadController;
  if (!__payloadController)
  {
    v4 = objc_alloc_init(self);
    v5 = __payloadController;
    __payloadController = v4;

    [__payloadController setSupportedPayloadIds:&unk_1EFE2CF40];
    v3 = __payloadController;
  }

  return v3;
}

+ (void)releaseSharedInstance
{
  v2 = __payloadController;
  if (__payloadController)
  {
    __payloadController = 0;
  }
}

- (void)setSupportedPayloadIds:(id)ids
{
  idsCopy = ids;
  v5 = [idsCopy copy];
  supportedPayloadIds = self->_supportedPayloadIds;
  self->_supportedPayloadIds = v5;

  v7 = +[UIKeyboardImpl activeInstance];
  keyboardState = [v7 keyboardState];
  [keyboardState setSupportedPayloadIds:idsCopy];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    remoteTextInputPartner = [v10 remoteTextInputPartner];
    [remoteTextInputPartner documentTraitsChanged];
  }
}

- (BOOL)_isMobileSMS
{
  v2 = +[UIKeyboard keyboardBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.MobileSMS"];

  return v3;
}

- (BOOL)supportsStickerTapbackPayload
{
  _isMobileSMS = [(UITextInputPayloadController *)self _isMobileSMS];
  if (_isMobileSMS)
  {
    supportedPayloadIds = self->_supportedPayloadIds;

    LOBYTE(_isMobileSMS) = [(NSArray *)supportedPayloadIds containsObject:@"com.apple.messages.stickerTapback"];
  }

  return _isMobileSMS;
}

- (UITextInputPayloadDelegate)payloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);

  return WeakRetained;
}

@end