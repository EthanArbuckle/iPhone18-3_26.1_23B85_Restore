@interface WBSFaviconResponse
- (WBSFaviconResponse)initWithURL:(id)a3 favicon:(id)a4 faviconType:(unint64_t)a5;
@end

@implementation WBSFaviconResponse

- (WBSFaviconResponse)initWithURL:(id)a3 favicon:(id)a4 faviconType:(unint64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = WBSFaviconResponse;
  v10 = [(WBSSiteMetadataResponse *)&v14 initWithURL:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_favicon, a4);
    v11->_faviconType = a5;
    v12 = v11;
  }

  return v11;
}

@end