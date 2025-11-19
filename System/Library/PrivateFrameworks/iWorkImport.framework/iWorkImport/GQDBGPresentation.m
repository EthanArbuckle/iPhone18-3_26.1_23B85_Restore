@interface GQDBGPresentation
+ (id)parseNumberOutOfBasename:(id)a3 returningNumber:(int *)a4;
+ (void)initialize;
- (CGSize)slideSize;
- (GQDBGPresentation)init;
- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)a3 processorBundle:(__CFBundle *)a4;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileUrl:(__CFURL *)a5;
- (id)colorForMissingAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4;
- (void)dealloc;
- (void)initializeAppBundleResourcesUrl:(__CFURL *)a3;
- (void)loadAppBundleResourceToColorMap;
@end

@implementation GQDBGPresentation

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();
    [GQDClassNameMap registerClass:objc_opt_class() forName:"title-placeholder" inRootType:v2];
    [GQDClassNameMap registerClass:objc_opt_class() forName:"body-placeholder" inRootType:v2];
    [GQDClassNameMap registerClass:objc_opt_class() forName:"object-placeholder" inRootType:v2];
    [GQDClassNameMap registerClass:objc_opt_class() forName:"slide-number-placeholder" inRootType:v2];
    v3 = objc_opt_class();

    [GQDClassNameMap registerClass:v3 forName:"gizmo" inRootType:v2];
  }
}

- (GQDBGPresentation)init
{
  v4.receiver = self;
  v4.super_class = GQDBGPresentation;
  v2 = [(GQDRoot *)&v4 init];
  if (v2)
  {
    v2->mThemes = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  return v2;
}

- (void)dealloc
{
  mThemes = self->mThemes;
  if (mThemes)
  {
    CFRelease(mThemes);
  }

  mOldAssetNameMap = self->super.mOldAssetNameMap;
  if (mOldAssetNameMap)
  {
    CFRelease(mOldAssetNameMap);
  }

  v5.receiver = self;
  v5.super_class = GQDBGPresentation;
  [(GQDRoot *)&v5 dealloc];
}

- (CGSize)slideSize
{
  width = self->mSlideSize.width;
  height = self->mSlideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)loadAppBundleResourceToColorMap
{
  if (!self->super.mAppBundleColorMapLoaded)
  {
    v15 = objc_alloc_init(NSAutoreleasePool);
    self->super.mAppBundleResourceToColorMap = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(NSBundle *)v4 pathForResource:@"KeySharedAssetColors" ofType:@"plist"];
    if (v5)
    {
      v6 = [[NSDictionary alloc] initWithContentsOfFile:v5];
      [(__CFDictionary *)Mutable addEntriesFromDictionary:v6];
    }

    v7 = [(NSBundle *)v4 pathForResource:@"KeyLegacyAssetColors" ofType:@"plist"];
    if (v7)
    {
      v8 = [[NSDictionary alloc] initWithContentsOfFile:v7];
      [(__CFDictionary *)Mutable addEntriesFromDictionary:v8];
    }

    v9 = [(NSBundle *)v4 pathForResource:@"ChartFillAssetColors" ofType:@"plist"];
    if (v9)
    {
      v10 = [[NSDictionary alloc] initWithContentsOfFile:v9];
      [(__CFDictionary *)Mutable addEntriesFromDictionary:v10];
    }

    v11 = [(__CFDictionary *)Mutable keyEnumerator];
    v12 = [v11 nextObject];
    if (v12)
    {
      v13 = v12;
      do
      {
        v14 = [(__CFDictionary *)Mutable objectForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFDictionarySetValue(self->super.mAppBundleResourceToColorMap, v13, +[GQDColor colorWithCalibratedRed:green:blue:](GQDColor, "colorWithCalibratedRed:green:blue:", ([objc_msgSend(v14 objectAtIndex:{0), "intValue"}] / 255.0), (objc_msgSend(objc_msgSend(v14, "objectAtIndex:", 1), "intValue") / 255.0), (objc_msgSend(objc_msgSend(v14, "objectAtIndex:", 2), "intValue") / 255.0)));
        }

        v13 = [v11 nextObject];
      }

      while (v13);
    }

    CFRelease(Mutable);
    [v15 drain];
    self->super.mAppBundleColorMapLoaded = 1;
  }
}

