@interface NSStringDrawingTextStorage
+ (id)stringDrawingTextStorage;
+ (void)initialize;
+ (void)performLayoutOperation:(id)operation;
- (CGPoint)defaultTextContainerOriginForRect:(CGRect)rect;
- (CGRect)usedRectForTextContainer:(id)container;
- (NSStringDrawingTextStorage)init;
- (id)textContainerForAttributedString:(id)string containerSize:(CGSize)size lineFragmentPadding:(double)padding;
- (void)_setBaselineMode:(BOOL)mode;
- (void)_setForceWordWrapping:(BOOL)wrapping;
- (void)_setUsesSimpleTextEffects:(BOOL)effects;
- (void)_setWrappedByCluster:(BOOL)cluster;
- (void)dealloc;
- (void)drawTextContainer:(id)container range:(_NSRange)range withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding;
- (void)drawTextContainer:(id)container withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding;
- (void)processEditing;
@end

@implementation NSStringDrawingTextStorage

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    __NSDefaultStringDrawingBehavior = +[NSTypesetter defaultStringDrawingTypesetterBehavior];
  }
}

+ (id)stringDrawingTextStorage
{
  v2 = [objc_allocWithZone(objc_opt_class()) init];

  return v2;
}

+ (void)performLayoutOperation:(id)operation
{
  os_unfair_lock_lock_with_options();
  v5 = __NSStringDrawingTextStorageCacheNextIndex;
  if (__NSStringDrawingTextStorageCacheNextIndex)
  {
    --__NSStringDrawingTextStorageCacheNextIndex;
    v10 = __NSStringDrawingTextStorageCache[v5 - 1];
    os_unfair_lock_unlock(&__NSStringDrawingTextStorageLock);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    os_unfair_lock_unlock(&__NSStringDrawingTextStorageLock);
  }

  v10 = objc_alloc_init(self);
LABEL_6:
  (*(operation + 2))(operation, v10, [v10 layoutManager], objc_msgSend(v10, "textContainer"));
  os_unfair_lock_lock_with_options();
  v6 = [v10 retainCount] != 1 || __NSStringDrawingTextStorageCacheNextIndex > 3;
  if (!v6 && ((v7 = [v10 length], v8 = __NSStringDrawingTextStorageCacheNextIndex, v7 >= 0x190) ? (v9 = __NSStringDrawingTextStorageCacheNextIndex == 0) : (v9 = 1), v9))
  {
    ++__NSStringDrawingTextStorageCacheNextIndex;
    __NSStringDrawingTextStorageCache[v8] = v10;

    os_unfair_lock_unlock(&__NSStringDrawingTextStorageLock);
  }

  else
  {
    os_unfair_lock_unlock(&__NSStringDrawingTextStorageLock);
  }
}

- (CGRect)usedRectForTextContainer:(id)container
{
  [(NSLayoutManager *)self->_layoutManager ensureLayoutForTextContainer:?];
  layoutManager = self->_layoutManager;

  [(NSLayoutManager *)layoutManager usedRectForTextContainer:container];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_setBaselineMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_sdflags = (*&self->_sdflags & 0xFFFFFFDF | v3);
}

- (void)_setWrappedByCluster:(BOOL)cluster
{
  if (cluster)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_sdflags = (*&self->_sdflags & 0xFFFFF7FF | v3);
}

- (void)_setUsesSimpleTextEffects:(BOOL)effects
{
  if (effects)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_sdflags = (*&self->_sdflags & 0xFFFFFF7F | v3);
}

- (void)_setForceWordWrapping:(BOOL)wrapping
{
  if (wrapping)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_sdflags = (*&self->_sdflags & 0xFFFFFFBF | v3);
}

- (void)drawTextContainer:(id)container withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding
{
  scrollableCopy = scrollable;
  modeCopy = mode;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = [(NSStringDrawingTextStorage *)self length];

  [(NSStringDrawingTextStorage *)self drawTextContainer:container range:0 withRect:v18 graphicsContext:context baselineMode:modeCopy scrollable:scrollableCopy padding:x, y, width, height, padding];
}

