@interface NSParagraphStyle
+ (NSParagraphStyle)defaultParagraphStyle;
+ (NSWritingDirection)defaultWritingDirectionForLanguage:(NSString *)languageName;
+ (int64_t)_defaultWritingDirection;
+ (void)initialize;
- (BOOL)_alignmentFollowsWritingDirection;
- (BOOL)_isSuitableForFastStringDrawingWithAlignment:(int64_t *)a3 mirrorsTextAlignment:(BOOL)a4 lineBreakMode:(int64_t *)a5 tighteningFactorForTruncation:(double *)a6;
- (BOOL)allowsHangingPunctuation;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFullyJustified;
- (BOOL)spansAllLines;
- (BOOL)usesDefaultHyphenation;
- (BOOL)usesOpticalAlignment;
- (CGFloat)lineHeightMultiple;
- (CGFloat)paragraphSpacingBefore;
- (NSArray)_presentationIntents;
- (NSArray)tabStops;
- (NSArray)textBlocks;
- (NSArray)textLists;
- (NSInteger)headerLevel;
- (NSLineBreakStrategy)lineBreakStrategy;
- (NSParagraphStyle)initWithCoder:(id)a3;
- (NSString)codeBlockIntentLanguageHint;
- (NSString)description;
- (NSWritingDirection)baseWritingDirection;
- (double)baselineInterval;
- (float)hyphenationFactor;
- (float)tighteningFactorForTruncation;
- (id)_initWithParagraphStyle:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)_listIntentOrdinal;
- (int64_t)compositionLanguage;
- (int64_t)horizontalAlignment;
- (int64_t)secondaryLineBreakMode;
- (uint64_t)_allocExtraData;
- (unint64_t)_lineBoundsOptions;
- (unint64_t)baselineIntervalType;
- (unint64_t)hash;
- (void)_allocExtraData;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSParagraphStyle

- (NSWritingDirection)baseWritingDirection
{
  flags = self->_flags;
  if ((flags & 0x200) != 0)
  {
    return -1;
  }

  else
  {
    return (flags >> 10) & 1;
  }
}

+ (int64_t)_defaultWritingDirection
{
  v2 = _defaultWritingDirection_defaultDirection;
  if (_defaultWritingDirection_defaultDirection == -1)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v4 BOOLForKey:@"NSForceRightToLeftWritingDirection"])
    {
      v2 = 1;
LABEL_12:
      _defaultWritingDirection_defaultDirection = v2;
      return v2;
    }

    MainBundle = CFBundleGetMainBundle();
    if (!MainBundle || (v6 = MainBundle, (v7 = CFBundleCopyBundleLocalizations(MainBundle)) == 0))
    {
      v2 = 0;
      goto LABEL_12;
    }

    v8 = v7;
    v9 = CFBundleCopyPreferredLocalizationsFromArray(v7);
    if (v9)
    {
      v10 = v9;
      v2 = [a1 defaultWritingDirectionForLanguage:{-[__CFArray objectAtIndex:](v9, "objectAtIndex:", 0)}];
      CFRelease(v10);
      if (v2 != 1)
      {
LABEL_10:
        CFRelease(v8);
        goto LABEL_12;
      }

      if (([v4 BOOLForKey:@"NSForceLeftToRightWritingDirection"] & 1) == 0)
      {
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, @"NSForceLeftToRightWritingDirection");
        if (!ValueForInfoDictionaryKey || ((v13 = ValueForInfoDictionaryKey, v14 = CFGetTypeID(ValueForInfoDictionaryKey), CFBooleanGetTypeID() != v14) || !CFBooleanGetValue(v13)) && (CFNumberGetTypeID() != v14 || ([(__CFBoolean *)v13 BOOLValue]& 1) == 0) && (CFStringGetTypeID() != v14 || CFStringGetLength(v13) < 1 || CFStringGetCharacterAtIndex(v13, 0) != 89 && CFStringGetCharacterAtIndex(v13, 0) != 121))
        {
          v2 = 1;
          goto LABEL_10;
        }
      }
    }

    v2 = 0;
    goto LABEL_10;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSParagraphStyle;
  [(NSParagraphStyle *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = [(NSParagraphStyle *)self horizontalAlignment];
  v4 = [(NSParagraphStyle *)self isFullyJustified];
  v5 = 0x10000000;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 + (v3 << 24) + (self->_headIndent << 16) + (self->_firstLineHeadIndent << 8);
  tabStops = self->_tabStops;
  if (tabStops)
  {
    v8 = [(NSArray *)tabStops count];
  }

  else
  {
    v8 = 12;
  }

  v9 = v6 + v8;
  extraData = self->_extraData;
  if (extraData)
  {
    v12 = *(extraData + 6);
    v11 = *(extraData + 7);
    if (v12 && [*(extraData + 6) count])
    {
      v9 += [objc_msgSend(v12 "lastObject")];
    }

    if (v11 && [v11 count])
    {
      v9 += [objc_msgSend(v11 "lastObject")];
    }

    v13 = [(NSArray *)[(NSParagraphStyle *)self _presentationIntents] hash];
    v14 = v13 + [(NSParagraphStyle *)self _listIntentOrdinal];
    v9 += v14 + [(NSString *)[(NSParagraphStyle *)self codeBlockIntentLanguageHint] hash];
  }

  return v9;
}

- (int64_t)horizontalAlignment
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[15];
  }

  v4 = *&self->_flags & 0xF;
  v5 = v4 > 2;
  v6 = v4 + 2;
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)isFullyJustified
{
  extraData = self->_extraData;
  if (extraData)
  {
    v3 = extraData[82];
  }

  else
  {
    v3 = (*&self->_flags & 0xF) == 3;
  }

  return v3 & 1;
}

- (NSArray)_presentationIntents
{
  extraData = self->_extraData;
  if (extraData)
  {
    return *(extraData + 12);
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (int64_t)_listIntentOrdinal
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[13];
  }

  else
  {
    return 0;
  }
}

- (NSString)codeBlockIntentLanguageHint
{
  extraData = self->_extraData;
  if (extraData)
  {
    return *(extraData + 14);
  }

  else
  {
    return &stru_1F01AD578;
  }
}

- (float)hyphenationFactor
{
  extraData = self->_extraData;
  if (extraData)
  {
    v3 = extraData[3];
    if (v3 != 0.0)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0.0;
  }

  if (![(NSParagraphStyle *)self usesDefaultHyphenation])
  {
    return v3;
  }

  v4 = objc_opt_class();

  [v4 _defaultHyphenationFactor];
  return result;
}

- (BOOL)usesDefaultHyphenation
{
  extraData = self->_extraData;
  if (extraData)
  {
    v3 = (extraData + 80);
  }

  else
  {
    v3 = &__NSUsesDefaultHyphenation_0;
  }

  return *v3;
}

- (unint64_t)baselineIntervalType
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[17];
  }

  else
  {
    return 0;
  }
}

- (CGFloat)lineHeightMultiple
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[1];
  }

  v4 = (*&self->_flags >> 11) & 3;
  if (v4)
  {
    return vcvtd_n_f64_u32(v4 + 1, 1uLL);
  }

  else
  {
    return 0.0;
  }
}

+ (void)initialize
{
  if (__NSParagraphStyleClass)
  {
    return;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 floatForKey:@"NSTighteningFactorForTruncation"];
  v4 = v3;
  __NSParagraphStyleClass = objc_opt_class();
  __NSMutableParagraphStyleClass = objc_opt_class();
  if (v4 > 0.0 || v4 == 0.0 && [v2 objectForKey:@"NSTighteningFactorForTruncation"])
  {
    *&__NSTightenFactor = v4;
  }

  if ([v2 objectForKey:@"NSAllowsDefaultTighteningForTruncation"])
  {
    v5 = [v2 BOOLForKey:@"NSAllowsDefaultTighteningForTruncation"];
  }

  else
  {
    if (__NSAllowsDefaultTightening != 1 || (dyld_program_sdk_at_least() & 1) != 0)
    {
      goto LABEL_11;
    }

    v5 = 0;
  }

  __NSAllowsDefaultTightening = v5;
LABEL_11:
  if ([v2 objectForKey:@"NSUsesDefaultHyphenation"])
  {
    __NSUsesDefaultHyphenation_0 = [v2 BOOLForKey:@"NSUsesDefaultHyphenation"];
  }

  if ([v2 objectForKey:@"NSDefaultHyphenationFactor"])
  {
    [v2 floatForKey:@"NSDefaultHyphenationFactor"];
    __NSDefaultHyphenationFactor = v6;
  }

  if ([v2 objectForKey:@"NSUsesOptimalLineBreaking"])
  {
    __NSUsesOptimalLineBreaking = [v2 BOOLForKey:@"NSUsesOptimalLineBreaking"];
  }

  if ([v2 objectForKey:@"NSUsesOptimalLineBreakingForNonJustifiedAlignments"])
  {
    __NSUsesOptimalLineBreakingForNonJustifiedAlignments = [v2 BOOLForKey:@"NSUsesOptimalLineBreakingForNonJustifiedAlignments"];
  }
}

- (NSLineBreakStrategy)lineBreakStrategy
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[9];
  }

  else
  {
    return 0;
  }
}

