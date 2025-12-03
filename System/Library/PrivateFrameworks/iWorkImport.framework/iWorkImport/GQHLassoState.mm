@interface GQHLassoState
- (BOOL)finishMainHtml;
- (BOOL)writeIndexPageWithIFrame:(id)frame;
- (CGPoint)maxCanvasPoint;
- (GQHLassoState)initWithState:(id)state;
- (__CFString)cssZOrderClassForDrawableUid:(const char *)uid;
- (__CFString)makeInlineStyle:(__CFString *)style;
- (__CFString)writeTabsJS;
- (int)endSheet;
- (unsigned)currentDrawableZOrder;
- (void)addCachedStyle:(__CFString *)style;
- (void)addStyle:(__CFString *)style className:(__CFString *)name srcStyle:(id)srcStyle;
- (void)beginNewSheet:(const char *)sheet processorState:(id)state;
- (void)cacheAnchorForIndexPage:(char *)page;
- (void)dealloc;
- (void)writeAnchorInNavigationPage:(char *)page;
- (void)writeIndexPageWithDocumentSize:(CGSize)size;
- (void)writeNavigationPage:(id)page;
@end

@implementation GQHLassoState

- (GQHLassoState)initWithState:(id)state
{
  v8.receiver = self;
  v8.super_class = GQHLassoState;
  v4 = [(GQHState *)&v8 initWithState:?];
  v5 = v4;
  if (v4)
  {
    v4->mMaxCanvasPoint = NSZeroPoint;
    v4->mSheetCssUriList = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5->mSheetCssLastUriList = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5->mSheetFilenameList = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5->mSheetUriList = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5->mSheetOneCss = CFStringCreateMutable(0, 0);
    v5->mSheetOneLastCSS = CFStringCreateMutable(0, 0);
    if ([state isGeneratingThumbnail])
    {
      v5->mIsProgressiveMode = 0;
LABEL_5:
      [(GQHLassoState *)v5 writeNavigationPage:state];
      return v5;
    }

    [state outputBundle];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5->mIsProgressiveMode = isKindOfClass & 1;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return v5;
}

- (void)dealloc
{
  mCssUri = self->mCssUri;
  if (mCssUri)
  {
    CFRelease(mCssUri);
  }

  mCurrentSheetFilename = self->mCurrentSheetFilename;
  if (mCurrentSheetFilename)
  {
    CFRelease(mCurrentSheetFilename);
  }

  mCurrentSheetUri = self->mCurrentSheetUri;
  if (mCurrentSheetUri)
  {
    CFRelease(mCurrentSheetUri);
  }

  mDrawableUidToCssZOrderClassMap = self->mDrawableUidToCssZOrderClassMap;
  if (mDrawableUidToCssZOrderClassMap)
  {
    CFRelease(mDrawableUidToCssZOrderClassMap);
  }

  mSheetCssUriList = self->mSheetCssUriList;
  if (mSheetCssUriList)
  {
    CFRelease(mSheetCssUriList);
  }

  mSheetCssFilename = self->mSheetCssFilename;
  if (mSheetCssFilename)
  {
    CFRelease(mSheetCssFilename);
  }

  mFirstWorkspaceName = self->mFirstWorkspaceName;
  if (mFirstWorkspaceName)
  {
    free(mFirstWorkspaceName);
  }

  mSheetOneCss = self->mSheetOneCss;
  if (mSheetOneCss)
  {
    CFRelease(mSheetOneCss);
  }

  mSheetOneLastCSS = self->mSheetOneLastCSS;
  if (mSheetOneLastCSS)
  {
    CFRelease(mSheetOneLastCSS);
  }

  mSheetFilenameList = self->mSheetFilenameList;
  if (mSheetFilenameList)
  {
    CFRelease(mSheetFilenameList);
  }

  mSheetUriList = self->mSheetUriList;
  if (mSheetUriList)
  {
    CFRelease(mSheetUriList);
  }

  mSheetCssLastUriList = self->mSheetCssLastUriList;
  if (mSheetCssLastUriList)
  {
    CFRelease(mSheetCssLastUriList);
  }

  mSheetCssLastFilename = self->mSheetCssLastFilename;
  if (mSheetCssLastFilename)
  {
    CFRelease(mSheetCssLastFilename);
  }

  mIndex = self->mIndex;
  if (mIndex)
  {
  }

  v17.receiver = self;
  v17.super_class = GQHLassoState;
  [(GQHState *)&v17 dealloc];
}

- (void)beginNewSheet:(const char *)sheet processorState:(id)state
{
  ++self->mSheetCount;
  self->mTableCount = 0;
  self->mMaxCanvasPoint = NSZeroPoint;
  mCurrentSheetFilename = self->mCurrentSheetFilename;
  if (mCurrentSheetFilename)
  {
    CFRelease(mCurrentSheetFilename);
  }

  mCurrentSheetUri = self->mCurrentSheetUri;
  if (mCurrentSheetUri)
  {
    CFRelease(mCurrentSheetUri);
  }

  self->mCurrentSheetFilename = CFStringCreateWithFormat(kCFAllocatorDefault, 0, off_9D1C8, self->mSheetCount);
  self->mCurrentSheetUri = [-[GQSDocument outputBundle](self->super.mProcessorState "outputBundle")];
  if (self->mIsProgressiveMode)
  {
    mSheetOneCss = self->mSheetOneCss;
    if (mSheetOneCss)
    {
      CFRelease(mSheetOneCss);
    }

    mSheetOneLastCSS = self->mSheetOneLastCSS;
    if (mSheetOneLastCSS)
    {
      CFRelease(mSheetOneLastCSS);
    }

    self->mSheetOneCss = CFStringCreateMutable(0, 0);
    self->mSheetOneLastCSS = CFStringCreateMutable(0, 0);
    [objc_msgSend(state "outputBundle")];
  }

  v11 = [[GQHXML alloc] initEmptyWithFilename:self->mCurrentSheetFilename useExternalCss:1];
  self->super.mHtmlDoc = v11;
  [(GQHXML *)v11 startElement:"head"];
  if (self->mIsProgressiveMode)
  {
    mSheetCssFilename = self->mSheetCssFilename;
    if (mSheetCssFilename)
    {
      CFRelease(mSheetCssFilename);
    }

    mSheetCssLastFilename = self->mSheetCssLastFilename;
    if (mSheetCssLastFilename)
    {
      CFRelease(mSheetCssLastFilename);
    }

    self->mSheetCssFilename = CFStringCreateWithFormat(kCFAllocatorDefault, 0, off_9D1D0, self->mSheetCount);
    self->mSheetCssLastFilename = CFStringCreateWithFormat(kCFAllocatorDefault, 0, off_9D1D8, self->mSheetCount);
    v14 = [objc_msgSend(state "outputBundle")];
    v15 = [objc_msgSend(state "outputBundle")];
    CFArrayAppendValue(self->mSheetCssUriList, v14);
    mSheetCssUriList = self->mSheetCssUriList;
    v21.length = CFArrayGetCount(mSheetCssUriList);
    v21.location = 0;
    CFArrayApplyFunction(mSheetCssUriList, v21, sub_28248, self->super.mHtmlDoc);
    CFArrayAppendValue(self->mSheetCssLastUriList, v15);
    mSheetCssLastUriList = self->mSheetCssLastUriList;
    v22.length = CFArrayGetCount(mSheetCssLastUriList);
    v22.location = 0;
    CFArrayApplyFunction(mSheetCssLastUriList, v22, sub_28248, self->super.mHtmlDoc);
    CFRelease(v14);
    CFRelease(v15);
  }

  else
  {
    [(GQHXML *)self->super.mHtmlDoc startElement:"link"];
    [(GQHXML *)self->super.mHtmlDoc setAttribute:"rel" value:"stylesheet"];
    [(GQHXML *)self->super.mHtmlDoc setAttribute:"type" value:"text/css"];
    [(GQHXML *)self->super.mHtmlDoc setAttribute:"href" cfStringValue:self->mCssUri];
    [(GQHXML *)self->super.mHtmlDoc endElement];
  }

  [(GQHXML *)self->super.mHtmlDoc addMetaTagWithTextFormat:@"UTF-8"];
  [-[GQHState shapeContext](self "shapeContext")];
  [(GQHXML *)self->super.mHtmlDoc endElement];
  [(GQHXML *)self->super.mHtmlDoc startElement:"body"];
  [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
  [(GQHXML *)self->super.mHtmlDoc setAttribute:"id" value:"sheetBody"];
  [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
  v18 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v18 addAttribute:off_9CEF0 pxValue:10];
  [(GQHStyle *)v18 addAttribute:off_9CF18 value:off_9D040];
  [(GQHStyle *)v18 setStyleOnCurrentNode:self];

  if (self->mIsProgressiveMode)
  {
    mSheetCount = self->mSheetCount;
    [(GQHLassoState *)self cacheAnchorForIndexPage:sheet];
    if (mSheetCount == 1)
    {
      self->mFirstWorkspaceName = xmlStrdup(sheet);
    }
  }

  else
  {
    [(GQHLassoState *)self writeAnchorInNavigationPage:sheet];
  }

  mDrawableUidToCssZOrderClassMap = self->mDrawableUidToCssZOrderClassMap;
  if (mDrawableUidToCssZOrderClassMap)
  {
    CFRelease(mDrawableUidToCssZOrderClassMap);
  }

  self->mDrawableUidToCssZOrderClassMap = CFDictionaryCreateMutable(0, 0, &unk_85100, &kCFTypeDictionaryValueCallBacks);
  self->mCurrentDrawableZOrder = 0;
}

- (void)writeAnchorInNavigationPage:(char *)page
{
  [(GQHXML *)self->mNavigation startElement:"a"];
  v5 = CFStringCreateWithFormat(0, 0, @"javascript:gotoSheet('%@'); return false;", self->mCurrentSheetUri);
  [(GQHXML *)self->mNavigation setAttribute:"onclick" cfStringValue:v5];
  CFRelease(v5);
  [(GQHXML *)self->mNavigation setAttribute:"href" value:"#"];
  [(GQHXML *)self->mNavigation setAttribute:"title" value:page];
  [(GQHXML *)self->mNavigation setAttribute:"class" value:"navpane-sheet"];
  [(GQHXML *)self->mNavigation startElement:"div"];
  [(GQHXML *)self->mNavigation setAttribute:"id" cfStringValue:self->mCurrentSheetUri];
  if (self->mSheetCount == 1)
  {
    [(GQHXML *)self->mNavigation setAttribute:"class" value:"navpane-activesheet"];
  }

  [(GQHXML *)self->mNavigation startElement:"img"];
  [(GQHXML *)self->mNavigation setAttribute:"src" cfStringValue:[(GQSDocument *)self->super.mProcessorState uriForBundleResource:@"sl-icon_sheet" ofType:@"tiff"]];
  [(GQHXML *)self->mNavigation setAttribute:"width" cfStringValue:@"35"];
  [(GQHXML *)self->mNavigation endElement];
  [(GQHXML *)self->mNavigation addCharRef:"&ensp;"];
  [(GQHXML *)self->mNavigation addXmlCharContent:page];
  [(GQHXML *)self->mNavigation endElement];
  mNavigation = self->mNavigation;

  [(GQHXML *)mNavigation endElement];
}

- (void)cacheAnchorForIndexPage:(char *)page
{
  v4 = CFStringCreateWithCString(0, page, 0x8000100u);
  CFArrayAppendValue(self->mSheetUriList, self->mCurrentSheetUri);
  CFArrayAppendValue(self->mSheetFilenameList, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (int)endSheet
{
  [(GQHXML *)self->super.mHtmlDoc endElement];
  [(GQHXML *)self->super.mHtmlDoc endElement];
  [(GQHXML *)self->super.mHtmlDoc endElement];
  [(GQHXML *)self->super.mHtmlDoc endElement];
  if (self->mIsProgressiveMode)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, self->mSheetOneCss, 0x8000100u, 0x30u);
    v4 = CFStringCreateExternalRepresentation(0, self->mSheetOneLastCSS, 0x8000100u, 0x30u);
    CFRelease(self->mSheetOneCss);
    self->mSheetOneCss = 0;
    CFRelease(self->mSheetOneLastCSS);
    self->mSheetOneLastCSS = 0;
    if (ExternalRepresentation)
    {
      [-[GQSDocument outputBundle](self->super.mProcessorState "outputBundle")];
      CFRelease(ExternalRepresentation);
    }

    if (v4)
    {
      [-[GQSDocument outputBundle](self->super.mProcessorState "outputBundle")];
      CFRelease(v4);
    }
  }

  [(GQHXML *)self->super.mHtmlDoc writeToOutputBundle:[(GQSDocument *)self->super.mProcessorState outputBundle] isThumbnail:[(GQSDocument *)self->super.mProcessorState isGeneratingThumbnail]];

  self->super.mHtmlDoc = 0;
  return self->mSheetCount;
}

- (void)addStyle:(__CFString *)style className:(__CFString *)name srcStyle:(id)srcStyle
{
  if (srcStyle)
  {
    if ([(GQHState *)self className:srcStyle])
    {
      return;
    }

    CFDictionarySetValue(self->super.mStyleNameMap, srcStyle, name);
  }

  if (self->mIsProgressiveMode)
  {
    v9 = 304;
  }

  else
  {
    v9 = 184;
  }

  v10 = *(&self->super.super.isa + v9);
  if (v10)
  {

    [v10 addStyleClass:{style, name}];
  }

  else
  {
    mSheetOneCss = self->mSheetOneCss;

    CFStringAppend(mSheetOneCss, style);
  }
}

- (__CFString)makeInlineStyle:(__CFString *)style
{
  if (self->mIsProgressiveMode)
  {
    v5 = 304;
  }

  else
  {
    v5 = 184;
  }

  if (*(&self->super.super.isa + v5))
  {

    return [GQHState makeInlineStyle:"makeInlineStyle:inDocument:" inDocument:?];
  }

  else
  {
    Value = CFDictionaryGetValue(self->super.mInlineStyles, style);
    if (Value)
    {
      return Value;
    }

    v8 = (self->super.mInlineStyleIndex + 1);
    self->super.mInlineStyleIndex = v8;
    v7 = CFStringCreateWithFormat(0, 0, @"i%d", v8);
    CFDictionarySetValue(self->super.mInlineStyles, style, v7);
    CFRelease(v7);
    v9 = CFStringCreateWithFormat(0, 0, @".%@ { %@ }\n", v7, style);
    CFStringAppend(self->mSheetOneLastCSS, v9);
    CFRelease(v9);
    return v7;
  }
}

- (void)addCachedStyle:(__CFString *)style
{
  if (self->mIsProgressiveMode)
  {
    v3 = 304;
  }

  else
  {
    v3 = 184;
  }

  v4 = *(&self->super.super.isa + v3);
  if (v4)
  {
    [v4 addStyleClass:style];
  }

  else
  {
    CFStringAppend(self->mSheetOneCss, style);
  }
}

- (BOOL)finishMainHtml
{
  [(GQHXML *)self->mNavigation endElement];
  [(GQHXML *)self->mNavigation endElement];
  if ([(GQHXML *)self->mNavigation isProgressive])
  {
    createProgressiveHtml = [(GQHXML *)self->mNavigation createProgressiveHtml];
    outputBundle = [(GQSDocument *)self->super.mProcessorState outputBundle];
    [outputBundle appendData:createProgressiveHtml mimeType:@"text/html" resourceName:off_9D1E0];
    CFRelease(createProgressiveHtml);
  }

  v5 = [(GQHXML *)self->mNavigation writeToOutputBundle:[(GQSDocument *)self->super.mProcessorState outputBundle] isThumbnail:[(GQSDocument *)self->super.mProcessorState isGeneratingThumbnail]];
  if (v5 && [(GQHXML *)self->mNavigation isProgressive])
  {
    outputBundle2 = [(GQSDocument *)self->super.mProcessorState outputBundle];
    [outputBundle2 closeAttachment:off_9D1E0];
  }

  return v5;
}

- (CGPoint)maxCanvasPoint
{
  x = self->mMaxCanvasPoint.x;
  y = self->mMaxCanvasPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (__CFString)cssZOrderClassForDrawableUid:(const char *)uid
{
  Value = CFDictionaryGetValue(self->mDrawableUidToCssZOrderClassMap, uid);
  if (!Value)
  {
    v6 = self->mZOrderedDrawableCount + 1;
    self->mZOrderedDrawableCount = v6;
    Value = CFStringCreateWithFormat(0, 0, @"drawableZOrder_%u", v6);
    mDrawableUidToCssZOrderClassMap = self->mDrawableUidToCssZOrderClassMap;
    v8 = xmlStrdup(uid);
    CFDictionarySetValue(mDrawableUidToCssZOrderClassMap, v8, Value);
    CFRelease(Value);
  }

  return Value;
}

- (unsigned)currentDrawableZOrder
{
  v2 = self->mCurrentDrawableZOrder + 1;
  self->mCurrentDrawableZOrder = v2;
  return v2;
}

- (void)writeIndexPageWithDocumentSize:(CGSize)size
{
  v9 = [[GQHXML alloc] initEmptyWithFilename:@"index.html" useExternalCss:1];
  [v9 startElement:"head"];
  [v9 startElement:"link"];
  [v9 setAttribute:"rel" value:"stylesheet"];
  [v9 setAttribute:"type" value:"text/css"];
  [v9 setAttribute:"href" cfStringValue:self->mCssUri];
  [v9 endElement];
  filename = [(GQSDocument *)self->super.mProcessorState filename];
  if (filename)
  {
    v5 = filename;
    [v9 startElement:"title"];
    [v9 addContent:v5];
    [v9 endElement];
  }

  [v9 endElement];
  [v9 startElement:"frameset"];
  v6 = CFStringCreateWithFormat(0, 0, @"%d, *", 170);
  [v9 setAttribute:"cols" cfStringValue:v6];
  CFRelease(v6);
  [v9 startElement:"frame"];
  outputBundle = [(GQSDocument *)self->super.mProcessorState outputBundle];
  v8 = [outputBundle createUriForResource:off_9D1E0];
  [v9 setAttribute:"src" cfStringValue:v8];
  CFRelease(v8);
  [v9 setAttribute:"name" value:"navPane"];
  [v9 endElement];
  [v9 startElement:"frame"];
  [v9 setAttribute:"src" cfStringValue:self->mCurrentSheetUri];
  [v9 setAttribute:"name" value:"sheetPane"];
  [v9 endElement];
  [v9 endElement];
  [v9 writeToOutputBundle:-[GQSDocument outputBundle](self->super.mProcessorState isThumbnail:{"outputBundle"), -[GQSDocument isGeneratingThumbnail](self->super.mProcessorState, "isGeneratingThumbnail")}];
}

- (BOOL)writeIndexPageWithIFrame:(id)frame
{
  v4 = [[GQHXML alloc] initEmptyWithFilename:@"index.html" useExternalCss:1];
  self->mIndex = v4;
  [(GQHXML *)v4 startElement:"head"];
  [(GQHXML *)self->mIndex startElement:"link"];
  [(GQHXML *)self->mIndex setAttribute:"rel" value:"stylesheet"];
  [(GQHXML *)self->mIndex setAttribute:"type" value:"text/css"];
  mCssUri = self->mCssUri;
  [GQHXML setAttribute:"setAttribute:cfStringValue:" cfStringValue:?];
  [(GQHXML *)self->mIndex endElement];
  filename = [(GQSDocument *)self->super.mProcessorState filename];
  if (filename)
  {
    v7 = filename;
    [(GQHXML *)self->mIndex startElement:"title"];
    [(GQHXML *)self->mIndex addContent:v7];
    [(GQHXML *)self->mIndex endElement];
  }

  [(GQHXML *)self->mIndex addMetaTagWithTextFormat:@"UTF-8"];
  [(GQHLassoState *)self writeTabsJS];
  [(GQHXML *)self->mIndex startElement:"link"];
  [(GQHXML *)self->mIndex setAttribute:"rel" value:"stylesheet"];
  [(GQHXML *)self->mIndex setAttribute:"type" value:"text/css"];
  [(GQHXML *)self->mIndex startElement:"style"];
  [(GQHLassoState *)self maxCanvasPoint];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 900;
  }

  v10 = CFStringCreateWithFormat(0, 0, @"body {margin: 0;}\n.navpane-sheet {display:inline-block; padding-left:%dpx; width:%d; height:%d; font-size:20; font-family:Helvetica; color:black; text-decoration:none; line-height: 1; white-space: nowrap; overflow:hidden; text-overflow:ellipsis; background-color: RGB(210,216,226); cursor: pointer;}\n.navpane-sheet:hover {text-overflow:visible;}\n.navpane-sheet.selected {background-color:RGB(156,172,198);}\nimg {vertical-align: middle;}\n", 4, 170, 30);
  [(GQHXML *)self->mIndex addContent:v10];
  CFRelease(v10);
  [(GQHXML *)self->mIndex endElement];
  [(GQHXML *)self->mIndex endElement];
  [(GQHXML *)self->mIndex endElement];
  [(GQHXML *)self->mIndex startElement:"body"];
  [(GQHXML *)self->mIndex startElement:"div"];
  [(GQHXML *)self->mIndex setAttribute:"id" cfStringValue:@"wrapper"];
  Count = CFArrayGetCount(self->mSheetFilenameList);
  v12 = Count;
  v13 = v9 / 170.0;
  v14 = ceilf(v13);
  if (v13 > v13)
  {
    v13 = v14;
    v9 = (v14 * 170.0);
  }

  v15 = CFStringCreateWithFormat(0, 0, @"position:absolute; top:%d; left:0; right:0;", 30 * vcvtps_s32_f32(Count / v13) + 2);
  [(GQHXML *)self->mIndex setAttribute:"style" cfStringValue:v15];
  CFRelease(v15);
  [(GQHXML *)self->mIndex startElement:"iframe"];
  [(GQHXML *)self->mIndex setAttribute:"id" cfStringValue:@"SheetFrame"];
  [(GQHXML *)self->mIndex setAttribute:"src" cfStringValue:CFArrayGetValueAtIndex(self->mSheetUriList, 0)];
  [(GQHXML *)self->mIndex setAttribute:"style" cfStringValue:@"border:0; width:100%; height:100%;"];
  [(GQHXML *)self->mIndex setAttribute:"name" value:"sheetPane"];
  [(GQHXML *)self->mIndex endElement];
  [(GQHXML *)self->mIndex endElement];
  if (v12 >= 1)
  {
    v33 = v9;
    if (CFArrayGetCount(self->mSheetUriList) < 1)
    {
      v17 = 0;
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->mSheetFilenameList, 0);
        v20 = CFArrayGetValueAtIndex(self->mSheetUriList, 0);
        [(GQHXML *)self->mIndex startElement:"div"];
        v21 = CFStringCreateWithFormat(0, 0, @"javascript:SelectSheet(%d, '%@');", v18, v20);
        [(GQHXML *)self->mIndex setAttribute:"onclick" cfStringValue:v21];
        CFRelease(v21);
        v22 = CFStringCreateWithFormat(0, 0, @"Tab%d", v18);
        [(GQHXML *)self->mIndex setAttribute:"id" cfStringValue:v22];
        CFRelease(v22);
        [(GQHXML *)self->mIndex setAttribute:"href" value:"#"];
        [(GQHXML *)self->mIndex setAttribute:"title" cfStringValue:ValueAtIndex];
        if (v18 == 1)
        {
          v23 = "navpane-sheet selected";
        }

        else
        {
          v23 = "navpane-sheet";
        }

        [(GQHXML *)self->mIndex setAttribute:"class" value:v23];
        v24 = CFStringCreateWithFormat(0, 0, @"position:absolute; overflow:hidden; top:%d; left:%d;", v17, v16);
        [(GQHXML *)self->mIndex setAttribute:"style" cfStringValue:v24];
        CFRelease(v24);
        [(GQHXML *)self->mIndex startElement:"span"];
        [(GQHXML *)self->mIndex startElement:"img"];
        [(GQHXML *)self->mIndex setAttribute:"src" cfStringValue:[(GQSDocument *)self->super.mProcessorState uriForBundleResource:@"sl-icon_sheet" ofType:@"tiff"]];
        [(GQHXML *)self->mIndex setAttribute:"width" intValue:35];
        [(GQHXML *)self->mIndex endElement];
        [(GQHXML *)self->mIndex endElement];
        [(GQHXML *)self->mIndex startElement:"span"];
        v25 = CFStringCreateWithFormat(0, 0, @"text-overflow: ellipsis; display: inline-block; overflow: hidden; white-space: nowrap; width: %d; padding-left: 2px;", 131);
        [(GQHXML *)self->mIndex setAttribute:"style" cfStringValue:v25];
        v26 = v25;
        v9 = v33;
        CFRelease(v26);
        [(GQHXML *)self->mIndex addContent:ValueAtIndex];
        [(GQHXML *)self->mIndex endElement];
        [(GQHXML *)self->mIndex endElement];
        v27 = v16 + 170;
        if (v16 + 170 >= v33)
        {
          v16 = 0;
        }

        else
        {
          v16 = v27;
        }

        if (v27 >= v33)
        {
          v17 = (v17 + 29);
        }

        else
        {
          v17 = v17;
        }

        CFArrayRemoveValueAtIndex(self->mSheetFilenameList, 0);
        CFArrayRemoveValueAtIndex(self->mSheetUriList, 0);
        v18 = (v18 + 1);
      }

      while (CFArrayGetCount(self->mSheetUriList) > 0);
    }

    if (v16 >= 1 && v16 < v9)
    {
      do
      {
        [(GQHXML *)self->mIndex startElement:"div"];
        [(GQHXML *)self->mIndex setAttribute:"class" value:"navpane-sheet"];
        v28 = CFStringCreateWithFormat(0, 0, @"position:absolute; overflow:hidden;  top:%d; left:%d; width:%d; height:%d;", v17, v16, 170, 30);
        [(GQHXML *)self->mIndex setAttribute:"style" cfStringValue:v28];
        CFRelease(v28);
        [(GQHXML *)self->mIndex endElement];
        v16 = (v16 + 170);
      }

      while (v16 < v33);
    }
  }

  [(GQHXML *)self->mIndex endElement];
  mIndex = self->mIndex;
  outputBundle = [(GQSDocument *)self->super.mProcessorState outputBundle];
  isGeneratingThumbnail = [(GQSDocument *)self->super.mProcessorState isGeneratingThumbnail];

  return [(GQHXML *)mIndex writeToOutputBundle:outputBundle isThumbnail:isGeneratingThumbnail];
}

