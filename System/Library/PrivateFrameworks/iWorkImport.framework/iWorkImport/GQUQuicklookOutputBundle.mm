@interface GQUQuicklookOutputBundle
- (BOOL)setData:(__CFData *)a3 mimeType:(__CFString *)a4 forNamedResource:(__CFString *)a5;
- (BOOL)setDataForMainHtmlResource:(__CFData *)a3;
- (GQUQuicklookOutputBundle)initWithUriScheme:(__CFString *)a3;
- (void)dealloc;
- (void)setDocumentSize:(CGSize)a3;
@end

@implementation GQUQuicklookOutputBundle

- (GQUQuicklookOutputBundle)initWithUriScheme:(__CFString *)a3
{
  v8.receiver = self;
  v8.super_class = GQUQuicklookOutputBundle;
  v4 = [(GQUQuicklookOutputBundle *)&v8 init];
  if (v4)
  {
    v4->mAttachments = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->mQuicklookProperties = Mutable;
    CFDictionarySetValue(Mutable, kQLPreviewPropertyAttachmentsKey, v4->mAttachments);
    CFDictionarySetValue(v4->mQuicklookProperties, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
    CFDictionarySetValue(v4->mQuicklookProperties, kQLPreviewPropertyAllowJavascriptKey, kCFBooleanTrue);
    v4->mUriScheme = a3;
    CFRetain(a3);
    v6 = CFUUIDCreate(0);
    v4->mUuidStr = CFUUIDCreateString(0, v6);
    CFRelease(v6);
  }

  return v4;
}

- (void)dealloc
{
  mQuicklookProperties = self->mQuicklookProperties;
  if (mQuicklookProperties)
  {
    CFRelease(mQuicklookProperties);
  }

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

  mUriScheme = self->mUriScheme;
  if (mUriScheme)
  {
    CFRelease(mUriScheme);
  }

  mUuidStr = self->mUuidStr;
  if (mUuidStr)
  {
    CFRelease(mUuidStr);
  }

  v8.receiver = self;
  v8.super_class = GQUQuicklookOutputBundle;
  [(GQUQuicklookOutputBundle *)&v8 dealloc];
}

- (BOOL)setDataForMainHtmlResource:(__CFData *)a3
{
  self->mMainHtmlData = a3;
  CFRetain(a3);
  return 1;
}

- (BOOL)setData:(__CFData *)a3 mimeType:(__CFString *)a4 forNamedResource:(__CFString *)a5
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = Mutable;
  if (a4)
  {
    CFDictionarySetValue(Mutable, kQLPreviewPropertyMIMETypeKey, a4);
  }

  CFDictionarySetValue(v10, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
  CFDictionarySetValue(v10, kQLPreviewPropertyAttachmentDataKey, a3);
  v11 = CFStringCreateWithFormat(0, 0, @"%@-%@", self->mUuidStr, a5);
  CFDictionarySetValue(self->mAttachments, v11, v10);
  CFRelease(v11);
  CFRelease(v10);
  return 1;
}

- (void)setDocumentSize:(CGSize)a3
{
  height = a3.height;
  valuePtr = a3.width;
  v5 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionarySetValue(self->mQuicklookProperties, kQLPreviewPropertyWidthKey, v5);
  CFRelease(v5);
  v7 = height;
  v6 = CFNumberCreate(0, kCFNumberCGFloatType, &v7);
  CFDictionarySetValue(self->mQuicklookProperties, kQLPreviewPropertyHeightKey, v6);
  CFRelease(v6);
}

@end