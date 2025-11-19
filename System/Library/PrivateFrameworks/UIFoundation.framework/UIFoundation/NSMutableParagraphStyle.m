@interface NSMutableParagraphStyle
- (id)copyWithZone:(_NSZone *)a3;
- (void)_mutateTabStops;
- (void)_setLineBoundsOptions:(unint64_t)a3;
- (void)_setListIntentOrdinal:(int64_t)a3;
- (void)_setPresentationIntents:(id)a3;
- (void)addTabStop:(NSTextTab *)anObject;
- (void)removeTabStop:(NSTextTab *)anObject;
- (void)setAlignment:(NSTextAlignment)alignment;
- (void)setAllowsDefaultTighteningForTruncation:(BOOL)allowsDefaultTighteningForTruncation;
- (void)setAllowsHangingPunctuation:(BOOL)a3;
- (void)setBaseWritingDirection:(NSWritingDirection)baseWritingDirection;
- (void)setBaselineInterval:(double)a3;
- (void)setBaselineIntervalType:(unint64_t)a3;
- (void)setCodeBlockIntentLanguageHint:(id)a3;
- (void)setCompositionLanguage:(int64_t)a3;
- (void)setFullyJustified:(BOOL)a3;
- (void)setHeaderLevel:(NSInteger)headerLevel;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setHyphenationFactor:(float)hyphenationFactor;
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode;
- (void)setLineBreakStrategy:(NSLineBreakStrategy)lineBreakStrategy;
- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple;
- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore;
- (void)setParagraphStyle:(NSParagraphStyle *)obj;
- (void)setSecondaryLineBreakMode:(int64_t)a3;
- (void)setSpansAllLines:(BOOL)a3;
- (void)setTabStops:(NSArray *)tabStops;
- (void)setTextBlocks:(NSArray *)textBlocks;
- (void)setTextLists:(NSArray *)textLists;
- (void)setTighteningFactorForTruncation:(float)tighteningFactorForTruncation;
- (void)setUsesDefaultHyphenation:(BOOL)usesDefaultHyphenation;
- (void)setUsesOpticalAlignment:(BOOL)a3;
@end

@implementation NSMutableParagraphStyle

