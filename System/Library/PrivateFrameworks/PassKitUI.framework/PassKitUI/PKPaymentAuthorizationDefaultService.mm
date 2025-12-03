@interface PKPaymentAuthorizationDefaultService
- (PKPaymentAuthorizationPresenter)presenter;
- (void)authorizationDidAuthorizeApplePayTrustSignatureCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizeContextCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)result;
- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status;
- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)update;
- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update;
- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)update;
- (void)authorizationDidUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)update signatureRequest:(id)request;
- (void)fulfillRemotePaymentRequestPromise:(id)promise completion:(id)completion;
- (void)handleDismissWithCompletion:(id)completion;
- (void)handleHostApplicationDidBecomeActive;
- (void)handleHostApplicationWillResignActive:(BOOL)active;
- (void)hostCallDidGoUnhandledForMethod:(id)method;
- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)failure;
@end

@implementation PKPaymentAuthorizationDefaultService

- (void)authorizationDidAuthorizeApplePayTrustSignatureCompleteWithResult:(id)result
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizeContextCompleteWithResult:(id)result
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePaymentCompleteWithResult:(id)result
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePeerPaymentQuoteCompleteWithResult:(id)result
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidAuthorizePurchaseCompleteWithStatus:(int64_t)status
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidChangeCouponCodeCompleteWithUpdate:(id)update
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidRequestMerchantSessionCompleteWithUpdate:(id)update
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectPaymentMethodCompleteWithUpdate:(id)update
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectShippingAddressCompleteWithUpdate:(id)update
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidSelectShippingMethodCompleteWithUpdate:(id)update
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)authorizationDidUpdateAccountServicePaymentMethodCompleteWithUpdate:(id)update signatureRequest:(id)request
{
  v5 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v5];
}

- (void)handleDismissWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [WeakRetained dismissWithReason:2 completion:completionCopy];
}

- (void)fulfillRemotePaymentRequestPromise:(id)promise completion:(id)completion
{
  v5 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v5];
}

- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)failure
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)handleHostApplicationDidBecomeActive
{
  v3 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v3];
}

- (void)handleHostApplicationWillResignActive:(BOOL)active
{
  v4 = NSStringFromSelector(a2);
  [(PKPaymentAuthorizationDefaultService *)self hostCallDidGoUnhandledForMethod:v4];
}

- (void)hostCallDidGoUnhandledForMethod:(id)method
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    methodCopy = method;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ was called, but no service is present to handle the call.", &v5, 0xCu);
  }
}

- (PKPaymentAuthorizationPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end