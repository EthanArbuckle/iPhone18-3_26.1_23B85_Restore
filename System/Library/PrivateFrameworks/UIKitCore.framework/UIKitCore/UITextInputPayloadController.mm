@interface UITextInputPayloadController
+ (id)sharedInstance;
+ (void)releaseSharedInstance;
- (BOOL)_isMobileSMS;
- (BOOL)supportsStickerTapbackPayload;
- (UITextInputPayloadDelegate)payloadDelegate;
- (void)setSupportedPayloadIds:(id)a3;
@end

@implementation UITextInputPayloadController

+ (id)sharedInstance
{
  v3 = __payloadController;
  if (!__payloadController)
  {
    v4 = objc_alloc_init(a1);
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

- (void)setSupportedPayloadIds:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  supportedPayloadIds = self->_supportedPayloadIds;
  self->_supportedPayloadIds = v5;

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 keyboardState];
  [v8 setSupportedPayloadIds:v4];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v10 = +[UIKeyboardImpl activeInstance];
    v9 = [v10 remoteTextInputPartner];
    [v9 documentTraitsChanged];
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
  v3 = [(UITextInputPayloadController *)self _isMobileSMS];
  if (v3)
  {
    supportedPayloadIds = self->_supportedPayloadIds;

    LOBYTE(v3) = [(NSArray *)supportedPayloadIds containsObject:@"com.apple.messages.stickerTapback"];
  }

  return v3;
}

- (UITextInputPayloadDelegate)payloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);

  return WeakRetained;
}

@end