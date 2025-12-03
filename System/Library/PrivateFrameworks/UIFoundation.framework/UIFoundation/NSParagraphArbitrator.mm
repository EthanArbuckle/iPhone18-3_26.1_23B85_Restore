@interface NSParagraphArbitrator
+ (BOOL)_hyphenatesAsLastResort;
+ (id)paragraphArbitratorWithAttributedString:(id)string range:(_NSRange)range;
+ (int)_languageCategoryForLanguageCode:(id)code;
+ (int)_lineBreakStyleForFont:(id)font;
+ (void)initialize;
- ($F08F7EC4C389A89376F473094BC6C9F8)_firstFitLineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range;
- ($F08F7EC4C389A89376F473094BC6C9F8)_optimalLineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range;
- ($F08F7EC4C389A89376F473094BC6C9F8)lineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range;
- (BOOL)_attributedStringOverridesLineBreakBeforeIndex:(id)index;
- (BOOL)_hyphenatesAsLastResort;
- (BOOL)_shouldUseCFStringTokenizerForLineBreaks;
- (BOOL)_shouldUseOptimalLayout;
- (BOOL)prepareBreakIteratorForCharacterAtIndex:(unint64_t)index;
- (BOOL)prepareTokenizerForPreferredLanguage:(id)language;
- (NSParagraphArbitrator)initWithAttributedString:(id)string range:(_NSRange)range;
- (NSParagraphStyle)defaultParagraphStyle;
- (NSString)debugString;
- (_NSRange)paragraphRange;
- (_NSRange)previousLineRange;
- (double)raggednessWithCharIndexAsLineBreak:(unint64_t)break inRange:(_NSRange)range;
- (id)_preferredLanguageForCharacterAtIndex:(unint64_t)index;
- (int)_lineBreakStyleForLastResortHyphenation:(BOOL)hyphenation;
- (unint64_t)adjustedLineBreakIndexForProposedIndex:(unint64_t)index;
- (void)_computeOptimalLayout;
- (void)configureOptimalLineBreaker;
- (void)dealloc;
- (void)reset;
- (void)resetBreaker;
- (void)setAttributedString:(id)string;
- (void)setDefaultParagraphStyle:(id)style;
- (void)setParagraphLine:(__CTLine *)line;
- (void)setParagraphRange:(_NSRange)range;
- (void)setTextContainerWidth:(double)width;
@end

@implementation NSParagraphArbitrator

- (BOOL)_hyphenatesAsLastResort
{
  v3 = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attribute:@"NSParagraphStyle" atIndex:[(NSParagraphArbitrator *)self paragraphRange] effectiveRange:0];
  if (!v3)
  {
    v3 = +[NSParagraphStyle defaultParagraphStyle];
  }

  secondaryLineBreakMode = [(NSParagraphStyle *)v3 secondaryLineBreakMode];
  if (secondaryLineBreakMode != 1)
  {
    if (secondaryLineBreakMode == 2)
    {
      LOBYTE(secondaryLineBreakMode) = 0;
    }

    else
    {
      LODWORD(secondaryLineBreakMode) = +[NSParagraphArbitrator _hyphenatesAsLastResort];
      if (secondaryLineBreakMode)
      {
        LOBYTE(secondaryLineBreakMode) = [(NSParagraphArbitrator *)self _lineBreakStyleForLastResortHyphenation:1]!= 1;
      }
    }
  }

  return secondaryLineBreakMode;
}

+ (BOOL)_hyphenatesAsLastResort
{
  if (_hyphenatesAsLastResort_once != -1)
  {
    +[NSParagraphArbitrator _hyphenatesAsLastResort];
  }

  return _hyphenatesAsLastResort_result;
}

- (void)reset
{
  [(NSParagraphArbitrator *)self setAttributedString:0];
  [(NSParagraphArbitrator *)self setParagraphRange:0x7FFFFFFFFFFFFFFFLL, 0];
  [(NSParagraphArbitrator *)self setParagraphLine:0];
  [(NSParagraphArbitrator *)self setLineWidth:0];
  [(NSParagraphArbitrator *)self setValidateLineBreakContext:0];
  [(NSParagraphArbitrator *)self setLineBreakStrategy:0];
  [(NSParagraphArbitrator *)self setTypesetterBehavior:+[NSTypesetter defaultTypesetterBehavior]];
  [(NSParagraphArbitrator *)self setHyphenationFactor:0.0];
  [(NSParagraphArbitrator *)self setPreviousLineRange:0x7FFFFFFFFFFFFFFFLL, 0];

  [(NSParagraphArbitrator *)self setPreferredLanguage:0];
}

- (void)resetBreaker
{
  breaker = self->_breaker;
  if (breaker)
  {
    _NSDisposeBreakIterator(breaker, 0, 0);
    self->_breaker = 0;

    self->_breakerString = 0;
    self->_breakerLanguage = 0;
  }
}

+ (void)initialize
{
  if (initialize_once != -1)
  {
    +[NSParagraphArbitrator initialize];
  }
}

uint64_t __35__NSParagraphArbitrator_initialize__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];

  return [v0 registerDefaults:&unk_1F01CC220];
}

- (_NSRange)previousLineRange
{
  objc_copyStruct(v4, &self->_previousLineRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)_shouldUseOptimalLayout
{
  if (_shouldUseOptimalLayout_once != -1)
  {
    [NSParagraphArbitrator _shouldUseOptimalLayout];
  }

  usesOptimalLayout = self->_usesOptimalLayout;
  if (usesOptimalLayout == 0x7FFFFFFFFFFFFFFFLL)
  {
    string = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] string];
    defaultParagraphStyle = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attribute:@"NSParagraphStyle" atIndex:[(NSParagraphArbitrator *)self paragraphRange] effectiveRange:0];
    if (!defaultParagraphStyle)
    {
      defaultParagraphStyle = [(NSParagraphArbitrator *)self defaultParagraphStyle];
    }

    _lineBreakStyle = [(NSParagraphArbitrator *)self _lineBreakStyle];
    if (([(NSParagraphArbitrator *)self lineBreakStrategy]& 4) != 0)
    {
      goto LABEL_9;
    }

    if (([(NSParagraphArbitrator *)self lineBreakStrategy]& 8) != 0)
    {
      v7 = 1;
    }

    else
    {
      if ((__NSLineBreakStrategyStandardActualOptions([(NSParagraphStyle *)defaultParagraphStyle alignment]== NSTextAlignmentJustified) & 8) == 0)
      {
LABEL_9:
        v7 = 0;
        goto LABEL_12;
      }

      v7 = ([(NSParagraphArbitrator *)self lineBreakStrategy]& 3) == 0;
    }

