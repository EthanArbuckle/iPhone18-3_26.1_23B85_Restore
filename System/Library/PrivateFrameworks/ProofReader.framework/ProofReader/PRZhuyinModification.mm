@interface PRZhuyinModification
- (BOOL)_shouldAppendLetter:(unsigned __int8)letter;
- (BOOL)isEqual:(id)equal;
- (PRZhuyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange additionalSyllableRange:(_NSRange)additionalSyllableRange modificationScore:(double)score syllableCountScore:(unint64_t)countScore syllableLetters:(const char *)self0 producesPartialSyllable:(BOOL)self1;
- (_NSRange)additionalSyllableRange;
- (_NSRange)range;
- (_NSRange)syllableRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRZhuyinModification

- (PRZhuyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange additionalSyllableRange:(_NSRange)additionalSyllableRange modificationScore:(double)score syllableCountScore:(unint64_t)countScore syllableLetters:(const char *)self0 producesPartialSyllable:(BOOL)self1
{
  length = syllableRange.length;
  location = syllableRange.location;
  v16 = range.length;
  v17 = range.location;
  v23 = [string length];
  v24.receiver = self;
  v24.super_class = PRZhuyinModification;
  v19 = [(PRZhuyinModification *)&v24 init];
  v19->_range.location = v17;
  v19->_range.length = v16;
  v19->_replacementString = [string copy];
  v19->_modificationType = type;
  v19->_syllableRange.location = location;
  v19->_syllableRange.length = length;
  v19->_additionalSyllableRange = additionalSyllableRange;
  v19->_modificationScore = score;
  letters = v19->_letters;
  v19->_syllableCountScore = countScore;
  if (letters)
  {
    v21 = length - v16 + v23;
    if (v21 <= 4)
    {
      memmove(v19->_letters, letters, v21);
      letters += v21;
    }
  }

  *letters = 0;
  v19->_producesPartialSyllable = syllable;
  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRZhuyinModification;
  [(PRZhuyinModification *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v5 = -[NSString isEqualToString:](self->_replacementString, "isEqualToString:", [equal replacementString]);
    if (!v5)
    {
      return v5;
    }

    v7 = self->_range.location == [equal range] && self->_range.length == v6;
    if (!v7 || (modificationType = self->_modificationType, modificationType != [equal modificationType]) || (modificationScore = self->_modificationScore, objc_msgSend(equal, "modificationScore"), modificationScore != v10) || (syllableCountScore = self->_syllableCountScore, syllableCountScore != objc_msgSend(equal, "syllableCountScore")))
    {
LABEL_20:
      LOBYTE(v5) = 0;
      return v5;
    }

    syllableRange = [equal syllableRange];
    LOBYTE(v5) = 0;
    if (self->_syllableRange.location == syllableRange && self->_syllableRange.length == v12)
    {
      p_additionalSyllableRange = &self->_additionalSyllableRange;
      LOBYTE(v5) = p_additionalSyllableRange->location == [equal additionalSyllableRange] && p_additionalSyllableRange->length == v15;
    }
  }

  return v5;
}

- (id)description
{
  replacementString = [(PRZhuyinModification *)self replacementString];
  modificationType = [(PRZhuyinModification *)self modificationType];
  range = [(PRZhuyinModification *)self range];
  v6 = v5;
  syllableRange = [(PRZhuyinModification *)self syllableRange];
  v9 = v8;
  additionalSyllableRange = [(PRZhuyinModification *)self additionalSyllableRange];
  v12 = v11;
  [(PRZhuyinModification *)self modificationScore];
  v14 = v13;
  syllableCountScore = [(PRZhuyinModification *)self syllableCountScore];
  producesPartialSyllable = [(PRZhuyinModification *)self producesPartialSyllable];
  v17 = MEMORY[0x1E696AEC0];
  v29.location = range;
  v29.length = v6;
  v18 = NSStringFromRange(v29);
  if (additionalSyllableRange != 0x7FFFFFFFFFFFFFFFLL || v12)
  {
    v31.location = additionalSyllableRange;
    v31.length = v12;
    v20 = NSStringFromRange(v31);
    v32.location = syllableRange;
    v32.length = v9;
    v26 = syllableCountScore;
    v27 = producesPartialSyllable;
    v25 = v14;
    v23 = v20;
    v24 = NSStringFromRange(v32);
    v22 = modificationType;
    v19 = @"range %@ -> <%@>, type %lu, syllables %@ %@, score %g, scs %lu, pps %d";
  }

  else
  {
    v30.location = syllableRange;
    v30.length = v9;
    v25 = syllableCountScore;
    v26 = producesPartialSyllable;
    v24 = v14;
    v22 = modificationType;
    v23 = NSStringFromRange(v30);
    v19 = @"range %@ -> <%@>, type %lu, syllable %@, score %g, scs %lu, pps %d";
  }

  return [v17 stringWithFormat:v19, v18, replacementString, v22, v23, v24, v25, v26, v27];
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)syllableRange
{
  p_syllableRange = &self->_syllableRange;
  location = self->_syllableRange.location;
  length = p_syllableRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)additionalSyllableRange
{
  p_additionalSyllableRange = &self->_additionalSyllableRange;
  location = self->_additionalSyllableRange.location;
  length = p_additionalSyllableRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)_shouldAppendLetter:(unsigned __int8)letter
{
  letterCopy = letter;
  letters = self->_letters;
  v5 = strnlen(self->_letters, 4uLL);
  v10 = 0;
  if (letterCopy == 39)
  {
    return 1;
  }

  v7 = v5;
  if (letterCopy > 0xF7 || letterCopy - 97 < 0x1A || letterCopy - 223 < 0x18 || (result = 0, letterCopy - 154 <= 4) && ((1 << (letterCopy + 102)) & 0x15) != 0)
  {
    if (v7 > 3)
    {
      return 0;
    }

    else
    {
      letters[v7] = letterCopy;
      v8 = next_zhuyin(letters, v7 + 1, 0, 1, &v10, 0);
      if (v8)
      {
        v9 = v10 == &v8[v7 + 1];
      }

      else
      {
        v9 = 0;
      }

      result = v9;
      letters[v7] = 0;
    }
  }

  return result;
}

@end