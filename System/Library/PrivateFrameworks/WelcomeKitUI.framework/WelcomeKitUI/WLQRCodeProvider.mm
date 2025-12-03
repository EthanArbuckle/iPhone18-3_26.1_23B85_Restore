@interface WLQRCodeProvider
- (WLQRCodeProvider)initWithScale:(double)scale;
- (WLQRCodeProviderDelegate)delegate;
- (void)complete;
- (void)drainQueue;
- (void)request;
- (void)requestDidFinish:(BOOL)finish;
@end

@implementation WLQRCodeProvider

- (WLQRCodeProvider)initWithScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = WLQRCodeProvider;
  result = [(WLQRCodeProvider *)&v5 init];
  if (result)
  {
    result->_scale = scale;
  }

  return result;
}

- (void)request
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_useGooglePlayStore)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WLQRCode alloc];
    v5 = WLLocalizedString();
    v6 = WLLocalizedString();
    v7 = [(WLQRCode *)v4 initWithName:v5 title:v6 URL:@"https://support.apple.com/HT201196" code:@"apple_support" scale:self->_scale];
    v20[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [WeakRetained providerDidProvide:v8];

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"https://a.app.qq.com/o/simple.jsp?pkgname=com.apple.movetoios", @"https://url.cloud.huawei.com/gKwTbAcORy", @"https://h5coml.vivo.com.cn/h5coml/appdetail_h5/browser_v2/index.html?appId=415331", 0}];
    urls = self->_urls;
    self->_urls = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    codes = self->_codes;
    self->_codes = v12;

    v14 = self->_codes;
    v15 = [WLQRCode alloc];
    v16 = WLLocalizedString();
    v17 = WLLocalizedString();
    v18 = [(WLQRCode *)v15 initWithName:v16 title:v17 URL:@"https://play.google.com/store/apps/details?id=com.apple.movetoios" code:@"google_play" scale:self->_scale];
    [(NSMutableArray *)v14 addObject:v18];

    v19 = *MEMORY[0x277D85DE8];

    [(WLQRCodeProvider *)self drainQueue];
  }
}

- (void)drainQueue
{
  if ([(NSMutableArray *)self->_urls count])
  {
    firstObject = [(NSMutableArray *)self->_urls firstObject];
    v3 = objc_alloc_init(WLRequest);
    request = self->_request;
    self->_request = v3;

    [(WLRequest *)self->_request setDelegate:self];
    [(WLRequest *)self->_request request:firstObject redirect:0];
  }

  else
  {

    [(WLQRCodeProvider *)self complete];
  }
}

- (void)requestDidFinish:(BOOL)finish
{
  finishCopy = finish;
  firstObject = [(NSMutableArray *)self->_urls firstObject];
  [(NSMutableArray *)self->_urls removeObjectAtIndex:0];
  if (finishCopy)
  {
    v5 = firstObject;
    if ([(WLQRCode *)v5 isEqualToString:@"https://a.app.qq.com/o/simple.jsp?pkgname=com.apple.movetoios"])
    {
      v6 = [WLQRCode alloc];
      v7 = WLLocalizedString();
      v8 = WLLocalizedString();
      scale = self->_scale;
      v10 = @"https://a.app.qq.com/o/simple.jsp?pkgname=com.apple.movetoios";
      v11 = @"tencent_store";
    }

    else if ([(WLQRCode *)v5 isEqualToString:@"https://url.cloud.huawei.com/gKwTbAcORy"])
    {
      v6 = [WLQRCode alloc];
      v7 = WLLocalizedString();
      v8 = WLLocalizedString();
      scale = self->_scale;
      v10 = @"https://url.cloud.huawei.com/gKwTbAcORy";
      v11 = @"huawei_store";
    }

    else if ([(WLQRCode *)v5 isEqualToString:@"https://h5coml.vivo.com.cn/h5coml/appdetail_h5/browser_v2/index.html?appId=415331"])
    {
      v6 = [WLQRCode alloc];
      v7 = WLLocalizedString();
      v8 = WLLocalizedString();
      scale = self->_scale;
      v10 = @"https://h5coml.vivo.com.cn/h5coml/appdetail_h5/browser_v2/index.html?appId=415331";
      v11 = @"vivo_store";
    }

    else
    {
      if (![(WLQRCode *)v5 isEqualToString:@"https://mobile.baidu.com/item?pid=1538161"])
      {
        v12 = v5;
LABEL_12:

        goto LABEL_13;
      }

      v6 = [WLQRCode alloc];
      v7 = WLLocalizedString();
      v8 = WLLocalizedString();
      scale = self->_scale;
      v10 = @"https://mobile.baidu.com/item?pid=1538161";
      v11 = @"baidu_store";
    }

    v12 = [(WLQRCode *)v6 initWithName:v7 title:v8 URL:v10 code:v11 scale:scale];

    if (!v12)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_codes addObject:v12];
    goto LABEL_12;
  }

LABEL_13:
  [(WLQRCodeProvider *)self drainQueue];
}

- (void)complete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained providerDidProvide:self->_codes];

  request = self->_request;
  self->_request = 0;

  urls = self->_urls;
  self->_urls = 0;

  codes = self->_codes;
  self->_codes = 0;
}

- (WLQRCodeProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end