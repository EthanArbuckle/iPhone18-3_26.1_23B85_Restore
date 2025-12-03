@interface _NSOptimalLineBreaker
- ($102BB1629D0471A0919C413AE880609B)lineBreakAtIndex:(SEL)index;
- ($554B148941027912B77C686939519A4B)lineInfoAtIndex:(SEL)index;
- (BOOL)_attributedStringOverridesMethodWithSelector:(void *)selector;
- (BOOL)_breakRange:(uint64_t)range fallsWithinTokenWithTokenizer:(CFStringTokenizerRef)tokenizer;
- (NSParagraphStyle)defaultParagraphStyle;
- (NSString)debugString;
- (_NSOptimalLineBreaker)init;
- (_NSRange)paragraphRange;
- (__CTLine)lineAtIndex:(unint64_t)index lineInfo:(id *)info;
- (double)_breakPenaltyForBreak:(uint64_t)break;
- (double)_demeritFromBreak:(uint64_t)break toBreak:;
- (double)_estimatedExpansionRatioForLineWithNaturalWidth:(uint64_t)width;
- (double)_expansionRatioFromBreak:(uint64_t)break toBreak:;
- (double)_minimumDemeritForLineEndingAtBreak:(double)break withExpansionRatio:;
- (double)_naturalWidthFromBreak:(id *)break toBreak:(id *)toBreak;
- (double)_softHyphenPenaltyForBreak:(uint64_t)break;
- (id)_getNaturalWidth:(double *)width expand:(double *)expand contract:(uint64_t)contract fromBreak:(uint64_t)break toBreak:;
- (id)_lineMetrics;
- (int64x2_t)_resetOptions;
- (long)_breakPenaltyForHyphenationFactor:(uint64_t)factor;
- (long)_implicitNBSPPenaltyForBreak:(uint64_t)break;
- (uint64_t)_bestNode:(uint64_t)node dominatesNode:;
- (uint64_t)_bestNodeInNodeList:(uint64_t)list withLineCount:;
- (uint64_t)_createNodeWithParent:(__int128 *)parent lineBreak:(char)break expansionRatio:(double)ratio mustSucceed:;
- (uint64_t)_equivalenceClassForNode:(int)node asTerminalNode:;
- (uint64_t)_hasArtificialBreak;
- (uint64_t)_lineBreakTokenizer;
- (uint64_t)_localeHasDictionaryBasedLineBreaks;
- (uint64_t)_mustExceedLineCount:(uint64_t)result;
- (uint64_t)_node:(uint64_t *)_node isBetterThanNode:;
- (uint64_t)_shouldAllowLastLineFromBreak:(uint64_t)break toBreak:;
- (uint64_t)_shouldAvoidBreakingAfterWord:(uint64_t)word;
- (unint64_t)_indexOfLastResortHyphenInRange:(CFIndex)range maxWidth:(double)width;
- (unint64_t)_indexOfLineBreakAtCharacterIndex:(unint64_t)result;
- (unint64_t)_rangeOfLineBreakEndingAtIndex:(__int16 *)index flags:(unint64_t)flags inRange:(uint64_t)range inlineBuffer:(void *)buffer;
- (unint64_t)lineCount;
- (void)_addLineBreakWithRange:(uint64_t)range flags:(__int16)flags;
- (void)_calculateFirstFitWrapping;
- (void)_calculateLineBreaks;
- (void)_calculateOptimalWrapping;
- (void)_calculateOptimalWrappingWithLineBreakFilter:(uint64_t)filter;
- (void)_computeFontMetricsAtIndex:(uint64_t)index;
- (void)_computeLineBreakGeometry;
- (void)_computeParagraphStyleValues;
- (void)_createLines;
- (void)_demeritFromBreak:(uint64_t)break toBreak:(double)toBreak usingExpansionRatio:;
- (void)_enumerateEquivalenceClassComponentsForNode:(int)node asTerminalNode:(void *)terminalNode withBlock:;
- (void)_enumerateHyphenationPointsWithBlock:(uint64_t)block;
- (void)_enumerateNonBreakingSpacesWithBlock:(id *)block;
- (void)_enumerateOrdinaryLineBreaksWithBlock:(uint64_t)block;
- (void)_forcedBreakBetweenBreak:(_OWORD *)break@<X2> andBreak:(_OWORD *)andBreak@<X3> withLastNBSP:(char *)p@<X4> shouldRetryEndBreak:(uint64_t)endBreak@<X8>;
- (void)_getMinWidth:(uint64_t)width maxWidth:(uint64_t)maxWidth whenJustifyingLineFromBreak:(uint64_t)break toBreak:(unint64_t *)toBreak;
- (void)_paragraphStyle;
- (void)dealloc;
- (void)enumerateLineBreaksInRange:(_NSRange)range withBlock:(id)block;
- (void)invalidateWrapping;
- (void)layout;
- (void)setAllowsHyphenation:(BOOL)hyphenation;
- (void)setAttributedString:(id)string;
- (void)setAttributedString:(id)string paragraphRange:(_NSRange)range;
- (void)setAvoidsRivers:(BOOL)rivers;
- (void)setBreaksWithinCJWords:(BOOL)words;
- (void)setCompressesLeftAlignedText:(BOOL)text;
- (void)setDefaultParagraphStyle:(id)style;
- (void)setExpandsGlyphs:(BOOL)glyphs;
- (void)setHyphenatesAsLastResort:(BOOL)resort;
- (void)setHyphenatesBetweenMorphemesFreely:(BOOL)freely;
- (void)setHyphenationFactor:(double)factor;
- (void)setKoreanLineBreakBehavior:(int)behavior;
- (void)setLineBreakAlgorithm:(id)algorithm;
- (void)setLineBreakStrategy:(unint64_t)strategy;
- (void)setLineCountAdjustment:(int64_t)adjustment;
- (void)setLocale:(__CFLocale *)locale;
- (void)setMaximumNumberOfLines:(unint64_t)lines;
- (void)setMinHyphenationLineCount:(unint64_t)count;
- (void)setMinimumLastLineLength:(double)length;
- (void)setOptions:(id)options;
- (void)setParagraphLine:(__CTLine *)line;
- (void)setParagraphRange:(_NSRange)range;
- (void)setPrepositionLineBreakBehavior:(int)behavior;
- (void)setShouldFillLastLine:(BOOL)line;
- (void)setTextContainerWidth:(double)width;
- (void)setUsesCFStringTokenizerForLineBreaks:(BOOL)breaks;
- (void)setUsesHangingPunctuation:(BOOL)punctuation;
- (void)setUsesStretchClasses:(BOOL)classes;
@end

@implementation _NSOptimalLineBreaker

- (void)dealloc
{
  lineBreaks = self->_lineBreaks;
  if (lineBreaks)
  {
    free(lineBreaks);
  }

  lines = self->_lines;
  if (lines)
  {
    CFRelease(lines);
  }

  lineInfos = self->_lineInfos;
  if (lineInfos)
  {
    free(lineInfos);
  }

  wordTokenizer = self->_wordTokenizer;
  if (wordTokenizer)
  {
    CFRelease(wordTokenizer);
  }

  wordBoundaryTokenizer = self->_wordBoundaryTokenizer;
  if (wordBoundaryTokenizer)
  {
    CFRelease(wordBoundaryTokenizer);
  }

  lineBreakTokenizer = self->_lineBreakTokenizer;
  if (lineBreakTokenizer)
  {
    CFRelease(lineBreakTokenizer);
  }

  chosenLineBreaks = self->_chosenLineBreaks;
  if (chosenLineBreaks)
  {
    free(chosenLineBreaks);
  }

  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  paragraphLine = self->_paragraphLine;
  if (paragraphLine)
  {
    CFRelease(paragraphLine);
  }

  v12.receiver = self;
  v12.super_class = _NSOptimalLineBreaker;
  [(_NSOptimalLineBreaker *)&v12 dealloc];
}

- (_NSOptimalLineBreaker)init
{
  v5.receiver = self;
  v5.super_class = _NSOptimalLineBreaker;
  v2 = [(_NSOptimalLineBreaker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_NSOptimalLineBreaker *)v2 _resetOptions];
    v3->_cachedHyphenFontRange = xmmword_18E856180;
  }

  return v3;
}

- (void)setAllowsHyphenation:(BOOL)hyphenation
{
  if (self->_allowsHyphenation != hyphenation)
  {
    self->_allowsHyphenation = hyphenation;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setHyphenationFactor:(double)factor
{
  if (self->_hyphenationFactor != factor)
  {
    self->_hyphenationFactor = factor;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setMinHyphenationLineCount:(unint64_t)count
{
  if (self->_minHyphenationLineCount != count)
  {
    self->_minHyphenationLineCount = count;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setShouldFillLastLine:(BOOL)line
{
  if (self->_shouldFillLastLine != line)
  {
    self->_shouldFillLastLine = line;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setMinimumLastLineLength:(double)length
{
  if (self->_minimumLastLineLength != length)
  {
    self->_minimumLastLineLength = length;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setLineCountAdjustment:(int64_t)adjustment
{
  if (self->_lineCountAdjustment != adjustment)
  {
    self->_lineCountAdjustment = adjustment;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setMaximumNumberOfLines:(unint64_t)lines
{
  if (self->_maximumNumberOfLines != lines)
  {
    self->_maximumNumberOfLines = lines;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setLineBreakAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if (self->_lineBreakAlgorithm != algorithmCopy)
  {
    v6 = algorithmCopy;
    objc_storeStrong(&self->_lineBreakAlgorithm, algorithm);
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    algorithmCopy = v6;
  }
}

- (void)setUsesHangingPunctuation:(BOOL)punctuation
{
  if (self->_usesHangingPunctuation != punctuation)
  {
    self->_usesHangingPunctuation = punctuation;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setUsesStretchClasses:(BOOL)classes
{
  if (self->_usesStretchClasses != classes)
  {
    self->_usesStretchClasses = classes;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setAvoidsRivers:(BOOL)rivers
{
  if (self->_avoidsRivers != rivers)
  {
    self->_avoidsRivers = rivers;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setCompressesLeftAlignedText:(BOOL)text
{
  if (self->_compressesLeftAlignedText != text)
  {
    self->_compressesLeftAlignedText = text;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setExpandsGlyphs:(BOOL)glyphs
{
  if (self->_expandsGlyphs != glyphs)
  {
    self->_expandsGlyphs = glyphs;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
  }
}

- (void)setLineBreakStrategy:(unint64_t)strategy
{
  if (self->_lineBreakStrategy != strategy)
  {
    self->_lineBreakStrategy = strategy;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setKoreanLineBreakBehavior:(int)behavior
{
  if (self->_koreanLineBreakBehavior != behavior)
  {
    self->_koreanLineBreakBehavior = behavior;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setPrepositionLineBreakBehavior:(int)behavior
{
  if (self->_prepositionLineBreakBehavior != behavior)
  {
    self->_prepositionLineBreakBehavior = behavior;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setBreaksWithinCJWords:(BOOL)words
{
  if (self->_breaksWithinCJWords != words)
  {
    self->_breaksWithinCJWords = words;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setUsesCFStringTokenizerForLineBreaks:(BOOL)breaks
{
  if (self->_usesCFStringTokenizerForLineBreaks != breaks)
  {
    self->_usesCFStringTokenizerForLineBreaks = breaks;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setHyphenatesBetweenMorphemesFreely:(BOOL)freely
{
  if (self->_hyphenatesBetweenMorphemesFreely != freely)
  {
    self->_hyphenatesBetweenMorphemesFreely = freely;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setHyphenatesAsLastResort:(BOOL)resort
{
  if (self->_hyphenatesAsLastResort != resort)
  {
    self->_hyphenatesAsLastResort = resort;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
  }
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
  -[_NSOptimalLineBreaker setAttributedString:paragraphRange:](self, "setAttributedString:paragraphRange:", stringCopy, 0, [stringCopy length]);
}

- (void)setParagraphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributedString = [(_NSOptimalLineBreaker *)self attributedString];
  [(_NSOptimalLineBreaker *)self setAttributedString:attributedString paragraphRange:location, length];
}

- (void)setAttributedString:(id)string paragraphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [_NSOptimalLineBreaker setAttributedString:paragraphRange:];
  }

  v11 = stringCopy;
  if (location + length > [stringCopy length])
  {
    [_NSOptimalLineBreaker setAttributedString:paragraphRange:];
  }

  v9 = location == self->_paragraphRange.location && length == self->_paragraphRange.length;
  if (!v9 || ([v11 isEqualToAttributedString:self->_attributedString] & 1) == 0)
  {
    objc_storeStrong(&self->_attributedString, string);
    self->_paragraphRange.location = location;
    self->_paragraphRange.length = length;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
    self->_lineMetricsValid = 0;
    paragraphStyle = self->_paragraphStyle;
    self->_paragraphStyle = 0;

    self->_lineBreakTokenizerValid = 0;
  }
}

- (void)setTextContainerWidth:(double)width
{
  if (self->_textContainerWidth != width)
  {
    self->_textContainerWidth = width;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    paragraphStyle = self->_paragraphStyle;
    self->_paragraphStyle = 0;
  }
}

- (void)setParagraphLine:(__CTLine *)line
{
  paragraphLine = self->_paragraphLine;
  if (paragraphLine != line)
  {
    if (paragraphLine)
    {
      CFRelease(paragraphLine);
    }

    if (line)
    {
      CFRetain(line);
    }

    self->_paragraphLine = line;
    self->_lineMetricsValid = 0;
  }
}

- (void)setLocale:(__CFLocale *)locale
{
  locale = self->_locale;
  if (locale != locale)
  {
    if (locale)
    {
      CFRetain(locale);
      locale = self->_locale;
    }

    if (locale)
    {
      CFRelease(locale);
    }

    self->_locale = locale;
    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    self->_lineBreaksValid = 0;
    self->_cachedHyphenFontRange = xmmword_18E856180;
    wordTokenizer = self->_wordTokenizer;
    if (wordTokenizer)
    {
      CFRelease(wordTokenizer);
      self->_wordTokenizer = 0;
    }

    wordBoundaryTokenizer = self->_wordBoundaryTokenizer;
    if (wordBoundaryTokenizer)
    {
      CFRelease(wordBoundaryTokenizer);
      self->_wordBoundaryTokenizer = 0;
    }

    lineBreakTokenizer = self->_lineBreakTokenizer;
    if (lineBreakTokenizer)
    {
      CFRelease(lineBreakTokenizer);
      self->_lineBreakTokenizer = 0;
      self->_lineBreakTokenizerValid = 0;
    }
  }
}

- (NSParagraphStyle)defaultParagraphStyle
{
  defaultParagraphStyle = self->_defaultParagraphStyle;
  if (defaultParagraphStyle)
  {
    v3 = defaultParagraphStyle;
  }

  else
  {
    v3 = +[NSParagraphStyle defaultParagraphStyle];
  }

  return v3;
}

- (void)setDefaultParagraphStyle:(id)style
{
  if (self->_defaultParagraphStyle != style)
  {
    v5 = [style copy];
    defaultParagraphStyle = self->_defaultParagraphStyle;
    self->_defaultParagraphStyle = v5;

    [(_NSOptimalLineBreaker *)self invalidateWrapping];
    paragraphStyle = self->_paragraphStyle;
    self->_paragraphStyle = 0;
  }
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"tolerance"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v4 floatValue];
      self->_tolerance = v5;
    }
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"justifiedHyphenPenalty"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v6 floatValue];
      self->_justifiedHyphenPenalty = v7;
    }
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"nonJustifiedHyphenPenalty"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v8 floatValue];
      self->_nonJustifiedHyphenPenalty = v9;
    }
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"twoHyphenPenalty"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v10 floatValue];
      self->_twoHyphenPenalty = v11;
    }
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"stretchClassMismatchPenalty"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v12 floatValue];
      self->_stretchClassMismatchPenalty = v13;
    }
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"riverPenalty"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v14 floatValue];
      self->_riverPenalty = v15;
    }
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"expansionPower"];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v16 floatValue];
      self->_expansionPower = v17;
    }
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"expansionWeight"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v18 floatValue];
      self->_expansionWeight = v19;
    }
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"maxContract"];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v20 floatValue];
      self->_maxContract = v21;
    }
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"maxExpand"];
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v22 floatValue];
      self->_maxExpand = v23;
    }
  }

  v24 = [optionsCopy objectForKeyedSubscript:@"nonJustifiedStretchFactor"];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v24 floatValue];
      self->_nonJustifiedStretchFactor = v25;
    }
  }

  v26 = [optionsCopy objectForKeyedSubscript:@"maxGlyphContract"];
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v26 floatValue];
      self->_maxGlyphContract = v27;
    }
  }

  v28 = [optionsCopy objectForKeyedSubscript:@"maxGlyphExpand"];
  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v28 floatValue];
      self->_maxGlyphExpand = v29;
    }
  }

  v30 = [optionsCopy objectForKeyedSubscript:@"minPreHyphenLength"];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      self->_minPreHyphenLength = [v30 integerValue];
    }
  }

  v31 = [optionsCopy objectForKeyedSubscript:@"minPostHyphenLength"];
  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      self->_minPostHyphenLength = [v31 integerValue];
    }
  }
}

