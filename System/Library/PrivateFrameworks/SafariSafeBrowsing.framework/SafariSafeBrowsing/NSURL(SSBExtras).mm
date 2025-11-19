@interface NSURL(SSBExtras)
- (CFURLRef)ssb_canonicalizeURL;
- (id)ssb_hashes;
- (uint64_t)ssb_isSafeURL;
- (void)ssb_hasUserInfo;
@end

@implementation NSURL(SSBExtras)

- (void)ssb_hasUserInfo
{
  result = [a1 scheme];
  if (result)
  {
    v3 = result;
    if ([result caseInsensitiveCompare:@"http"])
    {
      v4 = [v3 caseInsensitiveCompare:@"https"];

      if (v4)
      {
        return 0;
      }
    }

    else
    {
    }

    return (CFURLGetByteRangeForComponent(a1, kCFURLComponentUserInfo, 0).location != -1);
  }

  return result;
}

- (uint64_t)ssb_isSafeURL
{
  if ([a1 isFileURL])
  {
    return 1;
  }

  v3 = [a1 host];
  v2 = [v3 length] == 0;

  return v2;
}

- (CFURLRef)ssb_canonicalizeURL
{
  Backend::Google::CanonicalURL::canonicalizeURL(a1, &__p);
  v1 = CFURLCreateWithBytes(0, __p, v4 - __p, 0x8000100u, 0);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  return v1;
}

- (id)ssb_hashes
{
  Backend::Google::CanonicalURL::canonicalizeURL(a1, v8);
  Backend::Google::CanonicalURL::computeHashes(v8, &__p);
  v1 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v7 - __p) >> 5];
  v2 = __p;
  v3 = v7;
  if (__p != v7)
  {
    do
    {
      v4 = [MEMORY[0x277CBEA90] dataWithBytes:v2 length:32];
      [v1 addObject:v4];

      v2 += 32;
    }

    while (v2 != v3);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v1;
}

@end