@interface REMFetchMetadata
- (REMFetchMetadata)initWithCoder:(id)coder;
@end

@implementation REMFetchMetadata

- (REMFetchMetadata)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = REMFetchMetadata;
  return [(REMFetchMetadata *)&v4 init];
}

@end