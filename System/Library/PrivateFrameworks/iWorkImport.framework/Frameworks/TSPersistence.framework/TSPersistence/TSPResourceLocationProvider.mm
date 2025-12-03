@interface TSPResourceLocationProvider
+ (NSBundle)bundle;
+ (TSUResourceFileURLProvider)documentResourceAlternateFileURLProvider;
+ (void)setAlternateBundle:(id)bundle;
+ (void)setDocumentResourceAlternateFileURLProvider:(id)provider;
@end

@implementation TSPResourceLocationProvider

+ (NSBundle)bundle
{
  v3 = objc_msgSend_alternateBundle(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = sub_276AB6F50(0, v4, v5);
  }

  v8 = v7;

  return v8;
}

+ (void)setAlternateBundle:(id)bundle
{
  bundleCopy = bundle;
  if (qword_280A52AF0 != bundleCopy)
  {
    v5 = bundleCopy;
    objc_storeStrong(&qword_280A52AF0, bundle);
    bundleCopy = v5;
  }
}

+ (void)setDocumentResourceAlternateFileURLProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&qword_280A52AF8);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&qword_280A52AF8, obj);
    v4 = obj;
  }
}

+ (TSUResourceFileURLProvider)documentResourceAlternateFileURLProvider
{
  WeakRetained = objc_loadWeakRetained(&qword_280A52AF8);

  return WeakRetained;
}

@end