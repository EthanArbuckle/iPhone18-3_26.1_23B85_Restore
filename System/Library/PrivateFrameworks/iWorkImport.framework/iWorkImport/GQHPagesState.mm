@interface GQHPagesState
- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeForSectionStyleAtPageIndex:(int)a3;
- (CGSize)pageSize;
- (GQHPagesState)initWithState:(id)a3 documentSize:(CGSize)a4;
- (__CFString)cssZOrderClassForDrawable:(id)a3;
- (__CFString)cssZOrderClassForDrawablePagesOrder:(int)a3;
- (const)wrapPoints;
- (double)currentAttachmentPosition;
- (double)moveToNextAttachmentPosition;
- (id)drawableAtIndex:(int)a3;
- (id)footerForName:(__CFString *)a3;
- (id)headerForName:(__CFString *)a3;
- (id)sectionStyleRunForRunBeforePageIndex:(int)a3;
- (int)floatingDrawablesCount;
- (int64_t)nextAttachmentId;
- (unsigned)tocDepth;
- (void)addAttachmentPosition:(double)a3;
- (void)addFloatingDrawable:(id)a3;
- (void)addSectionStyle:(id)a3 pageIndex:(int)a4 numPages:(int)a5;
- (void)addStyle:(__CFString *)a3 className:(__CFString *)a4 srcStyle:(id)a5;
- (void)addWrapPoint:(id)a3;
- (void)clearFloatingDrawables;
- (void)closeStateLayoutElementsAndStyles;
- (void)dealloc;
- (void)endSection;
- (void)endWrapPointSet;
- (void)handleContainerHint:(id)a3;
- (void)inContent;
- (void)insertAttachmentPlaceholder;
- (void)mapFloatingDrawablesForPageAtIndex:(unint64_t)a3;
- (void)openStateLayoutElementsAndStyles;
- (void)overrideSectionStyle:(id)a3;
- (void)popTocHref;
- (void)pushTocHref:(__CFString *)a3;
- (void)resolveHeaderName:(const __CFString *)a3 footerName:(const __CFString *)a4;
- (void)setCurrentLayoutStyle:(id)a3;
- (void)setCurrentParagraphStyle:(id)a3 baseStyle:(id)a4 cachedClass:(__CFString *)a5;
- (void)setCurrentSpanStyle:(id)a3 baseStyle:(id)a4 cachedClass:(__CFString *)a5;
- (void)setFooters:(__CFArray *)a3;
- (void)setHeaders:(__CFArray *)a3;
- (void)setOutlineLevel:(int)a3;
- (void)setOutlineStyleType:(int)a3;
- (void)startLayout;
- (void)startSection;
@end

@implementation GQHPagesState

- (GQHPagesState)initWithState:(id)a3 documentSize:(CGSize)a4
{
  v6.receiver = self;
  v6.super_class = GQHPagesState;
  v4 = [(GQHState *)&v6 initWithState:a3 documentSize:a4.width, a4.height];
  if (v4)
  {
    v4->mFloatingDrawables = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->mSectionStyles = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v4->mPageWrapPointsMap = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->mMappingFloatingDrawables = 0;
    v4->mAttachmentPositions = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v4->mDrawablePagesOrderToCssZOrderClassMap = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->mStartPageAt = 1;
    v4->mStartPageAtValueChangedAtPageIndex = 0;
    v4->mProgressiveIndex = 2;
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->mFloatingDrawables);
  mSectionStyles = self->mSectionStyles;
  if (mSectionStyles)
  {
    CFRelease(mSectionStyles);
  }

  mPageWrapPointsMap = self->mPageWrapPointsMap;
  if (mPageWrapPointsMap)
  {
    CFRelease(mPageWrapPointsMap);
  }

  mAttachmentPositions = self->mAttachmentPositions;
  if (mAttachmentPositions)
  {
    CFRelease(mAttachmentPositions);
  }

  mDrawablePagesOrderToCssZOrderClassMap = self->mDrawablePagesOrderToCssZOrderClassMap;
  if (mDrawablePagesOrderToCssZOrderClassMap)
  {
    CFRelease(mDrawablePagesOrderToCssZOrderClassMap);
  }

  mHeaders = self->mHeaders;
  if (mHeaders)
  {
    CFRelease(mHeaders);
  }

  mFooters = self->mFooters;
  if (mFooters)
  {
    CFRelease(mFooters);
  }

  mTocHrefStack = self->mTocHrefStack;
  if (mTocHrefStack)
  {
    CFRelease(mTocHrefStack);
  }

  v10.receiver = self;
  v10.super_class = GQHPagesState;
  [(GQHState *)&v10 dealloc];
}