LABEL_12:
    if (![(NSParagraphArbitrator *)self breaksLinesForInteractiveText]&& (_lineBreakStyle != 1 || [(NSParagraphStyle *)defaultParagraphStyle spansAllLines]))
    {
      v7 = 1;
    }

    if (self->_textContainerIsSimple && self->_textContainerWidth > 0.001 && [(NSString *)string length]<= 0x2000)
    {
      v8 = _shouldUseOptimalLayout_forbiddenCharacterSet;
      paragraphRange = [(NSParagraphArbitrator *)self paragraphRange];
      v11 = [(NSString *)string rangeOfCharacterFromSet:v8 options:0 range:paragraphRange, v10]== 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
    }

    usesOptimalLayout = v7 & v11;
    self->_usesOptimalLayout = usesOptimalLayout;
  }

  return usesOptimalLayout != 0;
}

- (_NSRange)paragraphRange
{
  length = self->_paragraphRange.length;
  location = self->_paragraphRange.location;
  result.length = length;
  result.location = location;
  return result;
}

id __48__NSParagraphArbitrator__shouldUseOptimalLayout__block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\t"];
  _shouldUseOptimalLayout_forbiddenCharacterSet = result;
  return result;
}

uint64_t __48__NSParagraphArbitrator__hyphenatesAsLastResort__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _hyphenatesAsLastResort_result = result;
  return result;
}

- (NSParagraphStyle)defaultParagraphStyle
{
  result = self->_defaultParagraphStyle;
  if (!result)
  {
    return +[NSParagraphStyle defaultParagraphStyle];
  }

  return result;
}

- (BOOL)_shouldUseCFStringTokenizerForLineBreaks
{
  if (_shouldUseCFStringTokenizerForLineBreaks_once != -1)
  {
    [NSParagraphArbitrator _shouldUseCFStringTokenizerForLineBreaks];
  }

  return _shouldUseCFStringTokenizerForLineBreaks_result;
}

uint64_t __65__NSParagraphArbitrator__shouldUseCFStringTokenizerForLineBreaks__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _shouldUseCFStringTokenizerForLineBreaks_result = result;
  return result;
}

- (void)setAttributedString:(id)string
{
  attributedString = self->_attributedString;
  if (attributedString != string)
  {

    self->_attributedString = string;
    self->_needsOptimalLayout = 1;
    self->_usesOptimalLayout = 0x7FFFFFFFFFFFFFFFLL;
    self->_lineBreakStyle = 0;
  }
}

- (void)setParagraphRange:(_NSRange)range
{
  if (range.location != self->_paragraphRange.location || range.length != self->_paragraphRange.length)
  {
    self->_paragraphRange = range;
    self->_needsOptimalLayout = 1;
    self->_usesOptimalLayout = 0x7FFFFFFFFFFFFFFFLL;
    self->_lineBreakStyle = 0;
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
    self->_needsOptimalLayout = 1;
  }
}

- (void)setTextContainerWidth:(double)width
{
  if (self->_textContainerWidth != width)
  {
    self->_textContainerWidth = width;
    self->_needsOptimalLayout = 1;
    self->_usesOptimalLayout = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setDefaultParagraphStyle:(id)style
{
  defaultParagraphStyle = self->_defaultParagraphStyle;
  if (defaultParagraphStyle != style)
  {

    self->_defaultParagraphStyle = [style copy];
    self->_needsOptimalLayout = 1;
    self->_usesOptimalLayout = 0x7FFFFFFFFFFFFFFFLL;
    self->_lineBreakStyle = 0;
  }
}

+ (id)paragraphArbitratorWithAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"NSParagraphArbitratorKey"];
    if ([v9 attributedString])
    {
      v8 = 0;
    }

    else if (v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F01AD578];
  v9 = [objc_alloc(objc_opt_class()) initWithAttributedString:v10 range:{0x7FFFFFFFFFFFFFFFLL, 0}];

  if (v8)
  {
    [v8 setObject:v9 forKeyedSubscript:@"NSParagraphArbitratorKey"];
  }

  v11 = v9;
LABEL_7:
  if ([string length])
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = 0;
  }

  [v9 setAttributedString:stringCopy];
  [v9 setParagraphRange:{location, length}];
  [v9 setHyphenationFactor:0.0];
  [v9 setLineBreakStrategy:0];
  [v9 setTypesetterBehavior:{+[NSTypesetter defaultTypesetterBehavior](NSTypesetter, "defaultTypesetterBehavior")}];
  [v9 setLineWidth:0];
  [v9 setTextContainerIsSimple:0];
  [v9 setTextContainerWidth:0.0];
  [v9 setDefaultParagraphStyle:0];
  [v9 setBreaksLinesForInteractiveText:0];
  [v9 setMaximumNumberOfLines:0];
  [v9 resetBreaker];
  return v9;
}

- (NSParagraphArbitrator)initWithAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = NSParagraphArbitrator;
  v7 = [(NSParagraphArbitrator *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(NSParagraphArbitrator *)v7 reset];
    if ([string length])
    {
      stringCopy = string;
    }

    else
    {
      stringCopy = 0;
    }

    [(NSParagraphArbitrator *)v8 setAttributedString:stringCopy];
    [(NSParagraphArbitrator *)v8 setParagraphRange:location, length];
    v8->_usesOptimalLayout = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)dealloc
{
  [(NSParagraphArbitrator *)self reset];
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
    self->_tokenizer = 0;
  }

  [(NSParagraphArbitrator *)self setParagraphLine:0];
  [(NSParagraphArbitrator *)self resetBreaker];
  v4.receiver = self;
  v4.super_class = NSParagraphArbitrator;
  [(NSParagraphArbitrator *)&v4 dealloc];
}

