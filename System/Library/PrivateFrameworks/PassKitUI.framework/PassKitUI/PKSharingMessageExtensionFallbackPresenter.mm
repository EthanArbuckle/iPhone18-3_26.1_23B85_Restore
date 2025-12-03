@interface PKSharingMessageExtensionFallbackPresenter
+ (id)propertiesForMessage:(id)message;
- (PKSharingMessageExtensionFallbackPresenter)initWithTargetDevice:(id)device passLibrary:(id)library;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)didTapMessage;
- (void)setMessage:(id)message;
- (void)validateForRecipients:(id)recipients senderAddress:(id)address completion:(id)completion;
@end

@implementation PKSharingMessageExtensionFallbackPresenter

- (PKSharingMessageExtensionFallbackPresenter)initWithTargetDevice:(id)device passLibrary:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionFallbackPresenter;
  v9 = [(PKSharingMessageExtensionFallbackPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, device);
    objc_storeStrong(&v10->_passLibrary, library);
  }

  return v10;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, message);
  }
}

- (void)validateForRecipients:(id)recipients senderAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Extension: validateForRecipients called for fallback template presenter. This shouldn't happen.", v7, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)didTapMessage
{
  if (![(PKSharingMessageExtensionCommonMessage *)self->_message isFromMe])
  {
    actionURL = [(PKSharingMessageExtensionCommonMessage *)self->_message actionURL];
    if (actionURL)
    {
      v5 = actionURL;
      WeakRetained = objc_loadWeakRetained(&self->_renderer);
      [WeakRetained openAppURL:v5];

      actionURL = v5;
    }
  }
}

+ (id)propertiesForMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  title = [messageCopy title];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:title];

  topLeftTitle = [messageCopy topLeftTitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setLeftTitleText:topLeftTitle];

  topRightTitle = [messageCopy topRightTitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setRightTitleText:topRightTitle];

  subtitle = [messageCopy subtitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:subtitle];

  thumbnail = [messageCopy thumbnail];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:thumbnail];

  buttonTitle = [messageCopy buttonTitle];

  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:buttonTitle];

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end