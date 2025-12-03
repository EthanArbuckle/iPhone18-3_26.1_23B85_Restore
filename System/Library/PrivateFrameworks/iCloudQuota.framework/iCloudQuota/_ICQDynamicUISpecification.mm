@interface _ICQDynamicUISpecification
- (_ICQDynamicUISpecification)initWithRouteURL:(id)l pageContentsURL:(id)rL attributionSuffix:(id)suffix;
@end

@implementation _ICQDynamicUISpecification

- (_ICQDynamicUISpecification)initWithRouteURL:(id)l pageContentsURL:(id)rL attributionSuffix:(id)suffix
{
  lCopy = l;
  rLCopy = rL;
  suffixCopy = suffix;
  v15.receiver = self;
  v15.super_class = _ICQDynamicUISpecification;
  v12 = [(_ICQDynamicUISpecification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_routeURL, l);
    objc_storeStrong(&v13->_pageContentsURL, rL);
    objc_storeStrong(&v13->_attributionSuffix, suffix);
  }

  return v13;
}

@end