- (void)writeNavigationPage:(id)page
{
  v5 = [GQHXML alloc];
  self->mNavigation = -[GQHXML initWithFilename:documentSize:outputBundle:useExternalCss:](v5, "initWithFilename:documentSize:outputBundle:useExternalCss:", off_9D1E0, 0, [page outputBundle], 1);
  mIsProgressiveMode = self->mIsProgressiveMode;
  outputBundle = [page outputBundle];
  cssFilename = [(GQHXML *)self->mNavigation cssFilename];
  if (mIsProgressiveMode)
  {
    [outputBundle setData:0 mimeType:@"text/css" forNamedResource:cssFilename];
  }

  else
  {
    self->mCssUri = [outputBundle createUriForResource:cssFilename];
  }

  [(GQHXML *)self->mNavigation startElement:"script"];
  [(GQHXML *)self->mNavigation setAttribute:"type" value:"text/javascript"];
  mCurrentSheetUri = self->mCurrentSheetUri;
  if (mCurrentSheetUri)
  {
    CFRetain(mCurrentSheetUri);
    v10 = self->mCurrentSheetUri;
  }

  else
  {
    v10 = [objc_msgSend(page "outputBundle")];
  }

  v11 = CFStringCreateWithFormat(0, 0, @"var currentSheetUri = '%@';\nfunction gotoSheet(sheet)\n{\n    if (sheet != currentSheetUri)\n    {\n        parent.frames['sheetPane'].location = sheet;\n        document.getElementById(currentSheetUri).className = '';\n        document.getElementById(sheet).className = 'navpane-activesheet';\n        currentSheetUri = sheet;\n    }\n}\n", v10);
  CFRelease(v10);
  [(GQHXML *)self->mNavigation addContent:v11];
  CFRelease(v11);
  [(GQHXML *)self->mNavigation endElement];
  [(GQHXML *)self->mNavigation startElement:"link"];
  [(GQHXML *)self->mNavigation setAttribute:"rel" value:"stylesheet"];
  [(GQHXML *)self->mNavigation setAttribute:"type" value:"text/css"];
  [(GQHXML *)self->mNavigation startElement:"style"];
  [(GQHXML *)self->mNavigation addContent:@"body {background-color: RGB(210, 216, 226); margin: 0;}\na {font-size: 11; font-family: Lucida Grande; color: black; text-decoration:none; line-height: 1.8; white-space: nowrap;}\ndiv.navpane-activesheet {background-color: RGB(156, 172, 198);}\ndiv {padding-left: 10px; overflow:hidden; text-overflow:ellipsis;}\na.navpane-table {padding-left:26px;}\nimg {vertical-align: middle;}\n"];
  CFRelease(@"body {background-color: RGB(210,216,226); margin: 0;}\na {font-size: 11; font-family: Lucida Grande; color: black; text-decoration:none; line-height: 1.8; white-space: nowrap;}\ndiv.navpane-activesheet {background-color: RGB(156,172,198);}\ndiv {padding-left: 10px; overflow:hidden; text-overflow:ellipsis;}\na.navpane-table {padding-left:26px;}\nimg {vertical-align: middle;}\n");
  [(GQHXML *)self->mNavigation endElement];
  [(GQHXML *)self->mNavigation endElement];
  [(GQHXML *)self->mNavigation startElement:"body"];
  [(GQHXML *)self->mNavigation setAttribute:"id" value:"body"];
  [GQHTextBox createExternalWrapSandbagStyles:self->mNavigation];
  if (self->mIsProgressiveMode)
  {
    [(GQHLassoState *)self writeAnchorInNavigationPage:self->mFirstWorkspaceName];
    createProgressiveHtml = [(GQHXML *)self->mNavigation createProgressiveHtml];
    outputBundle2 = [(GQSDocument *)self->super.mProcessorState outputBundle];
    [outputBundle2 appendData:createProgressiveHtml mimeType:@"text/html" resourceName:off_9D1E0];

    CFRelease(createProgressiveHtml);
  }
}