- (double)_expansionRatioFromBreak:(uint64_t)break toBreak:
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 8) & 1) == 0)
  {
    [_NSOptimalLineBreaker _expansionRatioFromBreak:toBreak:];
  }

  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  [(_NSOptimalLineBreaker *)self _getNaturalWidth:&v13 expand:&v12 contract:a2 fromBreak:break toBreak:?];
  v10 = 0.0;
  v11 = 0.0;
  [_NSOptimalLineBreaker _getMinWidth:self maxWidth:&v11 whenJustifyingLineFromBreak:&v10 toBreak:a2];
  if (*(self + 208) == 1 && ([(_NSOptimalLineBreaker *)self _computeParagraphStyleValues], *(self + 152) == 3))
  {
    v5 = v14 * (1.0 - *(self + 320));
    v6 = v14 * (*(self + 328) + 1.0);
  }

  else
  {
    v5 = v14;
    v6 = v14;
  }

  if (v6 >= v11)
  {
    result = 0.0;
    if (v5 > v10)
    {
      v8 = v5 - v10;
      if (v12 <= 0.0)
      {
        v9 = v8 > 0.001;
        result = -INFINITY;
        if (!v9)
        {
          return 0.0;
        }
      }

      else
      {
        return -v8 / v12;
      }
    }
  }

  else if (v13 <= 0.0)
  {
    return INFINITY;
  }

  else
  {
    return (v11 - v6) / v13;
  }

  return result;
}

- (double)_estimatedExpansionRatioForLineWithNaturalWidth:(uint64_t)width
{
  if (!width)
  {
    return 0.0;
  }

  if (a2 <= 0.0 || *(width + 456) < a2)
  {
    [_NSOptimalLineBreaker _estimatedExpansionRatioForLineWithNaturalWidth:];
  }

  [(_NSOptimalLineBreaker *)width _estimatedExpansionRatioForLineWithNaturalWidth:&v3, a2];
  return v3;
}

- (double)_softHyphenPenaltyForBreak:(uint64_t)break
{
  v2 = 0.0;
  if (break)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      [_NSOptimalLineBreaker _softHyphenPenaltyForBreak:];
    }

    if ((v4 & 2) == 0)
    {
      [_NSOptimalLineBreaker _softHyphenPenaltyForBreak:];
    }

    v6 = *(break + 392);
    if (v6 < 0.0)
    {
      [(_NSOptimalLineBreaker *)break _computeParagraphStyleValues];
      if (*(break + 152) == 3)
      {
        v7 = (break + 216);
      }

      else
      {
        v7 = (break + 224);
      }
    }

    else
    {
      v7 = (break + 232);
      if (*(break + 232) < 0.0)
      {
        *(break + 232) = [(_NSOptimalLineBreaker *)break _breakPenaltyForHyphenationFactor:v6];
      }
    }

    if ((*(a2 + 48) & 0x80) == 0 && *(a2 + 8) != 1)
    {
      return *v7;
    }
  }

  return v2;
}

- (long)_implicitNBSPPenaltyForBreak:(uint64_t)break
{
  if (!break)
  {
    return 0.0;
  }

  v2 = *(a2 + 48);
  if (v2)
  {
    [_NSOptimalLineBreaker _implicitNBSPPenaltyForBreak:];
  }

  if ((v2 & 0x40) == 0)
  {
    [_NSOptimalLineBreaker _implicitNBSPPenaltyForBreak:];
  }

  v4 = *(break + 392);
  if (v4 < 0.0)
  {
    [(_NSOptimalLineBreaker *)break _computeParagraphStyleValues];
    if (*(break + 152) == 3)
    {
      return *(break + 216);
    }

    else
    {
      return *(break + 224);
    }
  }

  else
  {
    result = *(break + 240);
    if (result < 0.0)
    {
      v6 = 0.5;
      if (v4 >= 0.5)
      {
        v6 = *(break + 392);
      }

      result = [(_NSOptimalLineBreaker *)break _breakPenaltyForHyphenationFactor:v6];
      *(break + 240) = result;
    }
  }

  return result;
}

- (void)_demeritFromBreak:(uint64_t)break toBreak:(double)toBreak usingExpansionRatio:
{
  if (self)
  {
    if ((*(self + 8) & 1) == 0)
    {
      [_NSOptimalLineBreaker _demeritFromBreak:toBreak:usingExpansionRatio:];
    }

    if ((*&toBreak & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((*(break + 48) & 1) == 0 || [(_NSOptimalLineBreaker *)self _shouldAllowLastLineFromBreak:a2 toBreak:break]))
    {
      if (toBreak >= -1.0)
      {
        pow(fabs(toBreak), *(self + 280));
      }

      [(_NSOptimalLineBreaker *)self _breakPenaltyForBreak:break];
    }
  }
}

- (uint64_t)_shouldAllowLastLineFromBreak:(uint64_t)break toBreak:
{
  selfCopy = self;
  if (self)
  {
    if ((*(break + 48) & 1) == 0)
    {
      [_NSOptimalLineBreaker _shouldAllowLastLineFromBreak:toBreak:];
    }

    if ((*(self + 440) & 1) != 0 && *(self + 375) == 1)
    {
      v4 = *(self + 136);
      if (v4)
      {
        v6 = CFLocaleGetValue(v4, *MEMORY[0x1E695E6F0]);
        v7 = v6;
        if (v6 && (([v6 isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"ja")))
        {
          _lineBreakTokenizer = [(_NSOptimalLineBreaker *)selfCopy _lineBreakTokenizer];
          selfCopy = ![(_NSOptimalLineBreaker *)selfCopy _breakRange:*(a2 + 8) fallsWithinTokenWithTokenizer:_lineBreakTokenizer];
LABEL_13:

          return selfCopy;
        }
      }

      else
      {
        v7 = 0;
      }

      selfCopy = 1;
      goto LABEL_13;
    }

    return 1;
  }

  return selfCopy;
}

- (void)_computeFontMetricsAtIndex:(uint64_t)index
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (index)
  {
    v4 = *(index + 104);
    v5 = index + 104;
    v7 = a2 >= v4;
    v6 = a2 - v4;
    v7 = !v7 || v6 >= *(index + 112);
    if (v7)
    {
      attributedString = [index attributedString];
      v9 = attributedString;
      if (a2)
      {
        v10 = a2 - 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = [attributedString attribute:@"NSFont" atIndex:v10 effectiveRange:v5];

      if ((!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)) && (NSDefaultFont(), v12 = objc_claimAutoreleasedReturnValue(), v11, (v11 = v12) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [_NSOptimalLineBreaker _computeFontMetricsAtIndex:];
      }

      if (!*(index + 96) || ([v11 isEqual:?] & 1) == 0)
      {
        objc_storeStrong((index + 96), v11);
        v18 = @"NSFont";
        v19[0] = v11;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        v13 = CTLineCreateWithString();
        *(index + 120) = CTLineGetTypographicBounds(v13, 0, 0, 0);
        CFRelease(v13);
        characters = 109;
        glyphs = 0;
        v15.width = 0.0;
        v15.height = 0.0;
        if (CTFontGetGlyphsForCharacters(v11, &characters, &glyphs, 1))
        {
          CTFontGetAdvancesForGlyphs(v11, kCTFontOrientationDefault, &glyphs, &v15, 1);
          if ((CTFontGetSymbolicTraits(v11) & 0x400) != 0)
          {
            width = v15.width;
          }

          else
          {
            width = v15.width * 0.5;
          }
        }

        else
        {
          *(&width - 2) = CTFontGetBoundingBox(v11);
        }

        *(index + 128) = width;
      }
    }
  }
}

- (void)_enumerateHyphenationPointsWithBlock:(uint64_t)block
{
  v35[32] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (block)
  {
    v4 = *(block + 136);
    v5 = v4 ? CFRetain(v4) : CFLocaleCopyCurrent();
    v6 = v5;
    if (v5)
    {
      v33 = [(_NSOptimalLineBreaker *)block _attributedStringOverridesMethodWithSelector:?];
      if (!v33 && !CFStringIsHyphenationAvailableForLocale(v6) || (*(block + 377) != 1 || (Value = CFLocaleGetValue(v6, *MEMORY[0x1E695E6F0])) == 0 ? (v32 = 0) : (v32 = [Value isEqualToString:@"de"]), (objc_msgSend(block, "attributedString"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "string"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v10 = objc_msgSend(block, "paragraphRange"), objc_msgSend(block, "paragraphRange"), v13.length = v11, v12 = *(block + 64), v13.location = v10, !v12) ? (v14 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], v9, v13, 0, v6), *(block + 64) = v14) : (CFStringTokenizerSetString(v12, v9, v13), v14 = *(block + 64)), !CFStringTokenizerAdvanceToNextToken(v14)))
      {
LABEL_56:
        CFRelease(v6);
        goto LABEL_6;
      }

      v31 = v6;
      while (1)
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(block + 64));
        v16 = CurrentTokenRange.location + CurrentTokenRange.length;
        if (v33)
        {
          break;
        }

        AllPossibleHyphenationLocations = _CFHyphenationGetAllPossibleHyphenationLocations();
        if (AllPossibleHyphenationLocations >= 32)
        {
          v17 = 32;
        }

        else
        {
          v17 = AllPossibleHyphenationLocations;
        }

        if (AllPossibleHyphenationLocations != -1 && v17)
        {
          goto LABEL_32;
        }

LABEL_55:
        if (!CFStringTokenizerAdvanceToNextToken(*(block + 64)))
        {
          goto LABEL_56;
        }
      }

      v17 = 0;
      v18 = CurrentTokenRange.location + CurrentTokenRange.length;
      while (1)
      {
        attributedString = [block attributedString];
        v20 = [attributedString lineBreakByHyphenatingBeforeIndex:v18 withinRange:{CurrentTokenRange.location, CurrentTokenRange.length}];

        if (v20 == 0x7FFFFFFFFFFFFFFFLL || CurrentTokenRange.location >= v20 || v20 >= v18)
        {
          break;
        }

        v35[v17++] = v20;
        v18 = v20;
        if (v17 == 32)
        {
          v6 = v31;
          goto LABEL_32;
        }
      }

      v6 = v31;
      if (!v17)
      {
        goto LABEL_55;
      }

LABEL_32:
      if (v32)
      {
        CurrentSubTokens = CFStringTokenizerGetCurrentSubTokens(*(block + 64), &ranges, 32, 0);
      }

      else
      {
        CurrentSubTokens = 0;
      }

      if (v17 >= 1)
      {
        v23 = 0;
        do
        {
          v24 = v35[v23];
          if (v24 <= CurrentTokenRange.location || v16 <= v24)
          {
            [_NSOptimalLineBreaker _enumerateHyphenationPointsWithBlock:];
          }

          if (v24 - CurrentTokenRange.location >= *(block + 336) && v16 - v24 >= *(block + 344))
          {
            if (CurrentSubTokens < 2)
            {
              v29 = 0;
            }

            else
            {
              p_ranges = &ranges;
              v27 = CurrentSubTokens - 1;
              do
              {
                location = p_ranges->location;
                ++p_ranges;
                v29 = location == v24;
              }

              while (location != v24 && v27-- != 0);
            }

            v3[2](v3, v24, v29);
          }

          v23 = (v23 + 1);
        }

        while (v23 < v17);
      }

      goto LABEL_55;
    }
  }

