@interface WBSLeadImageCacheResponse
+ (id)responseWithURL:(id)a3 thumbnail:(id)a4;
- (WBSLeadImageCacheResponse)initWithURL:(id)a3 thumbnail:(id)a4;
@end

@implementation WBSLeadImageCacheResponse

+ (id)responseWithURL:(id)a3 thumbnail:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithURL:v7 thumbnail:v6];

  return v8;
}

- (WBSLeadImageCacheResponse)initWithURL:(id)a3 thumbnail:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WBSLeadImageCacheResponse;
  v8 = [(WBSSiteMetadataResponse *)&v12 initWithURL:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_thumbnail, a4);
    v10 = v9;
  }

  return v9;
}

@end