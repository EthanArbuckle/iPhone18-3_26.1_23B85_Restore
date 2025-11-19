@interface PRZhuyinModification
- (BOOL)_shouldAppendLetter:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (PRZhuyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 additionalSyllableRange:(_NSRange)a7 modificationScore:(double)a8 syllableCountScore:(unint64_t)a9 syllableLetters:(const char *)a10 producesPartialSyllable:(BOOL)a11;
- (_NSRange)additionalSyllableRange;
- (_NSRange)range;
- (_NSRange)syllableRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRZhuyinModification

- (PRZhuyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 additionalSyllableRange:(_NSRange)a7 modificationScore:(double)a8 syllableCountScore:(unint64_t)a9 syllableLetters:(const char *)a10 producesPartialSyllable:(BOOL)a11
{
  length = a6.length;
  location = a6.location;
  v16 = a3.length;
  v17 = a3.location;
  v23 = [a4 length];
  v24.receiver = self;
  v24.super_class = PRZhuyinModification;
  v19 = [(PRZhuyinModification *)&v24 init];
  v19->_range.location = v17;
  v19->_range.length = v16;
  v19->_replacementString = [a4 copy];
  v19->_modificationType = a5;
  v19->_syllableRange.location = location;
  v19->_syllableRange.length = length;
  v19->_additionalSyllableRange = a7;
  v19->_modificationScore = a8;
  letters = v19->_letters;
  v19->_syllableCountScore = a9;
  if (a10)
  {
    v21 = length - v16 + v23;
    if (v21 <= 4)
    {
      memmove(v19->_letters, a10, v21);
      letters += v21;
    }
  }

  *letters = 0;
  v19->_producesPartialSyllable = a11;
  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRZhuyinModification;
  [(PRZhuyinModification *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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

    v5 = -[NSString isEqualToString:](self->_replacementString, "isEqualToString:", [a3 replacementString]);
    if (!v5)
    {
      return v5;
    }

    v7 = self->_range.location == [a3 range] && self->_range.length == v6;
    if (!v7 || (modificationType = self->_modificationType, modificationType != [a3 modificationType]) || (modificationScore = self->_modificationScore, objc_msgSend(a3, "modificationScore"), modificationScore != v10) || (syllableCountScore = self->_syllableCountScore, syllableCountScore != objc_msgSend(a3, "syllableCountScore")))
    {
LABEL_20:
      LOBYTE(v5) = 0;
      return v5;
    }

    v13 = [a3 syllableRange];
    LOBYTE(v5) = 0;
    if (self->_syllableRange.location == v13 && self->_syllableRange.length == v12)
    {
      p_additionalSyllableRange = &self->_additionalSyllableRange;
      LOBYTE(v5) = p_additionalSyllableRange->location == [a3 additionalSyllableRange] && p_additionalSyllableRange->length == v15;
    }
  }

  return v5;
}

- (id)description
{
  v28 = [(PRZhuyinModification *)self replacementString];
  v3 = [(PRZhuyinModification *)self modificationType];
  v4 = [(PRZhuyinModification *)self range];
  v6 = v5;
  v7 = [(PRZhuyinModification *)self syllableRange];
  v9 = v8;
  v10 = [(PRZhuyinModification *)self additionalSyllableRange];
  v12 = v11;
  [(PRZhuyinModification *)self modificationScore];
  v14 = v13;
  v15 = [(PRZhuyinModification *)self syllableCountScore];
  v16 = [(PRZhuyinModification *)self producesPartialSyllable];
  v17 = MEMORY[0x1E696AEC0];
  v29.location = v4;
  v29.length = v6;
  v18 = NSStringFromRange(v29);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL || v12)
  {
    v31.location = v10;
    v31.length = v12;
    v20 = NSStringFromRange(v31);
    v32.location = v7;
    v32.length = v9;
    v26 = v15;
    v27 = v16;
    v25 = v14;
    v23 = v20;
    v24 = NSStringFromRange(v32);
    v22 = v3;
    v19 = @"range %@ -> <%@>, type %lu, syllables %@ %@, score %g, scs %lu, pps %d";
  }

  else
  {
    v30.location = v7;
    v30.length = v9;
    v25 = v15;
    v26 = v16;
    v24 = v14;
    v22 = v3;
    v23 = NSStringFromRange(v30);
    v19 = @"range %@ -> <%@>, type %lu, syllable %@, score %g, scs %lu, pps %d";
  }

  return [v17 stringWithFormat:v19, v18, v28, v22, v23, v24, v25, v26, v27];
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

- (BOOL)_shouldAppendLetter:(unsigned __int8)a3
{
  v3 = a3;
  letters = self->_letters;
  v5 = strnlen(self->_letters, 4uLL);
  v10 = 0;
  if (v3 == 39)
  {
    return 1;
  }

  v7 = v5;
  if (v3 > 0xF7 || v3 - 97 < 0x1A || v3 - 223 < 0x18 || (result = 0, v3 - 154 <= 4) && ((1 << (v3 + 102)) & 0x15) != 0)
  {
    if (v7 > 3)
    {
      return 0;
    }

    else
    {
      letters[v7] = v3;
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