- (void)_mutateTabStops
{
  tabStops = self->super._tabStops;
  if (tabStops)
  {
    if ((*(&self->super._flags + 1) & 1) == 0)
    {
      v4 = tabStops;
      self->super._tabStops = [(NSArray *)tabStops mutableCopyWithZone:[(NSMutableParagraphStyle *)self zone]];
      os_unfair_lock_lock_with_options();
      *&self->super._flags |= 0x100u;
      os_unfair_lock_unlock(&__NSParagraphStyleLock);
    }
  }

  else
  {
    if (defaultTabStops_onceToken != -1)
    {
      [NSParagraphStyle tabStops];
    }

    self->super._tabStops = [defaultTabStops_array mutableCopyWithZone:{-[NSMutableParagraphStyle zone](self, "zone")}];
    os_unfair_lock_lock_with_options();
    *&self->super._flags |= 0x100u;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setParagraphStyle:(NSParagraphStyle *)obj
{
  [(NSMutableParagraphStyle *)self setAlignment:[(NSParagraphStyle *)obj alignment]];
  [(NSParagraphStyle *)obj lineSpacing];
  [(NSMutableParagraphStyle *)self setLineSpacing:?];
  [(NSMutableParagraphStyle *)self setLineBreakMode:[(NSParagraphStyle *)obj lineBreakMode]];
  [(NSParagraphStyle *)obj firstLineHeadIndent];
  [(NSMutableParagraphStyle *)self setFirstLineHeadIndent:?];
  [(NSParagraphStyle *)obj paragraphSpacing];
  [(NSMutableParagraphStyle *)self setParagraphSpacing:?];
  [(NSParagraphStyle *)obj headIndent];
  [(NSMutableParagraphStyle *)self setHeadIndent:?];
  [(NSParagraphStyle *)obj tailIndent];
  [(NSMutableParagraphStyle *)self setTailIndent:?];
  [(NSParagraphStyle *)obj minimumLineHeight];
  [(NSMutableParagraphStyle *)self setMinimumLineHeight:?];
  [(NSParagraphStyle *)obj maximumLineHeight];
  [(NSMutableParagraphStyle *)self setMaximumLineHeight:?];
  [(NSMutableParagraphStyle *)self setTabStops:[(NSParagraphStyle *)obj tabStops]];
  [(NSMutableParagraphStyle *)self setBaseWritingDirection:[(NSParagraphStyle *)obj baseWritingDirection]];
  [(NSParagraphStyle *)obj lineHeightMultiple];
  [(NSMutableParagraphStyle *)self setLineHeightMultiple:?];
  [(NSParagraphStyle *)obj paragraphSpacingBefore];
  [(NSMutableParagraphStyle *)self setParagraphSpacingBefore:?];
  [(NSParagraphStyle *)obj defaultTabInterval];
  [(NSMutableParagraphStyle *)self setDefaultTabInterval:?];
  [(NSParagraphStyle *)obj tighteningFactorForTruncation];
  [(NSMutableParagraphStyle *)self setTighteningFactorForTruncation:?];
  [(NSMutableParagraphStyle *)self setHeaderLevel:[(NSParagraphStyle *)obj headerLevel]];
  [(NSMutableParagraphStyle *)self setTextBlocks:[(NSParagraphStyle *)obj textBlocks]];
  [(NSMutableParagraphStyle *)self setTextLists:[(NSParagraphStyle *)obj textLists]];
  [(NSMutableParagraphStyle *)self setAllowsDefaultTighteningForTruncation:[(NSParagraphStyle *)obj allowsDefaultTighteningForTruncation]];
  [(NSMutableParagraphStyle *)self setLineBreakStrategy:[(NSParagraphStyle *)obj lineBreakStrategy]];
  v5 = [(NSParagraphStyle *)obj usesDefaultHyphenation];
  v6 = [(NSParagraphStyle *)obj spansAllLines];
  v7 = [(NSParagraphStyle *)obj secondaryLineBreakMode];
  [(NSParagraphStyle *)obj hyphenationFactor];
  v9 = v8;
  [(NSMutableParagraphStyle *)self setUsesDefaultHyphenation:v5];
  v10 = 0.0;
  if (!v5 || *&__NSDefaultHyphenationFactor != v9)
  {
    *&v10 = v9;
  }

  [(NSMutableParagraphStyle *)self setHyphenationFactor:v10];
  [(NSMutableParagraphStyle *)self setSpansAllLines:v6];
  [(NSMutableParagraphStyle *)self setSecondaryLineBreakMode:v7];
  [(NSMutableParagraphStyle *)self setHorizontalAlignment:[(NSParagraphStyle *)obj horizontalAlignment]];
  [(NSMutableParagraphStyle *)self setFullyJustified:[(NSParagraphStyle *)obj isFullyJustified]];
  v11 = [(NSParagraphStyle *)obj _alignmentFollowsWritingDirection];
  if (v11 || self->super._extraData)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 83) = v11;
  }

  v12 = [(NSParagraphStyle *)obj compositionLanguage];

  [(NSMutableParagraphStyle *)self setCompositionLanguage:v12];
}

- (void)setAlignment:(NSTextAlignment)alignment
{
  os_unfair_lock_lock_with_options();
  v5 = NSTextAlignmentToCTTextAlignment(alignment);
  self->super._flags = (*&self->super._flags & 0xFFFFFFF0 | v5 & 0xF);
  extraData = self->super._extraData;
  if (extraData)
  {
    _NSCTTextAlignmentToHorizontalAlignment(v5 & 0xF, extraData + 15, extraData + 82);
    *(self->super._extraData + 83) = 0;
  }

  os_unfair_lock_unlock(&__NSParagraphStyleLock);
}

