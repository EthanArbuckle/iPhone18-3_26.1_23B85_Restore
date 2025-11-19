@interface WBSLeadImageCacheRequest
+ (id)requestWithURL:(id)a3;
@end

@implementation WBSLeadImageCacheRequest

+ (id)requestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4 extraInfo:0];

  return v5;
}

@end