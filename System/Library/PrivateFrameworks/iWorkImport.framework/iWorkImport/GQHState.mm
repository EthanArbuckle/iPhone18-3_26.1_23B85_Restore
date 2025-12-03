@interface GQHState
- (BOOL)finishMainHtml;
- (CGSize)scale;
- (GQHState)initWithState:(id)state needIndexFile:(BOOL)file documentSize:(CGSize)size;
- (__CFString)addCacheForCellStyle:(id)style fillStyle:(id)fillStyle cellClass:(Class)class vectorStyles:(id *)styles groupLevel:(unsigned __int16)level hasFormula:(BOOL)formula baseClassString:(__CFString *)string cssCachedStyle:(id)self0;
- (__CFString)addCachedClassStringForTextStyle:(id)style implicitStyle:(id)implicitStyle isColoredBackground:(BOOL)background outlineLevel:(int)level outlineType:(int)type isSpan:(BOOL)span baseClassString:(__CFString *)string cssCachedStyle:(id)self0;
- (__CFString)cachedClassStringForCellStyle:(id)style fillStyle:(id)fillStyle cellClass:(Class)class vectorStyles:(id *)styles groupLevel:(unsigned __int16)level hasFormula:(BOOL)formula;
- (__CFString)cachedClassStringForTextStyle:(id)style implicitStyle:(id)implicitStyle isColoredBackground:(BOOL)background outlineLevel:(int)level outlineType:(int)type isSpan:(BOOL)span;
- (__CFString)createUniqueShapeId:(const char *)id;
- (__CFString)cssZOrderClassForDrawable:(id)drawable;
- (__CFString)getColorString:(id)string;
- (__CFString)makeInlineStyle:(__CFString *)style inDocument:(id)document;
- (id)implicitStyle;
- (int)indexForStyle:(const char *)style;
- (void)addStyle:(__CFString *)style className:(__CFString *)name srcStyle:(id)srcStyle;
- (void)dealloc;
- (void)enterGraphicObject;
- (void)leaveGraphicObject;
- (void)popImplicitStyle;
- (void)setColoredBackground:(BOOL)background;
- (void)setMultiColumned:(BOOL)columned;
@end

@implementation GQHState

