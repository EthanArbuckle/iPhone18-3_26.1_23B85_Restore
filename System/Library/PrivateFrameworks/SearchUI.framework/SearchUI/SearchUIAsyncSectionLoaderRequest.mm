@interface SearchUIAsyncSectionLoaderRequest
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation SearchUIAsyncSectionLoaderRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(SearchUIAsyncSectionLoaderRequest *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(SearchUIAsyncSectionLoaderRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end