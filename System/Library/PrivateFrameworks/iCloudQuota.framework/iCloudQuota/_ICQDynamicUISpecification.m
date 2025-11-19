@interface _ICQDynamicUISpecification
- (_ICQDynamicUISpecification)initWithRouteURL:(id)a3 pageContentsURL:(id)a4 attributionSuffix:(id)a5;
@end

@implementation _ICQDynamicUISpecification

- (_ICQDynamicUISpecification)initWithRouteURL:(id)a3 pageContentsURL:(id)a4 attributionSuffix:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ICQDynamicUISpecification;
  v12 = [(_ICQDynamicUISpecification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_routeURL, a3);
    objc_storeStrong(&v13->_pageContentsURL, a4);
    objc_storeStrong(&v13->_attributionSuffix, a5);
  }

  return v13;
}

@end