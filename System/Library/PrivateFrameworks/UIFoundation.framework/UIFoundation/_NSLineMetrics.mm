@interface _NSLineMetrics
- (BOOL)_hasShaping;
- (_NSLineMetrics)initWithAttributedString:(id)a3 range:(_NSRange)a4 line:(__CTLine *)a5;
- (_NSRange)lineRange;
- (double)_finalAdvanceForCharacterAtIndex:(unint64_t)a3 range:(_NSRange *)a4;
- (double)_initialAdvanceForCharacterAtIndex:(unint64_t)a3 range:(_NSRange *)a4;
- (double)widthOfSubstringToIndex:(unint64_t)a3;
- (double)widthOfSubstringWithRange:(_NSRange)a3;
- (unint64_t)suggestedLineBreakAfterIndex:(unint64_t)a3 withWidth:(double)a4;
- (void)_calculatePositions;
- (void)_calculatePositions:(double *)a3 hasAdvanceAdjustment:(BOOL *)a4 withCapacity:(unint64_t)a5 forAttributedString:(id)a6 range:(_NSRange)a7 line:(__CTLine *)a8;
- (void)_ensureGlyphCapacity:(unint64_t)a3;
- (void)_ensureTerminalAdvancesCapacity:(unint64_t)a3;
- (void)_getInitialAdvanceForComposedCharacterInRange:(_NSRange)a3 andFinalAdvanceForComposedCharacterInRange:(_NSRange)a4;
- (void)dealloc;
- (void)setAttributedString:(id)a3 range:(_NSRange)a4 line:(__CTLine *)a5;
- (void)setLocale:(__CFLocale *)a3;
@end

@implementation _NSLineMetrics

- (void)setLocale:(__CFLocale *)a3
{
  locale = self->_locale;
  if (locale != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      locale = self->_locale;
    }

    if (locale)
    {
      CFRelease(locale);
    }

    self->_locale = a3;
  }

  self->_hasShaping = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_calculatePositions:(double *)a3 hasAdvanceAdjustment:(BOOL *)a4 withCapacity:(unint64_t)a5 forAttributedString:(id)a6 range:(_NSRange)a7 line:(__CTLine *)a8
{
  length = a7.length;
  location = a7.location;
  v40 = a6;
  if (length + 1 > a5)
  {
    [_NSLineMetrics _calculatePositions:hasAdvanceAdjustment:withCapacity:forAttributedString:range:line:];
  }

  if (self->_isInCalculatePositions)
  {
    [_NSLineMetrics _calculatePositions:hasAdvanceAdjustment:withCapacity:forAttributedString:range:line:];
  }

  self->_isInCalculatePositions = 1;
  __pattern8 = 0x7FF8000000000000;
  memset_pattern8(a3, &__pattern8, 8 * a5);
  v13 = a8;
  if (!a8)
  {
    v13 = CTLineCreateWithAttributedString([v40 attributedSubstringFromRange:{location, length}]);
  }

  v14 = CTLineGetStringRange(v13).location;
  GlyphRuns = CTLineGetGlyphRuns(v13);
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
    v20 = CTLineGetGlyphRuns(v13);
    MutableCopy = CFArrayCreateMutableCopy(v19, 0, v20);
    self->_runsBuf = MutableCopy;
  }

  v39 = v13;
  _CFArraySortValuesWithBlock(MutableCopy, 0, Count, &__block_literal_global_6);
  if (Count)
  {
    v21 = 0;
    v22 = 0.0;
    v41 = Count;
    v42 = self;
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
            if (a4)
            {
              a4[v33] = 1;
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
              if (a4)
              {
                a4[v28] = 1;
              }
            }
          }

          width = advancesBuf->width;
          ++advancesBuf;
          v22 = v22 + width;
        }
      }

      ++v21;
      self = v42;
    }

    while (v21 != v41);
  }

  else
  {
    v22 = 0.0;
  }

  a3[length] = v22;
  if (length)
  {
    v36 = -length;
    v37 = &a3[length - 1];
    do
    {
      --v37;
    }

    while (!__CFADD__(v36++, 1));
  }

  CFArrayRemoveAllValues(self->_runsBuf);
  if (!a8)
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

- (_NSLineMetrics)initWithAttributedString:(id)a3 range:(_NSRange)a4 line:(__CTLine *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _NSLineMetrics;
  v10 = [(_NSLineMetrics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(_NSLineMetrics *)v10 setAttributedString:v9 range:location line:length, a5];
  }

  return v11;
}

- (void)setAttributedString:(id)a3 range:(_NSRange)a4 line:(__CTLine *)a5
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  objc_storeStrong(&self->_attributedString, a3);
  self->_lineRange.location = location;
  self->_lineRange.length = length;
  line = self->_line;
  if (line)
  {
    CFRelease(line);
    self->_line = 0;
  }

  if (a5)
  {
    self->_line = CFRetain(a5);
  }

  else
  {
    v11 = [v12 attributedSubstringFromRange:{location, length}];
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

- (void)_ensureGlyphCapacity:(unint64_t)a3
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

  while (v6 < a3);
  if (v6 > glyphCapacity)
  {
    self->_glyphCapacity = v6;
    self->_advancesBuf = malloc_type_realloc(self->_advancesBuf, 16 * v6, 0x1000040451B5BE8uLL);
    self->_stringIndicesBuf = malloc_type_realloc(self->_stringIndicesBuf, 8 * self->_glyphCapacity, 0x100004000313F17uLL);
  }
}