- (int)floatingDrawablesCount
{
  v2 = [(GQHPagesState *)self pageDrawables:self->mCurrentPageIndex];
  if (v2)
  {
    LODWORD(v2) = CFArrayGetCount(v2);
  }

  return v2;
}

- (void)addFloatingDrawable:(id)a3
{
  v5 = [[NSNumber alloc] initWithInt:self->mCurrentPageIndex];
  Value = CFDictionaryGetValue(self->mFloatingDrawables, v5);
  if (!Value)
  {
    Value = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFDictionaryAddValue(self->mFloatingDrawables, v5, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a3);
}

- (id)drawableAtIndex:(int)a3
{
  result = [(GQHPagesState *)self pageDrawables:self->mCurrentPageIndex];
  if (result)
  {

    return CFArrayGetValueAtIndex(result, a3);
  }

  return result;
}

- (void)clearFloatingDrawables
{
  key = [[NSNumber alloc] initWithInt:self->mCurrentPageIndex];
  Value = CFDictionaryGetValue(self->mFloatingDrawables, key);
  if (Value)
  {
    CFArrayRemoveAllValues(Value);
  }

  CFDictionaryRemoveValue(self->mFloatingDrawables, key);
}

- (id)headerForName:(__CFString *)a3
{
  result = self->mHeaders;
  if (result)
  {
    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

- (void)setHeaders:(__CFArray *)a3
{
  mHeaders = self->mHeaders;
  if (mHeaders)
  {
    CFRelease(mHeaders);
    self->mHeaders = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    v8 = Count;
    if (Count)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v9);
        CFDictionarySetValue(Mutable, [ValueAtIndex name], ValueAtIndex);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  self->mHeaders = Mutable;
}

- (id)footerForName:(__CFString *)a3
{
  result = self->mFooters;
  if (result)
  {
    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

- (void)setFooters:(__CFArray *)a3
{
  mFooters = self->mFooters;
  if (mFooters)
  {
    CFRelease(mFooters);
    self->mFooters = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    v8 = Count;
    if (Count)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v9);
        CFDictionarySetValue(Mutable, [ValueAtIndex name], ValueAtIndex);
        ++v9;
      }

      while (v8 != v9);
    }
  }

  self->mFooters = Mutable;
}

- (void)addSectionStyle:(id)a3 pageIndex:(int)a4 numPages:(int)a5
{
  if (a4 < 0)
  {
    return;
  }

  LODWORD(v6) = a4;
  Count = CFArrayGetCount(self->mSectionStyles);
  v10 = v6 - Count;
  if (v6 <= Count)
  {
    if (v6)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mSectionStyles, (v6 - 1));
      if (ValueAtIndex->mStyle == a3)
      {
        v14 = a5 + v6;
        ValueAtIndex->mPageRange.length = a5 + v6 - ValueAtIndex->mPageRange.location;
        valueb = ValueAtIndex;
        v15 = ValueAtIndex;
        v13 = valueb;
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      CFArrayAppendValue(self->mSectionStyles, kCFNull);
      --v10;
    }

    while (v10);
  }

  valuea = objc_alloc_init(GQHSectionStyleRun);
  v12 = a3;
  v13 = valuea;
  valuea->mStyle = v12;
  valuea->mPageRange.location = v6;
  valuea->mPageRange.length = a5;
  v14 = a5 + v6;
LABEL_9:
  if (a5 >= 1)
  {
    v6 = v6;
    value = v13;
    do
    {
      CFArraySetValueAtIndex(self->mSectionStyles, v6++, value);
    }

    while (v14 > v6);
  }

  _objc_release_x1();
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeForSectionStyleAtPageIndex:(int)a3
{
  if (a3 < 0)
  {
    v8 = 0;
    v7 = 0;
  }

  else if (CFArrayGetCount(self->mSectionStyles) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(self->mSectionStyles, a3), ValueAtIndex == kCFNull))
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v6 = ValueAtIndex;
    v7 = ValueAtIndex[2];
    v8 = v6[3];
  }

  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)overrideSectionStyle:(id)a3
{
  CFRetain(a3);
  mCurrentSectionStyle = self->mCurrentSectionStyle;
  if (mCurrentSectionStyle)
  {
    CFRelease(mCurrentSectionStyle);
  }

  self->mCurrentSectionStyle = a3;
}

