@interface WSNanoWebSheetDetailViewController
- (WSNanoWebSheetDetailViewController)initWithURL:(id)a3 ssid:(id)a4 isSecure:(BOOL)a5 hasEVCert:(BOOL)a6;
- (void)loadView;
@end

@implementation WSNanoWebSheetDetailViewController

- (WSNanoWebSheetDetailViewController)initWithURL:(id)a3 ssid:(id)a4 isSecure:(BOOL)a5 hasEVCert:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = WSNanoWebSheetDetailViewController;
  v13 = [(WSNanoWebSheetDetailViewController *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_url, a3);
    objc_storeStrong(&v14->_ssid, a4);
    v14->_isSecure = a5;
    v14->_hasEVCert = a6;
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