- (BOOL)_attributedStringOverridesLineBreakBeforeIndex:(id)index
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NSParagraphArbitrator__attributedStringOverridesLineBreakBeforeIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = sel_lineBreakBeforeIndex_withinRange_;
  if (_attributedStringOverridesLineBreakBeforeIndex__onceToken != -1)
  {
    dispatch_once(&_attributedStringOverridesLineBreakBeforeIndex__onceToken, block);
  }

  v3 = objc_opt_class();
  return class_getMethodImplementation(v3, sel_lineBreakBeforeIndex_withinRange_) != _attributedStringOverridesLineBreakBeforeIndex__defaultImp;
}

IMP __72__NSParagraphArbitrator__attributedStringOverridesLineBreakBeforeIndex___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  result = class_getMethodImplementation(v2, *(a1 + 32));
  _attributedStringOverridesLineBreakBeforeIndex__defaultImp = result;
  return result;
}

- (BOOL)prepareBreakIteratorForCharacterAtIndex:(unint64_t)index
{
  attributedString = [(NSParagraphArbitrator *)self attributedString];
  v6 = [(NSAttributedString *)attributedString length];
  if (v6 > 0x200)
  {
    return 0;
  }

  v7 = [(NSParagraphArbitrator *)self _preferredLanguageForCharacterAtIndex:index - (v6 == index)];
  if (!self->_breaker || (breakerLanguage = self->_breakerLanguage, breakerLanguage != v7) && ([(NSString *)breakerLanguage isEqual:v7]& 1) == 0)
  {
    [(NSParagraphArbitrator *)self resetBreaker];
    [(NSParagraphArbitrator *)self lineBreakStrategy];
    self->_breaker = _NSCopyBreakIterator(v7, 0, 0, 0);

    self->_breakerLanguage = v7;
  }

  string = [(NSAttributedString *)attributedString string];
  if (!self->_breaker)
  {
    return 0;
  }

  v10 = string;
  if (self->_breakerString == string)
  {
    return 1;
  }

  v11 = CFStringOpenUText();
  ubrk_setUText();
  utext_close(v11);

  self->_breakerString = v10;
  return self->_breaker != 0;
}

- (BOOL)prepareTokenizerForPreferredLanguage:(id)language
{
  if (language)
  {
    v5 = __NSShouldUseTokenizerForPushOut(language);
    if (!v5)
    {
      return v5;
    }

LABEL_7:
    if (self->_tokenizer)
    {
      if ([(NSString *)[(NSParagraphArbitrator *)self preferredLanguage] isEqualToString:language])
      {
LABEL_16:
        LOBYTE(v5) = 1;
        return v5;
      }

      v6 = __NSCreateLocaleForPreferredLanguage(language);
      _CFStringTokenizerSetLocale();
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      v7 = __NSCreateLocaleForPreferredLanguage(language);
      v10.location = 0;
      v10.length = 0;
      v8 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], 0, v10, 4uLL, v7);
      if (v7)
      {
        CFRelease(v7);
      }

      self->_tokenizer = v8;
    }

    [(NSParagraphArbitrator *)self setPreferredLanguage:language];
    goto LABEL_16;
  }

  if (prepareTokenizerForPreferredLanguage__onceToken != -1)
  {
    [NSParagraphArbitrator prepareTokenizerForPreferredLanguage:];
  }

  if (prepareTokenizerForPreferredLanguage__shouldUseTokenizerForSystemLanguage)
  {
    goto LABEL_7;
  }

  LOBYTE(v5) = 0;
  return v5;
}

uint64_t __62__NSParagraphArbitrator_prepareTokenizerForPreferredLanguage___block_invoke()
{
  result = __NSShouldUseTokenizerForPushOut([objc_msgSend(MEMORY[0x1E695DF58] "preferredLanguages")]);
  prepareTokenizerForPreferredLanguage__shouldUseTokenizerForSystemLanguage = result;
  return result;
}

- (double)raggednessWithCharIndexAsLineBreak:(unint64_t)break inRange:(_NSRange)range
{
  location = range.location;
  breakCopy = break;
  v7 = [(NSParagraphArbitrator *)self lineWidth:break];
  if (v7 && ((v8 = v7, v9 = v7[2](v7, location, breakCopy - location, 0), [(NSParagraphArbitrator *)self previousLineRange], !v10) ? (v13 = [(NSParagraphArbitrator *)self paragraphRange], v12 = v14 - breakCopy + v13) : (breakCopy = [(NSParagraphArbitrator *)self previousLineRange], v12 = v11), v15 = v8[2](v8, breakCopy, v12, 0), v15 > 0.0))
  {
    return v9 / v15;
  }

  else
  {
    return 0.0;
  }
}

