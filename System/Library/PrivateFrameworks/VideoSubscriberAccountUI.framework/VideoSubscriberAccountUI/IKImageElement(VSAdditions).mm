@interface IKImageElement(VSAdditions)
- (id)vs_url;
@end

@implementation IKImageElement(VSAdditions)

- (id)vs_url
{
  v2 = [a1 url];
  v3 = [a1 srcset];

  if (v3)
  {
    v4 = objc_alloc_init(VSImageElementHelper);
    v5 = [a1 srcset];
    v6 = [(VSImageElementHelper *)v4 bestMatchingKeyForSrcset:v5];

    if (v6)
    {
      v7 = [a1 srcset];
      v8 = [v7 objectForKey:v6];

      v2 = v8;
    }
  }

  return v2;
}

@end