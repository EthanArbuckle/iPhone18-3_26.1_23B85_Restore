@interface QLCacheBlobInfo
- (BOOL)isEqual:(id)a3;
@end

@implementation QLCacheBlobInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 location];
    if (v6 == [(QLCacheBlobInfo *)self location])
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