- ($F08F7EC4C389A89376F473094BC6C9F8)_firstFitLineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range
{
  location = a6.location;
  widthCopy = width;
  selfCopy = self;
  *&retstr->var2 = 0;
  *&retstr->var0 = xmmword_18E856458;
  v11 = [(NSParagraphArbitrator *)self attributedString:width];
  theString = [(NSAttributedString *)v11 string];
  v104 = widthCopy - location;
  paragraphRange = [(NSParagraphArbitrator *)selfCopy paragraphRange];
  v13 = v12;
  [(NSParagraphArbitrator *)selfCopy hyphenationFactor];
  v15 = v14;
  _hyphenatesAsLastResort = [(NSParagraphArbitrator *)selfCopy _hyphenatesAsLastResort];
  lineBreakStrategy = [(NSParagraphArbitrator *)selfCopy lineBreakStrategy];
  v103 = v11;
  v96 = [(NSParagraphArbitrator *)selfCopy _attributedStringOverridesLineBreakBeforeIndex:v11];
  lineWidth = [(NSParagraphArbitrator *)selfCopy lineWidth];
  v92 = retstr;
  if (_firstFitLineBreakContextBeforeIndex_lineFragmentWidth_range__once != -1)
  {
    [NSParagraphArbitrator _firstFitLineBreakContextBeforeIndex:lineFragmentWidth:range:];
  }

  v99 = [(NSParagraphArbitrator *)selfCopy prepareBreakIteratorForCharacterAtIndex:widthCopy];
  v16 = 0;
  v93 = paragraphRange + v13;
  v98 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v100 = selfCopy;
  while (1)
  {
    v19 = 0.0;
    if (v16 == 1 && ([(NSParagraphArbitrator *)selfCopy previousLineRange], !v20))
    {
      [(NSParagraphArbitrator *)selfCopy raggednessWithCharIndexAsLineBreak:v18 inRange:location, v104];
      v19 = v22;
      if (widthCopy)
      {
LABEL_7:
        v18 = widthCopy - 1;
        result = CFStringGetCharacterAtIndex(theString, widthCopy - 1);
        if (result == 9)
        {
          goto LABEL_20;
        }
      }
    }

    else if (widthCopy)
    {
      goto LABEL_7;
    }

    if (v99)
    {
      if (!selfCopy->_breaker)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      result = ubrk_preceding();
      v18 = result == -1 ? 0x7FFFFFFFFFFFFFFFLL : result;
    }

    else
    {
      result = (v96 ? [(NSAttributedString *)v103 lineBreakBeforeIndex:widthCopy withinRange:location, v104]: [(NSAttributedString *)v103 _lineBreakBeforeIndex:widthCopy withinRange:location lineBreakStrategy:v104, [(NSParagraphArbitrator *)selfCopy lineBreakStrategy]]);
      v18 = result;
    }

LABEL_20:
    if (v16 == 1)
    {
      result = [(NSParagraphArbitrator *)selfCopy raggednessWithCharIndexAsLineBreak:v18 inRange:location, v104];
      if (v23 < 0.6 || (v24 = v23, result = [(NSParagraphArbitrator *)selfCopy previousLineRange], !v25) && vabdd_f64(1.0, v24) > vabdd_f64(1.0, v19))
      {
        v18 = widthCopy;
      }
    }

    if (!v18 || v18 == 0x7FFFFFFFFFFFFFFFLL || v18 <= location || v18 >= widthCopy)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!v16 && v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [(__CFString *)theString rangeOfCharacterFromSet:_firstFitLineBreakContextBeforeIndex_lineFragmentWidth_range__lastResortCharacterSet options:4 range:location, v104];
      v27 = location;
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      v18 = result + v26;
      v27 = location;
      if (result + v26 >= widthCopy)
      {
        goto LABEL_36;
      }

      result = [(NSAttributedString *)v103 containsAttachmentsInRange:location, v104];
      v27 = location;
      if (result)
      {
        goto LABEL_36;
      }
    }

    v27 = v98;
    if (v16 != 1)
    {
      v27 = location;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_36:
      v18 = v27;
    }

    if (v18 <= location)
    {
      v28 = 0;
      if (!lineWidth)
      {
        goto LABEL_48;
      }
    }

    else
    {
      result = [(__CFString *)theString characterAtIndex:v18 - 1];
      v28 = result == 173;
      if (result == 173)
      {
        v17 = v18 - 1;
      }

      if (!lineWidth)
      {
LABEL_48:
        if (!lineWidth)
        {
          goto LABEL_85;
        }

        goto LABEL_57;
      }
    }

    if (v28)
    {
      goto LABEL_48;
    }

    if (v15 <= 0.0)
    {
      if (v18 != location || !_hyphenatesAsLastResort)
      {
        goto LABEL_85;
      }
    }

    else if (v18 != location && (*(lineWidth + 16))(lineWidth, location, v18 - location, 0) / range >= v15)
    {
      goto LABEL_85;
    }

LABEL_57:
    v30 = widthCopy;
    for (i = 3; i; --i)
    {
      result = [(NSAttributedString *)v103 lineBreakByHyphenatingBeforeIndex:v30 withinRange:location, v104];
      v32 = result != 0x7FFFFFFFFFFFFFFFLL;
      v33 = v17 < result;
      v34 = !v32 || !v33;
      v35 = v32 && v33 ? result : (v17 + 1);
      v36 = v34 ? 0x7FFFFFFFFFFFFFFFLL : v17;
      v37 = v17 == 0x7FFFFFFFFFFFFFFFLL ? result : v35;
      v17 = v17 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v36;
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v37 > location && v37 < widthCopy)
      {
        LOBYTE(tokenizer) = 1;
        if ((*(lineWidth + 16))() <= range)
        {
          selfCopy = v100;
          goto LABEL_140;
        }

        v40 = v17 == 0x7FFFFFFFFFFFFFFFLL && v28;
        if (v40 && v15 == 0.0)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          break;
        }

        v30 = v30 + -1.0;
      }
    }

