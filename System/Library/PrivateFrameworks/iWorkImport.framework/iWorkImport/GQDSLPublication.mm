@interface GQDSLPublication
- (CGSize)pageSize;
- (GQDSLPublication)init;
- (__CFArray)createUpgradedPathComponentsFromOldTemplatePathComponents:(__CFArray *)components;
- (__CFString)createFixedPathForOldAppBundleResourcePath:(__CFString *)path;
- (__CFString)createUpgradedPathForOldAssetPath:(__CFString *)path;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileUrl:(__CFURL *)url;
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (void)dealloc;
- (void)initializeAppBundleResourcesUrl:(__CFURL *)url;
- (void)setPageMargins:(id)margins;
- (void)setStylesheet:(id)stylesheet;
@end

@implementation GQDSLPublication

- (GQDSLPublication)init
{
  v3.receiver = self;
  v3.super_class = GQDSLPublication;
  result = [(GQDRoot *)&v3 init];
  if (result)
  {
    result->mHasBody = 1;
  }

  return result;
}

- (void)dealloc
{
  mOldAssetNameMap = self->super.mOldAssetNameMap;
  if (mOldAssetNameMap)
  {
    CFRelease(mOldAssetNameMap);
  }

  mOldTemplateNameMap = self->mOldTemplateNameMap;
  if (mOldTemplateNameMap)
  {
    CFRelease(mOldTemplateNameMap);
  }

  v5.receiver = self;
  v5.super_class = GQDSLPublication;
  [(GQDRoot *)&v5 dealloc];
}

- (CGSize)pageSize
{
  width = self->mPageSize.width;
  height = self->mPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPageMargins:(id)margins
{
  marginsCopy = margins;

  self->mPageMargins = margins;
}

- (void)setStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;

  self->mStylesheet = stylesheet;
}

