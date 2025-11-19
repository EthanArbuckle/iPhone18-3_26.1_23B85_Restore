@interface PKPaymentAuthorizationDefaultService
- (PKPaymentAuthorizationPresenter)presenter;
- (void)authorizationDidAuthorizeApplePayTrustSignatureCompleteWithResult:(id)a3;
- (void)authorizationDidAuthorizeContextCompleteWithResult:(id)a3;
- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)a3;
- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)a3;
- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)a3;
- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)a3;
- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)a3;
- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)a3;
- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)a3;
- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)a3;
- (void)authorizationDidUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)a3 signatureRequest:(id)a4;
- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4;
- (void)handleDismissWithCompletion:(id)a3;
- (void)handleHostApplicationDidBecomeActive;
- (void)handleHostApplicationWillResignActive:(BOOL)a3;
- (void)hostCallDidGoUnhandledForMethod:(id)a3;
- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3;
@end

@implementation PKPaymentAuthorizationDefaultService

- (void)authorizationDidAuthorizeApplePayTrustSignatureCompleteWithResult:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizeContextCompleteWithResult:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)a3 signatureRequest:(id)a4
{
  v5 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v5];
}

- (void)handleDismissWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [WeakRetained dismissWithReason:2 completion:v4];
}

- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4
{
  v5 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v5];
}

- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)handleHostApplicationDidBecomeActive
{
  v3 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v3];
}

- (void)handleHostApplicationWillResignActive:(BOOL)a3
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)hostCallDidGoUnhandledForMethod:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ was called, but no service is present to handle the call.", &v5, 0xCu);
  }
}

- (PKPaymentAuthorizationPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end