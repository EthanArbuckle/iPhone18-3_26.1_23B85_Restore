@interface GQDRoot
- (BOOL)addObject:(id)a3 withOwnedXmlUid:(const char *)a4;
- (BOOL)appBundleCanProcessCurrentDocVersion;
- (BOOL)includeStyleWithIdentifier:(const char *)a3 parentIdentifier:(const char *)a4 uid:(const char *)a5;
- (BOOL)readDocumentVersion:(_xmlTextReader *)a3 isTooNew:(BOOL *)a4;
- (Class)classForName:(const char *)a3;
- (GQDRoot)init;
- (__CFURL)appBundleResourcesUrl:(__CFURL *)a3;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileExists:(BOOL *)a5 fileUrl:(__CFURL *)a6;
- (const)addIdentifiedObject:(id)a3 fromCurrentNode:(_xmlTextReader *)a4;
- (id)colorForMissingAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4;
- (id)uuid;
- (void)dealloc;
- (void)forgetAboutObject:(id)a3 withXmlUid:(const char *)a4;
@end

@implementation GQDRoot

- (GQDRoot)init
{
  v4.receiver = self;
  v4.super_class = GQDRoot;
  v2 = [(GQDRoot *)&v4 init];
  if (v2)
  {
    v2->mUidToObjectMap = CFDictionaryCreateMutable(0, 0, &unk_85100, &kCFTypeDictionaryValueCallBacks);
    v2->mAppBundleResourcesUrlInitialized = 0;
    v2->mIsOldAssetNameMapInitialized = 0;
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mUidToObjectMap);
  mAppBundleResourceToColorMap = self->mAppBundleResourceToColorMap;
  if (mAppBundleResourceToColorMap)
  {
    CFRelease(mAppBundleResourceToColorMap);
  }

  mAppBundleResourcesUrl = self->mAppBundleResourcesUrl;
  if (mAppBundleResourcesUrl)
  {
    CFRelease(mAppBundleResourcesUrl);
  }

  v5.receiver = self;
  v5.super_class = GQDRoot;
  [(GQDRoot *)&v5 dealloc];
}

- (Class)classForName:(const char *)a3
{
  v4 = objc_opt_class();

  return [GQDClassNameMap classForName:a3 inRootType:v4];
}

- (BOOL)addObject:(id)a3 withOwnedXmlUid:(const char *)a4
{
  v7 = CFDictionaryContainsKey(self->mUidToObjectMap, a4);
  if (!v7)
  {
    CFDictionaryAddValue(self->mUidToObjectMap, a4, a3);
  }

  return v7 == 0;
}

- (id)uuid
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);

  return v3;
}

- (const)addIdentifiedObject:(id)a3 fromCurrentNode:(_xmlTextReader *)a4
{
  AttributeNs = xmlTextReaderGetAttributeNs(a4, off_9D3D8, *(qword_A35E0 + 16));
  if (AttributeNs)
  {
    do
    {
      v7 = [(GQDRoot *)self addObject:a3 withOwnedXmlUid:AttributeNs];
      if (v7)
      {
        break;
      }

      v8 = v7;
      AttributeNs = xmlStrdup([-[GQDRoot uuid](self "uuid")]);
      v9 = v8 ^ 1;
      if (!AttributeNs)
      {
        v9 = 0;
      }
    }

    while ((v9 & 1) != 0);
  }

  return AttributeNs;
}

- (void)forgetAboutObject:(id)a3 withXmlUid:(const char *)a4
{
  if ([(GQDRoot *)self objectWithXmlUid:a4]== a3)
  {
    mUidToObjectMap = self->mUidToObjectMap;

    CFDictionaryRemoveValue(mUidToObjectMap, a4);
  }
}

- (BOOL)includeStyleWithIdentifier:(const char *)a3 parentIdentifier:(const char *)a4 uid:(const char *)a5
{
  v7 = qword_A40B8;
  if (!qword_A40B8)
  {
    v7 = CFSetCreate(0, &qword_A40C0, 0, &unk_85130);
    qword_A40B8 = v7;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  return !v8 || CFSetContainsValue(v7, v8) == 0;
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 fileExists:(BOOL *)a5 fileUrl:(__CFURL *)a6
{
  v7 = [(GQDRoot *)self createUrlToAppBundleResource:a3 processorBundle:a4 fileUrl:a6];
  v8 = v7;
  if (a5)
  {
    if (v7)
    {
      v9 = [GQUCommon fileExistsAtUrl:v7];
    }

    else
    {
      v9 = 0;
    }

    *a5 = v9;
  }

  return v8;
}

- (id)colorForMissingAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4
{
  if (!self->mAppBundleColorMapLoaded)
  {
    [(GQDRoot *)self loadAppBundleResourceToColorMap:a3];
  }

  result = self->mAppBundleResourceToColorMap;
  if (result)
  {

    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

- (__CFURL)appBundleResourcesUrl:(__CFURL *)a3
{
  if (a3 && !self->mAppBundleResourcesUrlInitialized)
  {
    [(GQDRoot *)self initializeAppBundleResourcesUrl:?];
  }

  return self->mAppBundleResourcesUrl;
}

- (BOOL)readDocumentVersion:(_xmlTextReader *)a3 isTooNew:(BOOL *)a4
{
  self->mDocVersion = 0;
  p_mDocVersion = &self->mDocVersion;
  v7 = [objc_opt_class() appNamespace];
  v8 = sub_425CC(a3, v7, "version", p_mDocVersion);
  v9 = 0;
  if (v8)
  {
    v9 = sub_43054(*p_mDocVersion);
  }

  *p_mDocVersion = v9;
  if (a4)
  {
    v13 = 0;
    v10 = [objc_opt_class() appNamespace];
    if (sub_425CC(a3, v10, "compatible-version", &v13))
    {
      v11 = sub_43054(v13);
    }

    else
    {
      v11 = *p_mDocVersion;
    }

    *a4 = v11 > 0x156C1C3A00;
    if (v11 > 0x156C1C3A00)
    {
      return 0;
    }

    v9 = *p_mDocVersion;
  }

  if (v9 >= 0x104C533C00)
  {
    return v9 > 0x10C3F48F97;
  }

  else
  {
    return v9 > 0xE6FCB5C77;
  }
}

- (BOOL)appBundleCanProcessCurrentDocVersion
{
  v3 = [(GQDRoot *)self documentReleaseVersion];
  mAppBundleVersion = self->mAppBundleVersion;
  switch(mAppBundleVersion)
  {
    case 6:
      v5 = qword_9CAA8;
      return v3 <= v5;
    case 8:
      v5 = qword_9CAA0;
      return v3 <= v5;
    case 9:
      v5 = qword_9CA98;
      return v3 <= v5;
  }

  return 0;
}

@end