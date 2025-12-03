@interface WBSLeadImageCacheResponse
+ (id)responseWithURL:(id)l thumbnail:(id)thumbnail;
- (WBSLeadImageCacheResponse)initWithURL:(id)l thumbnail:(id)thumbnail;
@end

@implementation WBSLeadImageCacheResponse

+ (id)responseWithURL:(id)l thumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  lCopy = l;
  v8 = [[self alloc] initWithURL:lCopy thumbnail:thumbnailCopy];

  return v8;
}

- (WBSLeadImageCacheResponse)initWithURL:(id)l thumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  v12.receiver = self;
  v12.super_class = WBSLeadImageCacheResponse;
  v8 = [(WBSSiteMetadataResponse *)&v12 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_thumbnail, thumbnail);
    v10 = v9;
  }

  return v9;
}

@end