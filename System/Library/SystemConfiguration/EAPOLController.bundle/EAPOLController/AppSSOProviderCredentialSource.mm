@interface AppSSOProviderCredentialSource
- ($7C9D15F3256170E4E3E5F2CB1E52084F)createResponseWithIdentityPref:(id)a3;
- (AppSSOProviderCredentialSource)initWithProviderURLString:(id)a3 ssid:(id)a4 queue:(id)a5 callback:(void *)a6 context:(void *)a7;
- (BOOL)canPerformAuthorization;
- (void)authorization:(id)a3 didCompleteWithError:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5;
- (void)invalidate;
- (void)startAuthorization;
@end

@implementation AppSSOProviderCredentialSource

- (AppSSOProviderCredentialSource)initWithProviderURLString:(id)a3 ssid:(id)a4 queue:(id)a5 callback:(void *)a6 context:(void *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = AppSSOProviderCredentialSource;
  v16 = [(AppSSOProviderCredentialSource *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_providerURL, a3);
    objc_storeStrong(&v17->_queue, a5);
    v17->_callback = a6;
    v17->_callbackContext = a7;
    objc_storeStrong(&v17->_ssid, a4);
    v18 = objc_alloc_init(SOAuthorization);
    appSSOAuthorization = v17->_appSSOAuthorization;
    v17->_appSSOAuthorization = v18;

    [v17->_appSSOAuthorization setDelegate:v17];
    [v17->_appSSOAuthorization setDelegateDispatchQueue:v15];
  }

  return v17;
}

- (BOOL)canPerformAuthorization
{
  v3 = [NSURL URLWithString:self->_providerURL];
  v4 = [SOAuthorization canPerformAuthorizationWithURL:v3 responseCode:0 useInternalExtensions:0];

  if ((v4 & 1) == 0)
  {
    v5 = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      providerURL = self->_providerURL;
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = providerURL;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ AppSSO provider [%@] cannot perform the authorization", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v12 = CFErrorCreate(kCFAllocatorDefault, @"EAPAppSSOErrorDomain", 2, 0);
    v8 = [(AppSSOProviderCredentialSource *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000015CC;
    v10[3] = &unk_100014840;
    v10[4] = self;
    v10[5] = buf;
    dispatch_async(v8, v10);

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

- (void)startAuthorization
{
  if ([(AppSSOProviderCredentialSource *)self canPerformAuthorization])
  {
    v3 = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v3, v4, "%@ starting AppSSO authorization", buf, 0xCu);
    }

    v10[0] = @"X-SSO-Net-Authorization-Type";
    v10[1] = @"X-SSO-Net-Authorization";
    v11[0] = @"802.1x";
    v11[1] = @"EAP";
    v10[2] = @"X-SSO-Net-Resource";
    v11[2] = self->_ssid;
    v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
    appSSOAuthorization = self->_appSSOAuthorization;
    v7 = SOAuthorizationOperationFetchNetworkCredentials;
    v8 = [NSURL URLWithString:self->_providerURL];
    v9 = objc_alloc_init(NSData);
    [appSSOAuthorization beginAuthorizationWithOperation:v7 url:v8 httpHeaders:v5 httpBody:v9];
  }
}

- ($7C9D15F3256170E4E3E5F2CB1E52084F)createResponseWithIdentityPref:(id)a3
{
  v3 = a3;
  result = malloc_type_malloc(0x20uLL, 0x1060040BB51C48DuLL);
  *&result->var0 = 0u;
  *&result->var2 = 0u;
  *&result->var2 = 257;
  result->var4 = v3;
  return result;
}

- (void)invalidate
{
  v3 = EAPLogGetLogHandle();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@ invalidate", &v7, 0xCu);
  }

  appSSOAuthorization = self->_appSSOAuthorization;
  if (appSSOAuthorization)
  {
    [appSSOAuthorization setDelegate:0];
    [self->_appSSOAuthorization cancelAuthorization];
    v6 = self->_appSSOAuthorization;
    self->_appSSOAuthorization = 0;
  }
}

- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = EAPLogGetLogHandle();
  v12 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ didCompleteWithHTTPResponse", buf, 0xCu);
  }

  if (v9)
  {
    v13 = [v9 valueForHTTPHeaderField:@"X-SSO-Net-Credentials"];
    v14 = [v13 isEqualToString:@"IdentityPersistentReference"] ^ 1;
    if (!v10)
    {
      LOBYTE(v14) = 1;
    }

    if ((v14 & 1) == 0)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v23 = [(AppSSOProviderCredentialSource *)self createResponseWithIdentityPref:v10];
      v15 = [(AppSSOProviderCredentialSource *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001C04;
      block[3] = &unk_100014840;
      block[4] = self;
      block[5] = buf;
      dispatch_async(v15, block);

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = EAPLogGetLogHandle();
  v17 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v16, v17))
  {
    providerURL = self->_providerURL;
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = providerURL;
    _os_log_impl(&_mh_execute_header, v16, v17, "%@ received invalid response from AppSSO provider [%@]", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = CFErrorCreate(kCFAllocatorDefault, @"EAPAppSSOErrorDomain", 1, 0);
  v19 = [(AppSSOProviderCredentialSource *)self queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001C80;
  v20[3] = &unk_100014840;
  v20[4] = self;
  v20[5] = buf;
  dispatch_async(v19, v20);

LABEL_12:
  _Block_object_dispose(buf, 8);
}

- (void)authorization:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v6 = EAPLogGetLogHandle();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ didCompleteWithError error: %@", buf, 0x16u);
  }

  v8 = [(AppSSOProviderCredentialSource *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001E48;
  v10[3] = &unk_100014868;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

@end