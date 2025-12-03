@interface VKDataScannerViewControllerBridge
+ (BOOL)isOpticalFlowForTextEnabled;
- (VKDataScannerViewControllerBridge)init;
- (VKDataScannerViewControllerBridgeDelegate)delegate;
- (void)beginSessionForText:(BOOL)text barcodes:(BOOL)barcodes;
- (void)dealloc;
- (void)endSession;
@end

@implementation VKDataScannerViewControllerBridge

- (VKDataScannerViewControllerBridge)init
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VKDataScannerViewControllerBridge;
  v2 = [(VKDataScannerViewControllerBridge *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v9[0] = @"cameraRestriction";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v4 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v6, &location);
    v2->_notificationToken = MGRegisterForUpdates();

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__VKDataScannerViewControllerBridge_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 cameraRestrictedDidChange:WeakRetained];
}

- (void)dealloc
{
  MGCancelNotifications();
  [(VKDataScannerViewControllerBridge *)self endSession];
  v3.receiver = self;
  v3.super_class = VKDataScannerViewControllerBridge;
  [(VKDataScannerViewControllerBridge *)&v3 dealloc];
}

+ (BOOL)isOpticalFlowForTextEnabled
{
  v2 = vk_supportsOpticalFlowTracking();
  if (v2)
  {
    if (vk_isInternalBuild())
    {

      LOBYTE(v2) = +[VKCInternalSettings isOpticalFlowForTextEnabled];
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (void)beginSessionForText:(BOOL)text barcodes:(BOOL)barcodes
{
  if (!self->_sessionStartDate)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    sessionStartDate = self->_sessionStartDate;
    self->_sessionStartDate = v7;

    self->_isScanningForText = text;
    self->_isScanningForBarcodes = barcodes;
  }
}

- (void)endSession
{
  if (self->_sessionStartDate)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceDate:self->_sessionStartDate];
    v5 = v4;

    v8 = [[VKAnalyticsDataScannerEvent alloc] initWithFeedDuration:self->_isScanningForText scannedForText:self->_isScanningForBarcodes scannedForBarcodes:0 customIdentifier:v5];
    if (![(VKAnalyticsDataScannerEvent *)v8 isHealth])
    {
      v6 = objc_alloc_init(VKAnalyticsProcessor);
      [(VKAnalyticsProcessor *)v6 setIsPublicAPI:1];
      [(VKAnalyticsProcessor *)v6 processAndSendEvent:v8];
    }

    sessionStartDate = self->_sessionStartDate;
    self->_sessionStartDate = 0;
  }
}

- (VKDataScannerViewControllerBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end