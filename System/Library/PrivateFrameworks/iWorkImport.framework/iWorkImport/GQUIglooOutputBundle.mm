@interface GQUIglooOutputBundle
- (BOOL)setData:(__CFData *)data mimeType:(__CFString *)type forNamedResource:(__CFString *)resource;
- (BOOL)setDataForMainHtmlResource:(__CFData *)resource;
- (GQUIglooOutputBundle)init;
- (__CFDictionary)createOutputDictionary;
- (__CFString)createUriForResource:(__CFString *)resource;
- (void)dealloc;
- (void)setUriPrefix:(__CFString *)prefix;
@end

@implementation GQUIglooOutputBundle

- (GQUIglooOutputBundle)init
{
  v5.receiver = self;
  v5.super_class = GQUIglooOutputBundle;
  v2 = [(GQUIglooOutputBundle *)&v5 init];
  if (v2)
  {
    v2->mAttachments = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = CFUUIDCreate(0);
    v2->mUuidStr = CFUUIDCreateString(0, v3);
    CFRelease(v3);
  }

  return v2;
}

- (void)dealloc
{
  mAttachments = self->mAttachments;
  if (mAttachments)
  {
    CFRelease(mAttachments);
  }

  mMainHtmlData = self->mMainHtmlData;
  if (mMainHtmlData)
  {
    CFRelease(mMainHtmlData);
  }

  mUriPrefix = self->mUriPrefix;
  if (mUriPrefix)
  {
    CFRelease(mUriPrefix);
  }

  mUuidStr = self->mUuidStr;
  if (mUuidStr)
  {
    CFRelease(mUuidStr);
  }

  v7.receiver = self;
  v7.super_class = GQUIglooOutputBundle;
  [(GQUIglooOutputBundle *)&v7 dealloc];
}

- (void)setUriPrefix:(__CFString *)prefix
{
  CFRetain(prefix);
  mUriPrefix = self->mUriPrefix;
  if (mUriPrefix)
  {
    CFRelease(mUriPrefix);
  }

  self->mUriPrefix = prefix;
}

- (__CFString)createUriForResource:(__CFString *)resource
{
  if (qword_A4150 != -1)
  {
    sub_57DB0();
  }

  mUriPrefix = &stru_85620;
  if (self->mUriPrefix)
  {
    mUriPrefix = self->mUriPrefix;
  }

  resource = [NSString stringWithFormat:@"%@%@-%@", mUriPrefix, self->mUuidStr, resource];
  v7 = [(NSString *)resource stringByAddingPercentEncodingWithAllowedCharacters:qword_A4148];

  return v7;
}

- (BOOL)setDataForMainHtmlResource:(__CFData *)resource
{
  self->mMainHtmlData = resource;
  CFRetain(resource);
  return 1;
}

- (BOOL)setData:(__CFData *)data mimeType:(__CFString *)type forNamedResource:(__CFString *)resource
{
  v7 = CFStringCreateWithFormat(0, 0, @"%@-%@", type, self->mUuidStr, resource);
  CFDictionarySetValue(self->mAttachments, v7, data);
  CFRelease(v7);
  return 1;
}

- (__CFDictionary)createOutputDictionary
{
  if (!self->mMainHtmlData)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, off_9CBA8, self->mMainHtmlData);
  mAttachments = self->mAttachments;
  if (mAttachments)
  {
    CFDictionarySetValue(Mutable, off_9CBB0, mAttachments);
  }

  return Mutable;
}

@end