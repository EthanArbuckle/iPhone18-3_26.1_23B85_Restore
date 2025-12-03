@interface WBSLeadImageCacheRequest
+ (id)requestWithURL:(id)l;
@end

@implementation WBSLeadImageCacheRequest

+ (id)requestWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy extraInfo:0];

  return v5;
}

@end