- (GQHState)initWithState:(id)state needIndexFile:(BOOL)file documentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  fileCopy = file;
  sizeCopy = size;
  v19.receiver = self;
  v19.super_class = GQHState;
  v9 = [(GQHState *)&v19 init];
  if (v9)
  {
    if (fileCopy)
    {
      v10 = [GQHXML alloc];
      if (height <= 1.0 || width <= 1.0)
      {
        v12 = 0;
      }

      else
      {
        v12 = &sizeCopy;
      }

      v9->mHtmlDoc = -[GQHXML initWithFilename:documentSize:outputBundle:useExternalCss:](v10, "initWithFilename:documentSize:outputBundle:useExternalCss:", @"index.html", v12, [state outputBundle], -[GQSDocument isGeneratingThumbnail](v9->mProcessorState, "isGeneratingThumbnail") ^ 1);
    }

    __asm { FMOV            V0.2D, #1.0 }

    v9->mScale = _Q0;
    v9->mTableState = objc_alloc_init(GQHTableState);
    v9->mProcessorState = state;
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

- (void)addStyle:(__CFString *)style className:(__CFString *)name srcStyle:(id)srcStyle
{
  if (![(GQHState *)self className:srcStyle])
  {
    CFDictionarySetValue(self->mStyleNameMap, srcStyle, name);
    mHtmlDoc = self->mHtmlDoc;

    [(GQHXML *)mHtmlDoc addStyleClass:style];
  }
}

- (__CFString)makeInlineStyle:(__CFString *)style inDocument:(id)document
{
  Value = CFDictionaryGetValue(self->mInlineStyles, style);
  if (!Value)
  {
    v8 = (self->mInlineStyleIndex + 1);
    self->mInlineStyleIndex = v8;
    Value = CFStringCreateWithFormat(0, 0, @"i%d", v8);
    CFDictionarySetValue(self->mInlineStyles, style, Value);
    CFRelease(Value);
    v9 = CFStringCreateWithFormat(0, 0, @".%@ { %@ }\n", Value, style);
    [document addStyleClassLast:v9];
    CFRelease(v9);
  }

  return Value;
}

- (BOOL)finishMainHtml
{
  mHtmlDoc = self->mHtmlDoc;
  outputBundle = [(GQSDocument *)self->mProcessorState outputBundle];
  isGeneratingThumbnail = [(GQSDocument *)self->mProcessorState isGeneratingThumbnail];

  return [(GQHXML *)mHtmlDoc writeToOutputBundle:outputBundle isThumbnail:isGeneratingThumbnail];
}

- (__CFString)cssZOrderClassForDrawable:(id)drawable
{
  v4 = [drawable uid];

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

- (void)setColoredBackground:(BOOL)background
{
  backgroundCopy = background;
  Count = CFArrayGetCount(self->mGraphicPropertiesStack);
  ValueAtIndex = CFArrayGetValueAtIndex(self->mGraphicPropertiesStack, Count - 1);
  value = 0;
  if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"Colored Background", &value) && CFBooleanGetValue(value))
  {
    if (backgroundCopy)
    {
      return;
    }

    v7 = -1;
    v8 = &kCFBooleanFalse;
  }

  else
  {
    if (!backgroundCopy)
    {
      return;
    }

    v7 = 1;
    v8 = &kCFBooleanTrue;
  }

  CFDictionarySetValue(ValueAtIndex, @"Colored Background", *v8);
  self->mColoredBackgroundLayerCount += v7;
}

- (void)setMultiColumned:(BOOL)columned
{
  columnedCopy = columned;
  Count = CFArrayGetCount(self->mGraphicPropertiesStack);
  ValueAtIndex = CFArrayGetValueAtIndex(self->mGraphicPropertiesStack, Count - 1);
  value = 0;
  if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"Multi Columned", &value) && CFBooleanGetValue(value))
  {
    if (columnedCopy)
    {
      return;
    }

    v7 = -1;
    v8 = &kCFBooleanFalse;
  }

  else
  {
    if (!columnedCopy)
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

- (__CFString)cachedClassStringForCellStyle:(id)style fillStyle:(id)fillStyle cellClass:(Class)class vectorStyles:(id *)styles groupLevel:(unsigned __int16)level hasFormula:(BOOL)formula
{
  v10[0] = style;
  v10[1] = fillStyle;
  v8 = *(styles + 1);
  v11 = *styles;
  v12 = v8;
  classCopy = class;
  levelCopy = level;
  formulaCopy = formula;
  return CFDictionaryGetValue(self->mCachedTableStyles, v10);
}

- (__CFString)addCacheForCellStyle:(id)style fillStyle:(id)fillStyle cellClass:(Class)class vectorStyles:(id *)styles groupLevel:(unsigned __int16)level hasFormula:(BOOL)formula baseClassString:(__CFString *)string cssCachedStyle:(id)self0
{
  *&key = style;
  *(&key + 1) = fillStyle;
  v11 = *(styles + 1);
  v23 = *styles;
  v24 = v11;
  *&v25 = class;
  DWORD2(v25) = level;
  BYTE12(v25) = formula;
  Value = CFDictionaryGetValue(self->mCachedTableStyles, &key);
  if (!Value)
  {
    v13 = (self->mCachedCellStyleIndex + 1);
    self->mCachedCellStyleIndex = v13;
    v14 = CFStringCreateWithFormat(0, 0, @"ic%d", v13);
    v15 = [cachedStyle createNamedStyle:v14];
    if (v15)
    {
      v16 = v15;
      [(GQHState *)self addCachedStyle:v15];
      CFRelease(v16);
    }

    Value = CFStringCreateWithFormat(0, 0, @"%@%@", string, v14);
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

- (__CFString)cachedClassStringForTextStyle:(id)style implicitStyle:(id)implicitStyle isColoredBackground:(BOOL)background outlineLevel:(int)level outlineType:(int)type isSpan:(BOOL)span
{
  v9[0] = style;
  v9[1] = implicitStyle;
  backgroundCopy = background;
  levelCopy = level;
  typeCopy = type;
  spanCopy = span;
  return CFDictionaryGetValue(self->mCachedTextStyles, v9);
}

- (__CFString)addCachedClassStringForTextStyle:(id)style implicitStyle:(id)implicitStyle isColoredBackground:(BOOL)background outlineLevel:(int)level outlineType:(int)type isSpan:(BOOL)span baseClassString:(__CFString *)string cssCachedStyle:(id)self0
{
  *&key = style;
  *(&key + 1) = implicitStyle;
  LOBYTE(v20) = background;
  DWORD1(v20) = level;
  DWORD2(v20) = type;
  BYTE12(v20) = span;
  Value = CFDictionaryGetValue(self->mCachedTextStyles, &key);
  if (!Value)
  {
    v12 = (self->mCachedTextStyleIndex + 1);
    self->mCachedTextStyleIndex = v12;
    v13 = CFStringCreateWithFormat(0, 0, @"it%d", v12);
    v14 = [cachedStyle createNamedStyle:v13];
    if (v14)
    {
      v15 = v14;
      [(GQHState *)self addCachedStyle:v14];
      CFRelease(v15);
    }

    Value = CFStringCreateWithFormat(0, 0, @"%@%@", string, v13);
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

- (__CFString)getColorString:(id)string
{
  value = 0;
  if (!CFDictionaryGetValueIfPresent(self->mColorStrings, string, &value))
  {
    v16 = 0.0;
    v17 = 0.0;
    v14 = 1.0;
    v15 = 0.0;
    [string getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
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
    CFDictionaryAddValue(self->mColorStrings, string, v12);
    CFRelease(value);
  }

  return value;
}

- (__CFString)createUniqueShapeId:(const char *)id
{
  if (id)
  {

    return CFStringCreateWithCString(0, id, 0x8000100u);
  }

  else
  {
    mShapeIDCounter = self->mShapeIDCounter;
    self->mShapeIDCounter = mShapeIDCounter + 1;
    return CFStringCreateWithFormat(0, 0, @"ShapeId_%d", mShapeIDCounter);
  }
}

- (int)indexForStyle:(const char *)style
{
  Value = CFDictionaryGetValue(self->mStyleIndexes, style);
  if (Value)
  {
    v6 = [Value intValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [[NSNumber alloc] initWithInt:v6];
  CFDictionarySetValue(self->mStyleIndexes, style, v7);

  return v6;
}

@end