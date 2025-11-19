@interface GQSDocument
- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 archive:(id)a5 outputBundle:(id)a6 fileURL:(__CFURL *)a7;
- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 bundleUrl:(__CFURL *)a5 archive:(id)a6 outputBundle:(id)a7;
- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 outputBundle:(id)a5 fileURL:(__CFURL *)a6;
- (__CFString)uriForBundleResource:(__CFString *)a3 ofType:(__CFString *)a4;
- (__CFURL)createUriToDocumentBundleResource:(__CFString *)a3;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 skipCachingPDFAndNoExtentionResources:(BOOL *)a5;
- (id)peekObject;
- (id)popRetainedObject;
- (id)topObjectOfClass:(Class)a3;
- (void)addWrapPoint:(id)a3;
- (void)clearWrapPoints;
- (void)dealloc;
- (void)setGeneratorState:(id)a3;
- (void)setStylesheet:(id)a3;
- (void)setTableState:(id)a3;
@end

@implementation GQSDocument

- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 outputBundle:(id)a5 fileURL:(__CFURL *)a6
{
  v12.receiver = self;
  v12.super_class = GQSDocument;
  v9 = [(GQSDocument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->mProcessor = a4;
    v9->mRoot = a3;
    v10->mOutputBundle = a5;
    v10->mObjectStack = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    operator new();
  }

  return 0;
}

- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 bundleUrl:(__CFURL *)a5 archive:(id)a6 outputBundle:(id)a7
{
  v9 = [(GQSDocument *)self initWithRoot:a3 processor:a4 outputBundle:a7 fileURL:a5];
  v10 = v9;
  if (v9)
  {
    if (a5)
    {
      v9->mBundleUrl = a5;
      CFRetain(a5);
    }

    if (a6)
    {
      v10->mArchive = a6;
    }
  }

  return v10;
}

- (GQSDocument)initWithRoot:(id)a3 processor:(id)a4 archive:(id)a5 outputBundle:(id)a6 fileURL:(__CFURL *)a7
{
  v8 = [(GQSDocument *)self initWithRoot:a3 processor:a4 outputBundle:a6 fileURL:a7];
  if (v8)
  {
    v8->mArchive = a5;
  }

  return v8;
}

- (void)dealloc
{
  mBundleUrl = self->mBundleUrl;
  if (mBundleUrl)
  {
    CFRelease(mBundleUrl);
  }

  CFRelease(self->mObjectStack);
  mWrapPoints = self->mWrapPoints;
  if (mWrapPoints)
  {
    sub_97AC(self->mWrapPoints, mWrapPoints[1]);
    operator delete();
  }

  mBundleResourceUriMap = self->mBundleResourceUriMap;
  if (mBundleResourceUriMap)
  {
    CFRelease(mBundleResourceUriMap);
  }

  mFilename = self->mFilename;
  if (mFilename)
  {
    CFRelease(mFilename);
  }

  mDocumentUrl = self->mDocumentUrl;
  if (mDocumentUrl)
  {
    CFRelease(mDocumentUrl);
  }

  v8.receiver = self;
  v8.super_class = GQSDocument;
  [(GQSDocument *)&v8 dealloc];
}

- (__CFURL)createUrlToAppBundleResource:(__CFString *)a3 processorBundle:(__CFBundle *)a4 skipCachingPDFAndNoExtentionResources:(BOOL *)a5
{
  v16 = 0;
  v7 = [(GQDRoot *)self->mRoot createUrlToAppBundleResource:a3 processorBundle:a4 fileExists:&v16 fileUrl:self->mDocumentUrl];
  v8 = v7;
  if (v16 == 1)
  {
    if (a5)
    {
      v9 = CFURLCopyPathExtension(v7);
      if (v9)
      {
        v10 = v9;
        *a5 = CFStringCompare(v9, @"pdf", 1uLL) == kCFCompareEqualTo;
        CFRelease(v10);
        if (*a5)
        {
          return v8;
        }
      }

      else
      {
        *a5 = 0;
      }
    }

    PathComponent = CFURLCopyLastPathComponent(v8);
    v12 = [[NSMutableData alloc] initWithContentsOfURL:v8];
    if (v12)
    {
      v13 = v12;
      [(GQUOutputBundle *)self->mOutputBundle setData:v12 mimeType:0 forNamedResource:PathComponent];
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v14 = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:PathComponent];
    v8 = CFURLCreateWithString(0, v14, 0);
    if (v14)
    {
      CFRelease(v14);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }
  }

  return v8;
}

- (__CFURL)createUriToDocumentBundleResource:(__CFString *)a3
{
  mBundleUrl = self->mBundleUrl;
  mArchive = self->mArchive;
  if (!mBundleUrl)
  {
    if (!mArchive)
    {
      return 0;
    }

LABEL_9:
    v15 = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:a3];
    v16 = CFURLCreateWithString(0, v15, 0);
    CFRelease(v15);
    v17 = [(SFUZipArchive *)self->mArchive entryWithName:a3];
    if (v17)
    {
      if ([(GQPProcessor *)self->mProcessor cryptoKey])
      {
        v18 = [(SFUZipArchive *)self->mArchive entryWithName:a3];
        v19 = [[SFUFileDataRepresentation alloc] initWithInputStream:objc_msgSend(v18 cryptoKey:"inputStream") dataLength:{-[GQPProcessor cryptoKey](self->mProcessor, "cryptoKey"), objc_msgSend(v18, "dataLength")}];
        v20 = objc_alloc_init(NSMutableData);
        [v19 readIntoData:v20];
        [(GQUOutputBundle *)self->mOutputBundle setData:v20 mimeType:0 forNamedResource:a3];
      }

      else
      {
        -[GQUOutputBundle setData:mimeType:forNamedResource:](self->mOutputBundle, "setData:mimeType:forNamedResource:", [v17 data], 0, a3);
      }
    }

    return v16;
  }

  if (mArchive)
  {
    goto LABEL_9;
  }

  v7 = CFURLCreateCopyAppendingPathComponent(0, mBundleUrl, a3, 0);
  v8 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
  CFRelease(v7);
  v9 = [[NSMutableData alloc] initWithContentsOfFile:v8];
  if ([(GQPProcessor *)self->mProcessor cryptoKey])
  {
    v10 = [v9 length];

    v11 = [[SFUFileDataRepresentation alloc] initWithPath:v8 cryptoKey:-[GQPProcessor cryptoKey](self->mProcessor dataLength:{"cryptoKey"), v10}];
    v9 = objc_alloc_init(NSMutableData);
    [v11 readIntoData:v9];
  }

  CFRelease(v8);
  if (v9)
  {
    [(GQUOutputBundle *)self->mOutputBundle setData:v9 mimeType:0 forNamedResource:a3];
  }

  v12 = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:a3];
  v13 = CFURLCreateWithString(0, v12, 0);
  CFRelease(v12);
  return v13;
}