- (CGFloat)paragraphSpacingBefore
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[2];
  }

  else
  {
    return 0.0;
  }
}

- (BOOL)spansAllLines
{
  extraData = self->_extraData;
  if (extraData)
  {
    LOBYTE(extraData) = extraData[81];
  }

  return extraData & 1;
}

- (void)_allocExtraData
{
  if (!self->_extraData)
  {
    if (objc_getAssociatedObject(self, a2))
    {
      [(NSParagraphStyle *)a2 _allocExtraData];
    }

    objc_setAssociatedObject(self, a2, MEMORY[0x1E695E118], 1);
    v5 = [[NSParagraphStyleExtraData allocWithZone:?]];
    [(NSParagraphStyle *)self lineHeightMultiple];
    v5->_lineHeightMultiple = v6;
    [(NSParagraphStyle *)self paragraphSpacingBefore];
    v5->_paragraphSpacingBefore = v7;
    v5->_hyphenationFactor = 0.0;
    [(NSParagraphStyle *)self tighteningFactorForTruncation];
    v5->_tighteningFactor = v8;
    v9 = [(NSParagraphStyle *)self headerLevel];
    v5->_presentationIntents = 0;
    v5->_textBlocks = 0;
    v5->_textLists = 0;
    v5->_headerLevel = v9;
    v5->_lineBoundsOptions = [(NSParagraphStyle *)self _lineBoundsOptions];
    v5->_lineBreakStrategy = [(NSParagraphStyle *)self lineBreakStrategy];
    v5->_usesDefaultHyphenation = [(NSParagraphStyle *)self usesDefaultHyphenation];
    v5->_spansAllLines = [(NSParagraphStyle *)self spansAllLines];
    v5->_secondaryLineBreakMode = [(NSParagraphStyle *)self secondaryLineBreakMode];
    v5->_baselineIntervalType = [(NSParagraphStyle *)self baselineIntervalType];
    [(NSParagraphStyle *)self baselineInterval];
    v5->_baselineInterval = v10;
    v5->_alignmentFollowsWritingDirection = [(NSParagraphStyle *)self _alignmentFollowsWritingDirection];
    v5->_compositionLanguage = [(NSParagraphStyle *)self compositionLanguage];
    v5->_listIntentOrdinal = [(NSParagraphStyle *)self listIntentOrdinal];
    v5->_codeBlockIntentLanguageHint = [(NSString *)[(NSParagraphStyle *)self codeBlockIntentLanguageHint] copy];
    _NSCTTextAlignmentToHorizontalAlignment(*&self->_flags & 0xF, &v5->_horizontalAlignment, &v5->_fullyJustified);
    self->_extraData = v5;

    objc_setAssociatedObject(self, a2, 0, 1);
  }
}

- (unint64_t)_lineBoundsOptions
{
  extraData = self->_extraData;
  if (extraData)
  {
    v4 = extraData[8];
  }

  else
  {
    v4 = 0;
  }

  if (object_getClass(self) != __NSParagraphStyleClass && object_getClass(self) != __NSMutableParagraphStyleClass)
  {
    v5 = [(NSParagraphStyle *)self allowsHangingPunctuation];
    v6 = 4;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = v6 | v4 & 0xFFFFFFFFFFFFFFFBLL;
    if ([(NSParagraphStyle *)self usesOpticalAlignment])
    {
      return v7 | 0x10;
    }

    else
    {
      return v7 & 0xFFFFFFFFFFFFFFEFLL;
    }
  }

  return v4;
}

- (int64_t)compositionLanguage
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[11];
  }

  else
  {
    return 0;
  }
}

- (float)tighteningFactorForTruncation
{
  extraData = self->_extraData;
  if (extraData)
  {
    v3 = (extraData + 32);
  }

  else
  {
    v3 = &__NSTightenFactor;
  }

  return *v3;
}

- (NSInteger)headerLevel
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[5];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_alignmentFollowsWritingDirection
{
  extraData = self->_extraData;
  if (extraData)
  {
    LOBYTE(extraData) = extraData[83];
  }

  return extraData & 1;
}

- (int64_t)secondaryLineBreakMode
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[16];
  }

  else
  {
    return 0;
  }
}

- (double)baselineInterval
{
  extraData = self->_extraData;
  if (extraData)
  {
    return extraData[18];
  }

  else
  {
    return 0.0;
  }
}

- (NSArray)textBlocks
{
  extraData = self->_extraData;
  result = MEMORY[0x1E695E0F0];
  if (extraData)
  {
    v4 = *(extraData + 6);
    if (v4)
    {
      return v4;
    }
  }

  return result;
}

- (NSArray)textLists
{
  extraData = self->_extraData;
  result = MEMORY[0x1E695E0F0];
  if (extraData)
  {
    v4 = *(extraData + 7);
    if (v4)
    {
      return v4;
    }
  }

  return result;
}

+ (NSParagraphStyle)defaultParagraphStyle
{
  if (defaultParagraphStyle_once != -1)
  {
    +[NSParagraphStyle defaultParagraphStyle];
  }

  return defaultParagraphStyle_paraStyle;
}

uint64_t __41__NSParagraphStyle_defaultParagraphStyle__block_invoke()
{
  result = [objc_allocWithZone(NSParagraphStyle) init];
  defaultParagraphStyle_paraStyle = result;
  return result;
}

- (NSArray)tabStops
{
  result = self->_tabStops;
  if (!result)
  {
    if (defaultTabStops_onceToken != -1)
    {
      [NSParagraphStyle tabStops];
    }

    return defaultTabStops_array;
  }

  return result;
}

+ (NSWritingDirection)defaultWritingDirectionForLanguage:(NSString *)languageName
{
  if (languageName)
  {
    result = [(NSString *)languageName length];
    if (result)
    {
      return ([MEMORY[0x1E695DF58] characterDirectionForLanguage:languageName] == 2);
    }
  }

  else
  {

    return [a1 _defaultWritingDirection];
  }

  return result;
}

