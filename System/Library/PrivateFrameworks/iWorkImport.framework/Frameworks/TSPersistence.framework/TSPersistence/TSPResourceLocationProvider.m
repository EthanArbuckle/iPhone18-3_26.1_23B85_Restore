@interface TSPResourceLocationProvider
+ (NSBundle)bundle;
+ (TSUResourceFileURLProvider)documentResourceAlternateFileURLProvider;
+ (void)setAlternateBundle:(id)a3;
+ (void)setDocumentResourceAlternateFileURLProvider:(id)a3;
@end

@implementation TSPResourceLocationProvider

+ (NSBundle)bundle
{
  v3 = objc_msgSend_alternateBundle(a1, a2, v2);
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

+ (void)setAlternateBundle:(id)a3
{
  v4 = a3;
  if (qword_280A52AF0 != v4)
  {
    v5 = v4;
    objc_storeStrong(&qword_280A52AF0, a3);
    v4 = v5;
  }
}

+ (void)setDocumentResourceAlternateFileURLProvider:(id)a3
{
  obj = a3;
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