LABEL_85:
    v41 = v17 == 0x7FFFFFFFFFFFFFFFLL && v28;
    if (!v41 || v15 != 0.0)
    {
      break;
    }

    widthCopy = v18 - (v18 == widthCopy);
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    selfCopy = v100;
LABEL_143:
    if (widthCopy <= location)
    {
      LOBYTE(tokenizer) = 0;
      goto LABEL_157;
    }
  }

  LOBYTE(tokenizer) = 0;
  selfCopy = v100;
  if ((lineBreakStrategy & 1) != 0 && !v16)
  {
    LOBYTE(tokenizer) = 0;
    if (location == paragraphRange && v18 < widthCopy)
    {
      v42 = v93 - v18;
      if (v93 - v18 > 0xA)
      {
        goto LABEL_137;
      }

      v43 = [(NSParagraphArbitrator *)v100 prepareTokenizerForPreferredLanguage:[(NSParagraphArbitrator *)v100 _preferredLanguageForCharacterAtIndex:v18]];
      attributedString = [(NSParagraphArbitrator *)v100 attributedString];
      paragraphRange2 = [(NSParagraphArbitrator *)v100 paragraphRange];
      range = v46;
      if (v43 && (v47 = paragraphRange2, tokenizera = -[NSAttributedString string](attributedString, "string"), -[__CFStringTokenizer rangeOfCharacterFromSet:options:range:](tokenizera, "rangeOfCharacterFromSet:options:range:", [MEMORY[0x1E696AB08] alphanumericCharacterSet], 8, v18, v42), v93 > v18) && v48)
      {
        tokenizer = [(NSParagraphArbitrator *)v100 tokenizer];
        if (!tokenizer)
        {
          goto LABEL_138;
        }

        v82 = v43;
        string = [(NSAttributedString *)attributedString string];
        v107.location = v47;
        v107.length = range;
        CFStringTokenizerSetString(tokenizer, string, v107);
        CFStringTokenizerGoToTokenAtIndex(tokenizer, v18);
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
        v51 = CurrentTokenRange.location;
        rangea = CFStringTokenizerAdvanceToNextToken(tokenizer);
        tokenizer = tokenizer;
        v52 = CFStringTokenizerGetCurrentTokenRange(tokenizer);
        if (v52.location == -1)
        {
          v53 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v52.location;
        }

        v54 = attributedString;
        v83 = v53;
        v84 = attributedString;
        v55 = v53 + v52.length;
        result = [(NSAttributedString *)v54 length];
        if (CurrentTokenRange.location >= v18)
        {
          v81 = CurrentTokenRange.location + CurrentTokenRange.length;
          v16 = 0;
          LOBYTE(tokenizer) = 0;
          if (CurrentTokenRange.location == v18 && rangea && v55 <= result)
          {
            v66 = v84;
            string2 = [(NSAttributedString *)v84 string];
            -[NSString rangeOfCharacterFromSet:options:range:](string2, "rangeOfCharacterFromSet:options:range:", [MEMORY[0x1E696AB08] punctuationCharacterSet], 12, v83, v52.length);
            if (!v68)
            {
              goto LABEL_137;
            }

            v69 = CurrentTokenRange.length == 1 && v81 == v93;
            v70 = !v69;
            if (v52.location + v52.length != v93 && v70)
            {
              goto LABEL_137;
            }

            tokenizer = CFStringTokenizerGoToTokenAtIndex(tokenizer, v18 - 1);
            v73 = CFStringTokenizerGetCurrentTokenRange(tokenizer);
            v72 = v73.location;
            if (tokenizer)
            {
              length = v73.length;
              v75 = 0;
              do
              {
                v85 = v75;
                rangeb = v72;
                v76 = v72 == -1 ? 0x7FFFFFFFFFFFFFFFLL : v72;
                if (v76 + length > [(NSAttributedString *)v66 length])
                {
                  goto LABEL_137;
                }

                string3 = [(NSAttributedString *)v66 string];
                result = -[NSString rangeOfCharacterFromSet:options:range:](string3, "rangeOfCharacterFromSet:options:range:", [MEMORY[0x1E696AB08] alphanumericCharacterSet], 0, v76, length);
                if (v78)
                {
                  v51 = rangeb;
                  goto LABEL_108;
                }

                tokenizer = CFStringTokenizerGoToTokenAtIndex(tokenizer, rangeb - 1);
                v79 = CFStringTokenizerGetCurrentTokenRange(tokenizer);
                v72 = v79.location;
                if (v85 > 1)
                {
                  goto LABEL_137;
                }

                length = v79.length;
                v75 = v85 + 1;
              }

              while (tokenizer);
            }

LABEL_138:
            v16 = 0;
          }
        }

        else
        {
          if (CurrentTokenRange.location + CurrentTokenRange.length == v93)
          {
            goto LABEL_108;
          }

          v16 = 0;
          LOBYTE(tokenizer) = 0;
          if (rangea && v55 <= result)
          {
            string4 = [(NSAttributedString *)v84 string];
            result = -[NSString rangeOfCharacterFromSet:options:range:](string4, "rangeOfCharacterFromSet:options:range:", [MEMORY[0x1E696AB08] punctuationCharacterSet], 12, v83, v52.length);
            if (v57)
            {
LABEL_108:
              v16 = v51 & ~(v51 >> 63);
              v43 = v82;
LABEL_116:
              if (v43)
              {
                v65 = v16;
              }

              else
              {
                v65 = v18;
              }

              if (v65 > location)
              {
                if (v43)
                {
                  widthCopy = v16 + 1;
                }

                else
                {
                  widthCopy = v18;
                }

                v16 = 1;
                v98 = v18;
                goto LABEL_143;
              }
            }

LABEL_137:
            LOBYTE(tokenizer) = 0;
            goto LABEL_138;
          }
        }
      }

      else
      {
        alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        if (v93 <= v18)
        {
          goto LABEL_137;
        }

        v59 = alphanumericCharacterSet;
        [(NSString *)[(NSAttributedString *)attributedString string] rangeOfCharacterFromSet:alphanumericCharacterSet options:8 range:v18, v42];
        if (!v60)
        {
          goto LABEL_137;
        }

        result = [(NSAttributedString *)attributedString nextWordFromIndex:v18 forward:1];
        v61 = result;
        v62 = v93;
        if (v93 > result)
        {
          v63 = v93 - result;
          result = [(NSString *)[(NSAttributedString *)attributedString string] rangeOfCharacterFromSet:v59 options:0 range:result, v63];
          v62 = v93;
          if (!v64)
          {
            v61 = v93;
          }
        }

        v16 = 0;
        if (v61 == v62)
        {
          goto LABEL_116;
        }

        LOBYTE(tokenizer) = 0;
      }
    }
  }

  v37 = v18;
LABEL_140:
  result = [(NSParagraphArbitrator *)selfCopy validateLineBreakContext];
  if (result)
  {
    v71 = *&result->var2;
    v105[0] = v37;
    v105[1] = v16;
    v106 = tokenizer;
    result = v71(result, v105);
    if ((result & 1) == 0)
    {
      v16 = 0;
      widthCopy = v37 - (v37 == widthCopy);
      v18 = v37;
      goto LABEL_143;
    }
  }

  v18 = v37;
LABEL_157:
  v92->var2 = tokenizer;
  v80 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 > location)
  {
    v80 = v18;
  }

  v92->var0 = v80;
  v92->var1 = v16;
  if (v18 > location)
  {
    result = [(NSAttributedString *)[(NSParagraphArbitrator *)selfCopy attributedString] length];
    if (v18 < result)
    {
      return [(NSParagraphArbitrator *)selfCopy setPreviousLineRange:location, v18 - location];
    }
  }

  return result;
}