- (id)_initWithParagraphStyle:(id)a3
{
  v61.receiver = self;
  v61.super_class = NSParagraphStyle;
  v4 = [(NSParagraphStyle *)&v61 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  if (!a3)
  {
    v4->_maximumLineHeight = 0.0;
    v38 = NSTextAlignmentToCTTextAlignment(NSTextAlignmentNatural);
    v39 = v5[18] & 0xFFFFFC00;
    *(v5 + 4) = 0;
    *(v5 + 8) = 0;
    v5[18] = v39 & 0xFFFFFFF0 | v38 & 0xF | 0x200;
    v5[18] = v5[18] & 0xFFFFC3FF | (([objc_opt_class() _defaultWritingDirection] == 1) << 10) | (__NSAllowsDefaultTightening << 13);
    return v5;
  }

  if (object_getClass(a3) != __NSParagraphStyleClass && object_getClass(a3) != __NSMutableParagraphStyleClass)
  {
    [a3 paragraphSpacingBefore];
    v7 = v6;
    [a3 lineHeightMultiple];
    v60 = v8;
    [a3 hyphenationFactor];
    v10 = v9;
    [a3 tighteningFactorForTruncation];
    v12 = v11;
    v13 = [a3 baseWritingDirection];
    v14 = [a3 headerLevel];
    v15 = [a3 textBlocks];
    v16 = [a3 textLists];
    v59 = [a3 _lineBoundsOptions];
    v17 = [a3 lineBreakStrategy];
    v18 = [a3 usesDefaultHyphenation];
    v58 = [a3 spansAllLines];
    v57 = [a3 secondaryLineBreakMode];
    v53 = [a3 baselineIntervalType];
    [a3 baselineInterval];
    v20 = v19;
    v54 = [a3 _alignmentFollowsWritingDirection];
    v21 = [a3 compositionLanguage];
    v56 = [a3 horizontalAlignment];
    v55 = [a3 isFullyJustified];
    v5[18] = v5[18] & 0xFFFFFFF0 | NSTextAlignmentToCTTextAlignment([a3 alignment]) & 0xF;
    [a3 lineSpacing];
    *(v5 + 1) = v22;
    v5[18] = v5[18] & 0xFFFFFF0F | (16 * ([a3 lineBreakMode] & 0xF));
    [a3 firstLineHeadIndent];
    *(v5 + 5) = v23;
    [a3 paragraphSpacing];
    *(v5 + 2) = v24;
    [a3 headIndent];
    *(v5 + 3) = v25;
    [a3 tailIndent];
    *(v5 + 4) = v26;
    [a3 minimumLineHeight];
    *(v5 + 6) = v27;
    [a3 maximumLineHeight];
    *(v5 + 7) = v28;
    [a3 defaultTabInterval];
    *(v5 + 10) = v29;
    if ([a3 allowsDefaultTighteningForTruncation])
    {
      v30 = 0x2000;
    }

    else
    {
      v30 = 0;
    }

    v5[18] = v5[18] & 0xFFFFDFFF | v30;
    *(v5 + 8) = [objc_msgSend(a3 "tabStops")];
    v31 = v5[18];
    if (v13 == -1)
    {
      v5[18] = v31 & 0xFFFFFCFF | 0x200;
      v32 = v5[18] & 0xFFFFFBFF | (([objc_opt_class() _defaultWritingDirection] == 1) << 10);
    }

    else
    {
      v32 = v31 & 0xFFFFF8FF | ((v13 == 1) << 10);
    }

    v47 = v12;
    v5[18] = v32;
    if (v7 != 0.0 || (v51 = vdupq_lane_s64(*&v60, 0), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v51, xmmword_18E856490), vceqq_f64(v51, xmmword_18E8564A0)))) & 1) == 0) || v15 || v16 || v10 != 0.0 || *&__NSTightenFactor != v47 || v14 || v59 || v17 || __NSUsesDefaultHyphenation_0 != v18 || (v58 & 1) != 0 || v57 || v21 || [v5 _listIntentOrdinal] || objc_msgSend(objc_msgSend(v5, "_presentationIntents"), "count") || objc_msgSend(objc_msgSend(v5, "codeBlockIntentLanguageHint"), "length") || v56 || (v55 & 1) != 0 || (v54 & 1) != 0 || v53 || v20 != 0.0)
    {
      v5[18] &= 0xFFFFE7FF;
      v48 = -[NSParagraphStyleExtraData init](+[NSParagraphStyleExtraData allocWithZone:](NSParagraphStyleExtraData, "allocWithZone:", [v5 zone]), "init");
      *(v5 + 11) = v48;
      v48->_lineHeightMultiple = v60;
      v48->_paragraphSpacingBefore = v7;
      v48->_tighteningFactor = v47;
      v48->_headerLevel = v14;
      if (v15)
      {
        v48->_textBlocks = [v15 copyWithZone:{objc_msgSend(v5, "zone")}];
      }

      if (v16)
      {
        v48->_textLists = [v16 copyWithZone:{objc_msgSend(v5, "zone")}];
      }

      v48->_lineBoundsOptions = v59;
      v48->_lineBreakStrategy = v17;
      v48->_compositionLanguage = v21;
      v48->_usesDefaultHyphenation = v18;
      v48->_spansAllLines = v58;
      v48->_alignmentFollowsWritingDirection = v54;
      v48->_secondaryLineBreakMode = v57;
      v48->_baselineIntervalType = v53;
      v48->_baselineInterval = v20;
      v49 = 0.0;
      if ((v18 & (v10 == *&__NSDefaultHyphenationFactor)) == 0)
      {
        v49 = v10;
      }

      v48->_hyphenationFactor = v49;
      v48->_listIntentOrdinal = [a3 _listIntentOrdinal];
      v48->_presentationIntents = [objc_msgSend(a3 "_presentationIntents")];
      v48->_codeBlockIntentLanguageHint = [objc_msgSend(a3 "codeBlockIntentLanguageHint")];
      v48->_horizontalAlignment = v56;
      v48->_fullyJustified = v55;
      goto LABEL_32;
    }

    if (v60 == 1.0)
    {
      v52 = v5[18] & 0xFFFFE7FF | 0x800;
    }

    else if (v60 == 1.5)
    {
      v52 = v5[18] & 0xFFFFE7FF | 0x1000;
    }

    else
    {
      if (v60 != 2.0)
      {
        goto LABEL_32;
      }

      v52 = v5[18] | 0x1800;
    }

    v5[18] = v52;