- (void)setCurrentLayoutStyle:(id)a3
{
  if (!self->mMappingFloatingDrawables)
  {
    v5 = a3;

    self->mCurrentLayoutStyle = a3;
  }
}

- (void)setCurrentParagraphStyle:(id)a3 baseStyle:(id)a4 cachedClass:(__CFString *)a5
{
  if (!self->mMappingFloatingDrawables && !self->mIsMappingHeadersFooters)
  {
    v9 = a3;
    v10 = a4;
    if (a5)
    {
      CFRetain(a5);
    }

    mCurrentCachedParagraphClass = self->mCurrentCachedParagraphClass;
    if (mCurrentCachedParagraphClass)
    {
      CFRelease(mCurrentCachedParagraphClass);
    }

    self->mCurrentParagraphStyle = 0;
    self->mCurrentBaseParagraphStyle = 0;
    self->mCurrentCachedParagraphClass = 0;
    if (a5)
    {
      self->mCurrentCachedParagraphClass = a5;
    }

    else if (a3)
    {
      if (a4)
      {
        self->mCurrentParagraphStyle = a3;
        self->mCurrentBaseParagraphStyle = a4;
      }
    }
  }
}

- (void)setCurrentSpanStyle:(id)a3 baseStyle:(id)a4 cachedClass:(__CFString *)a5
{
  if (!self->mMappingFloatingDrawables && !self->mIsMappingHeadersFooters)
  {
    v9 = a3;
    v10 = a4;
    if (a5)
    {
      CFRetain(a5);
    }

    mCurrentCachedSpanClass = self->mCurrentCachedSpanClass;
    if (mCurrentCachedSpanClass)
    {
      CFRelease(mCurrentCachedSpanClass);
    }

    self->mCurrentSpanStyle = 0;
    self->mCurrentBaseSpanStyle = 0;
    self->mCurrentCachedSpanClass = 0;
    if (a5)
    {
      self->mCurrentCachedSpanClass = a5;
    }

    else if (a3)
    {
      if (a4)
      {
        self->mCurrentSpanStyle = a3;
        self->mCurrentBaseSpanStyle = a4;
      }
    }
  }
}

- (void)mapFloatingDrawablesForPageAtIndex:(unint64_t)a3
{
  self->mMappingFloatingDrawables = 1;
  v4 = [(GQHPagesState *)self pageDrawables:a3];
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = 0;
      v8 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(GQSDocument *)self->super.mProcessorState setCurrentTableGenerator:objc_opt_class()];
          mMode = self->mMode;
          self->mMode = 1;
          [ValueAtIndex walkTableWithGenerator:objc_opt_class() state:self->super.mProcessorState];
          self->mMode = mMode;
        }

        else
        {
          [GQHDrawable handleFloatingDrawable:ValueAtIndex htmlState:self];
        }

        ++v7;
      }

      while (v8 != v7);
    }
  }

  self->mMappingFloatingDrawables = 0;
}

- (void)addAttachmentPosition:(double)a3
{
  valuePtr = a3;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(self->mAttachmentPositions, v4);
  CFRelease(v4);
}