id __86__NSParagraphArbitrator__firstFitLineBreakContextBeforeIndex_lineFragmentWidth_range___block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithRange:{160, 1}];
  _firstFitLineBreakContextBeforeIndex_lineFragmentWidth_range__lastResortCharacterSet = result;
  return result;
}

- ($F08F7EC4C389A89376F473094BC6C9F8)_optimalLineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range
{
  length = a6.length;
  location = a6.location;
  if ([(NSParagraphArbitrator *)self paragraphRange:width]<= a6.location)
  {
    paragraphRange = [(NSParagraphArbitrator *)self paragraphRange];
    if (location + length <= paragraphRange + v11)
    {
      [(NSParagraphArbitrator *)self _computeOptimalLayout];
      *&retstr->var2 = 0;
      *&retstr->var0 = xmmword_18E856458;
      if ([(_NSOptimalLineBreaker *)self->_optimalLineBreaker lineCount]!= -1)
      {
        v12 = 0;
        do
        {
          optimalLineBreaker = self->_optimalLineBreaker;
          if (optimalLineBreaker)
          {
            [(_NSOptimalLineBreaker *)optimalLineBreaker lineBreakAtIndex:v12];
          }

          ++v12;
        }

        while (v12 < [(_NSOptimalLineBreaker *)self->_optimalLineBreaker lineCount:0]+ 1);
      }

      [NSParagraphArbitrator _optimalLineBreakContextBeforeIndex:lineFragmentWidth:range:];
    }
  }

  [NSParagraphArbitrator _optimalLineBreakContextBeforeIndex:lineFragmentWidth:range:];
}

+ (int)_lineBreakStyleForFont:(id)font
{
  if (_lineBreakStyleForFont__once != -1)
  {
    +[NSParagraphArbitrator _lineBreakStyleForFont:];
  }

  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x1E6965708]];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = _lineBreakStyleForFont__cache;
  objc_sync_enter(_lineBreakStyleForFont__cache);
  v8 = [_lineBreakStyleForFont__cache objectForKeyedSubscript:v6];
  if (!v8)
  {
    v9 = &dword_1E7267090;
    v10 = 8;
    while ([v6 rangeOfString:*(v9 - 1)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 += 4;
      if (!--v10)
      {
        v11 = 0;
        goto LABEL_11;
      }
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v9];
LABEL_11:
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = &unk_1F01CC2A0;
    }

    [_lineBreakStyleForFont__cache setObject:v8 forKeyedSubscript:v6];
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  objc_sync_exit(v7);
  return unsignedIntegerValue;
}

id __48__NSParagraphArbitrator__lineBreakStyleForFont___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _lineBreakStyleForFont__cache = result;
  return result;
}