LABEL_6:
}

- (void)_enumerateOrdinaryLineBreaksWithBlock:(uint64_t)block
{
  v3 = a2;
  if (!block)
  {
    goto LABEL_10;
  }

  attributedString = [block attributedString];
  string = [attributedString string];

  paragraphRange = [block paragraphRange];
  v8 = v7;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  *buffer = 0u;
  v98 = 0u;
  theString = string;
  v108 = paragraphRange;
  v109 = v7;
  CharactersPtr = CFStringGetCharactersPtr(string);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(string, 0x600u);
  }

  v110 = 0;
  v111 = 0;
  v107 = CStringPtr;
  languageIdentifier = [*(block + 136) languageIdentifier];
  Value = *(block + 136);
  if (Value)
  {
    Value = CFLocaleGetValue(Value, *MEMORY[0x1E695E6F0]);
  }

  v12 = Value;
  v89 = [(__CFLocale *)v12 isEqualToString:@"ko"];
  if (*(block + 376) == 1 && [(_NSOptimalLineBreaker *)block _localeHasDictionaryBasedLineBreaks])
  {
    [(_NSOptimalLineBreaker *)block _localeHasDictionaryBasedLineBreaks];
    v15 = 0;
    v13 = 0;
    v88 = 1;
  }

  else
  {
    v13 = _NSCopyBreakIterator(languageIdentifier, 0, 0, 2u);
    v14 = CFStringOpenUText();
    LODWORD(v91) = 0;
    ubrk_setUText();
    utext_close(v14);
    if ([(_NSOptimalLineBreaker *)block _localeHasDictionaryBasedLineBreaks])
    {
      v16 = *(block + 72);
      v17.location = paragraphRange;
      v17.length = v8;
      if (v16)
      {
        CFStringTokenizerSetString(v16, string, v17);
        v88 = 0;
      }

      else
      {
        v88 = 0;
        *(block + 72) = CFStringTokenizerCreate(*MEMORY[0x1E695E480], string, v17, 4uLL, *(block + 136));
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v88 = 0;
    }
  }

  v18 = *(block + 176);
  if (v18)
  {
    [v18 removeAllObjects];
  }

  if (![(_NSOptimalLineBreaker *)block _attributedStringOverridesMethodWithSelector:?])
  {
    *&v84[8] = 0;
    v86 = paragraphRange + v8;
    v87 = 1;
    *v84 = v15 ^ 1u;
    v85 = paragraphRange;
    while (v88)
    {
      _lineBreakTokenizer = [(_NSOptimalLineBreaker *)block _lineBreakTokenizer];
      if (!CFStringTokenizerAdvanceToNextToken(_lineBreakTokenizer))
      {
        goto LABEL_9;
      }

      _lineBreakTokenizer2 = [(_NSOptimalLineBreaker *)block _lineBreakTokenizer];
      location = CFStringTokenizerGetCurrentTokenRange(_lineBreakTokenizer2).location;
      if (location != paragraphRange)
      {
        v28 = location;
        if (location <= paragraphRange || location >= v86)
        {
          goto LABEL_65;
        }

        v29 = location - paragraphRange;
        if (v29 < 0 || (v30 = v109, v109 <= v29))
        {
          v31 = 0;
        }

        else if (CharactersPtr)
        {
          v31 = CharactersPtr[v108 + v29];
        }

        else if (v107)
        {
          v31 = v107[v108 + v29];
        }

        else
        {
          if (v111 <= v29 || (v53 = v110, v110 > v29))
          {
            v54 = v29 - 4;
            if (v29 < 4)
            {
              v54 = 0;
            }

            if (v54 + 64 < v109)
            {
              v30 = v54 + 64;
            }

            v110 = v54;
            v111 = v30;
            v112.length = v30 - v54;
            v112.location = v108 + v54;
            CFStringGetCharacters(theString, v112, buffer);
            v53 = v110;
          }

          v31 = buffer[v29 - v53];
        }

        if ((charIsNormalWhitespace(v31) & 1) == 0)
        {
LABEL_65:
          v33 = paragraphRange + v8;
LABEL_51:
          v96 = 0;
          buffer = [(_NSOptimalLineBreaker *)block _rangeOfLineBreakEndingAtIndex:v28 flags:&v96 inRange:*&v84[4] + v85 inlineBuffer:v33 - (*&v84[4] + v85), buffer];
          v36 = buffer;
          v37 = v35;
          v38 = v84[0];
          if (v35)
          {
            v38 = 1;
          }

          if (v38)
          {
            v39 = v89 ^ 1;
            if (v35)
            {
              v39 = 1;
            }

            if ((v39 & 1) == 0)
            {
              goto LABEL_57;
            }

            if (v35 != 1)
            {
              goto LABEL_98;
            }

            if (*(block + 384) == 2)
            {
              goto LABEL_98;
            }

            v46 = *&v84[4] + v85;
            v47 = buffer - paragraphRange;
            if ((buffer - paragraphRange) < 0)
            {
              goto LABEL_98;
            }

            v48 = v109;
            if (v109 <= v47)
            {
              goto LABEL_98;
            }

            if (CharactersPtr)
            {
              v49 = CharactersPtr[v108 + v47];
            }

            else if (v107)
            {
              v49 = v107[v108 + v47];
            }

            else
            {
              if (v111 <= v47 || (v55 = v110, v110 > v47))
              {
                v56 = v47 - 4;
                if (v47 < 4)
                {
                  v56 = 0;
                }

                if (v56 + 64 < v109)
                {
                  v48 = v56 + 64;
                }

                v110 = v56;
                v111 = v48;
                v80 = buffer;
                v113.length = v48 - v56;
                v113.location = v108 + v56;
                CFStringGetCharacters(theString, v113, buffer);
                v37 = 1;
                v36 = v80;
                v55 = v110;
              }

              v49 = buffer[v47 - v55];
            }

            if (v49 == 32 && v85 != 0x7FFFFFFFFFFFFFFFLL && (v57 = v36 - v46, v36 - v46 <= 2))
            {
              v78 = v37;
              v83 = v36;
              attributedString2 = [block attributedString];
              string2 = [attributedString2 string];
              v70 = [string2 substringWithRange:{v46, v57}];

              if (![(_NSOptimalLineBreaker *)block _shouldAvoidBreakingAfterWord:v70])
              {
                goto LABEL_128;
              }

              v71 = *(block + 384);
              if (v71 == 1)
              {
                v96 |= 0x40u;
LABEL_128:

                v37 = v78;
                v36 = v83;
                goto LABEL_98;
              }

              if (v71)
              {
                [_NSOptimalLineBreaker _enumerateOrdinaryLineBreaksWithBlock:];
              }
            }

            else
            {
LABEL_98:
              if ((v96 & 0x100) == 0)
              {
                goto LABEL_122;
              }

              if (*(block + 336))
              {
                if (v37)
                {
                  goto LABEL_131;
                }

                v58 = v36 - 1;
                if (v36 - 1 >= *(block + 472) + 1)
                {
                  v81 = v36;
                  v91 = 0;
                  v92 = &v91;
                  v93 = 0x3010000000;
                  v94 = "";
                  v95 = xmmword_18E856180;
                  string3 = [*(block + 448) string];
                  v61 = *(block + 472);
                  v90[0] = MEMORY[0x1E69E9820];
                  v90[1] = 3221225472;
                  v90[2] = __63___NSOptimalLineBreaker__enumerateOrdinaryLineBreaksWithBlock___block_invoke;
                  v90[3] = &unk_1E72659B0;
                  v90[4] = &v91;
                  [string3 enumerateSubstringsInRange:v61 options:v58 - v61 usingBlock:{771, v90}];

                  v62 = v92[4];
                  if (v62 == 0x7FFFFFFFFFFFFFFFLL || v92[5] >= *(block + 336))
                  {
                    v59 = 1;
                  }

                  else if (*(block + 472) >= v62)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    string4 = [*(block + 448) string];
                    v59 = [string4 characterAtIndex:v92[4] - 1] == 45;
                  }

                  _Block_object_dispose(&v91, 8);
                  v37 = 0;
                  v36 = v81;
                }

                else
                {
                  v59 = 1;
                }

                if (!*(block + 344))
                {
                  goto LABEL_119;
                }
              }

              else
              {
                if (!*(block + 344))
                {
                  goto LABEL_122;
                }

                if (v37)
                {
LABEL_131:
                  [_NSOptimalLineBreaker _enumerateOrdinaryLineBreaksWithBlock:];
                }

                v59 = 1;
              }

              if (v36 >= *(block + 480) + *(block + 472))
              {
LABEL_119:
                if (v59)
                {
LABEL_122:
                  v68 = v37;
                  v69 = v36;
                  v3[2](v3, v36, v37);
                  *&v84[4] = v68;
                  v85 = v69;
                }
              }

              else
              {
                v77 = v37;
                v82 = v36;
                v91 = 0;
                v92 = &v91;
                v93 = 0x3010000000;
                v94 = "";
                v95 = xmmword_18E856180;
                string5 = [*(block + 448) string];
                [string5 enumerateSubstringsInRange:? options:? usingBlock:?];

                v65 = v92[4];
                if (v65 == 0x7FFFFFFFFFFFFFFFLL || (v66 = v92[5], v66 >= *(block + 344)))
                {
                  _Block_object_dispose(&v91, 8);
                  v37 = v77;
                  v36 = v82;
                  if (v59)
                  {
                    goto LABEL_122;
                  }
                }

                else if (v66 + v65 >= *(block + 480) + *(block + 472))
                {
                  _Block_object_dispose(&v91, 8);
                }

                else
                {
                  string6 = [*(block + 448) string];
                  v72 = [string6 characterAtIndex:v92[5] + v92[4]] == 45;

                  _Block_object_dispose(&v91, 8);
                  v37 = v77;
                  v36 = v82;
                  if (v72 && v59)
                  {
                    goto LABEL_122;
                  }
                }
              }
            }
          }

          else
          {
            v50 = v35;
            v51 = buffer;
            v52 = [(_NSOptimalLineBreaker *)block _breakRange:buffer fallsWithinTokenWithTokenizer:v35, *(block + 72)];
            v36 = v51;
            v37 = v50;
            if (!v52 & v89)
            {
LABEL_57:
              v40 = *(block + 380);
              if (v40)
              {
                if (v40 != 1 || (v76 = v37, v79 = v36, [block attributedString], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "length"), v41, v37 = v76, v36 = v79, v79 >= v42) || (objc_msgSend(block, "attributedString"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "doubleClickAtIndex:inRange:", v79, paragraphRange, v8), v74 = v45, v43, v36 = v79, v44 + 1 != v79) && (v37 = v76, v79 + 1 != v44 + v74))
                {
                  v96 |= 0x20u;
                  goto LABEL_98;
                }
              }
            }

            else if (!v52)
            {
              goto LABEL_98;
            }
          }
        }
      }
    }

    if (v87)
    {
      v32 = ubrk_following();
    }

    else
    {
      v32 = ubrk_next();
    }

    if (v32 == -1)
    {
      goto LABEL_33;
    }

    v87 = 0;
    v33 = paragraphRange + v8;
    if (v86 >= v32)
    {
      v28 = v32;
    }

    else
    {
      v28 = paragraphRange + v8;
    }

    goto LABEL_51;
  }

  v19 = paragraphRange + v8;
  if (paragraphRange + v8 > paragraphRange)
  {
    buffer2 = paragraphRange + v8;
    do
    {
      v21 = [attributedString lineBreakBeforeIndex:buffer2 withinRange:{paragraphRange, buffer2 - paragraphRange}];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL || v21 <= paragraphRange || v21 > v19)
      {
        break;
      }

      LOWORD(v91) = 0;
      buffer2 = [(_NSOptimalLineBreaker *)block _rangeOfLineBreakEndingAtIndex:v21 flags:&v91 inRange:paragraphRange inlineBuffer:v21 - paragraphRange, buffer];
      (v3[2])(v3, buffer2, v24, v91);
    }

    while (buffer2 > paragraphRange);
  }

  if ((v88 & 1) == 0)
  {
LABEL_33:
    _NSDisposeBreakIterator(v13, languageIdentifier, 2);
  }

LABEL_9:

LABEL_10:
}

- (void)_addLineBreakWithRange:(uint64_t)range flags:(__int16)flags
{
  if (self)
  {
    if ([self paragraphRange] > a2)
    {
      [_NSOptimalLineBreaker _addLineBreakWithRange:flags:];
    }

    paragraphRange = [self paragraphRange];
    if (a2 + range > paragraphRange + v9)
    {
      [_NSOptimalLineBreaker _addLineBreakWithRange:flags:];
    }

    [(_NSOptimalLineBreaker *)self _addLineBreakWithRange:a2 flags:range, flags];
  }
}

