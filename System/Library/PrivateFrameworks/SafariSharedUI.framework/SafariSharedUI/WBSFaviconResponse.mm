@interface WBSFaviconResponse
- (WBSFaviconResponse)initWithURL:(id)l favicon:(id)favicon faviconType:(unint64_t)type;
@end

@implementation WBSFaviconResponse

- (WBSFaviconResponse)initWithURL:(id)l favicon:(id)favicon faviconType:(unint64_t)type
{
  faviconCopy = favicon;
  v14.receiver = self;
  v14.super_class = WBSFaviconResponse;
  v10 = [(WBSSiteMetadataResponse *)&v14 initWithURL:l];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_favicon, favicon);
    v11->_faviconType = type;
    v12 = v11;
  }

  return v11;
}

@end