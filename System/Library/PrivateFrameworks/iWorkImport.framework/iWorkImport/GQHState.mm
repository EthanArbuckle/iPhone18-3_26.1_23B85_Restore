@interface GQHState
- (BOOL)finishMainHtml;
- (CGSize)scale;
- (GQHState)initWithState:(id)a3 needIndexFile:(BOOL)a4 documentSize:(CGSize)a5;
- (__CFString)addCacheForCellStyle:(id)a3 fillStyle:(id)a4 cellClass:(Class)a5 vectorStyles:(id *)a6 groupLevel:(unsigned __int16)a7 hasFormula:(BOOL)a8 baseClassString:(__CFString *)a9 cssCachedStyle:(id)a10;
- (__CFString)addCachedClassStringForTextStyle:(id)a3 implicitStyle:(id)a4 isColoredBackground:(BOOL)a5 outlineLevel:(int)a6 outlineType:(int)a7 isSpan:(BOOL)a8 baseClassString:(__CFString *)a9 cssCachedStyle:(id)a10;
- (__CFString)cachedClassStringForCellStyle:(id)a3 fillStyle:(id)a4 cellClass:(Class)a5 vectorStyles:(id *)a6 groupLevel:(unsigned __int16)a7 hasFormula:(BOOL)a8;
- (__CFString)cachedClassStringForTextStyle:(id)a3 implicitStyle:(id)a4 isColoredBackground:(BOOL)a5 outlineLevel:(int)a6 outlineType:(int)a7 isSpan:(BOOL)a8;
- (__CFString)createUniqueShapeId:(const char *)a3;
- (__CFString)cssZOrderClassForDrawable:(id)a3;
- (__CFString)getColorString:(id)a3;
- (__CFString)makeInlineStyle:(__CFString *)a3 inDocument:(id)a4;
- (id)implicitStyle;
- (int)indexForStyle:(const char *)a3;
- (void)addStyle:(__CFString *)a3 className:(__CFString *)a4 srcStyle:(id)a5;
- (void)dealloc;
- (void)enterGraphicObject;
- (void)leaveGraphicObject;
- (void)popImplicitStyle;
- (void)setColoredBackground:(BOOL)a3;
- (void)setMultiColumned:(BOOL)a3;
@end

@implementation GQHState

- (GQHState)initWithState:(id)a3 needIndexFile:(BOOL)a4 documentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v20 = a5;
  v19.receiver = self;
  v19.super_class = GQHState;
  v9 = [(GQHState *)&v19 init];
  if (v9)
  {
    if (v7)
    {
      v10 = [GQHXML alloc];
      if (height <= 1.0 || width <= 1.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = &v20;
      }

      v9->mHtmlDoc = -[GQHXML initWithFilename:documentSize:outputBundle:useExternalCss:](v10, "initWithFilename:documentSize:outputBundle:useExternalCss:", @"index.html", v12, [a3 outputBundle], -[GQSDocument isGeneratingThumbnail](v9->mProcessorState, "isGeneratingThumbnail") ^ 1);
    }

    __asm { FMOV            V0.2D, #1.0 }

    v9->mScale = _Q0;
    v9->mTableState = objc_alloc_init(GQHTableState);
    v9->mProcessorState = a3;
    v9->mStyleIndexes = CFDictionaryCreateMutable(0, 0, &unk_850D0, &kCFTypeDictionaryValueCallBacks);
    v9->mStyleNameMap = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9->mImplicitStyles = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *&v9->mColoredBackgroundLayerCount = 0;
    v9->mGraphicPropertiesStack = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v9->mCachedTableStyles = CFDictionaryCreateMutable(0, 0, &unk_84BA0, &kCFTypeDictionaryValueCallBacks);
    v9->mCachedTextStyles = CFDictionaryCreateMutable(0, 0, &unk_84BD0, &kCFTypeDictionaryValueCallBacks);
    v9->mInlineStyles = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9->mColorStrings = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9->mShapeContext = objc_alloc_init(GQHCanvasContext);
  }

  return v9;
}

- (void)dealloc
{
  mStyleIndexes = self->mStyleIndexes;
  if (mStyleIndexes)
  {
    CFRelease(mStyleIndexes);
  }

  mStyleNameMap = self->mStyleNameMap;
  if (mStyleNameMap)
  {
    CFRelease(mStyleNameMap);
  }

  mCachedTableStyles = self->mCachedTableStyles;
  if (mCachedTableStyles)
  {
    CFRelease(mCachedTableStyles);
  }

  mCachedTextStyles = self->mCachedTextStyles;
  if (mCachedTextStyles)
  {
    CFRelease(mCachedTextStyles);
  }

  mInlineStyles = self->mInlineStyles;
  if (mInlineStyles)
  {
    CFRelease(mInlineStyles);
  }

  mColorStrings = self->mColorStrings;
  if (mColorStrings)
  {
    CFRelease(mColorStrings);
  }

  mImplicitStyles = self->mImplicitStyles;
  if (mImplicitStyles)
  {
    CFRelease(mImplicitStyles);
  }

  mGraphicPropertiesStack = self->mGraphicPropertiesStack;
  if (mGraphicPropertiesStack)
  {
    CFRelease(mGraphicPropertiesStack);
  }

  v11.receiver = self;
  v11.super_class = GQHState;
  [(GQHState *)&v11 dealloc];
}