- (void)drawTextContainer:(id)container range:(_NSRange)range withRect:(CGRect)rect graphicsContext:(CGContext *)context baselineMode:(BOOL)mode scrollable:(BOOL)scrollable padding:(double)padding
{
  scrollableCopy = scrollable;
  modeCopy = mode;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  v19 = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:"graphicsContextForApplicationFrameworkContext:", [(NSStringDrawingTextStorage *)self _applicationFrameworkContext]];
  v20 = MEMORY[0x1E696AA80];
  if (v19)
  {
    v21 = [v19 isFlipped] ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *v20;
  v67 = v20[1];
  [(NSStringDrawingTextStorage *)self usedRectForTextContainer:container];
  v27 = v24;
  v28 = v25;
  v29 = v26;
  if (width > 0.0 && v25 > width || (contextCopy = 0, height > 0.0) && v26 > height)
  {
    contextCopy = context;
  }

  v31 = v23 + v25;
  v62 = v22;
  v63 = v31;
  if (width <= 0.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = width;
  }

  if (height <= 0.0)
  {
    v33 = v24 + v26;
  }

  else
  {
    v33 = height;
  }

  v60 = v33;
  v61 = v32;
  v34 = [(NSLayoutManager *)self->_layoutManager glyphRangeForBoundingRect:container inTextContainer:v22, v67];
  v36 = v35;
  baselineDelta = 0.0;
  if (modeCopy)
  {
    baselineDelta = self->_baselineDelta;
  }

  v38 = 0;
  v64 = x;
  if (width > 0.0 && scrollableCopy)
  {
    [(NSStringDrawingTextStorage *)self defaultTextContainerOriginForRect:x, y, width, height];
    v38 = 0;
    x = floor(v39);
    if (!modeCopy && height > 0.0 && v28 >= width + width)
    {
      v34 = [(NSLayoutManager *)self->_layoutManager glyphRangeForBoundingRectWithoutAdditionalLayout:container inTextContainer:v62, v67, v61, v60];
      v36 = v40;
      v38 = 1;
    }
  }

  if (height <= 0.0)
  {
    v41 = v29;
  }

  else
  {
    v41 = height;
  }

  v42 = v27 + v41;
  if (modeCopy)
  {
    v42 = baselineDelta;
  }

  v43 = y + v42;
  if (v21)
  {
    v44 = v43;
  }

  else
  {
    v44 = y - (v27 + baselineDelta);
  }

  if (contextCopy)
  {
    v59 = v44;
    v45 = v63;
    if (width > 0.0)
    {
      v45 = width;
    }

    v46 = v45 + padding * 2.0;
    if (height > 0.0)
    {
      v47 = height;
    }

    else
    {
      v47 = v29;
    }

    v48 = 0.0;
    v49 = baselineDelta - v29;
    if ((v21 & 1) == 0)
    {
      v49 = -baselineDelta;
    }

    if (modeCopy)
    {
      v48 = v49;
    }

    v50 = y + v48;
    if (height <= 0.0)
    {
      v38 = 1;
    }

    if ((v38 & 1) == 0 && v29 >= height + height)
    {
      v51 = [(NSLayoutManager *)self->_layoutManager glyphRangeForBoundingRectWithoutAdditionalLayout:container inTextContainer:v62, v67, v61, v60];
      v53 = v51 + v52 >= v34 + v36 ? v36 : v51 + v52 - v34;
      if (v52)
      {
        v36 = v53;
      }
    }

    CGContextSaveGState(contextCopy);
    v72.origin.x = v64 - padding;
    v72.origin.y = v50;
    v72.size.width = v46;
    v72.size.height = v47;
    CGContextClipToRect(contextCopy, v72);
  }

  v68 = 0;
  v69 = 0;
  v71.location = [(NSLayoutManager *)self->_layoutManager glyphRangeForCharacterRange:location actualCharacterRange:length, 0, *&v59];
  v71.length = v54;
  v70.location = v34;
  v70.length = v36;
  v55 = NSIntersectionRange(v70, v71);
  v56 = [(NSLayoutManager *)self->_layoutManager characterRangeForGlyphRange:v55.location actualGlyphRange:v55.length, 0];
  v68 = v56;
  v69 = v57;
  v58 = v56 + v57;
  [(NSLayoutManager *)self->_layoutManager setFlipsIfNeeded:1];
  if (v56 < v58)
  {
    while (![(NSStringDrawingTextStorage *)self attribute:@"NSBackgroundColor" atIndex:v56 effectiveRange:&v68])
    {
      v56 = v69 + v68;
      v68 = v56;
      if (v56 >= v58)
      {
        goto LABEL_56;
      }
    }

    [(NSLayoutManager *)self->_layoutManager drawBackgroundForGlyphRange:v55.location atPoint:v55.length, x, v44];
  }

LABEL_56:
  [(NSLayoutManager *)self->_layoutManager drawGlyphsForGlyphRange:v55.location atPoint:v55.length, x, v44];
  [(NSLayoutManager *)self->_layoutManager setFlipsIfNeeded:0];
  if (contextCopy)
  {
    CGContextRestoreGState(contextCopy);
  }
}

