@interface GQDBGPresentation
+ (id)parseNumberOutOfBasename:(id)basename returningNumber:(int *)number;
+ (void)initialize;
- (CGSize)slideSize;
- (GQDBGPresentation)init;
- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)path processorBundle:(__CFBundle *)bundle;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileUrl:(__CFURL *)url;
- (id)colorForMissingAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle;
- (void)dealloc;
- (void)initializeAppBundleResourcesUrl:(__CFURL *)url;
- (void)loadAppBundleResourceToColorMap;
@end

@implementation GQDBGPresentation

+ (void)initialize
{
  if (objc_opt_class() == self)
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

    keyEnumerator = [(__CFDictionary *)Mutable keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v14 = [(__CFDictionary *)Mutable objectForKey:nextObject2];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFDictionarySetValue(self->super.mAppBundleResourceToColorMap, nextObject2, +[GQDColor colorWithCalibratedRed:green:blue:](GQDColor, "colorWithCalibratedRed:green:blue:", ([objc_msgSend(v14 objectAtIndex:{0), "intValue"}] / 255.0), (objc_msgSend(objc_msgSend(v14, "objectAtIndex:", 1), "intValue") / 255.0), (objc_msgSend(objc_msgSend(v14, "objectAtIndex:", 2), "intValue") / 255.0)));
        }

        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    CFRelease(Mutable);
    [v15 drain];
    self->super.mAppBundleColorMapLoaded = 1;
  }
}

+ (id)parseNumberOutOfBasename:(id)basename returningNumber:(int *)number
{
  basenameCopy = basename;
  if (basename)
  {
    v6 = [basename length];
    if ((v6 - 1) >= 1)
    {
      v7 = [basenameCopy characterAtIndex:?];
      if (v7 <= 0xFF && (_DefaultRuneLocale.__runetype[v7] & 0x400) != 0)
      {
        v8 = v6 - 2;
        while (1)
        {
          v9 = [basenameCopy characterAtIndex:v8];
          if (v9 > 0xFF || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
          {
            break;
          }

          if (v8-- <= 0)
          {
            return basenameCopy;
          }
        }

        if (v8)
        {
          if ([basenameCopy characterAtIndex:v8] == 45)
          {
            v11 = [basenameCopy substringToIndex:v8];
            v12 = [objc_msgSend(basenameCopy substringFromIndex:{(v8 + 1)), "intValue"}];
            if (v11)
            {
              v13 = v12;
              v14 = [v11 length];
              if (number)
              {
                if (v14 && (v13 - 1) <= 0x7FFFFFFD)
                {
                  *number = v13;
                  return v11;
                }
              }
            }
          }
        }
      }
    }
  }

  return basenameCopy;
}

- (id)colorForMissingAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle
{
  if (!self->super.mAppBundleColorMapLoaded)
  {
    [(GQDBGPresentation *)self loadAppBundleResourceToColorMap];
  }

  if (!self->super.mAppBundleResourceToColorMap)
  {
    return 0;
  }

  v7 = [(GQDBGPresentation *)self createUpgradedAppBundleResourcePath:resource processorBundle:bundle];
  Value = CFDictionaryGetValue(self->super.mAppBundleResourceToColorMap, v7);
  if (!Value)
  {
    v9 = objc_autoreleasePoolPush();
    pathExtension = [(__CFString *)v7 pathExtension];
    stringByDeletingPathExtension = v7;
    if (pathExtension)
    {
      stringByDeletingPathExtension = [(__CFString *)v7 stringByDeletingPathExtension];
    }

    v20 = 0;
    v12 = [objc_opt_class() parseNumberOutOfBasename:stringByDeletingPathExtension returningNumber:&v20];
    v13 = v12;
    if (v20 < 1)
    {
      goto LABEL_11;
    }

    v14 = v12;
    if (pathExtension)
    {
      v14 = [v12 stringByAppendingPathExtension:pathExtension];
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
          if (pathExtension)
          {
            v17 = [(NSString *)v16 stringByAppendingPathExtension:pathExtension];
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

- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileUrl:(__CFURL *)url
{
  v8 = [(GQDRoot *)self appBundleResourcesUrl:url];
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
    resource = [(GQDBGPresentation *)self createUpgradedAppBundleResourcePath:resource processorBundle:bundle];
    if (resource)
    {
      goto LABEL_5;
    }

    return 0;
  }

  CFRetain(resource);
  if (!resource)
  {
    return 0;
  }

LABEL_5:
  if (self->super.mAppBundleVersion >= 8 && CFStringHasPrefix(resource, @"Charts/"))
  {
    v8 = 0;
  }

  else
  {
    v9 = CFURLCreateCopyAppendingPathComponent(0, v8, @"Themes", 1u);
    v10 = CFURLCreateCopyAppendingPathComponent(0, v9, resource, 0);
    CFRelease(v9);
    v8 = CFURLCopyAbsoluteURL(v10);
    CFRelease(v10);
  }

  CFRelease(resource);
  return v8;
}

- (void)initializeAppBundleResourcesUrl:(__CFURL *)url
{
  if (!self->super.mAppBundleResourcesUrlInitialized)
  {
    self->super.mAppBundleResourcesUrl = 0;
  }

  self->super.mAppBundleResourcesUrlInitialized = 1;
}

- (__CFString)createUpgradedAppBundleResourcePath:(__CFString *)path processorBundle:(__CFBundle *)bundle
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
      v8 = CFBundleCopyResourceURL(bundle, @"KeyOldAssetNameMap", @"plist", 0);
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

  v10 = CFRetain(path);
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