- (CGSize)scale
{
  width = self->mScale.width;
  height = self->mScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)addStyle:(__CFString *)a3 className:(__CFString *)a4 srcStyle:(id)a5
{
  if (![(GQHState *)self className:a5])
  {
    CFDictionarySetValue(self->mStyleNameMap, a5, a4);
    mHtmlDoc = self->mHtmlDoc;

    [(GQHXML *)mHtmlDoc addStyleClass:a3];
  }
}

- (__CFString)makeInlineStyle:(__CFString *)a3 inDocument:(id)a4
{
  Value = CFDictionaryGetValue(self->mInlineStyles, a3);
  if (!Value)
  {
    v8 = (self->mInlineStyleIndex + 1);
    self->mInlineStyleIndex = v8;
    Value = CFStringCreateWithFormat(0, 0, @"i%d", v8);
    CFDictionarySetValue(self->mInlineStyles, a3, Value);
    CFRelease(Value);
    v9 = CFStringCreateWithFormat(0, 0, @".%@ { %@ }\n", Value, a3);
    [a4 addStyleClassLast:v9];
    CFRelease(v9);
  }

  return Value;
}

- (BOOL)finishMainHtml
{
  mHtmlDoc = self->mHtmlDoc;
  v4 = [(GQSDocument *)self->mProcessorState outputBundle];
  v5 = [(GQSDocument *)self->mProcessorState isGeneratingThumbnail];

  return [(GQHXML *)mHtmlDoc writeToOutputBundle:v4 isThumbnail:v5];
}

- (__CFString)cssZOrderClassForDrawable:(id)a3
{
  v4 = [a3 uid];

  return [(GQHState *)self cssZOrderClassForDrawableUid:v4];
}

- (id)implicitStyle
{
  Count = CFArrayGetCount(self->mImplicitStyles);
  if (!Count)
  {
    return 0;
  }

  v4 = (Count - 1);
  mImplicitStyles = self->mImplicitStyles;

  return CFArrayGetValueAtIndex(mImplicitStyles, v4);
}

- (void)popImplicitStyle
{
  Count = CFArrayGetCount(self->mImplicitStyles);
  if (Count)
  {
    v4 = (Count - 1);
    mImplicitStyles = self->mImplicitStyles;

    CFArrayRemoveValueAtIndex(mImplicitStyles, v4);
  }
}

- (void)setColoredBackground:(BOOL)a3
{
  v3 = a3;
  Count = CFArrayGetCount(self->mGraphicPropertiesStack);
  ValueAtIndex = CFArrayGetValueAtIndex(self->mGraphicPropertiesStack, Count - 1);
  value = 0;
  if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"Colored Background", &value) && CFBooleanGetValue(value))
  {
    if (v3)
    {
      return;
    }

    v7 = -1;
    v8 = &kCFBooleanFalse;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = 1;
    v8 = &kCFBooleanTrue;
  }

  CFDictionarySetValue(ValueAtIndex, @"Colored Background", *v8);
  self->mColoredBackgroundLayerCount += v7;
}

- (void)setMultiColumned:(BOOL)a3
{
  v3 = a3;
  Count = CFArrayGetCount(self->mGraphicPropertiesStack);
  ValueAtIndex = CFArrayGetValueAtIndex(self->mGraphicPropertiesStack, Count - 1);
  value = 0;
  if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"Multi Columned", &value) && CFBooleanGetValue(value))
  {
    if (v3)
    {
      return;
    }

    v7 = -1;
    v8 = &kCFBooleanFalse;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = 1;
    v8 = &kCFBooleanTrue;
  }

  CFDictionarySetValue(ValueAtIndex, @"Multi Columned", *v8);
  self->mMultiColumnedDepth += v7;
}

- (void)enterGraphicObject
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFArrayAppendValue(self->mGraphicPropertiesStack, Mutable);

  CFRelease(Mutable);
}

- (void)leaveGraphicObject
{
  Count = CFArrayGetCount(self->mGraphicPropertiesStack);
  [(GQHState *)self setColoredBackground:0];
  [(GQHState *)self setMultiColumned:0];
  mGraphicPropertiesStack = self->mGraphicPropertiesStack;

  CFArrayRemoveValueAtIndex(mGraphicPropertiesStack, Count - 1);
}

- (__CFString)cachedClassStringForCellStyle:(id)a3 fillStyle:(id)a4 cellClass:(Class)a5 vectorStyles:(id *)a6 groupLevel:(unsigned __int16)a7 hasFormula:(BOOL)a8
{
  v10[0] = a3;
  v10[1] = a4;
  v8 = *(a6 + 1);
  v11 = *a6;
  v12 = v8;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  return CFDictionaryGetValue(self->mCachedTableStyles, v10);
}