- (void)setSpansAllLines:(BOOL)a3
{
  if ([(NSParagraphStyle *)self spansAllLines]!= a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 81) = a3;
  }
}

- (void)setSecondaryLineBreakMode:(int64_t)a3
{
  if ([(NSParagraphStyle *)self secondaryLineBreakMode]!= a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 16) = a3;
  }
}

- (void)setBaselineIntervalType:(unint64_t)a3
{
  if ([(NSParagraphStyle *)self baselineIntervalType]!= a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 17) = a3;
  }
}

- (void)setBaselineInterval:(double)a3
{
  [(NSParagraphStyle *)self baselineInterval];
  if (v5 != a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 18) = a3;
  }
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  v5 = [(NSParagraphStyle *)self horizontalAlignment];
  if (!a3 || v5 != a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    extraData = self->super._extraData;
    extraData[15] = a3;
    *(extraData + 83) = 1;
    v7 = *(extraData + 82);
    v8 = a3 - 2;
    if ((a3 - 2) >= 3)
    {
      v8 = 4;
    }

    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    self->super._flags = (*&self->super._flags & 0xFFFFFFF0 | v9);
  }
}

- (void)setFullyJustified:(BOOL)a3
{
  if ([(NSParagraphStyle *)self isFullyJustified]!= a3)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    extraData = self->super._extraData;
    extraData[82] = a3;
    if (a3)
    {
      LODWORD(v6) = 3;
    }

    else
    {
      v6 = *(extraData + 15) - 2;
      if (v6 >= 3)
      {
        LODWORD(v6) = 4;
      }
    }

    self->super._flags = (*&self->super._flags & 0xFFFFFFF0 | v6);
  }
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
{
  v3 = lineBreakMode;
  os_unfair_lock_lock_with_options();
  self->super._flags = (*&self->super._flags & 0xFFFFFF0F | (16 * (v3 & 0xF)));

  os_unfair_lock_unlock(&__NSParagraphStyleLock);
}

- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple
{
  extraData = self->super._extraData;
  if (extraData)
  {
    goto LABEL_2;
  }

  if (lineHeightMultiple == 0.0)
  {
    os_unfair_lock_lock_with_options();
    v6 = (*&self->super._flags & 0xFFFFE7FF);
  }

  else if (lineHeightMultiple == 1.0)
  {
    os_unfair_lock_lock_with_options();
    v6 = (*&self->super._flags & 0xFFFFE7FF | 0x800);
  }

  else if (lineHeightMultiple == 1.5)
  {
    os_unfair_lock_lock_with_options();
    v6 = (*&self->super._flags & 0xFFFFE7FF | 0x1000);
  }

  else
  {
    if (lineHeightMultiple != 2.0)
    {
      [(NSParagraphStyle *)self _allocExtraData];
      extraData = self->super._extraData;
LABEL_2:
      extraData[1] = lineHeightMultiple;
      return;
    }

    os_unfair_lock_lock_with_options();
    v6 = (*&self->super._flags | 0x1800);
  }

  self->super._flags = v6;

  os_unfair_lock_unlock(&__NSParagraphStyleLock);
}

- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData[2] = paragraphSpacingBefore;
  }

  else if (paragraphSpacingBefore != 0.0)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 2) = paragraphSpacingBefore;
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setTextBlocks:(NSArray *)textBlocks
{
  extraData = self->super._extraData;
  if (extraData)
  {
    v6 = *(extraData + 6);
    if (v6 != textBlocks)
    {
      v7 = v6;
      *(self->super._extraData + 6) = [(NSArray *)textBlocks copyWithZone:[(NSMutableParagraphStyle *)self zone]];
    }
  }

  else if (textBlocks)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 6) = [(NSArray *)textBlocks copyWithZone:[(NSMutableParagraphStyle *)self zone]];
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setTextLists:(NSArray *)textLists
{
  extraData = self->super._extraData;
  if (extraData)
  {
    v6 = *(extraData + 7);
    if (v6 != textLists)
    {
      v7 = v6;
      *(self->super._extraData + 7) = [(NSArray *)textLists copyWithZone:[(NSMutableParagraphStyle *)self zone]];
    }
  }

  else if (textLists)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 7) = [(NSArray *)textLists copyWithZone:[(NSMutableParagraphStyle *)self zone]];
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setAllowsDefaultTighteningForTruncation:(BOOL)allowsDefaultTighteningForTruncation
{
  if (allowsDefaultTighteningForTruncation)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = (*&self->super._flags & 0xFFFFDFFF | v3);
}

