@interface GQDLSDocument
- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)a3;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileUrl:(__CFURL *)a5;
- (void)dealloc;
- (void)initializeAppBundleResourcesUrl:(__CFURL *)a3;
- (void)setStylesheet:(id)a3;
@end

@implementation GQDLSDocument

- (void)dealloc
{
  mOldAssetNameMap = self->super.mOldAssetNameMap;
  if (mOldAssetNameMap)
  {
    CFRelease(mOldAssetNameMap);
  }

  v4.receiver = self;
  v4.super_class = GQDLSDocument;
  [(GQDRoot *)&v4 dealloc];
}

- (void)setStylesheet:(id)a3
{
  v5 = a3;

  self->mStylesheet = a3;
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileUrl:(__CFURL *)a5
{
  v7 = [(GQDRoot *)self appBundleResourcesUrl:a5, a4];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (![(GQDRoot *)self appBundleCanProcessCurrentDocVersion])
  {
    return 0;
  }

  v9 = [(GQDLSDocument *)self createUpgradedAppBundleResourcePath:a3];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = CFURLCreateCopyAppendingPathComponent(0, v8, v9, 0);
  v12 = CFURLCopyAbsoluteURL(v11);
  CFRelease(v11);
  CFRelease(v10);
  return v12;
}

- (void)initializeAppBundleResourcesUrl:(__CFURL *)a3
{
  if (!self->super.mAppBundleResourcesUrlInitialized)
  {
    self->super.mAppBundleResourcesUrl = 0;
  }

  self->super.mAppBundleResourcesUrlInitialized = 1;
}

- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)a3
{
  v5 = [(GQDRoot *)self appBundleResourcesUrl:0];
  if (!v5)
  {
    return v5;
  }

  if (![(GQDRoot *)self appBundleCanProcessCurrentDocVersion])
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a3);
  v11.length = CFStringGetLength(MutableCopy);
  v11.location = 0;
  CFStringFindAndReplace(MutableCopy, @".tmplt/", @".nmbtemplate/", v11, 0);
  v12.length = CFStringGetLength(MutableCopy);
  v12.location = 0;
  CFStringFindAndReplace(MutableCopy, @"Templates/Traditional/", @"Templates/", v12, 8uLL);
  v13.length = CFStringGetLength(MutableCopy);
  v13.location = 0;
  CFStringFindAndReplace(MutableCopy, @"Templates/ISO/", @"Templates/", v13, 8uLL);
  if (!self->super.mIsOldAssetNameMapInitialized)
  {
    v7 = CFURLCreateCopyAppendingPathComponent(0, v5, @"Templates/OldAssetNameMap.plist", 0);
    self->super.mOldAssetNameMap = [[NSDictionary alloc] initWithContentsOfURL:v7];
    CFRelease(v7);
    self->super.mIsOldAssetNameMapInitialized = 1;
  }

  if (!self->super.mOldAssetNameMap)
  {
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    return 0;
  }

  v8 = 101;
  while (1)
  {
    v9 = [(__CFDictionary *)self->super.mOldAssetNameMap objectForKey:MutableCopy];
    if (!v9)
    {
      break;
    }

    v5 = v9;
    CFRetain(v9);
    CFRelease(MutableCopy);
    MutableCopy = v5;
    if (!--v8)
    {
      return v5;
    }
  }

  return MutableCopy;
}

@end