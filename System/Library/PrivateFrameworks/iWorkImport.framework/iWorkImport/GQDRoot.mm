@interface GQDRoot
- (BOOL)addObject:(id)object withOwnedXmlUid:(const char *)uid;
- (BOOL)appBundleCanProcessCurrentDocVersion;
- (BOOL)includeStyleWithIdentifier:(const char *)identifier parentIdentifier:(const char *)parentIdentifier uid:(const char *)uid;
- (BOOL)readDocumentVersion:(_xmlTextReader *)version isTooNew:(BOOL *)new;
- (Class)classForName:(const char *)name;
- (GQDRoot)init;
- (__CFURL)appBundleResourcesUrl:(__CFURL *)url;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileExists:(BOOL *)exists fileUrl:(__CFURL *)url;
- (const)addIdentifiedObject:(id)object fromCurrentNode:(_xmlTextReader *)node;
- (id)colorForMissingAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle;
- (id)uuid;
- (void)dealloc;
- (void)forgetAboutObject:(id)object withXmlUid:(const char *)uid;
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

- (Class)classForName:(const char *)name
{
  v4 = objc_opt_class();

  return [GQDClassNameMap classForName:name inRootType:v4];
}

- (BOOL)addObject:(id)object withOwnedXmlUid:(const char *)uid
{
  v7 = CFDictionaryContainsKey(self->mUidToObjectMap, uid);
  if (!v7)
  {
    CFDictionaryAddValue(self->mUidToObjectMap, uid, object);
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

- (const)addIdentifiedObject:(id)object fromCurrentNode:(_xmlTextReader *)node
{
  AttributeNs = xmlTextReaderGetAttributeNs(node, off_9D3D8, *(qword_A35E0 + 16));
  if (AttributeNs)
  {
    do
    {
      v7 = [(GQDRoot *)self addObject:object withOwnedXmlUid:AttributeNs];
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

- (void)forgetAboutObject:(id)object withXmlUid:(const char *)uid
{
  if ([(GQDRoot *)self objectWithXmlUid:uid]== object)
  {
    mUidToObjectMap = self->mUidToObjectMap;

    CFDictionaryRemoveValue(mUidToObjectMap, uid);
  }
}

- (BOOL)includeStyleWithIdentifier:(const char *)identifier parentIdentifier:(const char *)parentIdentifier uid:(const char *)uid
{
  v7 = qword_A40B8;
  if (!qword_A40B8)
  {
    v7 = CFSetCreate(0, &qword_A40C0, 0, &unk_85130);
    qword_A40B8 = v7;
  }

  if (identifier)
  {
    parentIdentifierCopy = identifier;
  }

  else
  {
    parentIdentifierCopy = parentIdentifier;
  }

  return !parentIdentifierCopy || CFSetContainsValue(v7, parentIdentifierCopy) == 0;
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle fileExists:(BOOL *)exists fileUrl:(__CFURL *)url
{
  v7 = [(GQDRoot *)self createUrlToAppBundleResource:resource processorBundle:bundle fileUrl:url];
  v8 = v7;
  if (exists)
  {
    if (v7)
    {
      v9 = [GQUCommon fileExistsAtUrl:v7];
    }

    else
    {
      v9 = 0;
    }

    *exists = v9;
  }

  return v8;
}

- (id)colorForMissingAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle
{
  if (!self->mAppBundleColorMapLoaded)
  {
    [(GQDRoot *)self loadAppBundleResourceToColorMap:resource];
  }

  result = self->mAppBundleResourceToColorMap;
  if (result)
  {

    return CFDictionaryGetValue(result, resource);
  }

  return result;
}

- (__CFURL)appBundleResourcesUrl:(__CFURL *)url
{
  if (url && !self->mAppBundleResourcesUrlInitialized)
  {
    [(GQDRoot *)self initializeAppBundleResourcesUrl:?];
  }

  return self->mAppBundleResourcesUrl;
}

- (BOOL)readDocumentVersion:(_xmlTextReader *)version isTooNew:(BOOL *)new
{
  self->mDocVersion = 0;
  p_mDocVersion = &self->mDocVersion;
  appNamespace = [objc_opt_class() appNamespace];
  v8 = sub_425CC(version, appNamespace, "version", p_mDocVersion);
  v9 = 0;
  if (v8)
  {
    v9 = sub_43054(*p_mDocVersion);
  }

  *p_mDocVersion = v9;
  if (new)
  {
    v13 = 0;
    appNamespace2 = [objc_opt_class() appNamespace];
    if (sub_425CC(version, appNamespace2, "compatible-version", &v13))
    {
      v11 = sub_43054(v13);
    }

    else
    {
      v11 = *p_mDocVersion;
    }

    *new = v11 > 0x156C1C3A00;
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
  documentReleaseVersion = [(GQDRoot *)self documentReleaseVersion];
  mAppBundleVersion = self->mAppBundleVersion;
  switch(mAppBundleVersion)
  {
    case 6:
      v5 = qword_9CAA8;
      return documentReleaseVersion <= v5;
    case 8:
      v5 = qword_9CAA0;
      return documentReleaseVersion <= v5;
    case 9:
      v5 = qword_9CA98;
      return documentReleaseVersion <= v5;
  }

  return 0;
}

@end