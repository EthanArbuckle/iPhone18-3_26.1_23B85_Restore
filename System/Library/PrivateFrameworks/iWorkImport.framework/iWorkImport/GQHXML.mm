@interface GQHXML
- (GQHXML)initWithFilename:(__CFString *)a3 documentSize:(CGSize *)a4 outputBundle:(id)a5 useExternalCss:(BOOL)a6;
- (__CFData)createProgressiveeCSSwithStyleTags:(unsigned __int8)a3;
- (id)initEmptyWithFilename:(__CFString *)a3 useExternalCss:(BOOL)a4;
- (void)addContent:(__CFString *)a3;
- (void)addMetaTagWithTextFormat:(__CFString *)a3;
- (void)addStyleClassLast:(__CFString *)a3;
- (void)addViewportMetaTagForDocumentSize:(CGSize)a3;
- (void)addViewportMetaTagForDocumentSize:(CGSize)a3 maximumScale:(float)a4;
- (void)dealloc;
- (void)setAttribute:(const char *)a3 cfStringValue:(__CFString *)a4;
@end

@implementation GQHXML

- (id)initEmptyWithFilename:(__CFString *)a3 useExternalCss:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = GQHXML;
  v6 = [(GQHXML *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->mFilename = a3;
    CFRetain(a3);
    v8 = off_80030;
    v7->mUseExternalCss = v4;
    if (!v4)
    {
      v8 = off_80010;
    }

    v7->mOutput = [objc_alloc(*v8) initEmpty];
    v7->isProgressive = 0;
  }

  return v7;
}

- (GQHXML)initWithFilename:(__CFString *)a3 documentSize:(CGSize *)a4 outputBundle:(id)a5 useExternalCss:(BOOL)a6
{
  v6 = a6;
  v17.receiver = self;
  v17.super_class = GQHXML;
  v10 = [(GQHXML *)&v17 init];
  if (v10)
  {
    objc_opt_class();
    v10->isProgressive = objc_opt_isKindOfClass() & 1;
    v10->mFilename = a3;
    CFRetain(a3);
    v11 = off_80030;
    v10->mUseExternalCss = v6;
    if (!v6)
    {
      v11 = off_80010;
    }

    v10->mOutput = [objc_alloc(*v11) initWithHead];
    v18.length = CFStringGetLength(v10->mFilename);
    v18.location = 0;
    if (CFStringFindWithOptions(v10->mFilename, @".", v18, 4uLL, &result))
    {
      v19.length = result.location;
      v19.location = 0;
      v12 = CFStringCreateWithSubstring(0, v10->mFilename, v19);
      v10->mCssFilename = CFStringCreateWithFormat(0, 0, @"%@.css", v12);
      CFRelease(v12);
      mCssFilename = v10->mCssFilename;
    }

    else
    {
      mCssFilename = CFStringCreateWithFormat(0, 0, @"%@.css", v10->mFilename);
      v10->mCssFilename = mCssFilename;
    }

    v14 = [a5 createUriForResource:mCssFilename];
    [(GQHXML *)v10 startElement:"link"];
    [(GQHXML *)v10 setAttribute:"rel" value:"stylesheet"];
    [(GQHXML *)v10 setAttribute:"type" value:"text/css"];
    [(GQHXML *)v10 setAttribute:"href" cfStringValue:v14];
    [(GQHXML *)v10 endElement];
    CFRelease(v14);
    v10->mCss = CFStringCreateMutable(0, 0);
    v10->mLastCss = CFStringCreateMutable(0, 0);
    if (a4)
    {
      [(GQHXML *)v10 addViewportMetaTagForDocumentSize:a4->width, a4->height];
    }
  }

  return v10;
}