- (void)_computeLineBreakGeometry
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(self + 24);
    v7 = v6 + v3;
    _lineMetrics = [(_NSOptimalLineBreaker *)self _lineMetrics];
    [_lineMetrics widthOfSubstringWithRange:{*v7, *(v7 + 8)}];
    v10 = v9;

    v11 = *(v6 + v3 + 48);
    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v10;
    }

    *(v7 + 16) = v12;
    if ((v11 & 2) != 0)
    {
      [(_NSOptimalLineBreaker *)self _computeFontMetricsAtIndex:?];
      v13 = *(self + 120);
      *(v7 + 24) = v13;
      v11 = *(v7 + 48);
      if ((v11 & 8) == 0)
      {
        __assert_rtn("[_NSOptimalLineBreaker _computeLineBreakGeometry]", "NSOptimalLineBreaker.m", 1628, "lb->flags & _NSLineBreakFollowsHyphen");
      }
    }

    else
    {
      *(v7 + 24) = 0;
      v13 = 0.0;
    }

    *(v6 + v3 + 32) = 0;
    *(v6 + v3 + 40) = 0;
    if (*(self + 371) == 1)
    {
      if ((v11 & 2) != 0)
      {
        v13 = v13 * 0.7;
LABEL_25:
        *(v6 + v3 + 32) = v13;
        goto LABEL_26;
      }

      if (!*v7)
      {
        goto LABEL_26;
      }

      attributedString = [self attributedString];
      string = [attributedString string];
      v16 = [string characterAtIndex:*v7 - 1];

      v17 = (v16 - 58);
      if (v17 <= 0x3F)
      {
        if (((1 << (v16 - 58)) & 0xF5020000F4061080) != 0)
        {
LABEL_13:
          v18 = 0.05;
LABEL_24:
          _lineMetrics2 = [(_NSOptimalLineBreaker *)self _lineMetrics];
          [_lineMetrics2 widthOfSubstringWithRange:{*v7 - 1, 1}];
          v21 = v20;

          v13 = v18 * v21;
          goto LABEL_25;
        }

        if (((1 << (v16 - 58)) & 3) != 0)
        {
LABEL_18:
          v18 = 0.5;
          goto LABEL_24;
        }

        if (v17 == 5)
        {
LABEL_23:
          v18 = 0.2;
          goto LABEL_24;
        }
      }

      v18 = 0.7;
      switch(v16)
      {
        case '!':
          goto LABEL_23;
        case '""':
          goto LABEL_18;
        case '#':
        case '$':
        case '%':
        case '&':
        case '(':
        case '*':
        case '+':
          break;
        case '\'':
        case ',':
        case '-':
        case '.':
          goto LABEL_24;
        case ')':
          goto LABEL_13;
        default:
          v18 = 0.7;
          switch(v16)
          {
            case 8208:
            case 8217:
              goto LABEL_24;
            case 8209:
            case 8210:
            case 8213:
            case 8214:
            case 8215:
            case 8216:
              goto LABEL_26;
            case 8211:
              v18 = 0.3;
              goto LABEL_24;
            case 8212:
              goto LABEL_23;
            default:
              if (v16 == 8221)
              {
                goto LABEL_18;
              }

              break;
          }

          break;
      }

LABEL_26:
      v22 = *(v7 + 8) + *v7;
      attributedString2 = [self attributedString];
      v24 = [attributedString2 length];

      if (v22 >= v24)
      {
        goto LABEL_37;
      }

      attributedString3 = [self attributedString];
      string2 = [attributedString3 string];
      v27 = [string2 characterAtIndex:*(v7 + 8) + *v7];

      v28 = (v27 - 34);
      if (v28 <= 0x36)
      {
        if (((1 << (v27 - 34)) & 0x74010080000040) != 0)
        {
          goto LABEL_35;
        }

        if (v27 == 34)
        {
LABEL_34:
          v29 = 0.5;
          goto LABEL_36;
        }

        v29 = 0.7;
        if (v28 == 5)
        {
LABEL_36:
          _lineMetrics3 = [(_NSOptimalLineBreaker *)self _lineMetrics];
          [_lineMetrics3 widthOfSubstringWithRange:{*(v7 + 8) + *v7, 1}];
          v32 = v31;

          *(v6 + v3 + 40) = v29 * v32;
          goto LABEL_37;
        }
      }

      if ((v27 - 118) >= 4)
      {
        v29 = 0.7;
        if (v27 != 8216)
        {
          if (v27 != 8220)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

        goto LABEL_36;
      }

LABEL_35:
      v29 = 0.05;
      goto LABEL_36;
    }

LABEL_37:
    if ((*(v7 + 48) & 1) == 0)
    {
      v5 = v5 + *(v7 + 16);
    }

    *(v6 + v3 + 56) = v5;
    ++v4;
    v3 += 64;
  }

  while (v4 < *a2);
}

- (void)_calculateLineBreaks
{
  if (self && (*(self + 8) & 1) == 0)
  {
    attributedString = [self attributedString];
    v3 = [attributedString length];

    *(self + 32) = 0;
    if (!v3)
    {
LABEL_4:
      *(self + 8) = 1;
      return;
    }

    -[_NSOptimalLineBreaker _addLineBreakWithRange:flags:](self, [self paragraphRange], 0, 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45___NSOptimalLineBreaker__calculateLineBreaks__block_invoke;
    v19[3] = &unk_1E72659D8;
    v19[4] = self;
    [(_NSOptimalLineBreaker *)self _enumerateOrdinaryLineBreaksWithBlock:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45___NSOptimalLineBreaker__calculateLineBreaks__block_invoke_2;
    v18[3] = &unk_1E7265A00;
    v18[4] = self;
    [(_NSOptimalLineBreaker *)self _enumerateNonBreakingSpacesWithBlock:v18];
    if (*(self + 369) == 1)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __45___NSOptimalLineBreaker__calculateLineBreaks__block_invoke_3;
      v17[3] = &unk_1E7265A28;
      v17[4] = self;
      [(_NSOptimalLineBreaker *)self _enumerateHyphenationPointsWithBlock:v17];
    }

    qsort_b(*(self + 24), *(self + 32), 0x40uLL, &__block_literal_global_135);
    v4 = *(self + 32);
    v5 = v4 - 1;
    for (i = *(self + 24); --v4; i += 8)
    {
      v7 = *i;
      v8 = i[1];
      v9 = i[8];
      if (v8 + v7 > v9)
      {
        [_NSOptimalLineBreaker _calculateLineBreaks];
      }
    }

    v10 = *(self + 24) + (v5 << 6);
    v11 = *(v10 + 8) + *v10;
    paragraphRange = [self paragraphRange];
    if (v11 >= paragraphRange + v13)
    {
      v16 = *(v10 + 48);
      if (v16)
      {
        goto LABEL_17;
      }

      if ((v16 & 2) == 0)
      {
        *(v10 + 48) = v16 | 1;
        goto LABEL_17;
      }
    }

    paragraphRange2 = [self paragraphRange];
    [(_NSOptimalLineBreaker *)self _addLineBreakWithRange:0 flags:1];
LABEL_17:
    [(_NSOptimalLineBreaker *)self _computeLineBreakGeometry];
    goto LABEL_4;
  }
}

- (NSString)debugString
{
  attributedString = [(_NSOptimalLineBreaker *)self attributedString];
  string = [attributedString string];

  string2 = [MEMORY[0x1E696AD60] string];
  location = self->_paragraphRange.location;
  if (self->_lineBreakCount)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      lineBreaks = self->_lineBreaks;
      v10 = lineBreaks[v7].var0.location;
      length = v10 - location;
      if (v10 > location)
      {
        v12 = [string substringWithRange:?];
        [string2 appendString:v12];
      }

      var5 = lineBreaks[v7].var5;
      if ((var5 & 2) != 0)
      {
        break;
      }

      length = lineBreaks[v7].var0.length;
      if (!length)
      {
        v15 = string2;
        v16 = @"¦";
LABEL_12:
        [v15 appendString:{v16, length}];
        goto LABEL_13;
      }

      v14 = [string substringWithRange:lineBreaks[v7].var0.location];
      [string2 appendFormat:@"[%@]", v14];

LABEL_13:
      location = lineBreaks[v7].var0.length + lineBreaks[v7].var0.location;
      ++v8;
      ++v7;
      if (v8 >= self->_lineBreakCount)
      {
        v17 = self->_paragraphRange.location;
        goto LABEL_16;
      }
    }

    v15 = string2;
    if ((var5 & 0x80) != 0)
    {
      v16 = @"^";
    }

    else
    {
      v16 = @"'";
    }

    goto LABEL_12;
  }

  v17 = self->_paragraphRange.location;
LABEL_16:
  if (self->_paragraphRange.length + v17 > location)
  {
    v18 = [string substringWithRange:?];
    [string2 appendString:v18];
  }

  return string2;
}

