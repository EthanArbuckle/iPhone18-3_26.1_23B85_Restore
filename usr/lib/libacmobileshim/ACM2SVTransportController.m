@interface ACM2SVTransportController
- (void)cancelImageFetching;
- (void)generateAndSendSecCodeWithContext:(id)a3 completion:(id)a4;
- (void)getImageWithURL:(id)a3 completion:(id)a4;
- (void)loadTrustedDevicesWithContext:(id)a3 completion:(id)a4;
- (void)verifySecureCodeWithContext:(id)a3 completion:(id)a4;
@end

@implementation ACM2SVTransportController

- (void)loadTrustedDevicesWithContext:(id)a3 completion:(id)a4
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPGetTrustedDevicesHandler handlerWithContext:a3];
  v7 = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)v7 twoSVTransportController:self scheduleHandler:v6 withCompletion:a4];
}

- (void)generateAndSendSecCodeWithContext:(id)a3 completion:(id)a4
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPSendSecurityCodeHandler handlerWithContext:a3];
  v7 = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)v7 twoSVTransportController:self scheduleHandler:v6 withCompletion:a4];
}

- (void)verifySecureCodeWithContext:(id)a3 completion:(id)a4
{
  v6 = [(ACCHTTPHandler *)ACM2SVHTTPVerifySecurityCodeHandler handlerWithContext:a3];
  v7 = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)v7 twoSVTransportController:self scheduleHandler:v6 withCompletion:a4];
}

- (void)getImageWithURL:(id)a3 completion:(id)a4
{
  if (a3)
  {
    v6 = [ACM2SVHTTPImageDownloadHandler handlerWithURLString:?];
    v7 = [(ACM2SVTransportController *)self delegate];

    [(ACM2SVTransportControllerDelegate *)v7 twoSVTransportController:self fetchImageWithHandler:v6 completion:a4];
  }

  else if (qword_2A1EB9000 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACM2SVTransportController getImageWithURL:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVTransportController.m", 45, 0, "Image download URL is empty");
  }
}

- (void)cancelImageFetching
{
  v3 = [(ACM2SVTransportController *)self delegate];

  [(ACM2SVTransportControllerDelegate *)v3 twoSVTransportControllerCancelFetchingImages:self];
}

@end