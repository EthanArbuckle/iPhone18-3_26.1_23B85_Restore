@interface NSURL(SBFFileCache)
- (id)fileCacheStableDataRepresentation;
@end

@implementation NSURL(SBFFileCache)

- (id)fileCacheStableDataRepresentation
{
  v1 = [a1 absoluteString];
  v2 = [v1 dataUsingEncoding:4];

  return v2;
}

@end