- (NSString)debugString
{
  v3 = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attributesAtIndex:[(NSParagraphArbitrator *)self paragraphRange] effectiveRange:0];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  verticalFont = [(NSDictionary *)v3 objectForKey:@"NSFont"];
  if ([-[NSDictionary objectForKey:](v4 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
  {
    verticalFont = [verticalFont verticalFont];
  }

  if (!verticalFont)
  {
LABEL_5:
    verticalFont = NSDefaultFont();
  }

  fontDescriptor = [verticalFont fontDescriptor];
  v7 = [fontDescriptor objectForKey:*MEMORY[0x1E6965708]];
  if (!v7)
  {
    return @"ts=nil";
  }

  v8 = v7;
  if ([v7 hasPrefix:@"UICTFontTextStyle"])
  {
    v8 = [v8 substringFromIndex:{objc_msgSend(@"UICTFontTextStyle", "length")}];
  }

  _lineBreakStyle = [(NSParagraphArbitrator *)self _lineBreakStyle];
  v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"ts=%@", v8];
  v11 = v10;
  if ((_lineBreakStyle - 2) <= 3)
  {
    [(NSString *)v10 appendFormat:off_1E7267108[_lineBreakStyle - 2]];
  }

  return v11;
}

- (void)configureOptimalLineBreaker
{
  if (!self->_optimalLineBreaker)
  {
    self->_optimalLineBreaker = objc_alloc_init(_NSOptimalLineBreaker);
    self->_needsOptimalLayout = 1;
  }

  defaultParagraphStyle = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attribute:@"NSParagraphStyle" atIndex:[(NSParagraphArbitrator *)self paragraphRange] effectiveRange:0];
  if (!defaultParagraphStyle)
  {
    defaultParagraphStyle = [(NSParagraphArbitrator *)self defaultParagraphStyle];
  }

  _lineBreakStyle = [(NSParagraphArbitrator *)self _lineBreakStyle];
  [(NSParagraphArbitrator *)self hyphenationFactor];
  v6 = v5;
  if (defaultParagraphStyle)
  {
    spansAllLines = [(NSParagraphStyle *)defaultParagraphStyle spansAllLines];
  }

  else
  {
    spansAllLines = 0;
  }

  lineBreakStrategy = [(NSParagraphArbitrator *)self lineBreakStrategy];
  _hyphenatesAsLastResort = [(NSParagraphArbitrator *)self _hyphenatesAsLastResort];
  v29 = __NSCreateLocaleForPreferredLanguage([(NSParagraphArbitrator *)self _preferredLanguageForCharacterAtIndex:[(NSParagraphArbitrator *)self paragraphRange]]);
  languageCode = [(__CFLocale *)v29 languageCode];
  v8 = [objc_opt_class() _languageCategoryForLanguageCode:languageCode];
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = 1;
  v13 = 3;
  v14 = 2;
  if (_lineBreakStyle == 1 || (v15 = v8) == 0)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = _hyphenatesAsLastResort;
    v18 = lineBreakStrategy;
    goto LABEL_52;
  }

  alignment = [(NSParagraphStyle *)defaultParagraphStyle alignment];
  if ((v15 & 0xFFFFFFFE) == 2)
  {
    if (alignment == 1)
    {
      if ((_lineBreakStyle - 2) >= 3)
      {
        v11 = 0.4;
      }

      else
      {
        v11 = 0.0;
      }

      spansAllLines |= (_lineBreakStyle - 2) < 3;
      if (![languageCode isEqualToString:@"ko"])
      {
LABEL_29:
        if (([languageCode isEqualToString:@"zh"] & 1) == 0 && (objc_msgSend(languageCode, "isEqualToString:", @"ja") & 1) == 0)
        {
          [NSParagraphArbitrator configureOptimalLineBreaker];
        }

        v10 = 0;
        v9 = 0;
        v12 = (_lineBreakStyle - 5) < 0xFFFFFFFD;
        goto LABEL_32;
      }
    }

    else
    {
      if ((_lineBreakStyle & 0xFFFFFFFE) == 2 && alignment != 3)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 0.2;
      }

      spansAllLines |= (_lineBreakStyle & 0xFFFFFFFE) == 2 && alignment != 3;
      if (([languageCode isEqualToString:@"ko"] & 1) == 0)
      {
        goto LABEL_29;
      }

      if ((_lineBreakStyle - 2) > 2)
      {
        v10 = 0;
        v9 = 0;
        if ([(NSParagraphArbitrator *)self _shouldUseCFStringTokenizerForLineBreaks])
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

        v26 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_33;
      }
    }

    v13 = 0;
    v10 = 0;
    v9 = 0;
    v18 = lineBreakStrategy | 2;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_50:
    v26 = v19;
    goto LABEL_51;
  }

  if (v15 == 1)
  {
    if (alignment == 1)
    {
      if ((_lineBreakStyle - 2) < 3)
      {
        v10 = 1;
        goto LABEL_41;
      }

      v20 = self->_textContainerWidth <= 200.0;
      v10 = 0;
LABEL_39:
      if (!v20)
      {
        v6 = 0.0;
      }

      goto LABEL_41;
    }

    if (_lineBreakStyle != 4)
    {
      if (_lineBreakStyle == 3)
      {
        v10 = 1;
        v6 = 0.6;
      }

      else
      {
        if (_lineBreakStyle == 2)
        {
          goto LABEL_37;
        }

        v10 = 1;
        v6 = 0.8;
      }

LABEL_41:
      v18 = lineBreakStrategy;
      if (([languageCode isEqualToString:@"ru"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"uk"))
      {
        v14 = 1;
        v13 = 3;
        v9 = 3;
      }

      else
      {
        v9 = 3;
        v13 = 3;
      }

      v19 = 3;
      goto LABEL_50;
    }

LABEL_37:
    v20 = self->_textContainerWidth <= 200.0;
    v10 = 1;
    goto LABEL_39;
  }

  v10 = 0;
  v9 = 0;
LABEL_32:
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 3;
LABEL_33:
  v18 = lineBreakStrategy;
LABEL_51:
  v17 = [(NSParagraphStyle *)defaultParagraphStyle secondaryLineBreakMode]!= 2 || _hyphenatesAsLastResort;
LABEL_52:
  optimalLineBreaker = self->_optimalLineBreaker;
  attributedString = [(NSParagraphArbitrator *)self attributedString];
  paragraphRange = [(NSParagraphArbitrator *)self paragraphRange];
  [(_NSOptimalLineBreaker *)optimalLineBreaker setAttributedString:attributedString paragraphRange:paragraphRange, v24];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setParagraphLine:[(NSParagraphArbitrator *)self paragraphLine]];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setTextContainerWidth:self->_textContainerWidth];
  if (v6 == 0.0)
  {
    v25 = v10;
  }

  else
  {
    v25 = 1;
  }

  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setAllowsHyphenation:v25];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setHyphenationFactor:v6];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setLocale:v29];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setShouldFillLastLine:spansAllLines & 1];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setLineBreakStrategy:v18];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setMinimumLastLineLength:v11];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setKoreanLineBreakBehavior:v13];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setPrepositionLineBreakBehavior:v14];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setBreaksWithinCJWords:v12];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setHyphenatesBetweenMorphemesFreely:v10];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setHyphenatesAsLastResort:v17];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setMinPreHyphenLength:v9];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setMinPostHyphenLength:v9];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setMinHyphenationLineCount:v26];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setUsesCFStringTokenizerForLineBreaks:[(NSParagraphArbitrator *)self _shouldUseCFStringTokenizerForLineBreaks]];
  [(_NSOptimalLineBreaker *)self->_optimalLineBreaker setMaximumNumberOfLines:[(NSParagraphArbitrator *)self maximumNumberOfLines]];
  if (v29)
  {

    CFRelease(v29);
  }
}

- (void)_computeOptimalLayout
{
  if (self->_needsOptimalLayout)
  {
    [(NSParagraphArbitrator *)self configureOptimalLineBreaker];
    [(_NSOptimalLineBreaker *)self->_optimalLineBreaker layout];
    self->_needsOptimalLayout = 0;
  }
}