- (void)initializeAppBundleResourcesUrl:(__CFURL *)url
{
  if (!self->super.mAppBundleResourcesUrlInitialized)
  {
    self->super.mAppBundleResourcesUrl = 0;
  }

  self->super.mAppBundleResourcesUrlInitialized = 1;
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileUrl:(__CFURL *)url
{
  bundle = [(GQDRoot *)self appBundleResourcesUrl:url, bundle];
  if (bundle)
  {
    if ([(GQDRoot *)self appBundleCanProcessCurrentDocVersion]&& (v8 = [(GQDSLPublication *)self createFixedPathForOldAppBundleResourcePath:resource]) != 0)
    {
      v9 = v8;
      if (CFStringHasPrefix(v8, @"Charts/"))
      {
        bundle = 0;
      }

      else
      {
        v10 = CFURLCreateCopyAppendingPathComponent(0, bundle, v9, 0);
        bundle = CFURLCopyAbsoluteURL(v10);
        CFRelease(v10);
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return bundle;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  sub_4290C(reader, qword_A3608, "page-width");
  v9 = v5;
  sub_4290C(reader, qword_A3608, "page-height");
  v6.f64[0] = v9;
  v6.f64[1] = v7;
  self->mPageSize = vcvtq_f64_f32(vcvt_f32_f64(v6));
  return 1;
}

- (__CFString)createFixedPathForOldAppBundleResourcePath:(__CFString *)path
{
  pathCopy = path;
  if (!path)
  {
    return pathCopy;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, path, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v7 = Count;
  if (self->super.mAppBundleVersion >= 8 && Count >= 6)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (CFStringHasSuffix(ValueAtIndex, @".lproj"))
    {
      v10 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
      if (CFStringCompare(v10, @"Templates", 0) == kCFCompareEqualTo)
      {
        v15 = [(GQDSLPublication *)self createUpgradedPathComponentsFromOldTemplatePathComponents:ArrayBySeparatingStrings];
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v15);
        CFRelease(v15);
        goto LABEL_25;
      }
    }

LABEL_10:
    v11 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (CFStringCompare(v11, @"English.lproj", 0) || (v12 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1), CFStringCompare(v12, @"Starting Points", 0)))
    {
      if (self->super.mAppBundleVersion < 8)
      {
        CFRelease(ArrayBySeparatingStrings);
LABEL_39:
        v23 = 0;
        goto LABEL_40;
      }

      v13 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      if (CFStringCompare(v13, @"Templates", 0))
      {
        goto LABEL_14;
      }

      v16 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
      if (([v16 isEqualToString:@"Traditional"] & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", @"ISO"))
      {
        goto LABEL_14;
      }

      v17 = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
      MutableCopy = v17;
      v18 = 1;
    }

    else
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
      newValues = @"Templates";
      v26.location = 1;
      v26.length = 1;
      CFArrayReplaceValues(MutableCopy, v26, &newValues, 1);
      if (v7 == 3)
      {
        goto LABEL_25;
      }

      v19 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
      if (([v19 isEqualToString:@"Traditional"] & 1) == 0 && !objc_msgSend(v19, "isEqualToString:", @"ISO"))
      {
        goto LABEL_25;
      }

      v17 = MutableCopy;
      v18 = 3;
    }

    CFArrayRemoveValueAtIndex(v17, v18);
    goto LABEL_25;
  }

  if (Count >= 3)
  {
    goto LABEL_10;
  }

LABEL_14:
  MutableCopy = 0;
LABEL_25:
  if (self->super.mAppBundleVersion > 8)
  {
    if (MutableCopy)
    {
      v20 = CFArrayGetCount(MutableCopy);
      v21 = MutableCopy;
    }

    else
    {
      v20 = v7;
      v21 = ArrayBySeparatingStrings;
    }

    if (v20 >= 2)
    {
      v22 = CFArrayGetValueAtIndex(v21, 1);
      if (CFStringCompare(v22, @"Shared", 0))
      {
        if (CFStringCompare(v22, @"Pages06", 0) && CFStringCompare(v22, @"Pages08", 0) && CFStringFind(v22, @".", 0).location == -1)
        {
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
          }

          CFArrayRemoveValueAtIndex(MutableCopy, 1);
        }
      }
    }
  }

  CFRelease(ArrayBySeparatingStrings);
  if (!MutableCopy)
  {
    goto LABEL_39;
  }

  v23 = CFStringCreateByCombiningStrings(0, MutableCopy, @"/");
  CFRelease(MutableCopy);
LABEL_40:
  if (v23)
  {
    pathCopy = v23;
  }

  if (self->super.mAppBundleVersion >= 8)
  {
    pathCopy = [(GQDSLPublication *)self createUpgradedPathForOldAssetPath:pathCopy];
    if (!v23)
    {
      return pathCopy;
    }

    goto LABEL_46;
  }

  CFRetain(pathCopy);
  if (v23)
  {
LABEL_46:
    CFRelease(v23);
  }

  return pathCopy;
}

- (__CFArray)createUpgradedPathComponentsFromOldTemplatePathComponents:(__CFArray *)components
{
  if (!self->mIsOldTemplateNameMapInitialized)
  {
    v5 = [(GQDRoot *)self appBundleResourcesUrl:0];
    if (v5)
    {
      v6 = v5;
      if ([(GQDRoot *)self appBundleCanProcessCurrentDocVersion])
      {
        v7 = CFURLCreateCopyAppendingPathComponent(0, v6, @"Templates/OldTemplateNameMap.plist", 0);
        v8 = [[NSDictionary alloc] initWithContentsOfURL:v7];
        CFRelease(v7);
        if (v8)
        {
          self->mOldTemplateNameMap = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          keyEnumerator = [v8 keyEnumerator];
          nextObject = [keyEnumerator nextObject];
          if (nextObject)
          {
            nextObject2 = nextObject;
            do
            {
              v12 = sub_EFA4(nextObject2);
              -[__CFDictionary setObject:forKey:](self->mOldTemplateNameMap, "setObject:forKey:", sub_EFA4([v8 objectForKey:nextObject2]), v12);
              nextObject2 = [keyEnumerator nextObject];
            }

            while (nextObject2);
          }
        }

        self->mIsOldTemplateNameMapInitialized = 1;
      }
    }
  }

  if (self->mOldTemplateNameMap)
  {
    v13 = objc_alloc_init(NSAutoreleasePool);
    Count = CFArrayGetCount(components);
    v15 = [(__CFDictionary *)self->mOldTemplateNameMap objectForKey:sub_EFA4([NSString pathWithComponents:[(__CFArray *)components subarrayWithRange:0, 5]])];
    if (v15)
    {
      MutableCopy = [objc_msgSend(v15 stringByAppendingPathComponent:{+[NSString pathWithComponents:](NSString, "pathWithComponents:", -[__CFArray subarrayWithRange:](components, "subarrayWithRange:", 5, (Count - 5)))), "pathComponents"}];
    }

    else
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, components);
      CFArrayRemoveValueAtIndex(MutableCopy, 0);
      CFArrayRemoveValueAtIndex(MutableCopy, 1);
    }

    if (MutableCopy)
    {
      return MutableCopy;
    }
  }

  return CFRetain(components);
}

- (__CFString)createUpgradedPathForOldAssetPath:(__CFString *)path
{
  if (!self->super.mIsOldAssetNameMapInitialized)
  {
    v5 = [(GQDRoot *)self appBundleResourcesUrl:0];
    if (v5)
    {
      v6 = v5;
      if ([(GQDRoot *)self appBundleCanProcessCurrentDocVersion])
      {
        v7 = CFURLCreateCopyAppendingPathComponent(0, v6, @"Templates/OldAssetNameMap.plist", 0);
        self->super.mOldAssetNameMap = [[NSDictionary alloc] initWithContentsOfURL:v7];
        CFRelease(v7);
        self->super.mIsOldAssetNameMapInitialized = 1;
      }
    }
  }

  mOldAssetNameMap = self->super.mOldAssetNameMap;
  if (mOldAssetNameMap && (Value = CFDictionaryGetValue(mOldAssetNameMap, path)) != 0)
  {
    v10 = Value;
    CFRetain(Value);
    return v10;
  }

  else
  {
    CFRetain(path);
  }

  return path;
}

@end