- (id)peekObject
{
  Count = CFArrayGetCount(self->mObjectStack);
  if (!Count)
  {
    return 0;
  }

  v4 = (Count - 1);
  mObjectStack = self->mObjectStack;

  return CFArrayGetValueAtIndex(mObjectStack, v4);
}

- (id)topObjectOfClass:(Class)a3
{
  v4 = CFArrayGetCount(self->mObjectStack) - 1;
  while (v4 != -1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mObjectStack, v4--);
    if (objc_opt_isKindOfClass())
    {
      return ValueAtIndex;
    }
  }

  return 0;
}

- (id)popRetainedObject
{
  Count = CFArrayGetCount(self->mObjectStack);
  if (!Count)
  {
    return 0;
  }

  v4 = (Count - 1);
  ValueAtIndex = CFArrayGetValueAtIndex(self->mObjectStack, v4);
  v6 = ValueAtIndex;
  CFArrayRemoveValueAtIndex(self->mObjectStack, v4);
  return ValueAtIndex;
}

- (void)setTableState:(id)a3
{
  v5 = a3;

  self->mTableState = a3;
}

- (void)setGeneratorState:(id)a3
{
  v5 = a3;

  self->mGeneratorState = a3;
}

- (void)addWrapPoint:(id)a3
{
  mWrapPoints = self->mWrapPoints;
  v5 = a3;
  v4 = a3;
  sub_9828(mWrapPoints, &v5);
}

- (void)clearWrapPoints
{
  mWrapPoints = self->mWrapPoints;
  sub_97AC(mWrapPoints, *(mWrapPoints + 1));
  *mWrapPoints = mWrapPoints + 8;
  *(mWrapPoints + 2) = 0;
  *(mWrapPoints + 1) = 0;
}

- (__CFString)uriForBundleResource:(__CFString *)a3 ofType:(__CFString *)a4
{
  value = 0;
  v7 = CFStringCreateWithFormat(0, 0, @"%@.%@", a3, a4);
  if (!CFDictionaryGetValueIfPresent(self->mBundleResourceUriMap, v7, &value))
  {
    v8 = [[NSBundle bundleForClass:?]ofType:"pathForResource:ofType:", a3, a4];
    if (v8)
    {
      v9 = v8;
      v10 = CFUUIDCreate(0);
      v11 = CFUUIDCreateString(0, v10);
      CFRelease(v10);
      v12 = CFStringCreateWithFormat(0, 0, @"bundle-%@-%@", v11, v7);
      CFRelease(v11);
      value = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:v12];
      CFDictionaryAddValue(self->mBundleResourceUriMap, v7, value);
      CFRelease(value);
      v13 = [[NSData alloc] initWithContentsOfFile:v9];
      [(GQUOutputBundle *)self->mOutputBundle setData:v13 mimeType:&stru_85620 forNamedResource:v12];

      CFRelease(v12);
    }
  }

  CFRelease(v7);
  return value;
}

- (void)setStylesheet:(id)a3
{
  v5 = a3;

  self->mStylesheet = a3;
}

@end