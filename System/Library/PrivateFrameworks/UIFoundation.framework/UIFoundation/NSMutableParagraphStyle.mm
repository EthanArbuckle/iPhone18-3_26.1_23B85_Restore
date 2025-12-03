@interface NSMutableParagraphStyle
- (id)copyWithZone:(_NSZone *)zone;
- (void)_mutateTabStops;
- (void)_setLineBoundsOptions:(unint64_t)options;
- (void)_setListIntentOrdinal:(int64_t)ordinal;
- (void)_setPresentationIntents:(id)intents;
- (void)addTabStop:(NSTextTab *)anObject;
- (void)removeTabStop:(NSTextTab *)anObject;
- (void)setAlignment:(NSTextAlignment)alignment;
- (void)setAllowsDefaultTighteningForTruncation:(BOOL)allowsDefaultTighteningForTruncation;
- (void)setAllowsHangingPunctuation:(BOOL)punctuation;
- (void)setBaseWritingDirection:(NSWritingDirection)baseWritingDirection;
- (void)setBaselineInterval:(double)interval;
- (void)setBaselineIntervalType:(unint64_t)type;
- (void)setCodeBlockIntentLanguageHint:(id)hint;
- (void)setCompositionLanguage:(int64_t)language;
- (void)setFullyJustified:(BOOL)justified;
- (void)setHeaderLevel:(NSInteger)headerLevel;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setHyphenationFactor:(float)hyphenationFactor;
- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode;
- (void)setLineBreakStrategy:(NSLineBreakStrategy)lineBreakStrategy;
- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple;
- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore;
- (void)setParagraphStyle:(NSParagraphStyle *)obj;
- (void)setSecondaryLineBreakMode:(int64_t)mode;
- (void)setSpansAllLines:(BOOL)lines;
- (void)setTabStops:(NSArray *)tabStops;
- (void)setTextBlocks:(NSArray *)textBlocks;
- (void)setTextLists:(NSArray *)textLists;
- (void)setTighteningFactorForTruncation:(float)tighteningFactorForTruncation;
- (void)setUsesDefaultHyphenation:(BOOL)usesDefaultHyphenation;
- (void)setUsesOpticalAlignment:(BOOL)alignment;
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
  usesDefaultHyphenation = [(NSParagraphStyle *)obj usesDefaultHyphenation];
  spansAllLines = [(NSParagraphStyle *)obj spansAllLines];
  secondaryLineBreakMode = [(NSParagraphStyle *)obj secondaryLineBreakMode];
  [(NSParagraphStyle *)obj hyphenationFactor];
  v9 = v8;
  [(NSMutableParagraphStyle *)self setUsesDefaultHyphenation:usesDefaultHyphenation];
  v10 = 0.0;
  if (!usesDefaultHyphenation || *&__NSDefaultHyphenationFactor != v9)
  {
    *&v10 = v9;
  }

  [(NSMutableParagraphStyle *)self setHyphenationFactor:v10];
  [(NSMutableParagraphStyle *)self setSpansAllLines:spansAllLines];
  [(NSMutableParagraphStyle *)self setSecondaryLineBreakMode:secondaryLineBreakMode];
  [(NSMutableParagraphStyle *)self setHorizontalAlignment:[(NSParagraphStyle *)obj horizontalAlignment]];
  [(NSMutableParagraphStyle *)self setFullyJustified:[(NSParagraphStyle *)obj isFullyJustified]];
  _alignmentFollowsWritingDirection = [(NSParagraphStyle *)obj _alignmentFollowsWritingDirection];
  if (_alignmentFollowsWritingDirection || self->super._extraData)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 83) = _alignmentFollowsWritingDirection;
  }

  compositionLanguage = [(NSParagraphStyle *)obj compositionLanguage];

  [(NSMutableParagraphStyle *)self setCompositionLanguage:compositionLanguage];
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

