@interface QLCacheBlobInfo
- (BOOL)isEqual:(id)equal;
@end

@implementation QLCacheBlobInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    location = [v5 location];
    if (location == [(QLCacheBlobInfo *)self location])
    {
      v7 = [v5 length];
      v8 = v7 == [(QLCacheBlobInfo *)self length];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end