- (void)dealloc
{
  mCss = self->mCss;
  if (mCss)
  {
    CFRelease(mCss);
    self->mCss = 0;
  }

  mLastCss = self->mLastCss;
  if (mLastCss)
  {
    CFRelease(mLastCss);
    self->mLastCss = 0;
  }

  mFilename = self->mFilename;
  if (mFilename)
  {
    CFRelease(mFilename);
    self->mFilename = 0;
  }

  mCssFilename = self->mCssFilename;
  if (mCssFilename)
  {
    CFRelease(mCssFilename);
    self->mCssFilename = 0;
  }

  self->mOutput = 0;
  v7.receiver = self;
  v7.super_class = GQHXML;
  [(GQHXML *)&v7 dealloc];
}

- (void)setAttribute:(const char *)a3 cfStringValue:(__CFString *)a4
{
  if (a4)
  {
    CStringPtr = CFStringGetCStringPtr(a4, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(a4);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CFStringGetCString(a4, v10, MaximumSizeForEncoding + 1, 0x8000100u);
      [(GQHXMLOutput *)self->mOutput setAttribute:a3 value:v10];

      free(v10);
      return;
    }
  }

  else
  {
    CStringPtr = "";
  }

  mOutput = self->mOutput;

  [(GQHXMLOutput *)mOutput setAttribute:a3 value:CStringPtr];
}

- (void)addContent:(__CFString *)a3
{
  CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
  if (CStringPtr)
  {
    v6 = CStringPtr;
    mOutput = self->mOutput;

    [(GQHXMLOutput *)mOutput addXmlCharContent:v6];
  }

  else if (a3)
  {
    Length = CFStringGetLength(a3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(a3, v10, MaximumSizeForEncoding + 1, 0x8000100u);
    [(GQHXMLOutput *)self->mOutput addXmlCharContent:v10];

    free(v10);
  }
}

- (void)addStyleClassLast:(__CFString *)a3
{
  mLastCss = self->mLastCss;
  if (mLastCss)
  {
    CFStringAppend(mLastCss, a3);
  }
}

- (void)addMetaTagWithTextFormat:(__CFString *)a3
{
  [(GQHXML *)self startElement:"meta"];
  [(GQHXML *)self setAttribute:"http-equiv" value:"Content-type"];
  v5 = CFStringCreateWithFormat(0, 0, @"text/html; charset=%@", a3);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v5];
  CFRelease(v5);

  [(GQHXML *)self endElementWithExpectedName:"meta"];
}

- (void)addViewportMetaTagForDocumentSize:(CGSize)a3
{
  width = a3.width;
  [(GQHXML *)self startElement:"meta", a3.width, a3.height];
  [(GQHXML *)self setAttribute:"name" value:"viewport"];
  v5 = CFStringCreateWithFormat(0, 0, @"width=%f", *&width);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v5];
  CFRelease(v5);

  [(GQHXML *)self endElement];
}

- (void)addViewportMetaTagForDocumentSize:(CGSize)a3 maximumScale:(float)a4
{
  width = a3.width;
  [(GQHXML *)self startElement:"meta", a3.width, a3.height];
  [(GQHXML *)self setAttribute:"name" value:"viewport"];
  v7 = CFStringCreateWithFormat(0, 0, @"width=%f, maximum-scale=%f", *&width, a4);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v7];
  CFRelease(v7);

  [(GQHXML *)self endElement];
}

- (__CFData)createProgressiveeCSSwithStyleTags:(unsigned __int8)a3
{
  v3 = a3;
  CFStringAppend(self->mCss, self->mLastCss);
  CFRelease(self->mLastCss);
  if (v3)
  {
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(Mutable, @"<style type=text/css>");
    CFStringAppend(Mutable, self->mCss);
    CFStringAppend(Mutable, @"</style>");
  }

  else
  {
    Mutable = self->mCss;
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(0, Mutable, 0x8000100u, 0x30u);
  CFRelease(self->mCss);
  self->mCss = CFStringCreateMutable(0, 0);
  self->mLastCss = CFStringCreateMutable(0, 0);
  if (v3)
  {
    CFRelease(Mutable);
  }

  return ExternalRepresentation;
}

@end