- (__CFString)addCacheForCellStyle:(id)a3 fillStyle:(id)a4 cellClass:(Class)a5 vectorStyles:(id *)a6 groupLevel:(unsigned __int16)a7 hasFormula:(BOOL)a8 baseClassString:(__CFString *)a9 cssCachedStyle:(id)a10
{
  *&key = a3;
  *(&key + 1) = a4;
  v11 = *(a6 + 1);
  v23 = *a6;
  v24 = v11;
  *&v25 = a5;
  DWORD2(v25) = a7;
  BYTE12(v25) = a8;
  Value = CFDictionaryGetValue(self->mCachedTableStyles, &key);
  if (!Value)
  {
    v13 = (self->mCachedCellStyleIndex + 1);
    self->mCachedCellStyleIndex = v13;
    v14 = CFStringCreateWithFormat(0, 0, @"ic%d", v13);
    v15 = [a10 createNamedStyle:v14];
    if (v15)
    {
      v16 = v15;
      [(GQHState *)self addCachedStyle:v15];
      CFRelease(v16);
    }

    Value = CFStringCreateWithFormat(0, 0, @"%@%@", a9, v14);
    CFRelease(v14);
    v17 = malloc_type_malloc(0x40uLL, 0x1080040398047DBuLL);
    v18 = v25;
    v20 = key;
    v19 = v23;
    v17[2] = v24;
    v17[3] = v18;
    *v17 = v20;
    v17[1] = v19;
    CFDictionarySetValue(self->mCachedTableStyles, v17, Value);
    CFRelease(Value);
  }

  return Value;
}

- (__CFString)cachedClassStringForTextStyle:(id)a3 implicitStyle:(id)a4 isColoredBackground:(BOOL)a5 outlineLevel:(int)a6 outlineType:(int)a7 isSpan:(BOOL)a8
{
  v9[0] = a3;
  v9[1] = a4;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a8;
  return CFDictionaryGetValue(self->mCachedTextStyles, v9);
}

- (__CFString)addCachedClassStringForTextStyle:(id)a3 implicitStyle:(id)a4 isColoredBackground:(BOOL)a5 outlineLevel:(int)a6 outlineType:(int)a7 isSpan:(BOOL)a8 baseClassString:(__CFString *)a9 cssCachedStyle:(id)a10
{
  *&key = a3;
  *(&key + 1) = a4;
  LOBYTE(v20) = a5;
  DWORD1(v20) = a6;
  DWORD2(v20) = a7;
  BYTE12(v20) = a8;
  Value = CFDictionaryGetValue(self->mCachedTextStyles, &key);
  if (!Value)
  {
    v12 = (self->mCachedTextStyleIndex + 1);
    self->mCachedTextStyleIndex = v12;
    v13 = CFStringCreateWithFormat(0, 0, @"it%d", v12);
    v14 = [a10 createNamedStyle:v13];
    if (v14)
    {
      v15 = v14;
      [(GQHState *)self addCachedStyle:v14];
      CFRelease(v15);
    }

    Value = CFStringCreateWithFormat(0, 0, @"%@%@", a9, v13);
    CFRelease(v13);
    v16 = malloc_type_malloc(0x20uLL, 0x1080040BD8EE1D8uLL);
    v17 = v20;
    *v16 = key;
    v16[1] = v17;
    CFDictionarySetValue(self->mCachedTextStyles, v16, Value);
    CFRelease(Value);
  }

  return Value;
}

- (__CFString)getColorString:(id)a3
{
  value = 0;
  if (!CFDictionaryGetValueIfPresent(self->mColorStrings, a3, &value))
  {
    v16 = 0.0;
    v17 = 0.0;
    v14 = 1.0;
    v15 = 0.0;
    [a3 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
    v5 = v14 + -1.0;
    v6 = v17 * 255.0;
    v7 = llroundf(v6);
    v8 = v16 * 255.0;
    v9 = llroundf(v8);
    v10 = v15 * 255.0;
    v11 = llroundf(v10);
    if (fabsf(v5) >= 0.01)
    {
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgba(%ld,%ld,%ld,%01.1f)", v7, v9, v11, *&v14);
    }

    else
    {
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"rgb(%ld,%ld,%ld)", v7, v9, v11);
    }

    value = v12;
    CFDictionaryAddValue(self->mColorStrings, a3, v12);
    CFRelease(value);
  }

  return value;
}

- (__CFString)createUniqueShapeId:(const char *)a3
{
  if (a3)
  {

    return CFStringCreateWithCString(0, a3, 0x8000100u);
  }

  else
  {
    mShapeIDCounter = self->mShapeIDCounter;
    self->mShapeIDCounter = mShapeIDCounter + 1;
    return CFStringCreateWithFormat(0, 0, @"ShapeId_%d", mShapeIDCounter);
  }
}

- (int)indexForStyle:(const char *)a3
{
  Value = CFDictionaryGetValue(self->mStyleIndexes, a3);
  if (Value)
  {
    v6 = [Value intValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [[NSNumber alloc] initWithInt:v6];
  CFDictionarySetValue(self->mStyleIndexes, a3, v7);

  return v6;
}

@end