- (void)setSpansAllLines:(BOOL)lines
{
  if ([(NSParagraphStyle *)self spansAllLines]!= lines)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 81) = lines;
  }
}

- (void)setSecondaryLineBreakMode:(int64_t)mode
{
  if ([(NSParagraphStyle *)self secondaryLineBreakMode]!= mode)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 16) = mode;
  }
}

- (void)setBaselineIntervalType:(unint64_t)type
{
  if ([(NSParagraphStyle *)self baselineIntervalType]!= type)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 17) = type;
  }
}

- (void)setBaselineInterval:(double)interval
{
  [(NSParagraphStyle *)self baselineInterval];
  if (v5 != interval)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 18) = interval;
  }
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  horizontalAlignment = [(NSParagraphStyle *)self horizontalAlignment];
  if (!alignment || horizontalAlignment != alignment)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    extraData = self->super._extraData;
    extraData[15] = alignment;
    *(extraData + 83) = 1;
    v7 = *(extraData + 82);
    v8 = alignment - 2;
    if ((alignment - 2) >= 3)
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

- (void)setFullyJustified:(BOOL)justified
{
  if ([(NSParagraphStyle *)self isFullyJustified]!= justified)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    extraData = self->super._extraData;
    extraData[82] = justified;
    if (justified)
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

- (void)_setLineBoundsOptions:(unint64_t)options
{
  [(NSParagraphStyle *)self _allocExtraData];
  *(self->super._extraData + 8) = options;
  if (object_getClass(self) != __NSMutableParagraphStyleClass)
  {
    [(NSMutableParagraphStyle *)self setAllowsHangingPunctuation:(options >> 2) & 1];

    [(NSMutableParagraphStyle *)self setUsesOpticalAlignment:(options >> 4) & 1];
  }
}

- (void)setAllowsHangingPunctuation:(BOOL)punctuation
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData = *(extraData + 64) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v5 = 4;
  if (!punctuation)
  {
    v5 = 0;
  }

  v6 = extraData | v5;
  [(NSParagraphStyle *)self _allocExtraData];
  *(self->super._extraData + 8) = v6;
}

- (void)setUsesOpticalAlignment:(BOOL)alignment
{
  extraData = self->super._extraData;
  if (extraData)
  {
    extraData = *(extraData + 64) & 0xFFFFFFFFFFFFFFEFLL;
  }

  v5 = 16;
  if (!alignment)
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
    _defaultWritingDirection = [objc_opt_class() _defaultWritingDirection];
    os_unfair_lock_lock_with_options();
    if (_defaultWritingDirection == 1)
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

- (void)setCompositionLanguage:(int64_t)language
{
  if ([(NSParagraphStyle *)self compositionLanguage]!= language)
  {
    extraData = self->super._extraData;
    if (!extraData)
    {
      [(NSParagraphStyle *)self _allocExtraData];
      extraData = self->super._extraData;
    }

    extraData[11] = language;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSParagraphStyle allocWithZone:[(NSMutableParagraphStyle *)self zone]];

  return [(NSParagraphStyle *)v4 _initWithParagraphStyle:self];
}

- (void)setCodeBlockIntentLanguageHint:(id)hint
{
  [(NSParagraphStyle *)self _allocExtraData];
  v5 = *(self->super._extraData + 14);
  if (v5 != hint)
  {

    *(self->super._extraData + 14) = [hint copy];
  }
}

- (void)_setPresentationIntents:(id)intents
{
  [(NSParagraphStyle *)self _allocExtraData];
  v5 = *(self->super._extraData + 12);
  if (v5 != intents)
  {

    *(self->super._extraData + 12) = [intents copy];
  }
}

- (void)_setListIntentOrdinal:(int64_t)ordinal
{
  if (ordinal || self->super._extraData)
  {
    [(NSParagraphStyle *)self _allocExtraData];
    *(self->super._extraData + 13) = ordinal;
  }
}

@end