@interface NSURL(WebDataURL)
+ (void)_web_uniqueWebDataURL;
@end

@implementation NSURL(WebDataURL)

+ (void)_web_uniqueWebDataURL
{
  WTF::URL::fakeURLWithRelativePart();
  WTF::URL::createCFURL(&v7, &v6);
  v1 = v7;
  v7 = 0;
  if (v1)
  {
    v2 = v1;
    v3 = v7;
    v7 = 0;
    if (v3)
    {
    }
  }

  v4 = v6;
  v6 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v0);
  }

  return v1;
}

@end