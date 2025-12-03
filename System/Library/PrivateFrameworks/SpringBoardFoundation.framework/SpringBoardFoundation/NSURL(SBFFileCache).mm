@interface NSURL(SBFFileCache)
- (id)fileCacheStableDataRepresentation;
@end

@implementation NSURL(SBFFileCache)

- (id)fileCacheStableDataRepresentation
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString dataUsingEncoding:4];

  return v2;
}

@end