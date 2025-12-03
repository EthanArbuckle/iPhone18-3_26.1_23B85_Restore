@interface _NSLineMetrics
- (BOOL)_hasShaping;
- (_NSLineMetrics)initWithAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line;
- (_NSRange)lineRange;
- (double)_finalAdvanceForCharacterAtIndex:(unint64_t)index range:(_NSRange *)range;
- (double)_initialAdvanceForCharacterAtIndex:(unint64_t)index range:(_NSRange *)range;
- (double)widthOfSubstringToIndex:(unint64_t)index;
- (double)widthOfSubstringWithRange:(_NSRange)range;
- (unint64_t)suggestedLineBreakAfterIndex:(unint64_t)index withWidth:(double)width;
- (void)_calculatePositions;
- (void)_calculatePositions:(double *)positions hasAdvanceAdjustment:(BOOL *)adjustment withCapacity:(unint64_t)capacity forAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line;
- (void)_ensureGlyphCapacity:(unint64_t)capacity;
- (void)_ensureTerminalAdvancesCapacity:(unint64_t)capacity;
- (void)_getInitialAdvanceForComposedCharacterInRange:(_NSRange)range andFinalAdvanceForComposedCharacterInRange:(_NSRange)inRange;
- (void)dealloc;
- (void)setAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line;
- (void)setLocale:(__CFLocale *)locale;
@end

@implementation _NSLineMetrics

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
  }

  self->_hasShaping = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_calculatePositions:(double *)positions hasAdvanceAdjustment:(BOOL *)adjustment withCapacity:(unint64_t)capacity forAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (length + 1 > capacity)
  {
    [_NSLineMetrics _calculatePositions:hasAdvanceAdjustment:withCapacity:forAttributedString:range:line:];
  }

  if (self->_isInCalculatePositions)
  {
    [_NSLineMetrics _calculatePositions:hasAdvanceAdjustment:withCapacity:forAttributedString:range:line:];
  }

  self->_isInCalculatePositions = 1;
  __pattern8 = 0x7FF8000000000000;
  memset_pattern8(positions, &__pattern8, 8 * capacity);
  lineCopy = line;
  if (!line)
  {
    lineCopy = CTLineCreateWithAttributedString([stringCopy attributedSubstringFromRange:{location, length}]);
  }

  v14 = CTLineGetStringRange(lineCopy).location;
  GlyphRuns = CTLineGetGlyphRuns(lineCopy);
  Count = CFArrayGetCount(GlyphRuns);
  runsBuf = self->_runsBuf;
  if (runsBuf)
  {
    CFArrayRemoveAllValues(runsBuf);
    v48.location = 0;
    v48.length = Count;
    CFArrayAppendArray(self->_runsBuf, GlyphRuns, v48);
    MutableCopy = self->_runsBuf;
  }

  else
  {
    v19 = *MEMORY[0x1E695E480];
    v20 = CTLineGetGlyphRuns(lineCopy);
    MutableCopy = CFArrayCreateMutableCopy(v19, 0, v20);
    self->_runsBuf = MutableCopy;
  }

  v39 = lineCopy;
  _CFArraySortValuesWithBlock(MutableCopy, 0, Count, &__block_literal_global_6);
  if (Count)
  {
    v21 = 0;
    v22 = 0.0;
    v41 = Count;
    selfCopy = self;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_runsBuf, v21);
      GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
      [(_NSLineMetrics *)self _ensureGlyphCapacity:GlyphCount];
      advancesBuf = self->_advancesBuf;
      stringIndicesBuf = self->_stringIndicesBuf;
      v46.location = 0;
      v46.length = GlyphCount;
      CTRunGetBaseAdvancesAndOrigins(ValueAtIndex, v46, advancesBuf, 0);
      v47.location = 0;
      v47.length = GlyphCount;
      CTRunGetStringIndices(ValueAtIndex, v47, stringIndicesBuf);
      CTRunGetPropertiesPtr();
      if (CTRunGetStatus(ValueAtIndex))
      {
        if (GlyphCount)
        {
          v31 = GlyphCount - 1;
          for (i = &advancesBuf[GlyphCount - 1].width; ; i -= 2)
          {
            v33 = stringIndicesBuf[v31] - v14;
            if (!v31)
            {
              break;
            }

            v34 = *i;
            v22 = v22 + v34;
            --v31;
          }

          CTRunGetInitialBaseAdvance();
          if (v35 != 0.0)
          {
            v22 = v22 + v35;
            if (adjustment)
            {
              adjustment[v33] = 1;
            }
          }

          v22 = v22 + *i;
        }
      }

      else if (GlyphCount)
      {
        for (j = 0; j != GlyphCount; ++j)
        {
          v28 = stringIndicesBuf[j] - v14;
          if (!j)
          {
            CTRunGetInitialBaseAdvance();
            if (v30 != 0.0)
            {
              v22 = v22 + v30;
              if (adjustment)
              {
                adjustment[v28] = 1;
              }
            }
          }

          width = advancesBuf->width;
          ++advancesBuf;
          v22 = v22 + width;
        }
      }

      ++v21;
      self = selfCopy;
    }

    while (v21 != v41);
  }

  else
  {
    v22 = 0.0;
  }

  positions[length] = v22;
  if (length)
  {
    v36 = -length;
    v37 = &positions[length - 1];
    do
    {
      --v37;
    }

    while (!__CFADD__(v36++, 1));
  }

  CFArrayRemoveAllValues(self->_runsBuf);
  if (!line)
  {
    CFRelease(v39);
  }

  self->_isInCalculatePositions = 0;
}

