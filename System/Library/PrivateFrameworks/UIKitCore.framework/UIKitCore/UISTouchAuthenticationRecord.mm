@interface UISTouchAuthenticationRecord
@end

@implementation UISTouchAuthenticationRecord

void __69___UISTouchAuthenticationRecord_UIKit__authenticationRecordForTouch___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 392);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setSecurityAnalysis:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = v7[121];
  }

  v8 = v7;
  [v4 setHostBundleId:v8];

  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = v9[119];
  }

  v10 = v9;
  [v4 setHostSDKVersion:v10];

  v11 = *(a1 + 40);
  if (v11)
  {
    LOBYTE(v11) = *(v11 + 922);
  }

  [v4 setHostIsInternal:v11 & 1];
  v12 = _UIMainBundleIdentifier();
  [v4 setServiceBundleId:v12];
}

void __69___UISTouchAuthenticationRecord_UIKit__authenticationRecordForTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 392);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setSecurityAnalysis:v6];

  v7 = [*(a1 + 40) _hostBundleIdentifier];
  [v4 setHostBundleId:v7];

  v8 = [*(a1 + 40) _hostSDKVersion];
  [v4 setHostSDKVersion:v8];

  [v4 setHostIsInternal:{objc_msgSend(*(a1 + 40), "_hostIsInternal")}];
  v9 = _UIMainBundleIdentifier();
  [v4 setServiceBundleId:v9];
}

@end