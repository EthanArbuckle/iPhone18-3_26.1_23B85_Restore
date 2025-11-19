@interface NSExtension
@end

@implementation NSExtension

void __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    callHandler(WeakRetained, v5, 0);
  }
}

void __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    callHandler(WeakRetained, v5, 0);
  }
}

void __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    callHandler(WeakRetained, v5, 1);
    [v4 cancelExtensionRequestWithIdentifier:v5];
  }
}

@end