- (void)_calculatePositions
{
  v3 = self->_lineRange.length + 1;
  self->_positions = malloc_type_realloc(self->_positions, 8 * v3, 0x100004000313F17uLL);
  v4 = malloc_type_realloc(self->_hasAdvanceAdjustment, v3, 0x100004077774924uLL);
  self->_hasAdvanceAdjustment = v4;
  bzero(v4, v3);
  [(_NSLineMetrics *)self _calculatePositions:self->_positions hasAdvanceAdjustment:self->_hasAdvanceAdjustment withCapacity:v3 forAttributedString:self->_attributedString range:self->_lineRange.location line:self->_lineRange.length, self->_line];
}

- (_NSLineMetrics)initWithAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = _NSLineMetrics;
  v10 = [(_NSLineMetrics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(_NSLineMetrics *)v10 setAttributedString:stringCopy range:location line:length, line];
  }

  return v11;
}

- (void)setAttributedString:(id)string range:(_NSRange)range line:(__CTLine *)line
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  objc_storeStrong(&self->_attributedString, string);
  self->_lineRange.location = location;
  self->_lineRange.length = length;
  line = self->_line;
  if (line)
  {
    CFRelease(line);
    self->_line = 0;
  }

  if (line)
  {
    self->_line = CFRetain(line);
  }

  else
  {
    v11 = [stringCopy attributedSubstringFromRange:{location, length}];
    self->_line = CTLineCreateWithAttributedString(v11);
  }

  [(_NSLineMetrics *)self _calculatePositions];
  self->_terminalAdvancesValid = 0;
  self->_hasShaping = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  positions = self->_positions;
  if (positions)
  {
    free(positions);
  }

  hasAdvanceAdjustment = self->_hasAdvanceAdjustment;
  if (hasAdvanceAdjustment)
  {
    free(hasAdvanceAdjustment);
  }

  runsBuf = self->_runsBuf;
  if (runsBuf)
  {
    CFRelease(runsBuf);
  }

  advancesBuf = self->_advancesBuf;
  if (advancesBuf)
  {
    free(advancesBuf);
  }

  stringIndicesBuf = self->_stringIndicesBuf;
  if (stringIndicesBuf)
  {
    free(stringIndicesBuf);
  }

  initialAdvances = self->_initialAdvances;
  if (initialAdvances)
  {
    free(initialAdvances);
  }

  finalAdvances = self->_finalAdvances;
  if (finalAdvances)
  {
    free(finalAdvances);
  }

  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  v12.receiver = self;
  v12.super_class = _NSLineMetrics;
  [(_NSLineMetrics *)&v12 dealloc];
}

- (void)_ensureGlyphCapacity:(unint64_t)capacity
{
  glyphCapacity = self->_glyphCapacity;
  if (glyphCapacity)
  {
    v5 = self->_glyphCapacity;
  }

  else
  {
    v5 = 16;
  }

  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < capacity);
  if (v6 > glyphCapacity)
  {
    self->_glyphCapacity = v6;
    self->_advancesBuf = malloc_type_realloc(self->_advancesBuf, 16 * v6, 0x1000040451B5BE8uLL);
    self->_stringIndicesBuf = malloc_type_realloc(self->_stringIndicesBuf, 8 * self->_glyphCapacity, 0x100004000313F17uLL);
  }
}

- (void)_ensureTerminalAdvancesCapacity:(unint64_t)capacity
{
  terminalAdvancesCapacity = self->_terminalAdvancesCapacity;
  if (terminalAdvancesCapacity)
  {
    v5 = self->_terminalAdvancesCapacity;
  }

  else
  {
    v5 = 16;
  }

  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < capacity);
  if (v6 > terminalAdvancesCapacity)
  {
    self->_terminalAdvancesCapacity = v6;
    self->_initialAdvances = malloc_type_realloc(self->_initialAdvances, 8 * v6, 0x100004000313F17uLL);
    self->_finalAdvances = malloc_type_realloc(self->_finalAdvances, 8 * self->_terminalAdvancesCapacity, 0x100004000313F17uLL);
  }
}