- (CGPoint)defaultTextContainerOriginForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(NSLayoutManager *)self->_layoutManager usedRectForTextContainer:self->_textContainer];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(NSTextContainer *)self->_textContainer size];
  v18 = _NSCalculateContainerOrigin(x, y, width, height, v9, v11, v13, v15, v16, v17, *MEMORY[0x1E696AA88]);
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)textContainerForAttributedString:(id)string containerSize:(CGSize)size lineFragmentPadding:(double)padding
{
  height = size.height;
  width = size.width;
  [(NSConcreteMutableAttributedString *)self->_contents replaceCharactersInRange:0 withAttributedString:[(NSStringDrawingTextStorage *)self length], string];
  [(NSTextContainer *)self->_textContainer setSize:width, height];
  [(NSTextContainer *)self->_textContainer setLineFragmentPadding:padding];
  return self->_textContainer;
}

- (NSStringDrawingTextStorage)init
{
  if (__NSHasCustomSettings == 1)
  {
    p_settings = &[NSStringDrawingTextStorageSettings threadSpecificStringDrawingTextStorageSettings:?]->_settings;
  }

  else
  {
    p_settings = 0;
  }

  v11.receiver = self;
  v11.super_class = NSStringDrawingTextStorage;
  v4 = [(NSTextStorage *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithAttributedString:", 0];
    v5->_contents = v6;
    [(NSConcreteNotifyingMutableAttributedString *)v6 setDelegate:v5];
    v7 = [objc_allocWithZone(NSLayoutManager) init];
    v5->_layoutManager = v7;
    [(NSTextStorage *)v5 addLayoutManager:v7];
    [(NSLayoutManager *)v5->_layoutManager setUsesFontLeading:0];
    [(NSLayoutManager *)v5->_layoutManager setAllowsOriginalFontMetricsOverride:1];
    [(NSLayoutManager *)v5->_layoutManager setIgnoresViewTransformations:1];
    [(NSLayoutManager *)v5->_layoutManager setBackgroundLayoutEnabled:0];
    if (p_settings)
    {
      v8 = *&p_settings->_flags >> 8;
    }

    else
    {
      LOBYTE(v8) = __NSDefaultStringDrawingBehavior;
    }

    v5->_sdflags = (*&v5->_sdflags & 0xFFFFFFF0 | v8 & 0xF);
    [(NSLayoutManager *)v5->_layoutManager setTypesetterBehavior:v8 & 0xF];
    [(NSLayoutManager *)v5->_layoutManager setLimitsLayoutForSuspiciousContents:1];

    v9 = [objc_allocWithZone(NSTextContainer) init];
    v5->_textContainer = v9;
    [(NSTextContainer *)v9 setSize:9000000.0, 9000000.0];
    [(NSLayoutManager *)v5->_layoutManager addTextContainer:v5->_textContainer];

    if (p_settings)
    {
      [(NSLayoutManager *)v5->_layoutManager setUsesFontLeading:*&p_settings->_flags & 1];
      [(NSLayoutManager *)v5->_layoutManager setAllowsOriginalFontMetricsOverride:1];
      [(NSLayoutManager *)v5->_layoutManager setUsesScreenFonts:(*&p_settings->_flags >> 1) & 1];
      [(NSLayoutManager *)v5->_layoutManager setHyphenationFactor:p_settings->_hyphenationFactor];
      [(NSLayoutManager *)v5->_layoutManager setShowsInvisibleCharacters:(*&p_settings->_flags >> 2) & 1];
      [(NSLayoutManager *)v5->_layoutManager setShowsControlCharacters:(*&p_settings->_flags >> 3) & 1];
    }

    *&v5->_sdflags &= ~0x20u;
    v5->_sdflags = (*&v5->_sdflags & 0xFFFFF8FF | ((_NSTextScalingTypeForCurrentEnvironment() & 7) << 8));
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSStringDrawingTextStorage;
  [(NSTextStorage *)&v3 dealloc];
}

- (void)processEditing
{
  editedRange = [(NSTextStorage *)self editedRange];
  v5 = v4;
  [(NSTextStorage *)self invalidateAttributesInRange:editedRange, v4];
  editedMask = [(NSTextStorage *)self editedMask];
  changeInLength = [(NSTextStorage *)self changeInLength];
  editedRange2 = [(NSTextStorage *)self editedRange];

  [(NSTextStorage *)self _notifyEdited:editedMask range:editedRange changeInLength:v5 invalidatedRange:changeInLength, editedRange2, v8];
}

@end