- (void)addTabStop:(NSTextTab *)anObject
{
  [(NSTextTab *)anObject location];
  v6 = v5;
  [(NSMutableParagraphStyle *)self _mutateTabStops];
  v7 = [(NSArray *)self->super._tabStops count];
  v8 = 0;
  do
  {
    v9 = v7;
    v10 = v8;
    if (v7-- < 1)
    {
      break;
    }

    [-[NSArray objectAtIndex:](self->super._tabStops objectAtIndex:{v7), "location"}];
    v8 = v10 + 1;
  }

  while (v12 > v6);
  tabStops = self->super._tabStops;
  if (v10)
  {

    [(NSArray *)tabStops insertObject:anObject atIndex:v9];
  }

  else
  {

    [(NSArray *)tabStops addObject:anObject];
  }
}

- (void)removeTabStop:(NSTextTab *)anObject
{
  [(NSMutableParagraphStyle *)self _mutateTabStops];
  v5 = [(NSArray *)self->super._tabStops indexOfObject:anObject];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    tabStops = self->super._tabStops;

    [(NSArray *)tabStops removeObjectAtIndex:v6];
  }
}

- (void)setTabStops:(NSArray *)tabStops
{
  v4 = self->super._tabStops;
  if (v4 != tabStops)
  {
    v6 = v4;
    if (defaultTabStops_onceToken != -1)
    {
      [NSParagraphStyle tabStops];
    }

    if (defaultTabStops_array == tabStops)
    {
      self->super._tabStops = 0;
      os_unfair_lock_lock_with_options();
      v7 = (*&self->super._flags & 0xFFFFFEFF);
    }

    else
    {
      self->super._tabStops = [(NSArray *)tabStops mutableCopyWithZone:[(NSMutableParagraphStyle *)self zone]];
      os_unfair_lock_lock_with_options();
      v7 = (*&self->super._flags | 0x100);
    }

    self->super._flags = v7;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)_setLineBoundsOptions:(unint64_t)a3
{
  [(NSParagraphStyle *)self _allocExtraData];
  *(self->super._extraData + 8) = a3;
  if (object_getClass(self) != __NSMutableParagraphStyleClass)
  {
    [(NSMutableParagraphStyle *)self setAllowsHangingPunctuation:(a3 >> 2) & 1];

    [(NSMutableParagraphStyle *)self setUsesOpticalAlignment:(a3 >> 4) & 1];
  }
}

- (void)setAllowsHangingPunctuation:(BOOL)a3
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData = *(extraData + 64) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v5 = 4;
  if (!a3)
  {
    v5 = 0;
  }

  v6 = extraData | v5;
  [(NSParagraphStyle *)self _allocExtraData];
  *(self->super._extraData + 8) = v6;
}

- (void)setUsesOpticalAlignment:(BOOL)a3
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData = *(extraData + 64) & 0xFFFFFFFFFFFFFFEFLL;
  }

  v5 = 16;
  if (!a3)
  {
    v5 = 0;
  }

  v6 = extraData | v5;
  [(NSParagraphStyle *)self _allocExtraData];
  *(self->super._extraData + 8) = v6;
}