- (void)_ensureTerminalAdvancesCapacity:(unint64_t)a3
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

  while (v6 < a3);
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

- (double)_initialAdvanceForCharacterAtIndex:(unint64_t)a3 range:(_NSRange *)a4
{
  if (_initialAdvanceForCharacterAtIndex_range__once != -1)
  {
    [_NSLineMetrics _initialAdvanceForCharacterAtIndex:range:];
  }

  location = self->_lineRange.location;
  v9 = a3 >= location;
  v8 = a3 - location;
  v9 = !v9 || v8 >= self->_lineRange.length;
  if (v9)
  {
    [_NSLineMetrics _initialAdvanceForCharacterAtIndex:range:];
  }

  v10 = [(NSAttributedString *)self->_attributedString string];
  v11 = [v10 characterAtIndex:a3];

  LOBYTE(v10) = self->_hasAdvanceAdjustment[a3 - self->_lineRange.location];
  v12 = [_initialAdvanceForCharacterAtIndex_range__openingMarkCharacterSet characterIsMember:v11];
  if ((v10 & 1) == 0 && !v12 || a3 + 1 == self->_lineRange.length + self->_lineRange.location)
  {
    return NAN;
  }

  v14 = [(NSAttributedString *)self->_attributedString string];
  v15 = [v14 rangeOfComposedCharacterSequenceAtIndex:a3];
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

      a4->location = v15;
      a4->length = v17;
      if (self->_terminalAdvancesValid)
      {
        return self->_initialAdvances[v15 - self->_lineRange.location];
      }

      else
      {
        v19 = [(NSAttributedString *)self->_attributedString string];
        v20 = [v19 rangeOfComposedCharacterSequenceAtIndex:v15 + v17];
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

- (double)_finalAdvanceForCharacterAtIndex:(unint64_t)a3 range:(_NSRange *)a4
{
  if (_finalAdvanceForCharacterAtIndex_range__once != -1)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  location = self->_lineRange.location;
  v9 = a3 >= location;
  v8 = a3 - location;
  v9 = !v9 || v8 >= self->_lineRange.length;
  if (v9)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  v10 = [(NSAttributedString *)self->_attributedString string];
  v11 = [v10 characterAtIndex:a3];

  LOBYTE(v10) = self->_hasAdvanceAdjustment[a3 - self->_lineRange.location];
  v12 = [_finalAdvanceForCharacterAtIndex_range__closingMarkCharacterSet characterIsMember:v11];
  if ((v10 & 1) == 0 && !v12)
  {
    return NAN;
  }

  v13 = self->_lineRange.location;
  if (a3 < v13 || a3 - v13 >= self->_lineRange.length)
  {
    [_NSLineMetrics _finalAdvanceForCharacterAtIndex:range:];
  }

  if (a3 == v13)
  {
    return NAN;
  }

  v15 = [(NSAttributedString *)self->_attributedString string];
  v16 = [v15 rangeOfComposedCharacterSequenceAtIndex:a3];
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
        a4->location = v16;
        a4->length = v18;
        if (self->_terminalAdvancesValid)
        {
          return self->_finalAdvances[v16 - self->_lineRange.location];
        }

        else
        {
          v20 = [(NSAttributedString *)self->_attributedString string];
          v21 = [v20 rangeOfComposedCharacterSequenceAtIndex:v16 - 1];
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

- (void)_getInitialAdvanceForComposedCharacterInRange:(_NSRange)a3 andFinalAdvanceForComposedCharacterInRange:(_NSRange)a4
{
  __pattern8[32] = *MEMORY[0x1E69E9840];
  location = self->_lineRange.location;
  v6 = a3.location == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL || location > a3.location;
  v7 = a3.location + a3.length;
  v8 = self->_lineRange.length + location;
  if (v6 || v7 > v8)
  {
    [_NSLineMetrics _getInitialAdvanceForComposedCharacterInRange:andFinalAdvanceForComposedCharacterInRange:];
  }

  if (a4.location == 0x7FFFFFFFFFFFFFFFLL || location > a4.location || a4.location + a4.length > v8)
  {
    [_NSLineMetrics _getInitialAdvanceForComposedCharacterInRange:andFinalAdvanceForComposedCharacterInRange:];
  }

  if (v7 > a4.location)
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

- (double)widthOfSubstringWithRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  location = a3.location;
  v5 = self->_lineRange.location;
  if (a3.location < v5)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  v6 = a3.location + a3.length;
  if (a3.location + a3.length > self->_lineRange.length + v5)
  {
    [_NSLineMetrics widthOfSubstringWithRange:];
  }

  if (!a3.length)
  {
    return 0.0;
  }

  v7 = self->_positions[v6 - v5] - self->_positions[a3.location - v5];
  if (a3.length != 1 && [(_NSLineMetrics *)self _hasShaping])
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

- (double)widthOfSubstringToIndex:(unint64_t)a3
{
  location = self->_lineRange.location;
  if (a3 < location || self->_lineRange.length + location < a3)
  {
    [_NSLineMetrics widthOfSubstringToIndex:];
  }

  [(_NSLineMetrics *)self widthOfSubstringWithRange:?];
  return result;
}

- (unint64_t)suggestedLineBreakAfterIndex:(unint64_t)a3 withWidth:(double)a4
{
  location = self->_lineRange.location;
  if (location > a3 || self->_lineRange.length + location < a3)
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
    return v6 + a3;
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