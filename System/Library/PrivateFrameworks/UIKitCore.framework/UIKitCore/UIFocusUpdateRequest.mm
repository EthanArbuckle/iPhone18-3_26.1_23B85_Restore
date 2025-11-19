@interface UIFocusUpdateRequest
@end

@implementation UIFocusUpdateRequest

void __78___UIFocusUpdateRequest_requestByRedirectingRequestToNextContainerEnvironment__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [*(a1 + 32) environment];

  v7 = v9;
  if (v6 != v9)
  {
    v8 = _UIFocusEnvironmentPrefersFocusContainment(v9);
    v7 = v9;
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v7 = v9;
      *a3 = 1;
    }
  }
}

@end