- (__CFString)writeTabsJS
{
  mIndex = self->mIndex;
  [(GQHXML *)mIndex startElement:"script"];
  [(GQHXML *)mIndex setAttribute:"type" value:"text/javascript"];
  [(GQHXML *)mIndex addContent:@"Element.prototype.addClassName = function addClassName(className){\n    if (!this.hasClassName(className))\n        this.className += ' ' + className;\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"Element.prototype.removeClassName = function removeClassName(className){\n    // Test for the simple case before using a RegExp.\n    if (this.className === className)\n        this.className = ;\n    else\n        this.removeMatchingClassNames(className.escapeForRegExp());\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"Element.prototype.removeMatchingClassNames = function removeMatchingClassNames(classNameRegex){\n    var regex = new RegExp((^|\\\\s+) + classNameRegex + ($|\\\\s+));\n    if (regex.test(this.className))\n        this.className = this.className.replace(regex,  );\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"Element.prototype.hasClassName = function hasClassName(className){\n    if (!className)\n        return false;\n    if (this.className === className)\n        return true;\n    var regex = new RegExp((^|\\\\s) + className.escapeForRegExp() + ($|\\\\s));\n    return regex.test(this.className);\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"String.prototype.escapeForRegExp = function escapeForRegExp(){\n    return this.escapeCharacters(^[]{}()\\.$*+?|);\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"String.prototype.escapeCharacters = function escapeCharacters(chars){\n    var foundChar = false;\n    for (var i = 0; i < chars.length; ++i) {\n        if (this.indexOf(chars.charAt(i)) !== -1) {\n            foundChar = true;\n            break;\n        }\n    }\n\n    if (!foundChar)\n        return this;\n\n    var result = ;\n    for (var j = 0; j < this.length; ++j) {\n        if (chars.indexOf(this.charAt(j)) !== -1)\n            result += \\\\;\n        result += this.charAt(j);\n    }\n\n    return result;\n};\n\n"];
  [(GQHXML *)mIndex addContent:@"var _tabChanged = false;\nfunction SelectSheet(sheetNumber, sheetURL){\n    _tabChanged = true;\n    var children = document.getElementsByClassName('navpane-sheet');\n    for (var i=0; i < children.length; i++) {\n        var child = children[i];\n        var elementName = child.id;\n        if (elementName == (Tab+sheetNumber)) {\n            child.addClassName(selected);\n            document.getElementById('SheetFrame').src = sheetURL;\n        } else if (elementName !== Wrapper) {\n            child.removeClassName(selected);\n        }\n    }\n}\n\n"];
  [(GQHXML *)mIndex addContent:@"function ReloadFirstSheetIfNeeded(sheetURL)\n{\n    if (_tabChanged == false) {\n        SelectSheet(0, sheetURL);\n    }\n}\n\n"];
  [(GQHXML *)mIndex endElement];
  return 0;
}

@end