+ (id)parseNumberOutOfBasename:(id)a3 returningNumber:(int *)a4
{
  v4 = a3;
  if (a3)
  {
    v6 = [a3 length];
    if ((v6 - 1) >= 1)
    {
      v7 = [v4 characterAtIndex:?];
      if (v7 <= 0xFF && (_DefaultRuneLocale.__runetype[v7] & 0x400) != 0)
      {
        v8 = v6 - 2;
        while (1)
        {
          v9 = [v4 characterAtIndex:v8];
          if (v9 > 0xFF || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
          {
            break;
          }

          if (v8-- <= 0)
          {
            return v4;
          }
        }

        if (v8)
        {
          if ([v4 characterAtIndex:v8] == 45)
          {
            v11 = [v4 substringToIndex:v8];
            v12 = [objc_msgSend(v4 substringFromIndex:{(v8 + 1)), "intValue"}];
            if (v11)
            {
              v13 = v12;
              v14 = [v11 length];
              if (a4)
              {
                if (v14 && (v13 - 1) <= 0x7FFFFFFD)
                {
                  *a4 = v13;
                  return v11;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)colorForMissingAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4
{
  if (!self->super.mAppBundleColorMapLoaded)
  {
    [(GQDBGPresentation *)self loadAppBundleResourceToColorMap];
  }

  if (!self->super.mAppBundleResourceToColorMap)
  {
    return 0;
  }

  v7 = [(GQDBGPresentation *)self createUpgradedAppBundleResourcePath:a3 processorBundle:a4];
  Value = CFDictionaryGetValue(self->super.mAppBundleResourceToColorMap, v7);
  if (!Value)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(__CFString *)v7 pathExtension];
    v11 = v7;
    if (v10)
    {
      v11 = [(__CFString *)v7 stringByDeletingPathExtension];
    }

    v20 = 0;
    v12 = [objc_opt_class() parseNumberOutOfBasename:v11 returningNumber:&v20];
    v13 = v12;
    if (v20 < 1)
    {
      goto LABEL_11;
    }

    v14 = v12;
    if (v10)
    {
      v14 = [v12 stringByAppendingPathExtension:v10];
    }

    Value = CFDictionaryGetValue(self->super.mAppBundleResourceToColorMap, v14);
    if (!Value)
    {
LABEL_11:
      v15 = 1;
      do
      {
        if (v15 == v20)
        {
          Value = 0;
        }

        else
        {
          v16 = [NSString stringWithFormat:@"%@-%d", v13, v15];
          v17 = v16;
          if (v10)
          {
            v17 = [(NSString *)v16 stringByAppendingPathExtension:v10];
          }

          Value = CFDictionaryGetValue(self->super.mAppBundleResourceToColorMap, v17);
          if (Value)
          {
            break;
          }
        }

        v18 = v15 >= 5;
        v15 = (v15 + 1);
      }

      while (!v18);
    }

    objc_autoreleasePoolPop(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return Value;
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileUrl:(__CFURL *)a5
{
  v8 = [(GQDRoot *)self appBundleResourcesUrl:a5];
  if (!v8)
  {
    return v8;
  }

  if (![(GQDRoot *)self appBundleCanProcessCurrentDocVersion])
  {
    return 0;
  }

  if (self->super.mAppBundleVersion >= 8)
  {
    a3 = [(GQDBGPresentation *)self createUpgradedAppBundleResourcePath:a3 processorBundle:a4];
    if (a3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  CFRetain(a3);
  if (!a3)
  {
    return 0;
  }

LABEL_5:
  if (self->super.mAppBundleVersion >= 8 && CFStringHasPrefix(a3, @"Charts/"))
  {
    v8 = 0;
  }

  else
  {
    v9 = CFURLCreateCopyAppendingPathComponent(0, v8, @"Themes", 1u);
    v10 = CFURLCreateCopyAppendingPathComponent(0, v9, a3, 0);
    CFRelease(v9);
    v8 = CFURLCopyAbsoluteURL(v10);
    CFRelease(v10);
  }

  CFRelease(a3);
  return v8;
}

- (void)initializeAppBundleResourcesUrl:(__CFURL *)a3
{
  if (!self->super.mAppBundleResourcesUrlInitialized)
  {
    self->super.mAppBundleResourcesUrl = 0;
  }

  self->super.mAppBundleResourcesUrlInitialized = 1;
}

- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)a3 processorBundle:(__CFBundle *)a4
{
  v7 = [(GQDRoot *)self appBundleResourcesUrl:0];
  if (!self->super.mIsOldAssetNameMapInitialized)
  {
    if (v7 && (self->super.mAppBundleVersion & 0xFFFFFFFE) == 8)
    {
      v8 = CFURLCreateCopyAppendingPathComponent(0, v7, @"Themes/OldAssetNameMap.plist", 0);
    }

    else
    {
      v8 = CFBundleCopyResourceURL(a4, @"KeyOldAssetNameMap", @"plist", 0);
    }

    v9 = v8;
    self->super.mOldAssetNameMap = [[NSDictionary alloc] initWithContentsOfURL:v8];
    if (v9)
    {
      CFRelease(v9);
    }

    self->super.mIsOldAssetNameMapInitialized = 1;
  }

  if (!self->super.mOldAssetNameMap)
  {
    return 0;
  }

  v10 = CFRetain(a3);
  v11 = 101;
  while (1)
  {
    v12 = [(__CFDictionary *)self->super.mOldAssetNameMap objectForKey:v10];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    CFRetain(v12);
    if (v10)
    {
      CFRelease(v10);
    }

    v10 = v13;
    if (!--v11)
    {
      return v13;
    }
  }

  return v10;
}

@end