- (uint64_t)_equivalenceClassForNode:(int)node asTerminalNode:
{
  if (!self)
  {
    return 0;
  }

  if (!a2 || *(a2 + 32) == 1)
  {
    [_NSOptimalLineBreaker _equivalenceClassForNode:asTerminalNode:];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65___NSOptimalLineBreaker__equivalenceClassForNode_asTerminalNode___block_invoke;
  v5[3] = &unk_1E7265A70;
  v5[4] = &v6;
  [(_NSOptimalLineBreaker *)self _enumerateEquivalenceClassComponentsForNode:a2 asTerminalNode:node withBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)_createNodeWithParent:(__int128 *)parent lineBreak:(char)break expansionRatio:(double)ratio mustSucceed:
{
  if (!self)
  {
    return 0;
  }

  if (!a2 || *(a2 + 32) == 1)
  {
    [_NSOptimalLineBreaker _createNodeWithParent:lineBreak:expansionRatio:mustSucceed:];
  }

  v8 = 1;
  v9 = 3;
  if (ratio < 1.0)
  {
    v9 = 2;
  }

  if (ratio >= 0.5)
  {
    v8 = v9;
  }

  if (ratio < -0.5)
  {
    v8 = 0;
  }

  if (*(self + 372) == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = 0.0;
  if ((break & 1) == 0)
  {
    [(_NSOptimalLineBreaker *)self _demeritFromBreak:parent toBreak:ratio usingExpansionRatio:?];
    v11 = v12;
    if (*(self + 372) == 1)
    {
      if (*a2)
      {
        v13 = v10 - *(a2 + 33);
        if (v13 < 0)
        {
          v13 = *(a2 + 33) - v10;
        }

        if (v13 >= 2)
        {
          v11 = v12 + *(self + 256);
        }
      }
    }
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  allocNode = [*(self + 184) allocNode];
  *allocNode = [*(self + 184) retainNode:a2];
  *(allocNode + 33) = v10;
  *(allocNode + 16) = *(a2 + 16) + 1;
  v15 = parent[3];
  v17 = *parent;
  v16 = parent[1];
  *(allocNode + 80) = parent[2];
  *(allocNode + 96) = v15;
  *(allocNode + 48) = v17;
  *(allocNode + 64) = v16;
  *(allocNode + 40) = 0;
  *(allocNode + 24) = v11 + *(a2 + 24);
  return allocNode;
}

- (uint64_t)_bestNodeInNodeList:(uint64_t)list withLineCount:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59___NSOptimalLineBreaker__bestNodeInNodeList_withLineCount___block_invoke;
    v9[3] = &unk_1E7265A98;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = list;
    [(_NSLineBreakerNodeDictionary *)v5 enumerateClassesAndNodesUsingBlock:v9];
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_node:(uint64_t *)_node isBetterThanNode:
{
  if (result)
  {
    if (!a2 || *(a2 + 32) == 1)
    {
      [_NSOptimalLineBreaker _node:isBetterThanNode:];
    }

    if (_node)
    {
      if (*(_node + 32) == 1)
      {
        [_NSOptimalLineBreaker _node:isBetterThanNode:];
      }

      v3 = *(_node + 3);
      v4 = *(a2 + 3);
      if (vabdd_f64(v3, v4) >= 0.000001)
      {
        return v4 < v3;
      }

      else
      {
        while (1)
        {
          v5 = a2[6];
          v6 = _node[6];
          v7 = v6 < v5;
          if (v5 < v6)
          {
            v7 = -1;
          }

          if (!v7)
          {
            v8 = a2[7] + v5;
            v9 = _node[7] + v6;
            v7 = v9 < v8;
            if (v8 < v9)
            {
              break;
            }
          }

          if (v7)
          {
            return v7 == 1;
          }

          a2 = *a2;
          _node = *_node;
          if (a2)
          {
            v10 = _node == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            return 0;
          }
        }

        v7 = -1;
        return v7 == 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_bestNode:(uint64_t)node dominatesNode:
{
  if (result)
  {
    if (!a2 || !node)
    {
      [_NSOptimalLineBreaker _bestNode:dominatesNode:];
    }

    if ((*(a2 + 32) & 1) != 0 || *(node + 32) == 1)
    {
      [_NSOptimalLineBreaker _bestNode:dominatesNode:];
    }

    if (node == a2)
    {
      return 0;
    }

    else
    {
      if (*(a2 + 48) != *(node + 48) || *(a2 + 56) != *(node + 56))
      {
        [_NSOptimalLineBreaker _bestNode:dominatesNode:];
      }

      v5 = result;
      if (([(_NSOptimalLineBreaker *)result _node:a2 isBetterThanNode:node]& 1) == 0)
      {
        [_NSOptimalLineBreaker _bestNode:dominatesNode:];
      }

      [(_NSOptimalLineBreaker *)v5 _bestNode:node dominatesNode:a2, &v6];
      return v6;
    }
  }

  return result;
}

- (uint64_t)_mustExceedLineCount:(uint64_t)result
{
  if (result)
  {
    if (*(result + 8) != 1 || (v3 = *(result + 32)) == 0)
    {
      [_NSOptimalLineBreaker _mustExceedLineCount:];
    }

    if (a2)
    {
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [_NSOptimalLineBreaker _mustExceedLineCount:];
      }

      [(_NSOptimalLineBreaker *)result _mustExceedLineCount:v3, a2, &v4];
      return v4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_hasArtificialBreak
{
  if (result)
  {
    if (*(result + 9) != 1)
    {
      [_NSOptimalLineBreaker _hasArtificialBreak];
    }

    v1 = *(result + 200);
    if (v1)
    {
      v2 = v1 - 1;
      v3 = (*(result + 192) + 48);
      do
      {
        v4 = v2;
        v5 = *v3;
        v3 += 32;
        result = (v5 >> 4) & 1;
        if ((v5 & 0x10) != 0)
        {
          break;
        }

        --v2;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_calculateOptimalWrappingWithLineBreakFilter:(uint64_t)filter
{
  v3 = a2;
  if (!filter || (*(filter + 9) & 1) != 0)
  {
    goto LABEL_122;
  }

  if (!*(filter + 32))
  {
    *(filter + 200) = 0;
    *(filter + 9) = 1;
    goto LABEL_122;
  }

  v73 = v3;
  v4 = objc_alloc_init(_NSLineBreakerQueue);
  v77 = objc_alloc_init(_NSLineBreakerNodeDictionary);
  v76 = objc_alloc_init(_NSLineBreakerNodeDictionary);
  v5 = *(filter + 184);
  if (!v5)
  {
    v6 = objc_alloc_init(_NSLineBreakerNodePool);
    v7 = *(filter + 184);
    *(filter + 184) = v6;

    v5 = *(filter + 184);
  }

  [v5 reset];
  allocNode = [*(filter + 184) allocNode];
  *allocNode = 0;
  *(allocNode + 33) = 1;
  *(allocNode + 16) = 0;
  *(allocNode + 24) = 0;
  *(allocNode + 40) = 0;
  v9 = *(filter + 24);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[1];
  *(allocNode + 48) = *v9;
  *(allocNode + 64) = v12;
  *(allocNode + 80) = v11;
  *(allocNode + 96) = v10;
  [(_NSLineBreakerQueue *)v4 appendValue:allocNode];
  v13 = [*(filter + 184) retainNode:allocNode];
  v97 = 0u;
  v98 = 0u;
  v95 = xmmword_18E856180;
  v96 = 0u;
  v14 = 0.0;
  if (*(filter + 372) == 1)
  {
    v14 = *(filter + 256) + 0.0;
  }

  v15 = v73;
  if (*(filter + 373) == 1)
  {
    v14 = v14 + *(filter + 264) * 32.0;
  }

  v74 = v13;
  v81 = *(filter + 32);
  if (v81 < 2)
  {
    goto LABEL_131;
  }

  v80 = 0;
  v16 = 1;
  do
  {
    v17 = *(filter + 24) + (v16 << 6);
    v84 = *(v17 + 48);
    if (v15)
    {
      v18 = v15[2](v15, v17) ^ 1;
      v81 = *(filter + 32);
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    v94 = 0;
    v79 = v16 + 1;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v20 = INFINITY;
    v93 = 0;
    while (v19 < [(_NSLineBreakerQueue *)v4 count])
    {
      v21 = [(_NSLineBreakerQueue *)v4 valueAtIndex:v19];
      if (v20 >= *(v21 + 24))
      {
        v20 = *(v21 + 24);
      }

      ++v19;
    }

    v75 = v16;
    v22 = 0;
    v85 = 0;
    v23 = 0;
    v83 = v18 | ((v84 & 4) >> 2);
    v78 = v17;
    while (v22 < [(_NSLineBreakerQueue *)v4 count])
    {
      v24 = [(_NSLineBreakerQueue *)v4 valueAtIndex:v22];
      v25 = v24;
      if (*(v24 + 32) == 1)
      {
        __assert_rtn("[_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:]", "NSOptimalLineBreaker.m", 2320, "!parent->isFree");
      }

      v26 = [(_NSOptimalLineBreaker *)filter _expansionRatioFromBreak:v17 toBreak:?];
      v27 = v26;
      v28 = v26 >= -1.0;
      v29 = v85;
      if (v84)
      {
        v28 = 0;
      }

      v30 = v23 + !v28;
      if (v85)
      {
        LOBYTE(v28) = 1;
      }

      v85 = v28;
      if (!v29)
      {
        v23 = v30;
      }

      if (!(v83 & 1 | (v26 < -1.0)))
      {
        if (v26 > 0.0)
        {
          if (v26 > *(filter + 16))
          {
            break;
          }

          if (!*(filter + 416))
          {
            v31 = [(_NSOptimalLineBreaker *)filter _minimumDemeritForLineEndingAtBreak:v17 withExpansionRatio:v26];
            v32 = v91[3];
            if (v32)
            {
              if (v20 + v31 > v14 + *(v32 + 24) + 0.000001)
              {
                break;
              }
            }
          }
        }

        v33 = [(_NSOptimalLineBreaker *)filter _createNodeWithParent:v25 lineBreak:v17 expansionRatio:0 mustSucceed:v27];
        v34 = v33;
        if (v33)
        {
          if (v79 == v81)
          {
            goto LABEL_37;
          }

          v35 = 0;
          v37 = *(filter + 424);
          if (v37)
          {
            v36 = v77;
            if (v37 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (*(v33 + 16) != v37)
              {
                v35 = 0;
                goto LABEL_42;
              }

LABEL_37:
              v35 = 1;
              v36 = v76;
            }
          }

          else
          {
LABEL_42:
            v36 = v77;
          }

          v38 = v36;
          filterCopy = filter;
          v40 = v38;
          v41 = v91;
          v42 = filterCopy;
          v43 = [(_NSOptimalLineBreaker *)filterCopy _equivalenceClassForNode:v34 asTerminalNode:v35];
          v44 = v43;
          if (v40)
          {
            if (v40->_firstClass == v43)
            {
              firstNode = v40->_firstNode;
              if (!firstNode)
              {
LABEL_54:
                v82 = 1;
LABEL_55:
                [_NSLineBreakerNodeDictionary setNode:v40 forClass:v34];
                v47 = v80;
                if ((v35 & 1) == 0)
                {
                  v47 = v41[3];
                }

                if (!v47 || v47 == firstNode || [(_NSOptimalLineBreaker *)v42 _node:v34 isBetterThanNode:v47])
                {
                  if (v35)
                  {
                    v80 = v34;
                  }

                  else
                  {
                    v41[3] = v34;
                  }

                  if ((v82 & 1) == 0)
                  {
LABEL_64:
                    if (v34 == firstNode)
                    {
                      v71 = 2380;
                      v72 = "*bestNode != existingNode";
LABEL_126:
                      __assert_rtn("[_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:]", "NSOptimalLineBreaker.m", v71, v72);
                    }

                    [*(v42 + 184) releaseNode:firstNode];
                  }
                }

                else if ((v82 & 1) == 0)
                {
                  if (v35)
                  {
                    v34 = v80;
                  }

                  else
                  {
                    v34 = v41[3];
                  }

                  goto LABEL_64;
                }

LABEL_67:

                filter = v42;
                v17 = v78;
                goto LABEL_68;
              }

LABEL_49:
              if ([(_NSOptimalLineBreaker *)v42 _equivalenceClassForNode:v35 asTerminalNode:?]!= v44)
              {
                v71 = 2372;
                v72 = "!existingNode || [self _equivalenceClassForNode:existingNode asTerminalNode:isTerminalNode] == nodeClass";
                goto LABEL_126;
              }

              if ([(_NSOptimalLineBreaker *)v42 _node:v34 isBetterThanNode:firstNode])
              {
                v82 = 0;
                goto LABEL_55;
              }

              [*(v42 + 184) releaseNode:v34];
              goto LABEL_67;
            }

            dict = v40->_dict;
            if (dict)
            {
              firstNode = CFDictionaryGetValue(dict, v44);
              if (!firstNode)
              {
                goto LABEL_54;
              }

              goto LABEL_49;
            }
          }

          firstNode = 0;
          goto LABEL_54;
        }
      }

LABEL_68:
      ++v22;
    }

    if (v84)
    {
      v23 = [(_NSLineBreakerQueue *)v4 count];
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        [*(filter + 184) releaseNode:{-[_NSLineBreakerQueue valueAtIndex:](v4, "valueAtIndex:", i)}];
      }
    }

    [(_NSLineBreakerQueue *)v4 removeValuesBeforeIndex:v23];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __70___NSOptimalLineBreaker__calculateOptimalWrappingWithLineBreakFilter___block_invoke;
    v87[3] = &unk_1E7265AE0;
    v87[4] = filter;
    v89 = &v90;
    v49 = v4;
    v88 = v49;
    [(_NSLineBreakerNodeDictionary *)v77 enumerateClassesAndNodesUsingBlock:v87];
    if (v77)
    {
      v77->_firstClass = 0;
      v77->_firstNode = 0;
      v50 = v77->_dict;
      if (v50)
      {
        CFDictionaryRemoveAllValues(v50);
      }
    }

    if (v91[3])
    {
      [*(filter + 184) releaseNode:v74];
      v74 = [*(filter + 184) retainNode:v91[3]];
    }

    if (![(_NSLineBreakerQueue *)v49 count]&& !v80)
    {
      if (!v74)
      {
        __assert_rtn("[_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:]", "NSOptimalLineBreaker.m", 2418, "lastResortNode");
      }

      memset(v86, 0, sizeof(v86));
      [(_NSOptimalLineBreaker *)filter _forcedBreakBetweenBreak:v17 andBreak:&v95 withLastNBSP:&v94 shouldRetryEndBreak:v86];
      v51 = [(_NSOptimalLineBreaker *)filter _expansionRatioFromBreak:v86 toBreak:?];
      if (v51 < -1.0)
      {
        v51 = -1.0;
      }

      if (v51 >= *(filter + 16))
      {
        v51 = *(filter + 16);
      }

      v52 = [(_NSOptimalLineBreaker *)filter _createNodeWithParent:v74 lineBreak:v86 expansionRatio:1 mustSucceed:v51];
      v53 = v52;
      if (!v52)
      {
        __assert_rtn("[_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:]", "NSOptimalLineBreaker.m", 2426, "forcedBreakNode");
      }

      if (v79 == v81 && v94 != 1 || (v54 = *(filter + 424)) != 0 && v54 != 0x7FFFFFFFFFFFFFFFLL && *(v52 + 16) == v54)
      {
        if (v76)
        {
          v55 = v76->_dict;
          v56 = v76->_firstNode != 0;
          if (v55)
          {
            v56 += CFDictionaryGetCount(v55);
          }

          if (v56)
          {
            __assert_rtn("[_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:]", "NSOptimalLineBreaker.m", 2430, "!bestTerminalNode && terminalList.count == 0");
          }
        }

        v80 = [*(filter + 184) retainNode:v53];
        [(_NSOptimalLineBreaker *)filter _equivalenceClassForNode:v53 asTerminalNode:1];
        [_NSLineBreakerNodeDictionary setNode:v76 forClass:v53];
      }

      else
      {
        [(_NSLineBreakerQueue *)v49 appendValue:v52];
        [*(filter + 184) releaseNode:v74];
        v74 = [*(filter + 184) retainNode:v53];
        v80 = 0;
      }
    }

    if (v94 == 1)
    {
      --v75;
    }

    else if ((v84 & 4) != 0)
    {
      v57 = *v17;
      v58 = *(v17 + 16);
      v59 = *(v17 + 48);
      v97 = *(v17 + 32);
      v98 = v59;
      v95 = v57;
      v96 = v58;
    }

    v60 = [(_NSLineBreakerQueue *)v49 count];

    _Block_object_dispose(&v90, 8);
    v15 = v73;
    if (!v60)
    {
      break;
    }

    v16 = v75 + 1;
    v81 = *(filter + 32);
  }

  while (v75 + 1 < v81);
  v61 = v80;
  if (!v80)
  {
LABEL_131:
    [_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:];
  }

  v62 = *(v80 + 16);
  v63 = *(filter + 416);
  if (v63)
  {
    while (1)
    {
      v64 = [(_NSOptimalLineBreaker *)filter _bestNodeInNodeList:v76 withLineCount:v63 + v62];
      if (v64)
      {
        break;
      }

      if (v63 < 0)
      {
        ++v63;
      }

      else
      {
        --v63;
      }

      if (!v63)
      {
        goto LABEL_117;
      }
    }

    v61 = v64;
LABEL_117:
    v62 = *(v61 + 16);
  }

  v65 = v62 + 1;
  *(filter + 200) = v62 + 1;
  *(filter + 192) = malloc_type_realloc(*(filter + 192), (v62 + 1) << 6, 0x1000040A976A909uLL);
  v66 = v62 << 6;
  do
  {
    v67 = (*(filter + 192) + v66);
    v68 = *(v61 + 48);
    v69 = *(v61 + 64);
    v70 = *(v61 + 96);
    v67[2] = *(v61 + 80);
    v67[3] = v70;
    *v67 = v68;
    v67[1] = v69;
    --v65;
    v61 = *v61;
    v66 -= 64;
  }

  while (v61);
  if (v65)
  {
    [_NSOptimalLineBreaker _calculateOptimalWrappingWithLineBreakFilter:];
  }

  *(filter + 9) = 1;

  v3 = v73;
LABEL_122:
}

- (void)_forcedBreakBetweenBreak:(_OWORD *)break@<X2> andBreak:(_OWORD *)andBreak@<X3> withLastNBSP:(char *)p@<X4> shouldRetryEndBreak:(uint64_t)endBreak@<X8>
{
  if (self)
  {
    *(endBreak + 48) = 0;
    v12 = *(a2 + 48);
    [(_NSOptimalLineBreaker *)self _computeParagraphStyleValues];
    v13 = 160;
    if ((v12 & 1) == 0)
    {
      v13 = 168;
    }

    v14 = *(self + v13);
    if (*andBreak == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 8) + *a2 >= *andBreak || (v15 = [(_NSOptimalLineBreaker *)self _expansionRatioFromBreak:a2 toBreak:andBreak], v15 < -1.0) || v15 > *(self + 16))
    {
      v19 = *(a2 + 8) + *a2;
      _lineMetrics = [(_NSOptimalLineBreaker *)self _lineMetrics];
      v21 = v14 + 0.001;
      v22 = [_lineMetrics suggestedLineBreakAfterIndex:v19 withWidth:v21];

      v23 = v22 != 0x7FFFFFFFFFFFFFFFLL && v22 > v19;
      if (!v23 || v22 >= *break)
      {
        v18 = 0;
        v25 = break[1];
        *endBreak = *break;
        *(endBreak + 16) = v25;
        v26 = break[3];
        *(endBreak + 32) = break[2];
        *(endBreak + 48) = v26;
        goto LABEL_10;
      }

      if (*(self + 378) == 1)
      {
        v27 = [(_NSOptimalLineBreaker *)self _indexOfLastResortHyphenInRange:v19 maxWidth:v22 - v19, v21];
        v24 = v27 != 0x7FFFFFFFFFFFFFFFLL;
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = v27;
        }
      }

      else
      {
        v24 = 0;
      }

      *endBreak = v22;
      *(endBreak + 8) = 0u;
      *(endBreak + 24) = 0u;
      *(endBreak + 40) = 0;
      *(endBreak + 56) = *(a2 + 56);
      *(endBreak + 48) = 0;
      if (v24)
      {
        [(_NSOptimalLineBreaker *)self _computeFontMetricsAtIndex:v22];
        *(endBreak + 24) = *(self + 120);
        *(endBreak + 48) = 10;
      }
    }

    else
    {
      v16 = andBreak[1];
      *endBreak = *andBreak;
      *(endBreak + 16) = v16;
      v17 = andBreak[3];
      *(endBreak + 32) = andBreak[2];
      *(endBreak + 48) = v17;
    }

    v18 = 1;
LABEL_10:
    *p = v18;
    *(endBreak + 48) |= 0x10u;
    return;
  }

  *(endBreak + 32) = 0u;
  *(endBreak + 48) = 0u;
  *endBreak = 0u;
  *(endBreak + 16) = 0u;
}

- (void)_createLines
{
  if (self)
  {
    v2 = (self + 9);
    if ((*(self + 9) & 1) == 0)
    {
      [_NSOptimalLineBreaker _createLines];
    }

    v3 = (self + 10);
    if ((*(self + 10) & 1) == 0)
    {
      _paragraphStyle = [(_NSOptimalLineBreaker *)self _paragraphStyle];
      v5 = *(self + 48);
      if (v5)
      {
        CFArrayRemoveAllValues(v5);
      }

      else
      {
        *(self + 48) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      v6 = *(self + 200);
      if (v6)
      {
        *(self + 56) = malloc_type_realloc(*(self + 56), 72 * v6 - 72, 0x1000040FF89C88EuLL);
        if (*(self + 32))
        {
          if (*(self + 200) != 1)
          {
            v7 = 0;
            v8 = 0;
            v9 = 0;
            v49 = _paragraphStyle;
            do
            {
              v53 = *(self + 192);
              v10 = *(v53 + v7 + 64);
              v50 = *(v53 + v7 + 48);
              v11 = *(v53 + v7 + 8) + *(v53 + v7);
              [self _naturalWidthFromBreak:v53 + v7 toBreak:v53 + v7 + 64];
              v13 = v12;
              v54 = 0.0;
              v55 = 0.0;
              [_NSOptimalLineBreaker _getMinWidth:self maxWidth:&v55 whenJustifyingLineFromBreak:&v54 toBreak:(v53 + v7)];
              v14 = v10 - v11;
              v51 = v14;
              v52 = v11;
              [self attributedString];
              if (v14)
                v20 = {;
                v21 = [v20 attributedSubstringFromRange:{v11, v14}];
              }

              else
                v15 = {;
                v16 = v11;
                v17 = v11 == [v15 length];

                v18 = v16 - v17;
                attributedString = [self attributedString];
                v20 = [attributedString attributesAtIndex:v18 effectiveRange:0];

                v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v20];
              }

              v22 = v21;

              [v22 boundingRectWithSize:2 options:0 context:{1.79769313e308, 1.79769313e308}];
              v24 = v23;
              v26 = v25;
              v28 = v27;
              v30 = v29;
              v31 = CTLineCreateWithAttributedString(v22);
              if ((*(v53 + v7 + 112) & 2) != 0 && ([v22 length], (HyphenatedLineWithOffset = CTLineCreateHyphenatedLineWithOffset()) != 0))
              {
                v33 = HyphenatedLineWithOffset;
                CFRelease(v31);
                v31 = v33;
                _paragraphStyle = v49;
              }

              else
              {
                _paragraphStyle = v49;
                if (!v31)
                {
                  [_NSOptimalLineBreaker _createLines];
                }
              }

              v34 = v55;
              if (v13 >= v55)
              {
                v36 = v54;
                v37 = 1.0;
                if (v13 > v54)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                alignment = [_paragraphStyle alignment];
                v36 = v54;
                if (alignment == 3 || (v37 = 1.0, v13 > v54))
                {
                  v34 = v55;
LABEL_25:
                  if (v13 >= v34)
                  {
                    v38 = v36;
                  }

                  else
                  {
                    v38 = v34;
                  }

                  v37 = 1.0;
                  if (*(self + 208) == 1)
                  {
                    v39 = v38 / v13;
                    v40 = *(self + 328);
                    if (v38 / v13 < 1.0 - *(self + 320))
                    {
                      v39 = 1.0 - *(self + 320);
                    }

                    if (v39 >= v40 + 1.0)
                    {
                      v37 = v40 + 1.0;
                    }

                    else
                    {
                      v37 = v39;
                    }
                  }

                  JustifiedLine = CTLineCreateJustifiedLine(v31, 1.0, (v38 + *(v53 + v7 + 40) + *(v53 + v7 + 96)) / v37);
                  if (JustifiedLine)
                  {
                    v42 = JustifiedLine;
                    CFRelease(v31);
                    v31 = v42;
                  }

                  else
                  {
                    v38 = v13;
                  }

                  _paragraphStyle = v49;
                  goto LABEL_39;
                }
              }

              v38 = v13;
LABEL_39:
              v43 = *(v53 + v7 + 40);
              if (v50)
              {
                [_paragraphStyle firstLineHeadIndent];
              }

              else
              {
                [_paragraphStyle headIndent];
              }

              v45 = v24 - v43 + v44;
              if (v38 < v54)
              {
                v46 = 0.5;
                if ([_paragraphStyle alignment] != 1)
                {
                  if ([_paragraphStyle alignment] == 2 || (v46 = 0.0, objc_msgSend(_paragraphStyle, "alignment") == 3) && objc_msgSend(_paragraphStyle, "baseWritingDirection") == 1)
                  {
                    v46 = 1.0;
                  }
                }

                v45 = v45 + (v54 - v38) * v46;
              }

              ++v9;
              CFArrayAppendValue(*(self + 48), v31);
              CFRelease(v31);
              v47 = *(self + 56) + v8;
              *v47 = v45;
              *(v47 + 8) = v26;
              *(v47 + 16) = v28;
              *(v47 + 24) = v30;
              *(v47 + 32) = v52;
              *(v47 + 40) = v51;
              *(v47 + 48) = v37;
              *(*(self + 56) + v8 + 56) = [(_NSOptimalLineBreaker *)self _expansionRatioFromBreak:v53 + v7 + 64 toBreak:?];
              *(*(self + 56) + v8 + 64) = [_NSOptimalLineBreaker _demeritFromBreak:self toBreak:?];

              v8 += 72;
              v7 += 64;
            }

            while (v9 < *(self + 200) - 1);
          }
        }

        else
        {
          attributedString2 = [self attributedString];
          if ([attributedString2 length])
          {
            [_NSOptimalLineBreaker _createLines];
          }

          v3 = v2;
        }

        *v3 = 1;
      }
    }
  }
}

- (void)layout
{
  [(_NSOptimalLineBreaker *)self _calculateLineBreaks];
  if ([(NSString *)self->_lineBreakAlgorithm isEqualToString:@"Optimal"])
  {

    [(_NSOptimalLineBreaker *)self _calculateOptimalWrapping];
  }

  else if ([(NSString *)self->_lineBreakAlgorithm isEqualToString:@"First Fit"])
  {

    [(_NSOptimalLineBreaker *)self _calculateFirstFitWrapping];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"unrecognized line break algorithm '%@'", self->_lineBreakAlgorithm}];
  }
}

- (void)invalidateWrapping
{
  *&self->_wrappingValid = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_hyphenationFactorHyphenPenalty = _Q0;
}

- (unint64_t)lineCount
{
  chosenLineBreakCount = self->_chosenLineBreakCount;
  v3 = chosenLineBreakCount != 0;
  v4 = chosenLineBreakCount - 1;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- ($102BB1629D0471A0919C413AE880609B)lineBreakAtIndex:(SEL)index
{
  if (self[3].var0.length <= a4)
  {
    [_NSOptimalLineBreaker lineBreakAtIndex:];
  }

  v4 = self[3].var0.location + (a4 << 6);
  v5 = *(v4 + 16);
  retstr->var0 = *v4;
  *&retstr->var1 = v5;
  v6 = *(v4 + 48);
  *&retstr->var3 = *(v4 + 32);
  *&retstr->var5 = v6;
  return self;
}

- ($554B148941027912B77C686939519A4B)lineInfoAtIndex:(SEL)index
{
  [(_NSOptimalLineBreaker *)self _createLines];
  v8 = &self->_lineInfos[a4];
  v9 = *&v8->var2;
  retstr->var1 = v8->var1;
  *&retstr->var2 = v9;
  retstr->var4 = v8->var4;
  size = v8->var0.size;
  retstr->var0.origin = v8->var0.origin;
  retstr->var0.size = size;
  return result;
}

- (__CTLine)lineAtIndex:(unint64_t)index lineInfo:(id *)info
{
  [(_NSOptimalLineBreaker *)self _createLines];
  if (info)
  {
    v7 = &self->_lineInfos[index];
    info->var0.origin = v7->var0.origin;
    size = v7->var0.size;
    var1 = v7->var1;
    v10 = *&v7->var2;
    info->var4 = v7->var4;
    info->var1 = var1;
    *&info->var2 = v10;
    info->var0.size = size;
  }

  lines = self->_lines;

  return CFArrayGetValueAtIndex(lines, index);
}

- (unint64_t)_indexOfLineBreakAtCharacterIndex:(unint64_t)result
{
  if (result)
  {
    v2 = result;
    result = *(result + 32);
    if (!result)
    {
      [_NSOptimalLineBreaker _indexOfLineBreakAtCharacterIndex:];
    }

    v3 = v2[59];
    if (v3 > a2 || v2[60] + v3 < a2)
    {
      [_NSOptimalLineBreaker _indexOfLineBreakAtCharacterIndex:];
    }

    if (v3 == a2)
    {
      return 0;
    }

    else if (result != 1)
    {
      v4 = 0;
      v5 = v2[3];
      do
      {
        if (*(v5 + ((v4 + ((result - v4) >> 1)) << 6)) >= a2)
        {
          result = v4 + ((result - v4) >> 1);
        }

        else
        {
          v4 += (result - v4) >> 1;
        }
      }

      while (v4 + 1 < result);
    }
  }

  return result;
}

- (void)enumerateLineBreaksInRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v8 = [(_NSOptimalLineBreaker *)self _indexOfLineBreakAtCharacterIndex:?];
  v9 = location + length;
  v10 = v8 - 1;
  for (i = v8 << 6; ++v10 < self->_lineBreakCount && *(&self->_lineBreaks->var0.length + i) + *(&self->_lineBreaks->var0.location + i) <= v9; i += 64)
  {
    blockCopy[2](blockCopy);
  }
}

- (_NSRange)paragraphRange
{
  length = self->_paragraphRange.length;
  location = self->_paragraphRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (int64x2_t)_resetOptions
{
  if (self)
  {
    *(self + 369) = 1;
    *(self + 392) = 0xBFF0000000000000;
    *(self + 400) = 0x7FFFFFFFFFFFFFFFLL;
    __asm { FMOV            V0.2D, #-1.0 }

    *(self + 232) = _Q0;
    *(self + 408) = 0;
    v7 = *(self + 432);
    *(self + 432) = @"Optimal";

    *(self + 372) = 0;
    *(self + 208) = 0;
    *(self + 16) = 0x4059000000000000;
    *(self + 216) = xmmword_18E856260;
    *(self + 248) = vdupq_n_s64(0x40A7700000000000uLL);
    *(self + 264) = 0x416312D000000000;
    *(self + 272) = 5;
    *(self + 280) = 0x4008000000000000;
    *(self + 288) = xmmword_18E856270;
    *(self + 304) = xmmword_18E856280;
    result = vdupq_n_s64(0x3F947AE147AE147BuLL);
    *(self + 320) = result;
    *(self + 336) = 0;
    *(self + 344) = 0;
    *(self + 380) = 0x200000003;
    *(self + 375) = 1;
    *(self + 377) = 0;
  }

  return result;
}

- (id)_lineMetrics
{
  if (self)
  {
    selfCopy = self;
    if ((self[46] & 1) == 0)
    {
      if (self[45])
      {
        attributedString = [self attributedString];
        [selfCopy paragraphRange];
        [selfCopy paragraphLine];
        [OUTLINED_FUNCTION_5() setAttributedString:? range:? line:?];
      }

      else
      {
        v4 = [_NSLineMetrics alloc];
        attributedString = [selfCopy attributedString];
        [selfCopy paragraphRange];
        [selfCopy paragraphLine];
        v5 = [OUTLINED_FUNCTION_5() initWithAttributedString:? range:? line:?];
        v6 = selfCopy[45];
        selfCopy[45] = v5;
      }

      [selfCopy[45] setLocale:selfCopy[17]];
      *(selfCopy + 368) = 1;
    }

    self = selfCopy[45];
    v1 = vars8;
  }

  return self;
}

- (void)_computeParagraphStyleValues
{
  if (result)
  {
    v1 = result;
    if (!result[18])
    {
      attributedString = [result attributedString];
      v3 = [attributedString length];

      if (v3)
      {
        paragraphRange = [v1 paragraphRange];
        attributedString2 = [v1 attributedString];
        v6 = paragraphRange == [attributedString2 length];

        attributedString3 = [v1 attributedString];
        v8 = [attributedString3 attribute:@"NSParagraphStyle" atIndex:paragraphRange - v6 effectiveRange:0];
        v9 = v1[18];
        v1[18] = v8;
      }

      v10 = v1[18];
      if (!v10)
      {
        defaultParagraphStyle = [v1 defaultParagraphStyle];
        v12 = v1[18];
        v1[18] = defaultParagraphStyle;

        v10 = v1[18];
      }

      v1[19] = [v10 alignment];
      OUTLINED_FUNCTION_11();
      v13 = OUTLINED_FUNCTION_1();
      [v14 _minMaxPositionsForLineFragmentWithParagraphStyle:v13 baseWidth:? writingDirection:? isBeginningOfParagraph:? minPosition:? maxPosition:?];
      *(v1 + 20) = 0.0 - 0.0;
      OUTLINED_FUNCTION_11();
      v15 = OUTLINED_FUNCTION_1();
      result = [v16 _minMaxPositionsForLineFragmentWithParagraphStyle:v15 baseWidth:? writingDirection:? isBeginningOfParagraph:? minPosition:? maxPosition:?];
      *(v1 + 21) = 0.0 - 0.0;
    }
  }

  return result;
}

- (void)_paragraphStyle
{
  if (self)
  {
    selfCopy = self;
    [(_NSOptimalLineBreaker *)self _computeParagraphStyleValues];
    self = selfCopy[18];
    v1 = vars8;
  }

  return self;
}

- (id)_getNaturalWidth:(double *)width expand:(double *)expand contract:(uint64_t)contract fromBreak:(uint64_t)break toBreak:
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(contract + 8) + *contract;
  v13 = *break - v12;
  _lineMetrics = [(_NSOptimalLineBreaker *)result _lineMetrics];
  [_lineMetrics widthOfSubstringWithRange:{v12, v13}];
  v16 = v15;

  if (v16 - *(contract + 40) - *(break + 32) + *(break + 24) >= 0.0)
  {
    v17 = v16 - *(contract + 40) - *(break + 32) + *(break + 24);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *(break + 56) - *(break + 16);
  v19 = *(contract + 56);
  if (v18 - v19 >= 0.0)
  {
    v20 = v18 - v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = vabdd_f64(v18, v19) < 0.001 || v18 - v19 < 0.0;
  v22 = v13 > 1 && v21;
  if (v22)
  {
    v20 = v17 / v13 * (v13 - 1) * 0.2;
  }

  result = [(_NSOptimalLineBreaker *)v11 _computeParagraphStyleValues];
  if (*(v11 + 152) != 3)
  {
    v25 = *(v11 + 312);
    [(_NSOptimalLineBreaker *)v11 _computeFontMetricsAtIndex:?];
    v26 = v25 * *(v11 + 120);
    result = [(_NSOptimalLineBreaker *)v11 _computeParagraphStyleValues];
    v23 = v26 + v26;
    if (*(v11 + 152) != 1)
    {
      v23 = v26;
    }

    v24 = 0.0;
    if (v22 || (*(v11 + 374) & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v23 = v20 * *(v11 + 304);
  v24 = 0.0;
  if (!v22)
  {
LABEL_18:
    v24 = v20 * *(v11 + 296);
  }

LABEL_19:
  if (a2)
  {
    *a2 = v17;
  }

  if (width)
  {
    *width = v23;
  }

  if (expand)
  {
    *expand = v24;
  }

  return result;
}

- (double)_naturalWidthFromBreak:(id *)break toBreak:(id *)toBreak
{
  v5 = 0.0;
  [(_NSOptimalLineBreaker *)&self->super.isa _getNaturalWidth:0 expand:0 contract:break fromBreak:toBreak toBreak:?];
  return v5;
}

- (void)_getMinWidth:(uint64_t)width maxWidth:(uint64_t)maxWidth whenJustifyingLineFromBreak:(uint64_t)break toBreak:(unint64_t *)toBreak
{
  if (!width)
  {
    return;
  }

  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 48);
  if (v8)
  {
    v13 = *(v8 + 48);
    [(_NSOptimalLineBreaker *)v6 _computeParagraphStyleValues];
    v14 = 160;
    if ((v10 & 1) == 0)
    {
      v14 = 168;
    }

    v12 = *(v6 + v14);
    if ((v13 & 1) != 0 && (*(v6 + 370) & 1) == 0)
    {
      v16 = *(v6 + 408);
      if (v16 <= 0.0)
      {
        v15 = 0.0;
        if (*(v6 + 440))
        {
          [(_NSOptimalLineBreaker *)v6 _computeFontMetricsAtIndex:?];
          if (*(v6 + 128) * *(v6 + 272) >= *(v6 + 456))
          {
            v17 = *(v6 + 456);
          }

          else
          {
            v17 = *(v6 + 128) * *(v6 + 272);
          }

          [(_NSOptimalLineBreaker *)v6 _computeFontMetricsAtIndex:?];
          v15 = v17 + *(v6 + 128) * 3.0;
        }
      }

      else
      {
        [(_NSOptimalLineBreaker *)v6 _computeFontMetricsAtIndex:?];
        v15 = *(v6 + 128) * 3.0 + v16 * v12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [(_NSOptimalLineBreaker *)v6 _computeParagraphStyleValues];
    v11 = 160;
    if ((v10 & 1) == 0)
    {
      v11 = 168;
    }

    v12 = *(v6 + v11);
  }

  v15 = v12;
LABEL_11:
  if (v5)
  {
    if (v15 >= v12)
    {
      v15 = v12;
    }

    *v5 = v15;
  }

  if (v4)
  {
    *v4 = v12;
  }
}

- (long)_breakPenaltyForHyphenationFactor:(uint64_t)factor
{
  result = 0.0;
  if (factor)
  {
    if (a2 == 0.0)
    {
      return INFINITY;
    }

    else if (a2 != 1.0)
    {
      v5 = [(_NSOptimalLineBreaker *)factor _estimatedExpansionRatioForLineWithNaturalWidth:?];
      v6 = *(factor + 288);
      return v6 * pow(fabs(v5), *(factor + 280)) + 0.5;
    }
  }

  return result;
}

- (double)_demeritFromBreak:(uint64_t)break toBreak:
{
  if (!break)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_2();
  v7 = [(_NSOptimalLineBreaker *)v4 _expansionRatioFromBreak:v5 toBreak:v6];

  [(_NSOptimalLineBreaker *)v3 _demeritFromBreak:v2 toBreak:v1 usingExpansionRatio:v7];
  return result;
}

- (double)_breakPenaltyForBreak:(uint64_t)break
{
  if (!break)
  {
    return 0.0;
  }

  v2 = *(a2 + 48);
  if ((v2 & 0x11) != 0)
  {
    return 0.0;
  }

  if ((v2 & 2) != 0)
  {
    return [(_NSOptimalLineBreaker *)break _softHyphenPenaltyForBreak:a2];
  }

  if ((v2 & 0x40) == 0)
  {
    return 0.0;
  }

  return [(_NSOptimalLineBreaker *)break _implicitNBSPPenaltyForBreak:a2];
}

- (BOOL)_breakRange:(uint64_t)range fallsWithinTokenWithTokenizer:(CFStringTokenizerRef)tokenizer
{
  if (!self)
  {
    return 0;
  }

  v5 = *(self + 472);
  if (a2 == v5)
  {
    return 0;
  }

  v6 = a2 + range;
  if (a2 + range == *(self + 480) + v5)
  {
    return 0;
  }

  location = CFStringTokenizerGetCurrentTokenRange(tokenizer).location;
  if (!CFStringTokenizerGoToTokenAtIndex(tokenizer, a2))
  {
    return 0;
  }

  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
  v11 = CurrentTokenRange.location < a2 && v6 < CurrentTokenRange.location + CurrentTokenRange.length;
  if (location != -1)
  {
    CFStringTokenizerGoToTokenAtIndex(tokenizer, location);
  }

  return v11;
}

- (uint64_t)_lineBreakTokenizer
{
  if (result)
  {
    v1 = result;
    string = [*(result + 448) string];

    if ((*(v1 + 88) & 1) == 0)
    {
      v3 = *(v1 + 472);
      v4 = *(v1 + 80);
      if (v4)
      {
        CFStringTokenizerSetString(v4, string, v3);
      }

      else
      {
        *(v1 + 80) = CFStringTokenizerCreate(*MEMORY[0x1E695E480], string, v3, 3uLL, *(v1 + 136));
      }

      *(v1 + 88) = 1;
    }

    return *(v1 + 80);
  }

  return result;
}

- (double)_minimumDemeritForLineEndingAtBreak:(double)break withExpansionRatio:
{
  if (!self)
  {
    return 0.0;
  }

  v5 = [(_NSOptimalLineBreaker *)self _breakPenaltyForBreak:a2];
  if (break >= -1.0)
  {
    v7 = fabs(break);
    v8 = *(self + 288);
    v6 = v8 * pow(v7, *(self + 280)) + 0.5 + 1.0;
  }

  else
  {
    v6 = INFINITY;
  }

  return (v5 + v6) * (v5 + v6);
}

- (BOOL)_attributedStringOverridesMethodWithSelector:(void *)selector
{
  if (!selector)
  {
    return 0;
  }

  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  attributedString = [selector attributedString];
  v6 = v4 != [attributedString methodForSelector:a2];

  return v6;
}

- (uint64_t)_localeHasDictionaryBasedLineBreaks
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 136);
    if (v2)
    {
      currentLocale = v2;
    }

    else
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    v4 = currentLocale;
    languageCode = [currentLocale languageCode];
    if (([languageCode isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"ja"))
    {
      LOBYTE(selfCopy) = *(selfCopy + 375) ^ 1;
    }

    else if ([languageCode isEqualToString:@"ko"])
    {
      LOBYTE(selfCopy) = *(selfCopy + 380) == 2;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy & 1;
}

- (uint64_t)_shouldAvoidBreakingAfterWord:(uint64_t)word
{
  v3 = a2;
  if (!word)
  {
    goto LABEL_5;
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_1);
  }

  v4 = [v3 length];
  if (v4 <= qword_1ED4DF2A8)
  {
    v6 = *(word + 136);
    if (v6)
    {
      currentLocale = v6;
    }

    else
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    }

    v8 = currentLocale;
    languageCode = [currentLocale languageCode];
    v10 = [qword_1ED4DF2A0 objectForKeyedSubscript:languageCode];
    if (v10)
    {
      lowercaseString = [v3 lowercaseString];

      v5 = [v10 containsObject:lowercaseString];
      v3 = lowercaseString;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_rangeOfLineBreakEndingAtIndex:(__int16 *)index flags:(unint64_t)flags inRange:(uint64_t)range inlineBuffer:(void *)buffer
{
  if (!self)
  {
    return 0;
  }

  paragraphRange = [self paragraphRange];
  v12 = ~paragraphRange;
  v13 = ~paragraphRange + a2;
  if (v13 < 0 || (v14 = buffer[20], v14 <= v13))
  {
    v16 = 0;
  }

  else
  {
    v15 = buffer[17];
    if (v15)
    {
      v16 = *(v15 + 2 * buffer[19] + 2 * v13);
    }

    else
    {
      v27 = buffer[18];
      if (v27)
      {
        v16 = *(v27 + buffer[19] + v13);
      }

      else
      {
        if (buffer[22] <= v13 || (v30 = buffer[21], v30 > v13))
        {
          OUTLINED_FUNCTION_0(v14);
          v30 = buffer[21];
        }

        v16 = *(buffer + v13 - v30);
      }
    }
  }

  if (!a2)
  {
    flags = 0;
    v22 = 0;
    goto LABEL_77;
  }

  v54 = a2;
  if (v16 == 10)
  {
    goto LABEL_19;
  }

  if (v16 != 13)
  {
    if (!charIsNormalWhitespace(v16))
    {
      if (v16 != 173)
      {
        v22 = 0;
LABEL_63:
        v34 = v54 - a2;
        flags = a2;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_7();
      if (!v36 & v17)
      {
        v28 = a2 + v12;
        if (v28 < 0 || (OUTLINED_FUNCTION_8(), v20 ^ v21 | v36))
        {
          v16 = 0;
        }

        else if (buffer[17])
        {
          OUTLINED_FUNCTION_3();
        }

        else if (buffer[18])
        {
          OUTLINED_FUNCTION_4();
        }

        else
        {
          if (buffer[22] <= v28 || (v52 = buffer[21], v52 > v28))
          {
            OUTLINED_FUNCTION_0(v29);
            v52 = buffer[21];
          }

          v16 = *(buffer + v28 - v52);
        }

        v22 = 10;
        goto LABEL_63;
      }

      v16 = 0;
      v22 = 10;
      goto LABEL_64;
    }

    if (v16 != 10)
    {
      v22 = 0;
      goto LABEL_59;
    }

LABEL_19:
    indexCopy = index;
    v24 = (__PAIR128__(a2, flags) - a2) >> 64;
    if (v24 <= flags || (v25 = v24 + v12, v25 < 0) || (OUTLINED_FUNCTION_8(), v20 ^ v21 | v36))
    {
      v16 = 0;
    }

    else
    {
      if (buffer[17])
      {
        OUTLINED_FUNCTION_3();
      }

      else if (buffer[18])
      {
        OUTLINED_FUNCTION_4();
      }

      else
      {
        if (buffer[22] <= v25 || (v31 = buffer[21], v31 > v25))
        {
          OUTLINED_FUNCTION_0(v26);
          v31 = buffer[21];
        }

        v16 = *(buffer + v25 - v31);
      }

      if (v16 == 13)
      {
        a2 = v24 - 1;
        if (v24 - 1 > flags)
        {
          v18 = v24 - paragraphRange - 2;
          if (v18 >= 0)
          {
            OUTLINED_FUNCTION_8();
            index = indexCopy;
            if (!(v20 ^ v21 | v36))
            {
              goto LABEL_14;
            }

            goto LABEL_57;
          }
        }

        v16 = 0;
        v22 = 1;
LABEL_26:
        index = indexCopy;
        goto LABEL_59;
      }
    }

    v22 = 1;
    a2 = (__PAIR128__(a2, flags) - a2) >> 64;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7();
  if (!v36 & v17)
  {
    v18 = a2 + v12;
    if (v18 >= 0)
    {
      OUTLINED_FUNCTION_8();
      if (!(v20 ^ v21 | v36))
      {
LABEL_14:
        if (buffer[17])
        {
          OUTLINED_FUNCTION_3();
        }

        else if (buffer[18])
        {
          OUTLINED_FUNCTION_4();
        }

        else
        {
          if (buffer[22] <= v18 || (v51 = buffer[21], v51 > v18))
          {
            OUTLINED_FUNCTION_0(v19);
            v51 = buffer[21];
          }

          v16 = *(buffer + v18 - v51);
        }

        goto LABEL_58;
      }
    }
  }

LABEL_57:
  v16 = 0;
LABEL_58:
  v22 = 1;
LABEL_59:
  if (a2 > flags)
  {
    indexCopy2 = index;
    IsNormalWhitespace = charIsNormalWhitespace(v16);
    v33 = v16 == 160;
    if ((IsNormalWhitespace & 1) == 0 && v16 != 160)
    {
LABEL_62:
      index = indexCopy2;
      goto LABEL_63;
    }

    while (1)
    {
      v40 = a2;
      if (v33)
      {
        v41 = self[22];
        if (!v41)
        {
          v42 = [MEMORY[0x1E695DFA8] set];
          v43 = self[22];
          self[22] = v42;

          v41 = self[22];
        }

        --a2;
        v44 = [MEMORY[0x1E696B098] valueWithRange:{v40 - 1, 1, indexCopy2}];
        [v41 addObject:v44];
      }

      else
      {
        --a2;
      }

      if (a2 <= flags)
      {
        break;
      }

      v45 = v40 - paragraphRange - 2;
      if (v45 < 0 || (v46 = buffer[20], v46 <= v45))
      {
        v16 = 0;
      }

      else
      {
        v47 = buffer[17];
        if (v47)
        {
          v16 = *(v47 + 2 * buffer[19] + 2 * v45);
        }

        else
        {
          v49 = buffer[18];
          if (v49)
          {
            v16 = *(v49 + buffer[19] + v45);
          }

          else
          {
            if (buffer[22] <= v45 || (v50 = buffer[21], v50 > v45))
            {
              OUTLINED_FUNCTION_0(v46);
              v50 = buffer[21];
            }

            v16 = *(buffer + v45 - v50);
          }
        }
      }

      v48 = charIsNormalWhitespace(v16);
      v33 = v16 == 160;
      if ((v48 & 1) == 0 && v16 != 160)
      {
        goto LABEL_62;
      }
    }

    v16 = 0;
    index = indexCopy2;
    goto LABEL_65;
  }

LABEL_64:
  flags = a2;
LABEL_65:
  v34 = v54 - flags;
  if (flags)
  {
LABEL_66:
    v35 = v16 - 8208;
    v36 = v35 > 4 || v35 == 2;
    if (!v36 || v16 == 173 || v16 == 45)
    {
      if (v16 == 45 && v34 == 0)
      {
        v38 = 264;
      }

      else
      {
        v38 = 8;
      }

      v22 |= v38;
    }
  }

LABEL_77:
  *index = v22;
  return flags;
}

- (void)_enumerateNonBreakingSpacesWithBlock:(id *)block
{
  v26 = a2;
  if (block)
  {
    if (qword_1ED4DF2B0 != -1)
    {
      dispatch_once(&qword_1ED4DF2B0, &__block_literal_global_125);
    }

    attributedString = [block attributedString];
    string = [attributedString string];

    paragraphRange = [block paragraphRange];
    v7 = paragraphRange + v6;
    if (paragraphRange < paragraphRange + v6)
    {
      v8 = paragraphRange;
      do
      {
        v9 = [string rangeOfCharacterFromSet:qword_1ED4DF2B8 options:0 range:{v8, v7 - v8}];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v11 = v9;
        v12 = v10;
        v13 = [block[22] count];
        if (v13)
        {
          v21 = block[22];
          v22 = [MEMORY[0x1E696B098] valueWithRange:{v11, v12}];
          LOBYTE(v21) = [v21 containsObject:v22];

          if (v21)
          {
            continue;
          }
        }

        v23 = OUTLINED_FUNCTION_9(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26);
        v24(v23, v11, v12);
        v8 = v11 + v12;
      }

      while (v11 + v12 < v7);
    }
  }
}

- (void)_calculateFirstFitWrapping
{
  if (self && (*(self + 9) & 1) == 0)
  {
    if (*(self + 32))
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:&unk_1F01CC270];
      if (*(self + 32) != 1)
      {
        v2 = 0;
        do
        {
          v3 = *(*(self + 24) + (v2 << 6) + 48);
          [self textContainerWidth];
          v5 = v4;
          v6 = *(self + 24);
          if (v3)
          {
            v5 = v4 - *(v6 + (v2 << 6) + 16);
          }

          v7 = v2 + 1;
          v8 = (v2 << 6) + 112;
          v9 = (v2 << 6) + 64;
          do
          {
            v10 = v7;
            v11 = v8;
            v12 = v9;
            if (v7 >= *(self + 32) - 1)
            {
              break;
            }

            [self _naturalWidthFromBreak:v6 + (v2 << 6) toBreak:v6 + v8 + 16];
            v6 = *(self + 24);
            if (v13 > v5)
            {
              break;
            }

            v8 = v11 + 64;
            v7 = v10 + 1;
            v9 = v12 + 64;
          }

          while ((*(v6 + v11) & 1) == 0);
          if ((*(v6 + v11) & 2) != 0 && v10 > v2)
          {
            v14 = v6 + v12;
            v15 = v10;
            while ((*(v14 + 48) & 2) != 0)
            {
              --v15;
              v14 -= 64;
              if (v15 <= v2)
              {
                goto LABEL_20;
              }
            }

            [self _naturalWidthFromBreak:v6 + (v2 << 6) toBreak:?];
            if (v16 > v5 * 0.9)
            {
              v10 = v15;
            }
          }

LABEL_20:
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [array addObject:v17];

          v2 = v10;
        }

        while (v10 < *(self + 32) - 1);
      }

      *(self + 200) = [array count];
      OUTLINED_FUNCTION_6();
      *(self + 192) = malloc_type_realloc(v20, v18, v19);
      if (*(self + 200))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = (*(self + 192) + v21);
          v24 = *(self + 24);
          v25 = [array objectAtIndexedSubscript:v22];
          v26 = (v24 + ([v25 unsignedIntegerValue] << 6));
          v27 = v26[3];
          v29 = *v26;
          v28 = v26[1];
          v23[2] = v26[2];
          v23[3] = v27;
          *v23 = v29;
          v23[1] = v28;

          ++v22;
          v21 += 64;
        }

        while (v22 < *(self + 200));
      }

      *(self + 9) = 1;
    }

    else
    {
      *(self + 200) = 0;
      *(self + 9) = 1;
    }
  }
}

- (void)_enumerateEquivalenceClassComponentsForNode:(int)node asTerminalNode:(void *)terminalNode withBlock:
{
  terminalNodeCopy = terminalNode;
  v44 = terminalNodeCopy;
  if (self)
  {
    v15 = *(self + 416);
    if (node)
    {
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_10(terminalNodeCopy, v8, v9, v10, v11, v12, v13, v14, v42, terminalNodeCopy);
        v17(v16);
      }
    }

    else
    {
      if (v15 || (v30 = *(self + 424)) != 0 && v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = OUTLINED_FUNCTION_10(terminalNodeCopy, v8, v9, v10, v11, v12, v13, v14, v42, terminalNodeCopy);
        v19(v18);
      }

      v44[2](v44, a2[6]);
      v20 = (v44[2])(v44, a2[7]);
      if (*(self + 372) == 1)
      {
        v27 = OUTLINED_FUNCTION_9(v20, *(a2 + 33), v21, v22, v23, v24, v25, v26, v42, v44);
        v20 = v28(v27);
      }

      if (*(self + 373) == 1)
      {
        if (*a2)
        {
          v29 = *(*a2 + 56) + *(*a2 + 48);
        }

        else
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v31 = OUTLINED_FUNCTION_9(v20, v29, v21, v22, v23, v24, v25, v26, v42, v44);
        v33 = v32(v31);
        v40 = OUTLINED_FUNCTION_9(v33, a2[5], v34, v35, v36, v37, v38, v39, v43, v45);
        v41(v40);
      }
    }
  }
}

- (unint64_t)_indexOfLastResortHyphenInRange:(CFIndex)range maxWidth:(double)width
{
  if (!self)
  {
    return 0;
  }

  v8 = *(self + 136);
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = CFLocaleCopyCurrent();
  }

  v10 = v9;
  if (CFStringIsHyphenationAvailableForLocale(v9))
  {
    if (a2 + range < *(self + 480) + *(self + 472))
    {
      ++range;
    }

    v11 = range + a2;
    while (1)
    {
      string = [*(self + 448) string];
      v19.location = a2;
      v19.length = range;
      HyphenationLocationBeforeIndex = CFStringGetHyphenationLocationBeforeIndex(string, v11, v19, 0, v10, 0);

      v14 = HyphenationLocationBeforeIndex != -1 && HyphenationLocationBeforeIndex > a2;
      if (!v14 || HyphenationLocationBeforeIndex >= v11)
      {
        break;
      }

      [*(self + 360) widthOfSubstringWithRange:{a2, HyphenationLocationBeforeIndex - a2}];
      v17 = v16;
      [(_NSOptimalLineBreaker *)self _computeFontMetricsAtIndex:?];
      v11 = HyphenationLocationBeforeIndex;
      if (v17 + *(self + 120) <= width)
      {
        goto LABEL_19;
      }
    }
  }

  HyphenationLocationBeforeIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
  CFRelease(v10);
  return HyphenationLocationBeforeIndex;
}

- (void)_calculateOptimalWrapping
{
  if (self && (*(self + 9) & 1) == 0)
  {
    if (*(self + 369) == 1)
    {
      v2 = *(self + 400);
      if (v2 != 0x7FFFFFFFFFFFFFFFLL && ([(_NSOptimalLineBreaker *)self _mustExceedLineCount:?]& 1) == 0)
      {
        [(_NSOptimalLineBreaker *)self _calculateOptimalWrappingWithLineBreakFilter:?];
        if ([self lineCount] < *(self + 400) && !-[_NSOptimalLineBreaker _hasArtificialBreak](self))
        {
          return;
        }

        [self invalidateWrapping];
      }
    }

    [(_NSOptimalLineBreaker *)self _calculateOptimalWrappingWithLineBreakFilter:?];
  }
}

- (double)_estimatedExpansionRatioForLineWithNaturalWidth:(double *)a3 .cold.1(uint64_t a1, double *a2, double *a3, double a4)
{
  [(_NSOptimalLineBreaker *)a1 _computeParagraphStyleValues];
  v8 = *(a1 + 152);
  if (v8 == 3)
  {
    v9 = a4 / 12.0 * *(a1 + 304);
  }

  else
  {
    v10 = *(a1 + 312);
    [(_NSOptimalLineBreaker *)a1 _computeFontMetricsAtIndex:?];
    v9 = v10 * *(a1 + 120);
    if (v8 == 1)
    {
      v9 = v9 + v9;
    }
  }

  result = (*a2 - a4) / v9;
  *a3 = result;
  return result;
}

- (void)_addLineBreakWithRange:(uint64_t)a3 flags:(__int16)a4 .cold.3(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a1[3])
  {
    v8 = a1[4];
    if (v8 == a1[5])
    {
      a1[5] = 2 * v8;
      OUTLINED_FUNCTION_6();
      v12 = malloc_type_realloc(v9, v10, v11);
      a1[3] = v12;
      bzero(&v12[64 * v8], (a1[5] - v8) << 6);
      v8 = a1[4];
    }
  }

  else
  {
    v13 = [a1 attributedString];
    v14 = [v13 length] / 5uLL;

    v15 = 8;
    if (v14 > 8)
    {
      v15 = v14;
    }

    a1[5] = v15;
    v16 = malloc_type_malloc(v15 << 6, 0x1000040A976A909uLL);
    a1[3] = v16;
    bzero(v16, a1[5] << 6);
    v8 = 0;
  }

  v17 = a1[3];
  a1[4] = v8 + 1;
  v18 = v17 + (v8 << 6);
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 48) = a4;
}

- (uint64_t)_bestNode:(uint64_t)a3 dominatesNode:(char *)a4 .cold.5(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = *(result + 424);
  if (v4)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && *(a2 + 16) != *(a3 + 16))
  {
    goto LABEL_17;
  }

  v6 = *(result + 416);
  if (*(result + 372))
  {
    if (!v6 && *(a2 + 24) >= *(a3 + 24) + *(result + 256))
    {
      goto LABEL_19;
    }
  }

  else if ((*(result + 373) & 1) == 0)
  {
    v7 = *(a2 + 16);
    v8 = *(a3 + 16);
    if (v6 < 0)
    {
      if (v7 - v6 < v8)
      {
LABEL_19:
        v9 = 1;
        goto LABEL_20;
      }
    }

    else if (v7 > v8 + v6 || !v6 && v7 < v8)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  v9 = 0;
LABEL_20:
  *a4 = v9;
  return result;
}

- (void)_mustExceedLineCount:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v7 = *(a1 + 24);
  v8 = v7 + (a2 << 6);
  [a1 _naturalWidthFromBreak:v7 toBreak:v8 - 64];
  v10 = v9 - (*(v8 - 8) - *(v8 - 48) - *(v7 + 56));
  [(_NSOptimalLineBreaker *)a1 _computeParagraphStyleValues];
  v11 = *(a1 + 160);
  result = [(_NSOptimalLineBreaker *)a1 _computeParagraphStyleValues];
  *a4 = v10 > v11 + (a3 - 1) * *(a1 + 168);
  return result;
}

@end