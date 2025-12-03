@interface IKImageElement(VSAdditions)
- (id)vs_url;
@end

@implementation IKImageElement(VSAdditions)

- (id)vs_url
{
  v2 = [self url];
  srcset = [self srcset];

  if (srcset)
  {
    v4 = objc_alloc_init(VSImageElementHelper);
    srcset2 = [self srcset];
    v6 = [(VSImageElementHelper *)v4 bestMatchingKeyForSrcset:srcset2];

    if (v6)
    {
      srcset3 = [self srcset];
      v8 = [srcset3 objectForKey:v6];

      v2 = v8;
    }
  }

  return v2;
}

@end