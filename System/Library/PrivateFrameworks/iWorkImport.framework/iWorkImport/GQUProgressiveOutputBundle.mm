@interface GQUProgressiveOutputBundle
- (BOOL)appendData:(__CFData *)data mimeType:(__CFString *)type resourceName:(__CFString *)name;
- (BOOL)setData:(__CFData *)data mimeType:(__CFString *)type forNamedResource:(__CFString *)resource;
- (GQUProgressiveOutputBundle)initWithHandler:(id)handler;
- (__CFString)createUriForResource:(__CFString *)resource;
- (__CFURL)getAttachmentURL:(__CFString *)l mimeType:(__CFString *)type;
- (void)closeAttachment:(__CFString *)attachment;
- (void)dealloc;
- (void)setDocumentSize:(CGSize)size;
- (void)startProgressiveData;
@end

@implementation GQUProgressiveOutputBundle

- (GQUProgressiveOutputBundle)initWithHandler:(id)handler
{
  if (handler)
  {
    v8.receiver = self;
    v8.super_class = GQUProgressiveOutputBundle;
    v4 = [(GQUProgressiveOutputBundle *)&v8 init];
    if (v4)
    {
      v4->mHelper = handler;
      v4->mAttachmentsURLs = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4->mQuickLookProperties = Mutable;
      CFDictionarySetValue(Mutable, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
      CFDictionarySetValue(v4->mQuickLookProperties, kQLPreviewPropertyMIMETypeKey, @"text/html");
      CFDictionarySetValue(v4->mQuickLookProperties, @"CanHavePages", kCFBooleanTrue);
      v4->mUriScheme = @"cid";
      v6 = CFUUIDCreate(0);
      v4->mUuidStr = CFUUIDCreateString(0, v6);
      CFRelease(v6);
      v4->mPreviewStarted = 0;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [(GQUProgressiveHelper *)self->mHelper closeAttachment:0];

  mAttachmentsURLs = self->mAttachmentsURLs;
  if (mAttachmentsURLs)
  {
    CFRelease(mAttachmentsURLs);
  }

  mQuickLookProperties = self->mQuickLookProperties;
  if (mQuickLookProperties)
  {
    CFRelease(mQuickLookProperties);
  }

  mUuidStr = self->mUuidStr;
  if (mUuidStr)
  {
    CFRelease(mUuidStr);
  }

  mUriScheme = self->mUriScheme;
  if (mUriScheme)
  {
    CFRelease(mUriScheme);
  }

  mComputedAttachments = self->mComputedAttachments;
  if (mComputedAttachments)
  {
    CFRelease(mComputedAttachments);
  }

  v8.receiver = self;
  v8.super_class = GQUProgressiveOutputBundle;
  [(GQUProgressiveOutputBundle *)&v8 dealloc];
}

- (__CFString)createUriForResource:(__CFString *)resource
{
  v3 = CFURLGetString([(GQUProgressiveOutputBundle *)self getAttachmentURL:resource mimeType:0]);

  return CFRetain(v3);
}

- (BOOL)appendData:(__CFData *)data mimeType:(__CFString *)type resourceName:(__CFString *)name
{
  if (self->mPreviewStarted)
  {
    [(GQUProgressiveHelper *)self->mHelper appendDataToAttachment:[(GQUProgressiveOutputBundle *)self getAttachmentURL:name mimeType:type] chunk:data];
  }

  return 1;
}

- (BOOL)setData:(__CFData *)data mimeType:(__CFString *)type forNamedResource:(__CFString *)resource
{
  if (self->mPreviewStarted)
  {
    v9 = [(GQUProgressiveOutputBundle *)self getAttachmentURL:resource mimeType:type];
    [(GQUProgressiveHelper *)self->mHelper appendDataToAttachment:v9 chunk:data];
    [(GQUProgressiveHelper *)self->mHelper closeAttachment:v9];
  }

  else
  {
    if (!self->mComputedAttachments)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      self->mComputedAttachments = Mutable;
      CFDictionarySetValue(self->mQuickLookProperties, kQLPreviewPropertyAttachmentsKey, Mutable);
    }

    v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = v11;
    if (type)
    {
      CFDictionarySetValue(v11, kQLPreviewPropertyMIMETypeKey, type);
    }

    CFDictionarySetValue(v12, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
    CFDictionarySetValue(v12, kQLPreviewPropertyAttachmentDataKey, data);
    v13 = CFStringCreateWithFormat(0, 0, @"%@-%@", self->mUuidStr, resource);
    CFDictionarySetValue(self->mComputedAttachments, v13, v12);
    CFRelease(v13);
    CFRelease(v12);
  }

  return 1;
}

- (void)setDocumentSize:(CGSize)size
{
  height = size.height;
  valuePtr = size.width;
  v5 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  v9 = height;
  v6 = CFNumberCreate(0, kCFNumberCGFloatType, &v9);
  HIDWORD(v7) = HIDWORD(v9);
  HIDWORD(v8) = HIDWORD(valuePtr);
  *&v7 = v9;
  *&v8 = valuePtr;
  [(GQUProgressiveHelper *)self->mHelper setPreviewHeight:v7 andWidth:v8];
  CFDictionarySetValue(self->mQuickLookProperties, kQLPreviewPropertyWidthKey, v5);
  CFDictionarySetValue(self->mQuickLookProperties, kQLPreviewPropertyHeightKey, v6);
  CFRelease(v6);
  CFRelease(v5);
}

- (void)startProgressiveData
{
  self->mPreviewStarted = 1;
  [(GQUProgressiveHelper *)self->mHelper startDataWithOptions:self->mQuickLookProperties];
  mComputedAttachments = self->mComputedAttachments;
  if (mComputedAttachments)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(__CFDictionary *)mComputedAttachments allKeys];
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v16 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          Value = CFDictionaryGetValue(self->mComputedAttachments, v7);
          v9 = CFDictionaryGetValue(Value, kQLPreviewPropertyMIMETypeKey);
          v10 = CFDictionaryGetValue(Value, kQLPreviewPropertyTextEncodingNameKey);
          v11 = CFDictionaryGetValue(Value, kQLPreviewPropertyAttachmentDataKey);
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v13 = Mutable;
          if (v9)
          {
            CFDictionarySetValue(Mutable, kQLPreviewPropertyMIMETypeKey, v9);
          }

          CFDictionarySetValue(v13, kQLPreviewPropertyTextEncodingNameKey, v10);
          v14 = -[GQUProgressiveOutputBundle getAttachmentURL:mimeType:](self, "getAttachmentURL:mimeType:", [v7 substringFromIndex:37], v9);
          [(GQUProgressiveHelper *)self->mHelper appendDataToAttachment:v14 chunk:v11];
          [(GQUProgressiveHelper *)self->mHelper closeAttachment:v14];
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    CFRelease(self->mComputedAttachments);
    self->mComputedAttachments = 0;
  }
}

- (void)closeAttachment:(__CFString *)attachment
{
  v4 = [(GQUProgressiveOutputBundle *)self getAttachmentURL:attachment mimeType:0];
  mHelper = self->mHelper;

  [(GQUProgressiveHelper *)mHelper closeAttachment:v4];
}

- (__CFURL)getAttachmentURL:(__CFString *)l mimeType:(__CFString *)type
{
  Value = CFDictionaryGetValue(self->mAttachmentsURLs, l);
  if (!Value)
  {
    if (CFStringCompare(l, @"index.html", 0))
    {
      Copy = CFStringCreateWithFormat(0, 0, @"%@-%@", self->mUuidStr, l);
    }

    else
    {
      Copy = CFStringCreateCopy(0, l);
    }

    v9 = Copy;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v11 = Mutable;
    if (type)
    {
      CFDictionarySetValue(Mutable, kQLPreviewPropertyMIMETypeKey, type);
    }

    CFDictionarySetValue(v11, kQLPreviewPropertyTextEncodingNameKey, @"UTF-8");
    Value = [(GQUProgressiveHelper *)self->mHelper createAttachment:v9 options:v11];
    CFDictionarySetValue(self->mAttachmentsURLs, l, Value);
    CFRelease(Value);
    CFRelease(v11);
    CFRelease(v9);
  }

  return Value;
}

@end