- (id)_preferredLanguageForCharacterAtIndex:(unint64_t)index
{
  if (_preferredLanguageForCharacterAtIndex__once != -1)
  {
    [NSParagraphArbitrator _preferredLanguageForCharacterAtIndex:];
  }

  attributedString = [(NSParagraphArbitrator *)self attributedString];
  result = [(NSAttributedString *)attributedString attribute:NSLanguageAttributeName atIndex:index effectiveRange:0];
  if (!result)
  {
    v7 = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attributesAtIndex:index effectiveRange:0];
    if (v7)
    {
      v8 = v7;
      verticalFont = [(NSDictionary *)v7 objectForKey:@"NSFont"];
      if ([-[NSDictionary objectForKey:](v8 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
      {
        verticalFont = [verticalFont verticalFont];
      }

      if (verticalFont)
      {
        goto LABEL_9;
      }
    }

    result = NSDefaultFont();
    verticalFont = result;
    if (result)
    {
LABEL_9:
      fontDescriptor = [verticalFont fontDescriptor];
      result = [fontDescriptor objectForKey:*MEMORY[0x1E69656F0]];
      if (result)
      {
        v11 = result;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          result = v11;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  if (!result)
  {
    return _preferredLanguageForCharacterAtIndex__globalPreferredLanguage;
  }

  return result;
}

uint64_t __63__NSParagraphArbitrator__preferredLanguageForCharacterAtIndex___block_invoke()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x1E695DF58] "preferredLanguages")];
  _preferredLanguageForCharacterAtIndex__globalPreferredLanguage = result;
  return result;
}

+ (int)_languageCategoryForLanguageCode:(id)code
{
  if (_languageCategoryForLanguageCode__once != -1)
  {
    +[NSParagraphArbitrator _languageCategoryForLanguageCode:];
    if (code)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!code)
  {
    return 0;
  }

LABEL_3:
  v4 = _languageCategoryForLanguageCode__cache;
  objc_sync_enter(_languageCategoryForLanguageCode__cache);
  v5 = [_languageCategoryForLanguageCode__cache objectForKeyedSubscript:code];
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF58] scriptCodeFromLanguage:code];
    if (([v6 isEqualToString:@"Latn"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Cyrl") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Grek") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Hebr"))
    {
      if ((_languageCategoryForLanguageCode__enabledForAllLanguages & 1) != 0 || ([code isEqualToString:@"de"] & 1) != 0 || (objc_msgSend(code, "isEqualToString:", @"ru") & 1) != 0 || objc_msgSend(code, "isEqualToString:", @"uk"))
      {
        v5 = &unk_1F01CC2A0;
      }

      else
      {
        v5 = &unk_1F01CC2B8;
      }
    }

    else if ([code isEqualToString:@"zh"] & 1) != 0 || (objc_msgSend(code, "isEqualToString:", @"ja"))
    {
      v5 = &unk_1F01CC2D0;
    }

    else if ([code isEqualToString:@"ko"])
    {
      v5 = &unk_1F01CC2E8;
    }

    else
    {
      v5 = &unk_1F01CC2B8;
    }

    [_languageCategoryForLanguageCode__cache setObject:v5 forKeyedSubscript:code];
  }

  objc_sync_exit(v4);
  return [v5 unsignedIntegerValue];
}

id __58__NSParagraphArbitrator__languageCategoryForLanguageCode___block_invoke()
{
  _languageCategoryForLanguageCode__enabledForAllLanguages = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _languageCategoryForLanguageCode__cache = result;
  return result;
}

- (int)_lineBreakStyleForLastResortHyphenation:(BOOL)hyphenation
{
  if (_lineBreakStyleForLastResortHyphenation__once != -1)
  {
    [NSParagraphArbitrator _lineBreakStyleForLastResortHyphenation:];
  }

  if (self->_lineBreakStyle)
  {
LABEL_12:
    if (hyphenation)
    {
      return self->_lineBreakStyle;
    }

    goto LABEL_16;
  }

  if (_lineBreakStyleForLastResortHyphenation__enabled)
  {
    v5 = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] attributesAtIndex:[(NSParagraphArbitrator *)self paragraphRange] effectiveRange:0];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    verticalFont = [(NSDictionary *)v5 objectForKey:@"NSFont"];
    if ([-[NSDictionary objectForKey:](v6 objectForKey:{@"CTVerticalForms", "BOOLValue"}])
    {
      verticalFont = [verticalFont verticalFont];
    }

    if (!verticalFont)
    {
LABEL_9:
      verticalFont = NSDefaultFont();
    }

    v8 = [objc_opt_class() _lineBreakStyleForFont:verticalFont];
    self->_lineBreakStyle = v8;
    if (v8 != 1)
    {
      v9 = __NSCreateNormalizedLanguage([(NSParagraphArbitrator *)self _preferredLanguageForCharacterAtIndex:[(NSParagraphArbitrator *)self paragraphRange]]);
      self->_languageSupportsLineBreakStyle = [NSParagraphArbitrator _languageCategoryForLanguageCode:v9]!= 0;

      goto LABEL_12;
    }
  }

  else
  {
    self->_lineBreakStyle = 1;
  }

  self->_languageSupportsLineBreakStyle = 0;
  if (hyphenation)
  {
    return self->_lineBreakStyle;
  }

LABEL_16:
  if (self->_languageSupportsLineBreakStyle)
  {
    return self->_lineBreakStyle;
  }

  return 1;
}

uint64_t __65__NSParagraphArbitrator__lineBreakStyleForLastResortHyphenation___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _lineBreakStyleForLastResortHyphenation__enabled = result;
  return result;
}

- ($F08F7EC4C389A89376F473094BC6C9F8)lineBreakContextBeforeIndex:(SEL)index lineFragmentWidth:(unint64_t)width range:(double)range
{
  length = a6.length;
  location = a6.location;
  result = [(NSParagraphArbitrator *)self _shouldUseOptimalLayout];
  if (result)
  {
    if (self)
    {

      return [(NSParagraphArbitrator *)self _optimalLineBreakContextBeforeIndex:width lineFragmentWidth:location range:length, range];
    }

LABEL_10:
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
    return result;
  }

  if (!self)
  {
    goto LABEL_10;
  }

  return [(NSParagraphArbitrator *)self _firstFitLineBreakContextBeforeIndex:width lineFragmentWidth:location range:length, range];
}

- (unint64_t)adjustedLineBreakIndexForProposedIndex:(unint64_t)index
{
  string = [(NSAttributedString *)[(NSParagraphArbitrator *)self attributedString] string];
  v5 = [(NSString *)string length];
  if (adjustedLineBreakIndexForProposedIndex__onceToken != -1)
  {
    [NSParagraphArbitrator adjustedLineBreakIndexForProposedIndex:];
  }

  while (1)
  {
    index = [(NSString *)string rangeOfCharacterFromSet:adjustedLineBreakIndexForProposedIndex__whitespaceNoTab options:8 range:index, v5 - index];
    if (!v7)
    {
      break;
    }

    index = index + v7;
  }

  v8 = index + 1;
  if (index + 1 < [(NSString *)string length]&& ([(NSString *)string characterAtIndex:index + 1]& 0xFC00) == 0xDC00)
  {
    return index + 2;
  }

  return v8;
}

uint64_t __64__NSParagraphArbitrator_adjustedLineBreakIndexForProposedIndex___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  [v0 removeCharactersInRange:{9, 1}];
  result = [v0 copy];
  adjustedLineBreakIndexForProposedIndex__whitespaceNoTab = result;
  return result;
}

@end