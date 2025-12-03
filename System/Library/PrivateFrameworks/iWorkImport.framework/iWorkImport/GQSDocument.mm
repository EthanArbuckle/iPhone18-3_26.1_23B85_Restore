@interface GQSDocument
- (GQSDocument)initWithRoot:(id)root processor:(id)processor archive:(id)archive outputBundle:(id)bundle fileURL:(__CFURL *)l;
- (GQSDocument)initWithRoot:(id)root processor:(id)processor bundleUrl:(__CFURL *)url archive:(id)archive outputBundle:(id)bundle;
- (GQSDocument)initWithRoot:(id)root processor:(id)processor outputBundle:(id)bundle fileURL:(__CFURL *)l;
- (__CFString)uriForBundleResource:(__CFString *)resource ofType:(__CFString *)type;
- (__CFURL)createUriToDocumentBundleResource:(__CFString *)resource;
- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle skipCachingPDFAndNoExtentionResources:(BOOL *)resources;
- (id)peekObject;
- (id)popRetainedObject;
- (id)topObjectOfClass:(Class)class;
- (void)addWrapPoint:(id)point;
- (void)clearWrapPoints;
- (void)dealloc;
- (void)setGeneratorState:(id)state;
- (void)setStylesheet:(id)stylesheet;
- (void)setTableState:(id)state;
@end

@implementation GQSDocument

- (GQSDocument)initWithRoot:(id)root processor:(id)processor outputBundle:(id)bundle fileURL:(__CFURL *)l
{
  v12.receiver = self;
  v12.super_class = GQSDocument;
  v9 = [(GQSDocument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->mProcessor = processor;
    v9->mRoot = root;
    v10->mOutputBundle = bundle;
    v10->mObjectStack = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    operator new();
  }

  return 0;
}

- (GQSDocument)initWithRoot:(id)root processor:(id)processor bundleUrl:(__CFURL *)url archive:(id)archive outputBundle:(id)bundle
{
  v9 = [(GQSDocument *)self initWithRoot:root processor:processor outputBundle:bundle fileURL:url];
  v10 = v9;
  if (v9)
  {
    if (url)
    {
      v9->mBundleUrl = url;
      CFRetain(url);
    }

    if (archive)
    {
      v10->mArchive = archive;
    }
  }

  return v10;
}

- (GQSDocument)initWithRoot:(id)root processor:(id)processor archive:(id)archive outputBundle:(id)bundle fileURL:(__CFURL *)l
{
  v8 = [(GQSDocument *)self initWithRoot:root processor:processor outputBundle:bundle fileURL:l];
  if (v8)
  {
    v8->mArchive = archive;
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

- (__CFURL)createUrlToAppBundleResource:(__CFString *)resource processorBundle:(__CFBundle *)bundle skipCachingPDFAndNoExtentionResources:(BOOL *)resources
{
  v16 = 0;
  v7 = [(GQDRoot *)self->mRoot createUrlToAppBundleResource:resource processorBundle:bundle fileExists:&v16 fileUrl:self->mDocumentUrl];
  v8 = v7;
  if (v16 == 1)
  {
    if (resources)
    {
      v9 = CFURLCopyPathExtension(v7);
      if (v9)
      {
        v10 = v9;
        *resources = CFStringCompare(v9, @"pdf", 1uLL) == kCFCompareEqualTo;
        CFRelease(v10);
        if (*resources)
        {
          return v8;
        }
      }

      else
      {
        *resources = 0;
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

- (__CFURL)createUriToDocumentBundleResource:(__CFString *)resource
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
    v15 = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:resource];
    v16 = CFURLCreateWithString(0, v15, 0);
    CFRelease(v15);
    v17 = [(SFUZipArchive *)self->mArchive entryWithName:resource];
    if (v17)
    {
      if ([(GQPProcessor *)self->mProcessor cryptoKey])
      {
        v18 = [(SFUZipArchive *)self->mArchive entryWithName:resource];
        v19 = [[SFUFileDataRepresentation alloc] initWithInputStream:objc_msgSend(v18 cryptoKey:"inputStream") dataLength:{-[GQPProcessor cryptoKey](self->mProcessor, "cryptoKey"), objc_msgSend(v18, "dataLength")}];
        v20 = objc_alloc_init(NSMutableData);
        [v19 readIntoData:v20];
        [(GQUOutputBundle *)self->mOutputBundle setData:v20 mimeType:0 forNamedResource:resource];
      }

      else
      {
        -[GQUOutputBundle setData:mimeType:forNamedResource:](self->mOutputBundle, "setData:mimeType:forNamedResource:", [v17 data], 0, resource);
      }
    }

    return v16;
  }

  if (mArchive)
  {
    goto LABEL_9;
  }

  v7 = CFURLCreateCopyAppendingPathComponent(0, mBundleUrl, resource, 0);
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
    [(GQUOutputBundle *)self->mOutputBundle setData:v9 mimeType:0 forNamedResource:resource];
  }

  v12 = [(GQUOutputBundle *)self->mOutputBundle createUriForResource:resource];
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

- (id)topObjectOfClass:(Class)class
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

- (void)setTableState:(id)state
{
  stateCopy = state;

  self->mTableState = state;
}

- (void)setGeneratorState:(id)state
{
  stateCopy = state;

  self->mGeneratorState = state;
}

- (void)addWrapPoint:(id)point
{
  mWrapPoints = self->mWrapPoints;
  pointCopy = point;
  pointCopy2 = point;
  sub_9828(mWrapPoints, &pointCopy);
}

- (void)clearWrapPoints
{
  mWrapPoints = self->mWrapPoints;
  sub_97AC(mWrapPoints, *(mWrapPoints + 1));
  *mWrapPoints = mWrapPoints + 8;
  *(mWrapPoints + 2) = 0;
  *(mWrapPoints + 1) = 0;
}

- (__CFString)uriForBundleResource:(__CFString *)resource ofType:(__CFString *)type
{
  value = 0;
  v7 = CFStringCreateWithFormat(0, 0, @"%@.%@", resource, type);
  if (!CFDictionaryGetValueIfPresent(self->mBundleResourceUriMap, v7, &value))
  {
    type = [[NSBundle bundleForClass:?]ofType:"pathForResource:ofType:", resource, type];
    if (type)
    {
      v9 = type;
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

- (void)setStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;

  self->mStylesheet = stylesheet;
}

@end