LABEL_32:
    if ([a3 _presentationIntents])
    {
      *(*(v5 + 11) + 96) = [objc_msgSend(a3 "_presentationIntents")];
    }

    return v5;
  }

  v33 = [a3 baseWritingDirection];
  v34 = v5[18] & 0xFFFFFFF0 | *(a3 + 18) & 0xF;
  v5[18] = v34;
  *(v5 + 3) = *(a3 + 3);
  *(v5 + 4) = *(a3 + 4);
  *(v5 + 1) = *(a3 + 1);
  v35 = v34 & 0xFFFFFF0F | (16 * ((*(a3 + 18) >> 4) & 0xF));
  v5[18] = v35;
  *(v5 + 5) = *(a3 + 5);
  *(v5 + 2) = *(a3 + 2);
  *(v5 + 6) = *(a3 + 6);
  *(v5 + 7) = *(a3 + 7);
  v36 = *(a3 + 8);
  if (v36)
  {
    v37 = [v36 copyWithZone:{objc_msgSend(v5, "zone")}];
    v35 = v5[18];
  }

  else
  {
    v37 = 0;
  }

  *(v5 + 8) = v37;
  v5[18] = v35 & 0xFFFFFEFF;
  v40 = *(a3 + 18) & 0x1800 | v35 & 0xFFFFE6FF;
  v5[18] = v40;
  v41 = v40 & 0xFFFFDFFF | *(a3 + 18) & 0x2000;
  v5[18] = v41;
  *(v5 + 10) = *(a3 + 10);
  if (v33 == -1)
  {
    v5[18] = v41 | 0x200;
    v42 = v5[18] & 0xFFFFFBFF | (([objc_opt_class() _defaultWritingDirection] == 1) << 10);
  }

  else
  {
    v42 = v41 & 0xFFFFF8FF | ((v33 == 1) << 10);
  }

  v5[18] = v42;
  if (*(a3 + 11))
  {
    v43 = -[NSParagraphStyleExtraData init](+[NSParagraphStyleExtraData allocWithZone:](NSParagraphStyleExtraData, "allocWithZone:", [v5 zone]), "init");
    *(v5 + 11) = v43;
    v44 = *(a3 + 11);
    v43->_lineHeightMultiple = *(v44 + 8);
    v43->_paragraphSpacingBefore = *(v44 + 16);
    v43->_hyphenationFactor = *(v44 + 24);
    v43->_tighteningFactor = *(v44 + 32);
    v43->_headerLevel = *(v44 + 40);
    v45 = *(v44 + 48);
    if (v45)
    {
      v43->_textBlocks = [v45 copyWithZone:{objc_msgSend(v5, "zone")}];
    }

    v46 = *(v44 + 56);
    if (v46)
    {
      v43->_textLists = [v46 copyWithZone:{objc_msgSend(v5, "zone")}];
    }

    v43->_lineBoundsOptions = *(v44 + 64);
    v43->_lineBreakStrategy = *(v44 + 72);
    v43->_usesDefaultHyphenation = *(v44 + 80);
    v43->_spansAllLines = *(v44 + 81);
    v43->_secondaryLineBreakMode = *(v44 + 128);
    v43->_baselineIntervalType = *(v44 + 136);
    v43->_baselineInterval = *(v44 + 144);
    v43->_alignmentFollowsWritingDirection = *(v44 + 83);
    v43->_compositionLanguage = *(v44 + 88);
    v43->_presentationIntents = [*(v44 + 96) copy];
    v43->_listIntentOrdinal = *(v44 + 104);
    v43->_codeBlockIntentLanguageHint = [*(v44 + 112) copy];
    v43->_horizontalAlignment = *(v44 + 120);
    v43->_fullyJustified = *(v44 + 82);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NSMutableParagraphStyle allocWithZone:[(NSParagraphStyle *)self zone]];

  return [(NSParagraphStyle *)v4 _initWithParagraphStyle:self];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_164;
  }

  if (!a3)
  {
    goto LABEL_149;
  }

  if (object_getClass(self) != __NSParagraphStyleClass && object_getClass(self) != __NSMutableParagraphStyleClass || object_getClass(a3) != __NSParagraphStyleClass && object_getClass(a3) != __NSMutableParagraphStyleClass)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSParagraphStyle *)self horizontalAlignment];
      if (v5 == [a3 horizontalAlignment])
      {
        v6 = [(NSParagraphStyle *)self isFullyJustified];
        if (v6 == [a3 isFullyJustified])
        {
          [(NSParagraphStyle *)self headIndent];
          v8 = v7;
          [a3 headIndent];
          if (v8 == v9)
          {
            [(NSParagraphStyle *)self firstLineHeadIndent];
            v11 = v10;
            [a3 firstLineHeadIndent];
            if (v11 == v12)
            {
              [(NSParagraphStyle *)self tailIndent];
              v14 = v13;
              [a3 tailIndent];
              if (v14 == v15)
              {
                [(NSParagraphStyle *)self lineSpacing];
                v17 = v16;
                [a3 lineSpacing];
                if (v17 == v18)
                {
                  v19 = [(NSParagraphStyle *)self lineBreakMode];
                  if (v19 == [a3 lineBreakMode])
                  {
                    [(NSParagraphStyle *)self paragraphSpacing];
                    v21 = v20;
                    [a3 paragraphSpacing];
                    if (v21 == v22)
                    {
                      [(NSParagraphStyle *)self minimumLineHeight];
                      v24 = v23;
                      [a3 minimumLineHeight];
                      if (v24 == v25)
                      {
                        [(NSParagraphStyle *)self maximumLineHeight];
                        v27 = v26;
                        [a3 maximumLineHeight];
                        if (v27 == v28)
                        {
                          [(NSParagraphStyle *)self lineHeightMultiple];
                          v30 = v29;
                          [a3 lineHeightMultiple];
                          if (v30 == v31)
                          {
                            [(NSParagraphStyle *)self paragraphSpacingBefore];
                            v33 = v32;
                            [a3 paragraphSpacingBefore];
                            if (v33 == v34)
                            {
                              [(NSParagraphStyle *)self hyphenationFactor];
                              v36 = v35;
                              [a3 hyphenationFactor];
                              if (v36 == v37)
                              {
                                [(NSParagraphStyle *)self tighteningFactorForTruncation];
                                v39 = v38;
                                [a3 tighteningFactorForTruncation];
                                if (v39 == v40)
                                {
                                  v41 = [(NSParagraphStyle *)self headerLevel];
                                  if (v41 == [a3 headerLevel])
                                  {
                                    [(NSParagraphStyle *)self defaultTabInterval];
                                    v43 = v42;
                                    [a3 defaultTabInterval];
                                    if (v43 == v44)
                                    {
                                      v45 = [(NSParagraphStyle *)self baseWritingDirection];
                                      if (v45 == [a3 baseWritingDirection])
                                      {
                                        v46 = [(NSParagraphStyle *)self tabStops];
                                        if (v46 != [a3 tabStops])
                                        {
                                          v47 = -[NSArray isEqualToArray:](-[NSParagraphStyle tabStops](self, "tabStops"), "isEqualToArray:", [a3 tabStops]);
                                          if (!v47)
                                          {
                                            return v47;
                                          }
                                        }

                                        v48 = [(NSParagraphStyle *)self textBlocks];
                                        if (v48 != [a3 textBlocks])
                                        {
                                          v47 = -[NSArray isEqualToArray:](-[NSParagraphStyle textBlocks](self, "textBlocks"), "isEqualToArray:", [a3 textBlocks]);
                                          if (!v47)
                                          {
                                            return v47;
                                          }
                                        }

                                        v49 = [(NSParagraphStyle *)self textLists];
                                        if (v49 != [a3 textLists])
                                        {
                                          v47 = -[NSArray isEqualToArray:](-[NSParagraphStyle textLists](self, "textLists"), "isEqualToArray:", [a3 textLists]);
                                          if (!v47)
                                          {
                                            return v47;
                                          }
                                        }

                                        v50 = [(NSParagraphStyle *)self allowsDefaultTighteningForTruncation];
                                        if (v50 == [a3 allowsDefaultTighteningForTruncation])
                                        {
                                          v51 = [(NSParagraphStyle *)self _lineBoundsOptions];
                                          if (v51 == [a3 _lineBoundsOptions])
                                          {
                                            v52 = [(NSParagraphStyle *)self lineBreakStrategy];
                                            if (v52 == [a3 lineBreakStrategy])
                                            {
                                              v53 = [(NSParagraphStyle *)self usesDefaultHyphenation];
                                              if (v53 == [a3 usesDefaultHyphenation])
                                              {
                                                v54 = [(NSParagraphStyle *)self spansAllLines];
                                                if (v54 == [a3 spansAllLines])
                                                {
                                                  v55 = [(NSParagraphStyle *)self secondaryLineBreakMode];
                                                  if (v55 == [a3 secondaryLineBreakMode])
                                                  {
                                                    v56 = [(NSParagraphStyle *)self baselineIntervalType];
                                                    if (v56 == [a3 baselineIntervalType])
                                                    {
                                                      [(NSParagraphStyle *)self baselineInterval];
                                                      v58 = v57;
                                                      [a3 baselineInterval];
                                                      if (v58 == v59)
                                                      {
                                                        v60 = [(NSParagraphStyle *)self _alignmentFollowsWritingDirection];
                                                        if (v60 == [a3 _alignmentFollowsWritingDirection])
                                                        {
                                                          v61 = [(NSParagraphStyle *)self compositionLanguage];
                                                          if (v61 == [a3 compositionLanguage])
                                                          {
                                                            v62 = [(NSParagraphStyle *)self _presentationIntents];
                                                            v63 = MEMORY[0x1E695E0F0];
                                                            if (v62)
                                                            {
                                                              v64 = v62;
                                                            }

                                                            else
                                                            {
                                                              v64 = MEMORY[0x1E695E0F0];
                                                            }

                                                            v65 = [a3 _presentationIntents];
                                                            if (v65)
                                                            {
                                                              v66 = v65;
                                                            }

                                                            else
                                                            {
                                                              v66 = v63;
                                                            }

                                                            v47 = [(NSArray *)v64 isEqual:v66];
                                                            if (!v47)
                                                            {
                                                              return v47;
                                                            }

                                                            v67 = [(NSParagraphStyle *)self _listIntentOrdinal];
                                                            if (v67 == [a3 _listIntentOrdinal])
                                                            {
                                                              v68 = [(NSParagraphStyle *)self codeBlockIntentLanguageHint];
                                                              v69 = [a3 codeBlockIntentLanguageHint];

                                                              LOBYTE(v47) = [(NSString *)v68 isEqual:v69];
                                                              return v47;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_149:
    LOBYTE(v47) = 0;
    return v47;
  }

  extraData = self->_extraData;
  v71 = *(a3 + 11);
  if (extraData && v71)
  {
    if (*(extraData + 1) != *(v71 + 8) || *(extraData + 2) != *(v71 + 16) || *(extraData + 3) != *(v71 + 24) || *(extraData + 4) != *(v71 + 32) || *(extraData + 5) != *(v71 + 40))
    {
      goto LABEL_149;
    }

    v72 = *(extraData + 6);
    if (v72 != *(v71 + 48))
    {
      v47 = [v72 isEqualToArray:?];
      if (!v47)
      {
        return v47;
      }
    }

    v73 = *(extraData + 7);
    v74 = *(v71 + 56);
    if (v73 != v74)
    {
      v75 = (v73 ? *(extraData + 7) : MEMORY[0x1E695E0F0]);
      v76 = v74 ? *(v71 + 56) : MEMORY[0x1E695E0F0];
      v47 = [v75 isEqualToArray:v76];
      if (!v47)
      {
        return v47;
      }
    }

    if (*(extraData + 8) != *(v71 + 64) || *(extraData + 9) != *(v71 + 72) || extraData[80] != *(v71 + 80) || extraData[81] != *(v71 + 81) || *(extraData + 16) != *(v71 + 128) || *(extraData + 17) != *(v71 + 136) || *(extraData + 18) != *(v71 + 144) || extraData[83] != *(v71 + 83) || *(extraData + 11) != *(v71 + 88))
    {
      goto LABEL_149;
    }

    if (*(extraData + 12))
    {
      v77 = *(extraData + 12);
    }

    else
    {
      v77 = MEMORY[0x1E695E0F0];
    }

    if (*(v71 + 96))
    {
      v78 = *(v71 + 96);
    }

    else
    {
      v78 = MEMORY[0x1E695E0F0];
    }

    v47 = [v77 isEqual:v78];
    if (!v47)
    {
      return v47;
    }

    if (*(extraData + 13) != *(v71 + 104))
    {
      goto LABEL_149;
    }

    if (*(extraData + 14))
    {
      v79 = *(extraData + 14);
    }

    else
    {
      v79 = &stru_1F01AD578;
    }

    if (*(v71 + 112))
    {
      v80 = *(v71 + 112);
    }

    else
    {
      v80 = &stru_1F01AD578;
    }

    v47 = [(__CFString *)v79 isEqual:v80];
    if (!v47)
    {
      return v47;
    }

    if (*(extraData + 15) != *(v71 + 120) || extraData[82] != *(v71 + 82))
    {
      goto LABEL_149;
    }
  }

  else if (!extraData || v71)
  {
    flags = self->_flags;
    if (extraData || !v71)
    {
      if (((*(a3 + 18) ^ *&flags) & 0x180F) != 0)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v85 = (*&flags >> 11) & 3;
      v86 = vcvtd_n_f64_u32(v85 + 1, 1uLL);
      if (!v85)
      {
        v86 = 0.0;
      }

      if (v86 != *(v71 + 8))
      {
        goto LABEL_149;
      }

      if (*(v71 + 16) != 0.0)
      {
        goto LABEL_149;
      }

      if (*(v71 + 24) != 0.0)
      {
        goto LABEL_149;
      }

      if (*&__NSTightenFactor != *(v71 + 32))
      {
        goto LABEL_149;
      }

      if (*(v71 + 40))
      {
        goto LABEL_149;
      }

      if (*(v71 + 48))
      {
        goto LABEL_149;
      }

      if ([*(v71 + 56) count])
      {
        goto LABEL_149;
      }

      if (*(v71 + 64))
      {
        goto LABEL_149;
      }

      if (*(v71 + 72))
      {
        goto LABEL_149;
      }

      if (__NSUsesDefaultHyphenation_0 != *(v71 + 80))
      {
        goto LABEL_149;
      }

      if (*(v71 + 81))
      {
        goto LABEL_149;
      }

      if (*(v71 + 128))
      {
        goto LABEL_149;
      }

      if (*(v71 + 136))
      {
        goto LABEL_149;
      }

      if (*(v71 + 144) != 0.0)
      {
        goto LABEL_149;
      }

      if (*(v71 + 83))
      {
        goto LABEL_149;
      }

      if (*(v71 + 88))
      {
        goto LABEL_149;
      }

      if ([*(v71 + 96) count])
      {
        goto LABEL_149;
      }

      if (*(v71 + 104))
      {
        goto LABEL_149;
      }

      if ([*(v71 + 112) length])
      {
        goto LABEL_149;
      }

      v87 = *(v71 + 120);
      if (v87 != [(NSParagraphStyle *)self horizontalAlignment]|| (*(v71 + 82) & 1) != 0)
      {
        goto LABEL_149;
      }
    }
  }

  else
  {
    v81 = (*(a3 + 18) >> 11) & 3;
    v82 = vcvtd_n_f64_u32(v81 + 1, 1uLL);
    if (!v81)
    {
      v82 = 0.0;
    }

    if (*(extraData + 1) != v82)
    {
      goto LABEL_149;
    }

    if (*(extraData + 2) != 0.0)
    {
      goto LABEL_149;
    }

    if (*(extraData + 3) != 0.0)
    {
      goto LABEL_149;
    }

    if (*(extraData + 4) != *&__NSTightenFactor)
    {
      goto LABEL_149;
    }

    if (*(extraData + 5))
    {
      goto LABEL_149;
    }

    if (*(extraData + 6))
    {
      goto LABEL_149;
    }

    if ([*(extraData + 7) count])
    {
      goto LABEL_149;
    }

    if (*(extraData + 8))
    {
      goto LABEL_149;
    }

    if (*(extraData + 9))
    {
      goto LABEL_149;
    }

    if (extraData[80] != __NSUsesDefaultHyphenation_0)
    {
      goto LABEL_149;
    }

    if (extraData[81])
    {
      goto LABEL_149;
    }

    if (*(extraData + 16))
    {
      goto LABEL_149;
    }

    if (*(extraData + 17))
    {
      goto LABEL_149;
    }

    if (*(extraData + 18) != 0.0)
    {
      goto LABEL_149;
    }

    if (extraData[83])
    {
      goto LABEL_149;
    }

    if (*(extraData + 11))
    {
      goto LABEL_149;
    }

    if ([*(extraData + 12) count])
    {
      goto LABEL_149;
    }

    if (*(extraData + 13))
    {
      goto LABEL_149;
    }

    if ([*(extraData + 14) length])
    {
      goto LABEL_149;
    }

    v83 = *(extraData + 15);
    if (v83 != [a3 horizontalAlignment] || (extraData[82] & 1) != 0)
    {
      goto LABEL_149;
    }
  }

  if (self->_headIndent != *(a3 + 3))
  {
    goto LABEL_149;
  }

  if (self->_firstLineHeadIndent != *(a3 + 5))
  {
    goto LABEL_149;
  }

  if (self->_tailIndent != *(a3 + 4))
  {
    goto LABEL_149;
  }

  if (self->_lineSpacing != *(a3 + 1))
  {
    goto LABEL_149;
  }

  v88 = *(a3 + 18) ^ *&self->_flags;
  if ((v88 & 0xF0) != 0 || self->_paragraphSpacing != *(a3 + 2) || self->_minimumLineHeight != *(a3 + 6) || self->_maximumLineHeight != *(a3 + 7))
  {
    goto LABEL_149;
  }

  LOBYTE(v47) = 0;
  if ((v88 & 0x2600) != 0 || self->_defaultTabInterval != *(a3 + 10))
  {
    return v47;
  }

  if (self->_tabStops == *(a3 + 8))
  {
LABEL_164:
    LOBYTE(v47) = 1;
    return v47;
  }

  v89 = [(NSParagraphStyle *)self tabStops];
  v90 = [a3 tabStops];

  LOBYTE(v47) = [(NSArray *)v89 isEqualToArray:v90];
  return v47;
}

- (BOOL)allowsHangingPunctuation
{
  extraData = self->_extraData;
  if (extraData)
  {
    return (extraData[64] >> 2) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)usesOpticalAlignment
{
  extraData = self->_extraData;
  if (extraData)
  {
    return (extraData[64] >> 4) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_isSuitableForFastStringDrawingWithAlignment:(int64_t *)a3 mirrorsTextAlignment:(BOOL)a4 lineBreakMode:(int64_t *)a5 tighteningFactorForTruncation:(double *)a6
{
  v8 = a4;
  if (object_getClass(self) == __NSParagraphStyleClass || object_getClass(self) == __NSMutableParagraphStyleClass)
  {
    if (self->_headIndent != 0.0 || self->_tailIndent != 0.0 || self->_firstLineHeadIndent != 0.0 || self->_minimumLineHeight != 0.0 || self->_maximumLineHeight != 0.0 || (*&self->_flags & 0x400) != 0)
    {
LABEL_40:
      [(NSParagraphStyle *)self baseWritingDirection];
      return 0;
    }

    extraData = self->_extraData;
    if (extraData)
    {
      v24 = extraData[1];
      if (v24 != 0.0 && v24 != 1.0)
      {
        goto LABEL_40;
      }

      v26 = *(extraData + 6);
      if (v26)
      {
        if ([v26 count])
        {
          goto LABEL_40;
        }
      }

      if ([(NSParagraphStyle *)self alignment]== NSTextAlignmentJustified && (*(extraData + 81) & 1) != 0)
      {
        goto LABEL_40;
      }

      v29 = *(extraData + 83) == 0;
      if (a6 && (*(extraData + 83) & 1) == 0)
      {
        v30 = extraData + 4;
        goto LABEL_48;
      }
    }

    else
    {
      v28 = *&self->_flags & 0x1000;
      v29 = v28 == 0;
      if (a6 && !v28)
      {
        v30 = &__NSTightenFactor;
LABEL_48:
        *a6 = *v30;
        v31 = [(NSParagraphStyle *)self baseWritingDirection];
LABEL_50:
        v32 = v31;
        if (v31 == NSWritingDirectionRightToLeft || v31 == NSWritingDirectionNatural && [objc_opt_class() _defaultWritingDirection] == 1)
        {
          return 0;
        }

        if (a3)
        {
          v33 = [(NSParagraphStyle *)self alignment];
          *a3 = v33;
          if ((v33 - 3) <= 1)
          {
            if (v32 == -1)
            {
              v32 = [objc_opt_class() _defaultWritingDirection];
            }

            v34 = 2 * (v32 == 1);
            goto LABEL_58;
          }

          if (v8)
          {
            if (v33 == NSTextAlignmentLeft)
            {
              v34 = 2;
              goto LABEL_58;
            }

            if (v33 == NSTextAlignmentRight)
            {
              v34 = 0;
LABEL_58:
              *a3 = v34;
            }
          }
        }

        if (a5)
        {
          *a5 = (*&self->_flags << 24) >> 28;
        }

        return 1;
      }
    }

    v31 = [(NSParagraphStyle *)self baseWritingDirection];
    if (!v29)
    {
      return 0;
    }

    goto LABEL_50;
  }

  [(NSParagraphStyle *)self headIndent];
  if (v11 != 0.0)
  {
    goto LABEL_40;
  }

  [(NSParagraphStyle *)self tailIndent];
  if (v12 != 0.0)
  {
    goto LABEL_40;
  }

  [(NSParagraphStyle *)self firstLineHeadIndent];
  if (v13 != 0.0)
  {
    goto LABEL_40;
  }

  [(NSParagraphStyle *)self minimumLineHeight];
  if (v14 != 0.0)
  {
    goto LABEL_40;
  }

  [(NSParagraphStyle *)self maximumLineHeight];
  if (v15 != 0.0)
  {
    goto LABEL_40;
  }

  [(NSParagraphStyle *)self lineHeightMultiple];
  if (v16 != 0.0 && v16 != 1.0)
  {
    goto LABEL_40;
  }

  v17 = [(NSParagraphStyle *)self textBlocks];
  if (v17)
  {
    if ([(NSArray *)v17 count])
    {
      goto LABEL_40;
    }
  }

  if ([(NSParagraphStyle *)self alignment]== NSTextAlignmentJustified && [(NSParagraphStyle *)self spansAllLines])
  {
    goto LABEL_40;
  }

  v18 = [(NSParagraphStyle *)self _alignmentFollowsWritingDirection];
  v19 = [(NSParagraphStyle *)self baseWritingDirection];
  if (v18)
  {
    return 0;
  }

  v20 = v19;
  if (v19 == NSWritingDirectionRightToLeft || v19 == NSWritingDirectionNatural && [objc_opt_class() _defaultWritingDirection] == 1)
  {
    return 0;
  }

  if (a3)
  {
    v21 = [(NSParagraphStyle *)self alignment];
    *a3 = v21;
    if ((v21 - 3) > 1)
    {
      if (!v8)
      {
        goto LABEL_69;
      }

      if (v21)
      {
        if (v21 != NSTextAlignmentRight)
        {
          goto LABEL_69;
        }

        v22 = 0;
      }

      else
      {
        v22 = 2;
      }
    }

    else
    {
      if (v20 == -1)
      {
        v20 = [objc_opt_class() _defaultWritingDirection];
      }

      v22 = 2 * (v20 == 1);
    }

    *a3 = v22;
  }

LABEL_69:
  if (a5)
  {
    *a5 = [(NSParagraphStyle *)self lineBreakMode];
  }

  if (a6)
  {
    [(NSParagraphStyle *)self tighteningFactorForTruncation];
    *a6 = v35;
  }

  return 1;
}

- (void)encodeWithCoder:(id)a3
{
  *&v61[60] = *MEMORY[0x1E69E9840];
  flags = self->_flags;
  v6 = vcvtd_n_f64_u32(((*&flags >> 11) & 3) + 1, 1uLL);
  v7 = 0.0;
  if (((*&flags >> 11) & 3) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *&self->_flags & 0xF;
  if (v9 > 4)
  {
    v56 = 0;
    LOBYTE(v51) = 0;
  }

  else
  {
    v56 = qword_18E8564C8[v9];
    v51 = 0x1000000uLL >> (8 * v9);
  }

  extraData = self->_extraData;
  if (extraData)
  {
    v8 = *(extraData + 1);
    v11 = *(extraData + 2);
    v7 = *(extraData + 3);
    v12 = *(extraData + 4);
    v13 = *(extraData + 5);
    v15 = *(extraData + 6);
    v14 = *(extraData + 7);
    v17 = *(extraData + 8);
    v16 = *(extraData + 9);
    v18 = *(extraData + 11);
    v19 = *(extraData + 15);
    v20 = *(extraData + 16);
    v55 = *(extraData + 17);
    v21 = *(extraData + 18);
    v52 = *(extraData + 80);
    v53 = *(extraData + 81);
    LOBYTE(v54) = *(extraData + 82);
    BYTE4(v54) = *(extraData + 83);
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v17 = 0;
    v16 = 0;
    v20 = 0;
    v54 = 0;
    v55 = 0;
    v18 = 0;
    v19 = 0;
    v52 = __NSUsesDefaultHyphenation_0;
    v53 = 0;
    v12 = *&__NSTightenFactor;
    v13 = 0.0;
    v21 = 0.0;
    v11 = 0.0;
  }

  if ([a3 allowsKeyedCoding])
  {
    v22 = self->_flags;
    if ((*&v22 & 0xF) != 0)
    {
      [a3 encodeInteger:? forKey:?];
      v22 = self->_flags;
    }

    if (*&v22 >> 4)
    {
      [a3 encodeInteger:(*&v22 << 24) >> 28 forKey:@"NSLineBreakMode"];
    }

    if (self->_lineSpacing != 0.0)
    {
      [a3 encodeDouble:@"NSLineSpacing" forKey:?];
    }

    if (self->_paragraphSpacing != 0.0)
    {
      [a3 encodeDouble:@"NSParagraphSpacing" forKey:?];
    }

    if (self->_headIndent != 0.0)
    {
      [a3 encodeDouble:@"NSHeadIndent" forKey:?];
    }

    if (self->_firstLineHeadIndent != 0.0)
    {
      [a3 encodeDouble:@"NSFirstLineHeadIndent" forKey:?];
    }

    if (self->_tailIndent != 0.0)
    {
      [a3 encodeDouble:@"NSTailIndent" forKey:?];
    }

    if (self->_minimumLineHeight != 0.0)
    {
      [a3 encodeDouble:@"NSMinLineHeight" forKey:?];
    }

    if (self->_maximumLineHeight != 0.0)
    {
      [a3 encodeDouble:@"NSMaxLineHeight" forKey:?];
    }

    if (v8 != 0.0)
    {
      [a3 encodeDouble:@"NSLineHeightMultiple" forKey:v8];
    }

    if (v11 != 0.0)
    {
      [a3 encodeDouble:@"NSParagraphSpacingBefore" forKey:v11];
    }

    if (self->_defaultTabInterval != 0.0)
    {
      [a3 encodeDouble:@"NSDefaultTabInterval" forKey:?];
    }

    if (v7 != 0.0)
    {
      [a3 encodeDouble:@"NSHyphenationFactor" forKey:v7];
    }

    if (v12 != *&__NSTightenFactor)
    {
      [a3 encodeDouble:@"NSTighteningFactorForTruncation" forKey:v12];
    }

    if (v13 != 0.0)
    {
      [a3 encodeDouble:@"NSHeaderLevel" forKey:v13];
    }

    if (self->_tabStops && (*(&self->_flags + 1) & 1) != 0)
    {
      v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_tabStops];
      [a3 encodeObject:v50 forKey:@"NSTabStops"];

      if (!v15)
      {
        goto LABEL_45;
      }
    }

    else
    {
      [a3 encodeObject:? forKey:?];
      if (!v15)
      {
LABEL_45:
        if (v14)
        {
          [a3 encodeObject:v14 forKey:@"NSTextLists"];
        }

        v23 = self->_flags;
        if ((*&v23 & 0x200) == 0)
        {
          if ((*&v23 & 0x400) != 0)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          [a3 encodeInteger:v24 forKey:@"NSWritingDirection"];
        }

        if (v17)
        {
          [a3 encodeInteger:v17 forKey:@"NSLineBoundsOptions"];
        }

        if ((*(&self->_flags + 1) & 0x20) != 0)
        {
          [a3 encodeInteger:1 forKey:@"NSAllowsTighteningForTruncation"];
        }

        if (v16)
        {
          [a3 encodeInteger:v16 forKey:@"NSLineBreakStrategy"];
        }

        if (v52)
        {
          [a3 encodeBool:1 forKey:@"NSUsesDefaultHyphenation"];
        }

        if (v53)
        {
          [a3 encodeBool:1 forKey:@"NSSpansAllLines"];
        }

        if (v20)
        {
          [a3 encodeInteger:v20 forKey:@"NSSecondaryLineBreakMode"];
        }

        if (v18)
        {
          [a3 encodeInteger:v18 forKey:@"NSCompositionLanguage"];
        }

        if (v19 && (v19 != v56 || (v54 & 1) != v51))
        {
          [a3 encodeInteger:v19 forKey:@"NSTextHorizontalAlignment"];
        }

        if ((v54 & 1) != 0 && (!v51 || v19 != v56))
        {
          [a3 encodeBool:1 forKey:@"NSFullyJustified"];
        }

        if ((v54 & 0x100000000) != 0)
        {
          [a3 encodeBool:1 forKey:@"NSAlignmentFollowsWritingDirection"];
        }

        if (v55)
        {
          [a3 encodeInteger:v55 forKey:@"NSBaselineIntervalType"];

          [a3 encodeDouble:@"NSBaselineInterval" forKey:v21];
        }

        return;
      }
    }

    [a3 encodeObject:v15 forKey:@"NSTextBlocks"];
    goto LABEL_45;
  }

  v25 = self->_flags;
  v59 = *&v25 & 0xF;
  v58 = *&v25 >> 4;
  v57 = 0;
  lineSpacing = self->_lineSpacing;
  if (lineSpacing == 0.0)
  {
    v28 = 0;
    v30 = 0;
    v27 = &v60;
  }

  else
  {
    v27 = v61;
    v28 = 1;
    v57 = 1;
    v29 = lineSpacing;
    v60 = v29;
    v30 = 1;
  }

  paragraphSpacing = self->_paragraphSpacing;
  if (paragraphSpacing != 0.0)
  {
    v28 |= 2u;
    v57 = v28;
    v32 = paragraphSpacing;
    ++v30;
    *v27 = v32;
  }

  headIndent = self->_headIndent;
  if (headIndent != 0.0)
  {
    v28 |= 4u;
    v57 = v28;
    v34 = headIndent;
    *&v61[4 * v30++ - 4] = v34;
  }

  tailIndent = self->_tailIndent;
  if (tailIndent != 0.0)
  {
    v28 |= 8u;
    v57 = v28;
    v36 = tailIndent;
    *&v61[4 * v30++ - 4] = v36;
  }

  firstLineHeadIndent = self->_firstLineHeadIndent;
  if (firstLineHeadIndent != 0.0)
  {
    v28 |= 0x10u;
    v57 = v28;
    v38 = firstLineHeadIndent;
    *&v61[4 * v30++ - 4] = v38;
  }

  minimumLineHeight = self->_minimumLineHeight;
  if (minimumLineHeight != 0.0)
  {
    v28 |= 0x20u;
    v57 = v28;
    v40 = minimumLineHeight;
    *&v61[4 * v30++ - 4] = v40;
  }

  maximumLineHeight = self->_maximumLineHeight;
  if (maximumLineHeight != 0.0)
  {
    v28 |= 0x40u;
    v57 = v28;
    v42 = maximumLineHeight;
    *&v61[4 * v30++ - 4] = v42;
  }

  if (v8 != 0.0)
  {
    v28 |= 0x80u;
    v57 = v28;
    v43 = v8;
    *&v61[4 * v30++ - 4] = v43;
  }

  if (v11 != 0.0)
  {
    v28 |= 0x100u;
    v57 = v28;
    v44 = v11;
    *&v61[4 * v30++ - 4] = v44;
  }

  defaultTabInterval = self->_defaultTabInterval;
  if (defaultTabInterval != 0.0)
  {
    v28 |= 0x200u;
    v57 = v28;
    v46 = defaultTabInterval;
    *&v61[4 * v30++ - 4] = v46;
  }

  if (v7 != 0.0)
  {
    v28 |= 0x400u;
    v57 = v28;
    v47 = v7;
    *&v61[4 * v30++ - 4] = v47;
  }

  if (v12 != *&__NSTightenFactor)
  {
    v28 |= 0x800u;
    v57 = v28;
    v48 = v12;
    *&v61[4 * v30++ - 4] = v48;
  }

  if (v13 != 0.0)
  {
    v57 = v28 | 0x1000;
    v49 = v13;
    *&v61[4 * v30++ - 4] = v49;
  }

  [a3 encodeValuesOfObjCTypes:{"CC@S", &v59, &v58, &self->_tabStops, &v57}];
  if (v57)
  {
    [a3 encodeArrayOfObjCType:"f" count:v30 at:&v60];
  }
}

- (NSParagraphStyle)initWithCoder:(id)a3
{
  *&v81[60] = *MEMORY[0x1E69E9840];
  v4 = *&__NSTightenFactor;
  v5 = __NSUsesDefaultHyphenation_0;
  v79.receiver = self;
  v79.super_class = NSParagraphStyle;
  v6 = [(NSParagraphStyle *)&v79 init];
  if (v6)
  {
    if ([a3 allowsKeyedCoding])
    {
      v7 = [a3 decodeIntegerForKey:@"NSWritingDirection"];
      v8 = [a3 decodeIntegerForKey:@"NSAlignment"];
      *(v6 + 18) = *(v6 + 18) & 0xFFFFFFF0 | v8 & 0xF;
      if ((v8 & 0xFu) > 4)
      {
        v9 = 0;
        LOBYTE(v71) = 0;
      }

      else
      {
        v9 = qword_18E8564C8[v8 & 0xF];
        v71 = 0x1000000uLL >> (8 * (v8 & 0xFu));
      }

      *(v6 + 18) = *(v6 + 18) & 0xFFFFFF0F | (16 * ([a3 decodeIntegerForKey:@"NSLineBreakMode"] & 0xF));
      [a3 decodeDoubleForKey:@"NSLineSpacing"];
      *(v6 + 1) = v18;
      [a3 decodeDoubleForKey:@"NSParagraphSpacing"];
      *(v6 + 2) = v19;
      [a3 decodeDoubleForKey:@"NSHeadIndent"];
      *(v6 + 3) = v20;
      [a3 decodeDoubleForKey:@"NSFirstLineHeadIndent"];
      *(v6 + 5) = v21;
      [a3 decodeDoubleForKey:@"NSTailIndent"];
      *(v6 + 4) = v22;
      [a3 decodeDoubleForKey:@"NSMinLineHeight"];
      *(v6 + 6) = v23;
      [a3 decodeDoubleForKey:@"NSMaxLineHeight"];
      *(v6 + 7) = v24;
      [a3 decodeDoubleForKey:@"NSLineHeightMultiple"];
      v76 = v25;
      [a3 decodeDoubleForKey:@"NSParagraphSpacingBefore"];
      v27 = v26;
      [a3 decodeDoubleForKey:@"NSDefaultTabInterval"];
      *(v6 + 10) = v28;
      [a3 decodeDoubleForKey:@"NSHyphenationFactor"];
      v30 = v29;
      if ([a3 containsValueForKey:@"NSTighteningFactorForTruncation"])
      {
        [a3 decodeDoubleForKey:@"NSTighteningFactorForTruncation"];
        v4 = v31;
      }

      [a3 decodeDoubleForKey:@"NSHeaderLevel"];
      v33 = v32;
      v34 = MEMORY[0x1E695DFD8];
      v35 = objc_opt_class();
      v36 = [a3 decodeObjectOfClasses:objc_msgSend(v34 forKey:{"setWithObjects:", v35, objc_opt_class(), 0), @"NSTabStops"}];
      *(v6 + 8) = v36;
      if (v36)
      {
        if ([a3 decodeBoolForKey:@"NSTabStopsMutable"])
        {
          v37 = 256;
        }

        else
        {
          v37 = 0;
        }

        *(v6 + 18) = *(v6 + 18) & 0xFFFFFEFF | v37;
      }

      v38 = MEMORY[0x1E695DFD8];
      v39 = objc_opt_class();
      v75 = [a3 decodeObjectOfClasses:objc_msgSend(v38 forKey:{"setWithObjects:", v39, objc_opt_class(), 0), @"NSTextBlocks"}];
      v40 = MEMORY[0x1E695DFD8];
      v41 = objc_opt_class();
      v74 = [a3 decodeObjectOfClasses:objc_msgSend(v40 forKey:{"setWithObjects:", v41, objc_opt_class(), 0), @"NSTextLists"}];
      v42 = *(v6 + 18);
      if (v7)
      {
        v43 = v42 & 0xFFFFF9FF | ((v7 == 2) << 10);
      }

      else
      {
        *(v6 + 18) = v42 | 0x200;
        v43 = *(v6 + 18) & 0xFFFFFBFF | (([objc_opt_class() _defaultWritingDirection] == 1) << 10);
      }

      *(v6 + 18) = v43;
      v73 = [a3 decodeIntegerForKey:@"NSLineBoundsOptions"];
      *(v6 + 18) = *(v6 + 18) & 0xFFFFDFFF | (([a3 decodeIntegerForKey:@"NSAllowsTighteningForTruncation"] != 0) << 13);
      v72 = [a3 decodeIntegerForKey:@"NSLineBreakStrategy"];
      if ([a3 containsValueForKey:@"NSUsesDefaultHyphenation"])
      {
        v5 = [a3 decodeBoolForKey:@"NSUsesDefaultHyphenation"];
      }

      if ([a3 containsValueForKey:@"NSSpansAllLines"])
      {
        v45 = [a3 decodeBoolForKey:@"NSSpansAllLines"];
      }

      else
      {
        v45 = 0;
      }

      if ([a3 containsValueForKey:@"NSSecondaryLineBreakMode"])
      {
        v46 = [a3 decodeIntegerForKey:@"NSSecondaryLineBreakMode"] != 0;
      }

      else
      {
        v46 = 0;
      }

      v44 = v5;
      if ([a3 containsValueForKey:@"NSCompositionLanguage"])
      {
        v47 = [a3 decodeIntegerForKey:@"NSCompositionLanguage"];
      }

      else
      {
        v47 = 0;
      }

      v70 = v9;
      if ([a3 containsValueForKey:@"NSTextHorizontalAlignment"])
      {
        v9 = [a3 decodeIntegerForKey:@"NSTextHorizontalAlignment"];
      }

      v48 = v71;
      if ([a3 containsValueForKey:@"NSFullyJustified"])
      {
        v48 = [a3 decodeBoolForKey:@"NSFullyJustified"];
      }

      if ([a3 containsValueForKey:@"NSAlignmentFollowsWritingDirection"])
      {
        v49 = [a3 decodeBoolForKey:@"NSAlignmentFollowsWritingDirection"];
      }

      else
      {
        v49 = 0;
      }

      v50 = [a3 decodeIntegerForKey:@"NSBaselineIntervalType"];
      [a3 decodeDoubleForKey:@"NSBaselineInterval"];
      v11 = v51;
LABEL_73:
      if (v27 == 0.0)
      {
        v65 = vdupq_lane_s64(*&v76, 0);
        if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v65, xmmword_18E856490), vceqq_f64(v65, xmmword_18E8564A0)))) & 1) != 0 && !v75 && !v74 && v30 == 0.0 && v4 == *&__NSTightenFactor && v33 == 0.0 && !v73 && !v72 && __NSUsesDefaultHyphenation_0 == v44 && ((v45 | v46) & 1) == 0 && !v47 && (!v9 || v9 == v70 && (v48 & 1) == v71))
        {
          if (v48)
          {
            if (v71)
            {
              v66 = v9 == v70;
            }

            else
            {
              v66 = 0;
            }

            v67 = !v66;
            if (((v67 | v49) & 1) != 0 || v50)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v50)
            {
              v68 = 1;
            }

            else
            {
              v68 = v49;
            }

            if (v68 == 1)
            {
              goto LABEL_74;
            }
          }

          if (v76 == 1.0)
          {
            v69 = *(v6 + 18) & 0xFFFFE7FF | 0x800;
          }

          else if (v76 == 1.5)
          {
            v69 = *(v6 + 18) & 0xFFFFE7FF | 0x1000;
          }

          else
          {
            if (v76 != 2.0)
            {
              return v6;
            }

            v69 = *(v6 + 18) | 0x1800;
          }

          *(v6 + 18) = v69;
          return v6;
        }
      }

LABEL_74:
      *(v6 + 18) &= 0xFFFFE7FF;
      v63 = -[NSParagraphStyleExtraData init](+[NSParagraphStyleExtraData allocWithZone:](NSParagraphStyleExtraData, "allocWithZone:", [v6 zone]), "init");
      *(v6 + 11) = v63;
      v63->_lineHeightMultiple = v76;
      v63->_paragraphSpacingBefore = v27;
      v63->_hyphenationFactor = v30;
      v63->_tighteningFactor = v4;
      v63->_headerLevel = v33;
      v63->_textBlocks = v75;
      v63->_textLists = v74;
      v63->_lineBoundsOptions = v73;
      v63->_lineBreakStrategy = v72;
      v63->_usesDefaultHyphenation = v44;
      v63->_spansAllLines = v45;
      v63->_compositionLanguage = v47;
      v63->_horizontalAlignment = v9;
      v63->_secondaryLineBreakMode = 0;
      v63->_fullyJustified = v48 & 1;
      v63->_alignmentFollowsWritingDirection = v49;
      v63->_baselineIntervalType = v50;
      v63->_baselineInterval = v11;
      return v6;
    }

    v78 = 0;
    v77 = 0;
    [a3 decodeValuesOfObjCTypes:{"CC@S", &v78 + 1, &v78, v6 + 64, &v77}];
    v10 = *(v6 + 18) & 0xFFFFFE00 | HIBYTE(v78) & 0xF | (16 * (v78 & 0xF));
    *(v6 + 18) = v10;
    v11 = 0.0;
    if (!v77)
    {
      v44 = v5;
      v76 = 0.0;
      v27 = 0.0;
      v30 = 0.0;
      v33 = 0.0;
LABEL_72:
      *(v6 + 18) = v10 | 0x200;
      v70 = 0;
      LOBYTE(v71) = 0;
      v74 = 0;
      v75 = 0;
      v72 = 0;
      v73 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v9 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      *(v6 + 18) = *(v6 + 18) & 0xFFFFFBFF | (([objc_opt_class() _defaultWritingDirection] == 1) << 10);
      goto LABEL_73;
    }

    v12 = 0;
    v13 = v81;
    v14 = 1;
    do
    {
      if ((v14 & v77) != 0)
      {
        ++v12;
      }

      v15 = v14 >= 0x8000;
      v14 *= 2;
    }

    while (!v15);
    [a3 decodeArrayOfObjCType:"f" count:v12 at:&v80];
    v16 = v77;
    if (v77)
    {
      *(v6 + 1) = v80;
      v17 = 1;
      if ((v16 & 2) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v17 = 0;
      v13 = &v80;
      if ((v77 & 2) == 0)
      {
LABEL_47:
        if ((v16 & 4) != 0)
        {
          v54 = *&v81[4 * v17++ - 4];
          *(v6 + 3) = v54;
          if ((v16 & 8) == 0)
          {
LABEL_49:
            if ((v16 & 0x10) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_58;
          }
        }

        else if ((v16 & 8) == 0)
        {
          goto LABEL_49;
        }

        v55 = *&v81[4 * v17++ - 4];
        *(v6 + 4) = v55;
        if ((v16 & 0x10) == 0)
        {
LABEL_50:
          if ((v16 & 0x20) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_59;
        }

LABEL_58:
        v56 = *&v81[4 * v17++ - 4];
        *(v6 + 5) = v56;
        if ((v16 & 0x20) == 0)
        {
LABEL_51:
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

LABEL_59:
        v57 = *&v81[4 * v17++ - 4];
        *(v6 + 6) = v57;
        if ((v16 & 0x40) == 0)
        {
LABEL_53:
          v27 = 0.0;
          if ((v16 & 0x80) != 0)
          {
            v58 = *&v81[4 * v17++ - 4];
            v53 = v58;
            if ((v16 & 0x100) == 0)
            {
LABEL_63:
              if ((v16 & 0x200) != 0)
              {
                v60 = *&v81[4 * v17++ - 4];
                *(v6 + 10) = v60;
              }

              v30 = 0.0;
              if ((v16 & 0x400) != 0)
              {
                v61 = *&v81[4 * v17++ - 4];
                v30 = v61;
              }

              if ((v16 & 0x800) != 0)
              {
                v62 = *&v81[4 * v17++ - 4];
                v4 = v62;
              }

              v44 = v5;
              v33 = 0.0;
              if ((v16 & 0x1000) != 0)
              {
                v33 = *&v81[4 * v17 - 4];
              }

              v76 = v53;
              v10 = *(v6 + 18);
              goto LABEL_72;
            }
          }

          else
          {
            v53 = 0.0;
            if ((v16 & 0x100) == 0)
            {
              goto LABEL_63;
            }
          }

          v59 = *&v81[4 * v17++ - 4];
          v27 = v59;
          goto LABEL_63;
        }

LABEL_52:
        v52 = *&v81[4 * v17++ - 4];
        *(v6 + 7) = v52;
        goto LABEL_53;
      }
    }

    ++v17;
    *(v6 + 2) = *v13;
    goto LABEL_47;
  }

  return v6;
}

- (NSString)description
{
  v52 = MEMORY[0x1E696AEC0];
  v3 = [(NSParagraphStyle *)self alignment];
  if (v3 >= (NSTextAlignmentNatural|NSTextAlignmentCenter))
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v3];
  }

  else
  {
    v51 = off_1E72674A8[v3];
  }

  v4 = [(NSParagraphStyle *)self spansAllLines];
  [(NSParagraphStyle *)self lineSpacing];
  v50 = v5;
  [(NSParagraphStyle *)self paragraphSpacing];
  v49 = v6;
  [(NSParagraphStyle *)self paragraphSpacingBefore];
  v48 = v7;
  [(NSParagraphStyle *)self headIndent];
  v9 = v8;
  [(NSParagraphStyle *)self tailIndent];
  v11 = v10;
  [(NSParagraphStyle *)self firstLineHeadIndent];
  v13 = v12;
  [(NSParagraphStyle *)self minimumLineHeight];
  v15 = v14;
  [(NSParagraphStyle *)self maximumLineHeight];
  v17 = v16;
  [(NSParagraphStyle *)self lineHeightMultiple];
  v19 = v18;
  if ([(NSParagraphStyle *)self baselineIntervalType])
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [(NSParagraphStyle *)self baselineIntervalType];
    if (v21 >= 4)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v21];
    }

    else
    {
      v22 = off_1E72674D0[v21];
    }

    [(NSParagraphStyle *)self baselineInterval];
    v47 = [v20 stringWithFormat:@", BaselineInterval %@ %g", v22, v23];
  }

  else
  {
    v47 = &stru_1F01AD578;
  }

  v24 = [(NSParagraphStyle *)self lineBreakMode];
  if (v24 >= (NSLineBreakByTruncatingTail|NSLineBreakByClipping))
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v24];
  }

  else
  {
    v46 = off_1E72674F0[v24];
  }

  if ([(NSParagraphStyle *)self secondaryLineBreakMode])
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [(NSParagraphStyle *)self secondaryLineBreakMode];
    if (v26 >= 3)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v26];
    }

    else
    {
      v27 = off_1E7267520[v26];
    }

    v45 = [v25 stringWithFormat:@", SecondaryLineBreakMode %@", v27];
  }

  else
  {
    v45 = &stru_1F01AD578;
  }

  v44 = [(NSParagraphStyle *)self tabStops];
  [(NSParagraphStyle *)self defaultTabInterval];
  v29 = v28;
  v43 = [(NSParagraphStyle *)self textBlocks];
  v30 = [(NSParagraphStyle *)self textLists];
  v31 = [(NSParagraphStyle *)self baseWritingDirection];
  if ((v31 + 1) >= 3)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v31];
  }

  else
  {
    v32 = off_1E7267538[v31 + 1];
  }

  if (v4)
  {
    v33 = @", SpansAllLines YES";
  }

  else
  {
    v33 = &stru_1F01AD578;
  }

  [(NSParagraphStyle *)self hyphenationFactor];
  v35 = v34;
  if ([(NSParagraphStyle *)self allowsDefaultTighteningForTruncation])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v37 = [(NSParagraphStyle *)self headerLevel];
  v38 = [(NSParagraphStyle *)self lineBreakStrategy];
  if ([(NSParagraphStyle *)self usesDefaultHyphenation])
  {
    v39 = @", UsesDefaultHyphenation YES";
  }

  else
  {
    v39 = &stru_1F01AD578;
  }

  v40 = [(NSParagraphStyle *)self _presentationIntents];
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = MEMORY[0x1E695E0F0];
  }

  return [v52 stringWithFormat:@"Alignment %@%@, LineSpacing %g, ParagraphSpacing %g, ParagraphSpacingBefore %g, HeadIndent %g, TailIndent %g, FirstLineHeadIndent %g, LineHeight %g/%g, LineHeightMultiple %g%@ LineBreakMode %@%@, Tabs %@, DefaultTabInterval %g, Blocks %@, Lists %@, BaseWritingDirection %@, HyphenationFactor %g, TighteningForTruncation %@, HeaderLevel %ld LineBreakStrategy %lu%@ PresentationIntents %@ ListIntentOrdinal %ld CodeBlockIntentLanguageHint '%@'", v51, v33, v50, v49, v48, v9, v11, v13, v15, v17, v19, v47, v46, v45, v44, v29, v43, v30, v32, *&v35, v36, v37, v38, v39, v41, -[NSParagraphStyle _listIntentOrdinal](self, "_listIntentOrdinal"), -[NSParagraphStyle codeBlockIntentLanguageHint](self, "codeBlockIntentLanguageHint")];
}

- (uint64_t)_allocExtraData
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"NSParagraphStyle.m" lineNumber:580 description:@"_allocExtraData is not reentrant!"];
}

@end