- (void)setLineBreakStrategy:(NSLineBreakStrategy)lineBreakStrategy
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData[9] = lineBreakStrategy;
  }

  else if (lineBreakStrategy)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 9) = lineBreakStrategy;
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setBaseWritingDirection:(NSWritingDirection)baseWritingDirection
{
  if (baseWritingDirection == NSWritingDirectionNatural)
  {
    v6 = [objc_opt_class() _defaultWritingDirection];
    os_unfair_lock_lock_with_options();
    if (v6 == 1)
    {
      v7 = 1536;
    }

    else
    {
      v7 = 512;
    }

    v5 = v7 | *&self->super._flags & 0xFFFFF9FF;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v5 = *&self->super._flags & 0xFFFFF9FF | ((baseWritingDirection == NSWritingDirectionRightToLeft) << 10);
  }

  self->super._flags = v5;

  os_unfair_lock_unlock(&__NSParagraphStyleLock);
}

- (void)setHyphenationFactor:(float)hyphenationFactor
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData[3] = hyphenationFactor;
  }

  else if (hyphenationFactor != 0.0)
  {
    v6 = hyphenationFactor;
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 3) = v6;
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (void)setTighteningFactorForTruncation:(float)tighteningFactorForTruncation
{
  v3 = tighteningFactorForTruncation;
  extraData = self->super._extraData;
  v6 = tighteningFactorForTruncation;
  if (extraData)
  {
    extraData[4] = v6;
  }

  else
  {
    *&tighteningFactorForTruncation = __NSTightenFactor;
    if (*&__NSTightenFactor != v6)
    {
      [(NSParagraphStyle *)self _allocExtraData];
      *(self->super._extraData + 4) = v6;
      os_unfair_lock_lock_with_options();
      *&self->super._flags &= 0xFFFFE7FF;
      os_unfair_lock_unlock(&__NSParagraphStyleLock);
    }
  }

  if (v3 == 0.0)
  {

    [(NSMutableParagraphStyle *)self setAllowsDefaultTighteningForTruncation:0, *&tighteningFactorForTruncation];
  }
}

- (void)setUsesDefaultHyphenation:(BOOL)usesDefaultHyphenation
{
  if ([(NSParagraphStyle *)self usesDefaultHyphenation]!= usesDefaultHyphenation)
  {
    extraData = self->super._extraData;
    if (!extraData)
    {
      [(NSParagraphStyle *)self _allocExtraData];
      os_unfair_lock_lock_with_options();
      *&self->super._flags &= 0xFFFFE7FF;
      os_unfair_lock_unlock(&__NSParagraphStyleLock);
      extraData = self->super._extraData;
    }

    extraData[80] = usesDefaultHyphenation;
  }
}

- (void)setCompositionLanguage:(int64_t)a3
{
  if ([(NSParagraphStyle *)self compositionLanguage]!= a3)
  {
    extraData = self->super._extraData;
    if (!extraData)
    {
      [(NSParagraphStyle *)self _allocExtraData];
      extraData = self->super._extraData;
    }

    extraData[11] = a3;
  }
}

- (void)setHeaderLevel:(NSInteger)headerLevel
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData[5] = headerLevel;
  }

  else if (headerLevel)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 5) = headerLevel;
    os_unfair_lock_lock_with_options();
    *&self->super._flags &= 0xFFFFE7FF;

    os_unfair_lock_unlock(&__NSParagraphStyleLock);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSParagraphStyle allocWithZone:[(NSMutableParagraphStyle *)self zone]];

  return [(NSParagraphStyle *)v4 _initWithParagraphStyle:self];
}

- (void)setCodeBlockIntentLanguageHint:(id)a3
{
  [(NSParagraphStyle *)self _allocExtraData];
  v5 = *(self->super._extraData + 14);
  if (v5 != a3)
  {

    *(self->super._extraData + 14) = [a3 copy];
  }
}

- (void)_setPresentationIntents:(id)a3
{
  [(NSParagraphStyle *)self _allocExtraData];
  v5 = *(self->super._extraData + 12);
  if (v5 != a3)
  {

    *(self->super._extraData + 12) = [a3 copy];
  }
}

- (void)_setListIntentOrdinal:(int64_t)a3
{
  if (a3 || self->super._extraData)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 13) = a3;
  }
}

@end