- (double)currentAttachmentPosition
{
  valuePtr = 0.0;
  v3 = 0.0;
  if (CFArrayGetCount(self->mAttachmentPositions) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mAttachmentPositions, 0);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

- (double)moveToNextAttachmentPosition
{
  if (CFArrayGetCount(self->mAttachmentPositions) >= 1)
  {
    CFArrayRemoveValueAtIndex(self->mAttachmentPositions, 0);
  }

  [(GQHPagesState *)self currentAttachmentPosition];
  return result;
}

- (int64_t)nextAttachmentId
{
  mAttachmentIdCounter = self->mAttachmentIdCounter;
  self->mAttachmentIdCounter = mAttachmentIdCounter + 1;
  return mAttachmentIdCounter;
}

- (void)insertAttachmentPlaceholder
{
  [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
  v3 = CFStringCreateWithFormat(0, 0, @"attPlaceholder-%ld", [(GQHPagesState *)self nextAttachmentId]);
  [(GQHXML *)self->super.mHtmlDoc setAttribute:"id" cfStringValue:v3];
  CFRelease(v3);
  mHtmlDoc = self->super.mHtmlDoc;

  [(GQHXML *)mHtmlDoc endElementWithExpectedName:"div"];
}

- (void)handleContainerHint:(id)a3
{
  [(GQHPagesState *)self setDidInsertPageHeader:1];
  if (self->mMode != 2)
  {
    v5 = [a3 pageIndex];
    v6 = [a3 cIndex];
    [a3 attachmentPosition];
    v8 = v7;
    [a3 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [-[GQSDocument root](self->super.mProcessorState "root")];
    v18 = v17;
    v20 = v19;
    if (v8 > 0.0)
    {
      [(GQHPagesState *)self inContent];
      [(GQHPagesState *)self addAttachmentPosition:v8];
      if (!self->mSplitNextAttachment)
      {
        self->mFirstAttachmentId = self->mAttachmentIdCounter;
        self->mSplitNextAttachment = 1;
      }
    }

    if (v5 == self->mCurrentHintPageIndex && v6 && v6 != self->mCurrentHintColumnIndex)
    {
      if (!self->mStartedPage)
      {
        [(GQHPagesState *)self startLayout];
        self->mStartedPage = 1;
      }

      [(GQHPagesState *)self closeStateLayoutElementsAndStyles];
      [(GQHXML *)self->super.mHtmlDoc endElement];
      self->mCurrentPageIndex = v5;
      self->mLastFrame.origin.x = v10;
      self->mLastFrame.origin.y = v12 + 10.0;
      self->mLastFrame.size.width = v14;
      self->mLastFrame.size.height = v16 + 20.0;
      [(GQHPagesState *)self startLayout];
      self->mCurrentHintPageIndex = v5;
      self->mCurrentHintColumnIndex = v6;
    }

    else
    {
      self->mCurrentHintPageIndex = v5;
      self->mCurrentHintColumnIndex = v6;
      [(GQHPagesState *)self closeStateLayoutElementsAndStyles];
      if (v5)
      {
        [(GQHPagesState *)self endSection];
        if (self->mStartedPage)
        {
          [(GQHXML *)self->super.mHtmlDoc endElement];
        }

        +[GQHPages mapCurrentHiddenPositioningFooterFromPublication:state:](GQHPages, "mapCurrentHiddenPositioningFooterFromPublication:state:", [-[GQHState processorState](self "processorState")], -[GQHState processorState](self, "processorState"));
        [(GQHPagesState *)self mapFloatingDrawablesForPageAtIndex:v5 - 1];
        [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"div"];
      }

      self->mCurrentPageIndex = v5;
      self->mLastFrame.origin.x = v10;
      self->mLastFrame.origin.y = v12 + 10.0;
      self->mLastFrame.size.width = v14;
      self->mLastFrame.size.height = v16 + 20.0;
      v21 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v21 addAttribute:off_9CE00 value:@"white"];
      [(GQHStyle *)v21 addAttribute:off_9CF68 pxValue:v18];
      [(GQHStyle *)v21 addAttribute:off_9CF18 value:off_9D040];
      [(GQHStyle *)v21 addAttribute:off_9CEE8 value:off_9CFE8];
      [(GQHStyle *)v21 addAttribute:off_9CEC0 pxValue:0];
      [(GQHStyle *)v21 addAttribute:off_9CEC8 pxValue:0];
      [(GQHStyle *)v21 addAttribute:off_9CED0 pxValue:0];
      [(GQHStyle *)v21 addAttribute:off_9CEB8 pxValue:5];
      [(GQHStyle *)v21 addAttribute:@"-webkit-box-shadow" value:@"0px 5px 5px rgba(0, 0, 0, 0.5)"];
      [(GQHStyle *)v21 addAttribute:off_9CED8 pxValue:(v20 + 20.0)];
      [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
      [(GQHStyle *)v21 addClass:@"dzo"];
      [(GQHStyle *)v21 setStyleOnCurrentNode:self];

      self->mStartedPage = 0;
    }
  }
}

- (void)resolveHeaderName:(const __CFString *)a3 footerName:(const __CFString *)a4
{
  if (a3 | a4)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    mCurrentPageIndex = self->mCurrentPageIndex;
    v8 = [(GQHPagesState *)self sectionStyleForPageIndex:mCurrentPageIndex];
    v9 = v8;
    v30 = 0;
    if ((mCurrentPageIndex & 0x80000000) != 0 || !v8)
    {
      v10 = v8;
LABEL_16:
      if (mCurrentPageIndex == -1)
      {
LABEL_19:
        if (v30 == 1)
        {
          v12 = [objc_msgSend(objc_msgSend(-[GQHState processorState](self "processorState")];
          if (v12)
          {
            v10 = v12;
          }
        }
      }
    }

    else
    {
      v10 = v8;
      while ([v10 hasValueForBoolProperty:59 value:&v30] && v30 == 1)
      {
        v11 = [(GQHPagesState *)self sectionStyleRunForRunBeforePageIndex:mCurrentPageIndex];
        if (!v11)
        {
          v10 = 0;
          goto LABEL_19;
        }

        mCurrentPageIndex = *(v11 + 4);
        v10 = v11[1];
        if ((mCurrentPageIndex & 0x80000000) != 0 || !v10)
        {
          goto LABEL_16;
        }
      }
    }

    if (v9 && v10)
    {
      v29 = 0;
      v28 = 0;
      v27 = 0;
      if (self->mMode != 1)
      {
        [v9 hasValueForBoolProperty:62 value:&v29];
        [v9 hasValueForIntProperty:58 value:&v28];
        if (![v9 hasValueForObjectProperty:64 value:&v27] || !objc_msgSend(v27, "headerIdentifier") || !CFStringGetLength(objc_msgSend(v27, "headerIdentifier")))
        {
          [v10 hasValueForObjectProperty:64 value:&v27];
        }
      }

      v26 = 0;
      [v9 hasValueForBoolProperty:63 value:&v26];
      v24 = 0;
      v25 = 0;
      if ([v9 hasValueForIntProperty:61 value:&v25] && objc_msgSend(v9, "hasValueForIntProperty:value:", 60, &v24) && v24 == 1)
      {
        self->mStartPageAt = v25;
        self->mStartPageAtValueChangedAtPageIndex = self->mCurrentPageIndex;
      }

      v23 = 0;
      if (![v9 hasValueForObjectProperty:65 value:&v23] || !objc_msgSend(v23, "headerIdentifier") || !CFStringGetLength(objc_msgSend(v23, "headerIdentifier")))
      {
        [v10 hasValueForObjectProperty:65 value:&v23];
      }

      v22 = 0;
      if (![v9 hasValueForObjectProperty:66 value:&v22] || !objc_msgSend(v22, "headerIdentifier") || !CFStringGetLength(objc_msgSend(v22, "headerIdentifier")))
      {
        [v10 hasValueForObjectProperty:66 value:&v22];
      }

      v13 = [(GQHPagesState *)self rangeForSectionStyleAtPageIndex:self->mCurrentPageIndex];
      v14 = self->mCurrentPageIndex;
      if ((v28 == 1 && (v14 & 1) != 0 || v28 == 2 && (v14 & 1) == 0) && v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        if (v29 != 1)
        {
          goto LABEL_60;
        }

        v15 = v27;
        if (!v27)
        {
          goto LABEL_60;
        }

        if (v13 != v14)
        {
          v17 = v13 + 1 != v14 || v28 != 1;
          v18 = v28 != 2;
          v19 = v17 | ~((v14 & 1) == 0);
          if ((v14 & 1) == 0)
          {
            v18 = 1;
          }

          if ((v19 & 1) != 0 && v18)
          {
LABEL_60:
            v15 = v23;
            if (v26 == 1)
            {
              if (v14)
              {
                v15 = v22;
              }

              else
              {
                v15 = v23;
              }
            }
          }
        }
      }

      v20 = [v15 headerIdentifier];
      if (a3 && v20)
      {
        *a3 = [v15 headerIdentifier];
      }

      v21 = [v15 footerIdentifier];
      if (a4)
      {
        if (v21)
        {
          *a4 = [v15 footerIdentifier];
        }
      }
    }
  }
}

- (void)endWrapPointSet
{
  v3 = [[NSNumber alloc] initWithInt:self->mCurrentPageIndex];
  CFDictionaryAddValue(self->mPageWrapPointsMap, v3, self->mCurrentWrapPointSet);

  self->mCurrentWrapPointSet = 0;
}

- (void)addWrapPoint:(id)a3
{
  mWrapPointSet = self->mCurrentWrapPointSet->mWrapPointSet;
  v5 = a3;
  v4 = a3;
  sub_9828(mWrapPointSet, &v5);
}

- (const)wrapPoints
{
  result = [(GQHPagesState *)self wrapPointSetForPage:self->mCurrentPageIndex];
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

- (void)inContent
{
  if (![(GQHPagesState *)self isMappingHeadersFooters])
  {
    if (!self->mDidFindContainerHint && !self->mDidInsertPageHeader)
    {
      [(GQHPagesState *)self setDidInsertPageHeader:1];
      v3 = [(GQSDocument *)self->super.mProcessorState root];
      v4 = [v3 pageMargins];
      [v4 left];
      v6 = v5;
      [v4 top];
      v8 = v7;
      [v3 pageSize];
      v10 = v9;
      v12 = v11;
      [v4 left];
      v14 = v10 - v13;
      [v4 right];
      v16 = v14 - v15;
      [v4 top];
      v18 = v12 - v17;
      [v4 bottom];
      v20 = v18 - v19;
      mLastInsertedContainerHint = self->mLastInsertedContainerHint;
      if (mLastInsertedContainerHint)
      {
        v22 = [(GQDWPContainerHint *)mLastInsertedContainerHint pageIndex]+ 1;
        v23 = [(GQDWPContainerHint *)self->mLastInsertedContainerHint cIndex]+ 1;
        v24 = [(GQDWPContainerHint *)self->mLastInsertedContainerHint anchorLocation];
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
      }

      v25 = [[GQDWPContainerHint alloc] initWithPageIndex:v22 cIndex:v23 sIndex:0 lIndex:0 anchorLocation:v24 frame:v6, v8, v16, v20];
      self->mLastInsertedContainerHint = v25;
      [(GQHPagesState *)self handleContainerHint:v25];
    }

    if (!self->mStartedPage)
    {
      [(GQHPagesState *)self startSection];
      self->mStartedPage = 1;
    }
  }
}

- (void)setOutlineLevel:(int)a3
{
  if (self->mMode == 2)
  {
    self->super.mOutlineLevel = a3;
  }
}

- (void)setOutlineStyleType:(int)a3
{
  if (self->mMode == 2)
  {
    self->super.mOutlineStyleType = a3;
  }
}

- (void)addStyle:(__CFString *)a3 className:(__CFString *)a4 srcStyle:(id)a5
{
  if (a5)
  {
    v7.receiver = self;
    v7.super_class = GQHPagesState;
    [(GQHState *)&v7 addStyle:a3 className:a4 srcStyle:?];
  }

  else
  {
    mHtmlDoc = self->super.mHtmlDoc;

    [(GQHXML *)mHtmlDoc addStyleClass:a3, a4];
  }
}

- (__CFString)cssZOrderClassForDrawable:(id)a3
{
  v4 = [a3 pagesOrder];

  return [(GQHPagesState *)self cssZOrderClassForDrawablePagesOrder:v4];
}

- (__CFString)cssZOrderClassForDrawablePagesOrder:(int)a3
{
  valuePtr = a3;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Value = CFDictionaryGetValue(self->mDrawablePagesOrderToCssZOrderClassMap, v4);
  if (!Value)
  {
    v6 = @"n";
    if (valuePtr < 0)
    {
      v7 = -valuePtr;
    }

    else
    {
      v6 = &stru_85620;
      v7 = valuePtr;
    }

    Value = CFStringCreateWithFormat(0, 0, @"drawableZOrder_%@%u", v6, v7);
    CFDictionarySetValue(self->mDrawablePagesOrderToCssZOrderClassMap, v4, Value);
    CFRelease(Value);
  }

  CFRelease(v4);
  return Value;
}

- (CGSize)pageSize
{
  width = self->mPageSize.width;
  height = self->mPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unsigned)tocDepth
{
  mTocHrefStack = self->mTocHrefStack;
  if (mTocHrefStack)
  {
    LODWORD(mTocHrefStack) = CFArrayGetCount(mTocHrefStack);
  }

  return mTocHrefStack;
}

- (void)pushTocHref:(__CFString *)a3
{
  mTocHrefStack = self->mTocHrefStack;
  if (!mTocHrefStack)
  {
    mTocHrefStack = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    self->mTocHrefStack = mTocHrefStack;
  }

  CFArrayAppendValue(mTocHrefStack, a3);
}

- (void)popTocHref
{
  v3 = [(GQHPagesState *)self tocDepth];
  if (v3)
  {
    v4 = v3;
    mTocHrefStack = self->mTocHrefStack;

    CFArrayRemoveValueAtIndex(mTocHrefStack, v4 - 1);
  }
}

- (void)endSection
{
  if (self->mStartedSection)
  {
    [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"div"];
    self->mStartedSection = 0;
    if ([(GQHXML *)self->super.mHtmlDoc isProgressive])
    {
      v3 = [(GQHXML *)self->super.mHtmlDoc createProgressiveHtml];
      v4 = [(GQHXML *)self->super.mHtmlDoc createProgressiveeCSSwithStyleTags:1];
      [(__CFData *)v3 appendData:v4];
      CFRelease(v4);
      [-[GQSDocument outputBundle](self->super.mProcessorState "outputBundle")];
      CFRelease(v3);
      self->mProgressiveIndex = 2 * self->mCurrentPageIndex + 4;
    }
  }
}

- (void)startSection
{
  if (!self->mStartedSection)
  {
    [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
    if (![(GQHPagesState *)self isMappingHeadersFooters])
    {
      +[GQHPages mapCurrentHeaderAndFooterFromPublication:state:](GQHPages, "mapCurrentHeaderAndFooterFromPublication:state:", [-[GQHState processorState](self "processorState")], -[GQHState processorState](self, "processorState"));
    }

    self->mStartedSection = 1;
  }

  if (self->mMode != 2)
  {

    [(GQHPagesState *)self startLayout];
  }
}

- (void)startLayout
{
  [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
  v3 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v3 addAttribute:off_9CF10 pxValue:self->mLastFrame.origin.y];
  [(GQHStyle *)v3 addAttribute:off_9CF00 pxValue:self->mLastFrame.origin.x];
  [(GQHStyle *)v3 addAttribute:off_9CED8 pxValue:self->mLastFrame.size.height];
  [(GQHStyle *)v3 addAttribute:off_9CF68 pxValue:self->mLastFrame.size.width];
  [(GQHStyle *)v3 addAttribute:off_9CF18 value:off_9CFA0];
  [(GQHStyle *)v3 addClass:@"dzo"];
  [(GQHStyle *)v3 setStyleOnCurrentNode:self];

  self->mCurrentFrameHasSandbagFloats = [GQHTextBox outputWrapSandbagsForFrame:1 columnCount:0 drawable:self state:1 isPageFrame:self->mLastFrame.origin.x, self->mLastFrame.origin.y, self->mLastFrame.size.width, self->mLastFrame.size.height];

  [(GQHPagesState *)self openStateLayoutElementsAndStyles];
}

- (void)closeStateLayoutElementsAndStyles
{
  v3 = [(GQHPagesState *)self tocDepth];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"a"];
      --v4;
    }

    while (v4);
  }

  if (self->mCurrentSpanStyle || self->mCurrentCachedSpanClass)
  {
    [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"span"];
  }

  if (self->mCurrentParagraphStyle || self->mCurrentCachedParagraphClass)
  {
    [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"p"];
  }

  if (self->mSplitNextAttachment)
  {
    [(GQHPagesState *)self insertAttachmentPlaceholder];
  }

  if (self->mCurrentLayoutStyle)
  {
    [(GQHXML *)self->super.mHtmlDoc endElementWithExpectedName:"div"];
  }

  self->mCurrentFrameHasSandbagFloats = 0;
}

- (void)openStateLayoutElementsAndStyles
{
  if (self->mCurrentLayoutStyle)
  {
    [(GQHXML *)self->super.mHtmlDoc startElement:"div"];
    [(GQHStyle *)self->mCurrentLayoutStyle setStyleOnCurrentNode:self];
  }

  v3 = [(GQHPagesState *)self tocDepth];
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      [(GQHXML *)self->super.mHtmlDoc startElement:"a"];
      [(GQHXML *)self->super.mHtmlDoc setAttribute:"href" cfStringValue:CFArrayGetValueAtIndex(self->mTocHrefStack, v4++)];
    }

    while (v5 != v4);
  }

  if (self->mCurrentParagraphStyle || self->mCurrentCachedParagraphClass)
  {
    [(GQHXML *)self->super.mHtmlDoc startElement:"p"];
    mCurrentParagraphStyle = self->mCurrentParagraphStyle;
    if (mCurrentParagraphStyle)
    {
      [(GQHStyle *)mCurrentParagraphStyle setStyleOnCurrentNode:self mappingBaseStyleClass:self->mCurrentBaseParagraphStyle baseClassType:objc_opt_class()];
    }

    else if (self->mCurrentCachedParagraphClass)
    {
      [(GQHXML *)self->super.mHtmlDoc setAttribute:"class" cfStringValue:?];
    }
  }

  if (self->mCurrentSpanStyle || self->mCurrentCachedSpanClass)
  {
    [(GQHXML *)self->super.mHtmlDoc startElement:"span"];
    mCurrentSpanStyle = self->mCurrentSpanStyle;
    if (mCurrentSpanStyle)
    {
      mCurrentBaseSpanStyle = self->mCurrentBaseSpanStyle;
      v9 = objc_opt_class();

      [(GQHStyle *)mCurrentSpanStyle setStyleOnCurrentNode:self mappingBaseStyleClass:mCurrentBaseSpanStyle baseClassType:v9];
    }

    else if (self->mCurrentCachedSpanClass)
    {
      mHtmlDoc = self->super.mHtmlDoc;

      [(GQHXML *)mHtmlDoc setAttribute:"class" cfStringValue:?];
    }
  }
}

- (id)sectionStyleRunForRunBeforePageIndex:(int)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  Count = CFArrayGetCount(self->mSectionStyles);
  v6 = Count;
  if (Count > a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mSectionStyles, a3);
    if (ValueAtIndex == kCFNull)
    {
      return 0;
    }

    v6 = ValueAtIndex[4];
  }

  result = 0;
  v9 = (v6 - 1);
  if (v6 - 1 >= 0 && v9 < Count)
  {
    result = CFArrayGetValueAtIndex(self->mSectionStyles, v9);
    if (result == kCFNull)
    {
      return 0;
    }
  }

  return result;
}

@end