@interface GQHXML
- (GQHXML)initWithFilename:(__CFString *)filename documentSize:(CGSize *)size outputBundle:(id)bundle useExternalCss:(BOOL)css;
- (__CFData)createProgressiveeCSSwithStyleTags:(unsigned __int8)tags;
- (id)initEmptyWithFilename:(__CFString *)filename useExternalCss:(BOOL)css;
- (void)addContent:(__CFString *)content;
- (void)addMetaTagWithTextFormat:(__CFString *)format;
- (void)addStyleClassLast:(__CFString *)last;
- (void)addViewportMetaTagForDocumentSize:(CGSize)size;
- (void)addViewportMetaTagForDocumentSize:(CGSize)size maximumScale:(float)scale;
- (void)dealloc;
- (void)setAttribute:(const char *)attribute cfStringValue:(__CFString *)value;
@end

@implementation GQHXML

- (id)initEmptyWithFilename:(__CFString *)filename useExternalCss:(BOOL)css
{
  cssCopy = css;
  v10.receiver = self;
  v10.super_class = GQHXML;
  v6 = [(GQHXML *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->mFilename = filename;
    CFRetain(filename);
    v8 = off_80030;
    v7->mUseExternalCss = cssCopy;
    if (!cssCopy)
    {
      v8 = off_80010;
    }

    v7->mOutput = [objc_alloc(*v8) initEmpty];
    v7->isProgressive = 0;
  }

  return v7;
}

- (GQHXML)initWithFilename:(__CFString *)filename documentSize:(CGSize *)size outputBundle:(id)bundle useExternalCss:(BOOL)css
{
  cssCopy = css;
  v17.receiver = self;
  v17.super_class = GQHXML;
  v10 = [(GQHXML *)&v17 init];
  if (v10)
  {
    objc_opt_class();
    v10->isProgressive = objc_opt_isKindOfClass() & 1;
    v10->mFilename = filename;
    CFRetain(filename);
    v11 = off_80030;
    v10->mUseExternalCss = cssCopy;
    if (!cssCopy)
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

    v14 = [bundle createUriForResource:mCssFilename];
    [(GQHXML *)v10 startElement:"link"];
    [(GQHXML *)v10 setAttribute:"rel" value:"stylesheet"];
    [(GQHXML *)v10 setAttribute:"type" value:"text/css"];
    [(GQHXML *)v10 setAttribute:"href" cfStringValue:v14];
    [(GQHXML *)v10 endElement];
    CFRelease(v14);
    v10->mCss = CFStringCreateMutable(0, 0);
    v10->mLastCss = CFStringCreateMutable(0, 0);
    if (size)
    {
      [(GQHXML *)v10 addViewportMetaTagForDocumentSize:size->width, size->height];
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

- (void)setAttribute:(const char *)attribute cfStringValue:(__CFString *)value
{
  if (value)
  {
    CStringPtr = CFStringGetCStringPtr(value, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(value);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CFStringGetCString(value, v10, MaximumSizeForEncoding + 1, 0x8000100u);
      [(GQHXMLOutput *)self->mOutput setAttribute:attribute value:v10];

      free(v10);
      return;
    }
  }

  else
  {
    CStringPtr = "";
  }

  mOutput = self->mOutput;

  [(GQHXMLOutput *)mOutput setAttribute:attribute value:CStringPtr];
}

- (void)addContent:(__CFString *)content
{
  CStringPtr = CFStringGetCStringPtr(content, 0x8000100u);
  if (CStringPtr)
  {
    v6 = CStringPtr;
    mOutput = self->mOutput;

    [(GQHXMLOutput *)mOutput addXmlCharContent:v6];
  }

  else if (content)
  {
    Length = CFStringGetLength(content);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(content, v10, MaximumSizeForEncoding + 1, 0x8000100u);
    [(GQHXMLOutput *)self->mOutput addXmlCharContent:v10];

    free(v10);
  }
}

- (void)addStyleClassLast:(__CFString *)last
{
  mLastCss = self->mLastCss;
  if (mLastCss)
  {
    CFStringAppend(mLastCss, last);
  }
}

- (void)addMetaTagWithTextFormat:(__CFString *)format
{
  [(GQHXML *)self startElement:"meta"];
  [(GQHXML *)self setAttribute:"http-equiv" value:"Content-type"];
  v5 = CFStringCreateWithFormat(0, 0, @"text/html; charset=%@", format);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v5];
  CFRelease(v5);

  [(GQHXML *)self endElementWithExpectedName:"meta"];
}

- (void)addViewportMetaTagForDocumentSize:(CGSize)size
{
  width = size.width;
  [(GQHXML *)self startElement:"meta", size.width, size.height];
  [(GQHXML *)self setAttribute:"name" value:"viewport"];
  v5 = CFStringCreateWithFormat(0, 0, @"width=%f", *&width);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v5];
  CFRelease(v5);

  [(GQHXML *)self endElement];
}

- (void)addViewportMetaTagForDocumentSize:(CGSize)size maximumScale:(float)scale
{
  width = size.width;
  [(GQHXML *)self startElement:"meta", size.width, size.height];
  [(GQHXML *)self setAttribute:"name" value:"viewport"];
  v7 = CFStringCreateWithFormat(0, 0, @"width=%f, maximum-scale=%f", *&width, scale);
  [(GQHXML *)self setAttribute:"content" cfStringValue:v7];
  CFRelease(v7);

  [(GQHXML *)self endElement];
}

- (__CFData)createProgressiveeCSSwithStyleTags:(unsigned __int8)tags
{
  tagsCopy = tags;
  CFStringAppend(self->mCss, self->mLastCss);
  CFRelease(self->mLastCss);
  if (tagsCopy)
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
  if (tagsCopy)
  {
    CFRelease(Mutable);
  }

  return ExternalRepresentation;
}

@end