@interface WSNanoWebSheetDetailViewController
- (WSNanoWebSheetDetailViewController)initWithURL:(id)l ssid:(id)ssid isSecure:(BOOL)secure hasEVCert:(BOOL)cert;
- (void)loadView;
@end

@implementation WSNanoWebSheetDetailViewController

- (WSNanoWebSheetDetailViewController)initWithURL:(id)l ssid:(id)ssid isSecure:(BOOL)secure hasEVCert:(BOOL)cert
{
  lCopy = l;
  ssidCopy = ssid;
  v17.receiver = self;
  v17.super_class = WSNanoWebSheetDetailViewController;
  v13 = [(WSNanoWebSheetDetailViewController *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, l);
    objc_storeStrong(&v14->_ssid, ssid);
    v14->_isSecure = secure;
    v14->_hasEVCert = cert;
    v15 = v14;
  }

  return v14;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = WSNanoWebSheetDetailViewController;
  [(WSNanoWebSheetDetailViewController *)&v5 loadView];
  v3 = [[WSNanoWebSheetDetailView alloc] initWithURL:self->_url ssid:self->_ssid isSecure:self->_isSecure hasEVCert:self->_hasEVCert];
  [(WSNanoWebSheetDetailViewController *)self setView:v3];

  v4 = GetLocalizedString("Log In");
  [(WSNanoWebSheetDetailViewController *)self setTitle:v4];
}

@end