- (BOOL)_hasShaping
{
  if (_hasShaping_once != -1)
  {
    [_NSLineMetrics _hasShaping];
  }

  hasShaping = self->_hasShaping;
  if (hasShaping == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_hasShaping = 0;
    attributedString = self->_attributedString;
    location = self->_lineRange.location;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __29___NSLineMetrics__hasShaping__block_invoke_2;
    v9[3] = &unk_1E72668F0;
    v9[4] = self;
    [(NSAttributedString *)attributedString enumerateAttribute:@"NSParagraphStyle" inRange:location options:self->_lineRange.length usingBlock:0x100000, v9];
    hasShaping = self->_hasShaping;
    if (!hasShaping)
    {
      locale = self->_locale;
      if (locale)
      {
        v7 = CFLocaleGetValue(locale, *MEMORY[0x1E695E6F0]);
        if (v7 && [_hasShaping_cjShapingLanguages containsObject:v7])
        {
          self->_hasShaping = 1;
        }
      }

      else
      {
        v7 = 0;
      }

      hasShaping = self->_hasShaping;
    }
  }

  return hasShaping != 0;
}

- (double)_initialAdvanceForCharacterAtIndex:(unint64_t)index range:(_NSRange *)range
{
  if (_initialAdvanceForCharacterAtIndex_range__once != -1)
  {
    [_NSLineMetrics _initialAdvanceForCharacterAtIndex:range:];
  }

  location = self->_lineRange.location;
  v9 = index >= location;
  v8 = index - location;
  v9 = !v9 || v8 >= self->_lineRange.length;
  if (v9)
  {
    [_NSLineMetrics _initialAdvanceForCharacterAtIndex:range:];
  }

  string = [(NSAttributedString *)self->_attributedString string];
  v11 = [string characterAtIndex:index];

  LOBYTE(string) = self->_hasAdvanceAdjustment[index - self->_lineRange.location];
  v12 = [_initialAdvanceForCharacterAtIndex_range__openingMarkCharacterSet characterIsMember:v11];
  if ((string & 1) == 0 && !v12 || index + 1 == self->_lineRange.length + self->_lineRange.location)
  {
    return NAN;
  }

  string2 = [(NSAttributedString *)self->_attributedString string];
  v15 = [string2 rangeOfComposedCharacterSequenceAtIndex:index];
  v17 = v16;

  result = NAN;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = self->_lineRange.location;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL && v18 <= v15)
    {
      if (v15 + v17 >= self->_lineRange.length + v18)
      {
        return NAN;
      }

      range->location = v15;
      range->length = v17;
      if (self->_terminalAdvancesValid)
      {
        return self->_initialAdvances[v15 - self->_lineRange.location];
      }

      else
      {
        string3 = [(NSAttributedString *)self->_attributedString string];
        v20 = [string3 rangeOfComposedCharacterSequenceAtIndex:v15 + v17];
        v22 = v21;

        result = NAN;
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = self->_lineRange.location;
          if (v23 != 0x7FFFFFFFFFFFFFFFLL && v23 <= v20)
          {
            result = NAN;
            if (v15 + v17 <= v20 && v20 + v22 <= self->_lineRange.length + v23)
            {
              [(_NSLineMetrics *)self _getInitialAdvanceForComposedCharacterInRange:v15 andFinalAdvanceForComposedCharacterInRange:v17, v20, v22, NAN];
              return self->_initialAdvances[v15 - self->_lineRange.location];
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)_finalAdvanceForCharacterAtIndex:(unint64_t)index range:(_NSRange *)range
{
  if (_finalAdvanceForCharacterAtIndex_range__once != -1)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  location = self->_lineRange.location;
  v9 = index >= location;
  v8 = index - location;
  v9 = !v9 || v8 >= self->_lineRange.length;
  if (v9)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  string = [(NSAttributedString *)self->_attributedString string];
  v11 = [string characterAtIndex:index];

  LOBYTE(string) = self->_hasAdvanceAdjustment[index - self->_lineRange.location];
  v12 = [_finalAdvanceForCharacterAtIndex_range__closingMarkCharacterSet characterIsMember:v11];
  if ((string & 1) == 0 && !v12)
  {
    return NAN;
  }

  v13 = self->_lineRange.location;
  if (index < v13 || index - v13 >= self->_lineRange.length)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  if (index == v13)
  {
    return NAN;
  }

  string2 = [(NSAttributedString *)self->_attributedString string];
  v16 = [string2 rangeOfComposedCharacterSequenceAtIndex:index];
  v18 = v17;

  result = NAN;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = self->_lineRange.location;
    if (v19 != 0x7FFFFFFFFFFFFFFFLL && v19 <= v16)
    {
      result = NAN;
      if (v16 != v19 && v16 + v18 <= self->_lineRange.length + v19)
      {
        range->location = v16;
        range->length = v18;
        if (self->_terminalAdvancesValid)
        {
          return self->_finalAdvances[v16 - self->_lineRange.location];
        }

        else
        {
          string3 = [(NSAttributedString *)self->_attributedString string];
          v21 = [string3 rangeOfComposedCharacterSequenceAtIndex:v16 - 1];
          v23 = v22;

          result = NAN;
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = self->_lineRange.location;
            if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 <= v21)
            {
              result = NAN;
              if (v21 + v23 <= self->_lineRange.length + v24 && v21 + v23 <= v16)
              {
                [(_NSLineMetrics *)self _getInitialAdvanceForComposedCharacterInRange:v21 andFinalAdvanceForComposedCharacterInRange:v23, v16, v18, NAN];
                return self->_finalAdvances[v16 - self->_lineRange.location];
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)_getInitialAdvanceForComposedCharacterInRange:(_NSRange)range andFinalAdvanceForComposedCharacterInRange:(_NSRange)inRange
{
  __pattern8[32] = *MEMORY[0x1E69E9840];
  location = self->_lineRange.location;
  v6 = range.location == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL || location > range.location;
  v7 = range.location + range.length;
  v8 = self->_lineRange.length + location;
  if (v6 || v7 > v8)
  {
    [_NSLineMetrics _getInitialAdvanceForComposedCharacterInRange:andFinalAdvanceForComposedCharacterInRange:];
  }

  if (inRange.location == 0x7FFFFFFFFFFFFFFFLL || location > inRange.location || inRange.location + inRange.length > v8)
  {
    [_NSLineMetrics _getInitialAdvanceForComposedCharacterInRange:andFinalAdvanceForComposedCharacterInRange:];
  }

  if (v7 > inRange.location)
  {
    [_NSLineMetrics _getInitialAdvanceForComposedCharacterInRange:andFinalAdvanceForComposedCharacterInRange:];
  }

  [(_NSLineMetrics *)self _ensureTerminalAdvancesCapacity:?];
  if (!self->_terminalAdvancesValid)
  {
    initialAdvances = self->_initialAdvances;
    length = self->_lineRange.length;
    __pattern8[0] = 0x7FF8000000000000;
    memset_pattern8(initialAdvances, __pattern8, 8 * length);
    finalAdvances = self->_finalAdvances;
    v14 = self->_lineRange.length;
    __pattern8[0] = 0x7FF8000000000000;
    memset_pattern8(finalAdvances, __pattern8, 8 * v14);
    self->_terminalAdvancesValid = 1;
  }
}

- (double)widthOfSubstringWithRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  location = range.location;
  v5 = self->_lineRange.location;
  if (range.location < v5)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  v6 = range.location + range.length;
  if (range.location + range.length > self->_lineRange.length + v5)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  if (!range.length)
  {
    return 0.0;
  }

  v7 = self->_positions[v6 - v5] - self->_positions[range.location - v5];
  if (range.length != 1 && [(_NSLineMetrics *)self _hasShaping])
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    [(_NSLineMetrics *)self _initialAdvanceForCharacterAtIndex:location range:&v13];
    if (v13 == location)
    {
      v7 = v7 + v8 - (self->_positions[v14 + location - self->_lineRange.location] - self->_positions[location - self->_lineRange.location]);
    }

    [(_NSLineMetrics *)self _finalAdvanceForCharacterAtIndex:v6 - 1 range:&v11];
    if (v12 + v11 == v6)
    {
      return v7 + v9 - (self->_positions[v6 - self->_lineRange.location] - self->_positions[v11 - self->_lineRange.location]);
    }
  }

  return v7;
}

- (double)widthOfSubstringToIndex:(unint64_t)index
{
  location = self->_lineRange.location;
  if (index < location || self->_lineRange.length + location < index)
  {
    [_NSLineMetrics widthOfSubstringToIndex:];
  }

  [(_NSLineMetrics *)self widthOfSubstringWithRange:?];
  return result;
}

- (unint64_t)suggestedLineBreakAfterIndex:(unint64_t)index withWidth:(double)width
{
  location = self->_lineRange.location;
  if (location > index || self->_lineRange.length + location < index)
  {
    [_NSLineMetrics suggestedLineBreakAfterIndex:withWidth:];
  }

  CTLineGetStringRange(self->_line);
  v6 = CTLineSuggestClusterBreakWithOffset();
  if (v6 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6 + index;
  }
}

- (_NSRange)lineRange
{
  objc_copyStruct(v4, &self->_lineRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end