@interface ACM2SVTransportController
- (void)cancelImageFetching;
- (void)generateAndSendSecCodeWithContext:(id)context completion:(id)completion;
- (void)getImageWithURL:(id)l completion:(id)completion;
- (void)loadTrustedDevicesWithContext:(id)context completion:(id)completion;
- (void)verifySecureCodeWithContext:(id)context completion:(id)completion;
@end

@implementation ACM2SVTransportController

- (void)loadTrustedDevicesWithContext:(id)context completion:(id)completion
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPGetTrustedDevicesHandler handlerWithContext:context];
  delegate = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)delegate twoSVTransportController:self scheduleHandler:v6 withCompletion:completion];
}

- (void)generateAndSendSecCodeWithContext:(id)context completion:(id)completion
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPSendSecurityCodeHandler handlerWithContext:context];
  delegate = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)delegate twoSVTransportController:self scheduleHandler:v6 withCompletion:completion];
}

- (void)verifySecureCodeWithContext:(id)context completion:(id)completion
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPVerifySecurityCodeHandler handlerWithContext:context];
  delegate = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)delegate twoSVTransportController:self scheduleHandler:v6 withCompletion:completion];
}

- (void)getImageWithURL:(id)l completion:(id)completion
{
  if (l)
  {
    v6 = [ACM2SVHTTPImageDownloadHandler handlerWithURLString:?];
    delegate = [(ACM2SVTransportController *)self delegate];

    [(ACM2SVTransportControllerDelegate *)delegate twoSVTransportController:self fetchImageWithHandler:v6 completion:completion];
  }

  else if (qword_2A1EB9000 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACM2SVTransportController getImageWithURL:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTransportController.m", 45, 0, "Image download URL is empty");
  }
}

- (void)cancelImageFetching
{
  delegate = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)delegate twoSVTransportControllerCancelFetchingImages:self];
}

@end