@interface PKSharingMessageExtensionFallbackPresenter
+ (id)propertiesForMessage:(id)a3;
- (PKSharingMessageExtensionFallbackPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)didTapMessage;
- (void)setMessage:(id)a3;
- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5;
@end

@implementation PKSharingMessageExtensionFallbackPresenter

- (PKSharingMessageExtensionFallbackPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionFallbackPresenter;
  v9 = [(PKSharingMessageExtensionFallbackPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, a3);
    objc_storeStrong(&v10->_passLibrary, a4);
  }

  return v10;
}

- (void)setMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, a3);
  }
}

- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Extension: validateForRecipients called for fallback template presenter. This shouldn't happen.", v7, 2u);
  }

  (*(v5 + 2))(v5, 0, 0);
}

- (void)didTapMessage
{
  if (![(PKSharingMessageExtensionCommonMessage *)self->_message isFromMe])
  {
    v3 = [(PKSharingMessageExtensionCommonMessage *)self->_message actionURL];
    if (v3)
    {
      v5 = v3;
      WeakRetained = objc_loadWeakRetained(&self->_renderer);
      [WeakRetained openAppURL:v5];

      v3 = v5;
    }
  }
}

+ (id)propertiesForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  v5 = [v3 title];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v5];

  v6 = [v3 topLeftTitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setLeftTitleText:v6];

  v7 = [v3 topRightTitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setRightTitleText:v7];

  v8 = [v3 subtitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:v8];

  v9 = [v3 thumbnail];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:v9];

  v10 = [v3 buttonTitle];

  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v10];

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end