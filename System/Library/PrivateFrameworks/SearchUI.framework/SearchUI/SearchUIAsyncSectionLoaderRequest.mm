@interface SearchUIAsyncSectionLoaderRequest
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation SearchUIAsyncSectionLoaderRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SearchUIAsyncSectionLoaderRequest *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SearchUIAsyncSectionLoaderRequest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end