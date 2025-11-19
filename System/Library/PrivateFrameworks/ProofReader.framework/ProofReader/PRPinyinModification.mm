@interface PRPinyinModification
+ (id)finalModificationsForInputString:(id)a3;
+ (id)modificationsForInputString:(id)a3;
- (BOOL)_shouldAppendLetter:(unsigned __int8)a3 romanization:(int)a4;
- (BOOL)isEqual:(id)a3;
- (PRPinyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 additionalSyllableRange:(_NSRange)a7 modificationScore:(double)a8 syllableCountScore:(unint64_t)a9 syllableLetters:(const char *)a10 producesPartialSyllable:(BOOL)a11 isTemporary:(BOOL)a12;
- (PRPinyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 modificationScore:(double)a7 isTemporary:(BOOL)a8;
- (_NSRange)additionalSyllableRange;
- (_NSRange)range;
- (_NSRange)syllableRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRPinyinModification

+ (id)modificationsForInputString:(id)a3
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 modificationsForPinyinInputString:a3];
}

+ (id)finalModificationsForInputString:(id)a3
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 finalModificationsForPinyinInputString:a3];
}

- (PRPinyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 additionalSyllableRange:(_NSRange)a7 modificationScore:(double)a8 syllableCountScore:(unint64_t)a9 syllableLetters:(const char *)a10 producesPartialSyllable:(BOOL)a11 isTemporary:(BOOL)a12
{
  length = a6.length;
  location = a6.location;
  v17 = a3.length;
  v18 = a3.location;
  v24 = [a4 length];
  v25.receiver = self;
  v25.super_class = PRPinyinModification;
  v20 = [(PRPinyinModification *)&v25 init];
  v20->_range.location = v18;
  v20->_range.length = v17;
  v20->_replacementString = [a4 copy];
  v20->_modificationType = a5;
  v20->_syllableRange.location = location;
  v20->_syllableRange.length = length;
  v20->_additionalSyllableRange = a7;
  v20->_modificationScore = a8;
  letters = v20->_letters;
  v20->_syllableCountScore = a9;
  if (a5 != 5)
  {
    if (a10)
    {
      v22 = length - v17 + v24;
      if (v22 <= 6)
      {
        memmove(v20->_letters, a10, v22);
        letters += v22;
      }
    }
  }

  *letters = 0;
  v20->_producesPartialSyllable = a11;
  v20->_isTemporary = a12;
  return v20;
}

- (PRPinyinModification)initWithRange:(_NSRange)a3 replacementString:(id)a4 modificationType:(unint64_t)a5 syllableRange:(_NSRange)a6 modificationScore:(double)a7 isTemporary:(BOOL)a8
{
  BYTE1(v9) = a8;
  LOBYTE(v9) = 0;
  return [(PRPinyinModification *)self initWithRange:a3.location replacementString:a3.length modificationType:a4 syllableRange:a5 additionalSyllableRange:a6.location modificationScore:a6.length syllableCountScore:a7 syllableLetters:0x7FFFFFFFFFFFFFFFLL producesPartialSyllable:0 isTemporary:0, 0, v9];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRPinyinModification;
  [(PRPinyinModification *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v25 = v9;
    v26 = v5;
    v27 = v4;
    v28 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_20:
      LOBYTE(v13) = 0;
      return v13;
    }

    v13 = -[NSString isEqualToString:](self->_replacementString, "isEqualToString:", [a3 replacementString]);
    if (v13)
    {
      if (self->_range.location != [a3 range] || self->_range.length != v14)
      {
        goto LABEL_20;
      }

      modificationType = self->_modificationType;
      if (modificationType != [a3 modificationType])
      {
        goto LABEL_20;
      }

      modificationScore = self->_modificationScore;
      [a3 modificationScore];
      if (modificationScore != v18)
      {
        goto LABEL_20;
      }

      syllableCountScore = self->_syllableCountScore;
      if (syllableCountScore != [a3 syllableCountScore])
      {
        goto LABEL_20;
      }

      v21 = [a3 syllableRange];
      LOBYTE(v13) = 0;
      if (self->_syllableRange.location == v21 && self->_syllableRange.length == v20)
      {
        v23 = [a3 additionalSyllableRange];
        LOBYTE(v13) = 0;
        if (self->_additionalSyllableRange.location == v23 && self->_additionalSyllableRange.length == v22)
        {
          if (!self->_isTemporary)
          {
            goto LABEL_19;
          }

          v13 = [a3 isTemporary];
          if (!v13)
          {
            return v13;
          }

          if (!self->_isTemporary)
          {
LABEL_19:
            if ([a3 isTemporary])
            {
              goto LABEL_20;
            }
          }

          LOBYTE(v13) = 1;
        }
      }
    }
  }

  return v13;
}

- (id)description
{
  v30 = [(PRPinyinModification *)self replacementString];
  v29 = [(PRPinyinModification *)self modificationType];
  v3 = [(PRPinyinModification *)self range];
  v5 = v4;
  v6 = [(PRPinyinModification *)self syllableRange];
  v8 = v7;
  v9 = [(PRPinyinModification *)self additionalSyllableRange];
  v11 = v10;
  [(PRPinyinModification *)self modificationScore];
  v13 = v12;
  v14 = [(PRPinyinModification *)self syllableCountScore];
  v15 = [(PRPinyinModification *)self producesPartialSyllable];
  v16 = [(PRPinyinModification *)self isTemporary];
  v17 = MEMORY[0x1E696AEC0];
  v31.location = v3;
  v31.length = v5;
  v18 = NSStringFromRange(v31);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL || v11)
  {
    v33.location = v9;
    v33.length = v11;
    v20 = NSStringFromRange(v33);
    v34.location = v6;
    v34.length = v8;
    v27 = v15;
    v28 = v16;
    v26 = v14;
    v25 = v13;
    v23 = v20;
    v24 = NSStringFromRange(v34);
    v22 = v29;
    v19 = @"range %@ -> <%@>, type %lu, syllables %@ %@, score %g, scs %lu, pps %d temp %d";
  }

  else
  {
    v32.location = v6;
    v32.length = v8;
    v26 = v15;
    v27 = v16;
    v25 = v14;
    v24 = v13;
    v22 = v29;
    v23 = NSStringFromRange(v32);
    v19 = @"range %@ -> <%@>, type %lu, syllable %@, score %g, scs %lu, pps %d temp %d";
  }

  return [v17 stringWithFormat:v19, v18, v30, v22, v23, v24, v25, v26, v27, v28];
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

- (BOOL)_shouldAppendLetter:(unsigned __int8)a3 romanization:(int)a4
{
  v5 = a3;
  letters = self->_letters;
  v8 = strnlen(self->_letters, 6uLL);
  v13 = 0;
  if (v5 == 39)
  {
    return 1;
  }

  v10 = v8;
  if (v5 > 0xF7 || v5 - 97 < 0x1A || v5 - 223 < 0x18 || (result = 0, v5 - 154 <= 4) && ((1 << (v5 + 102)) & 0x15) != 0)
  {
    if (v10 > 5 || self->_modificationType == 5)
    {
      return 0;
    }

    else
    {
      letters[v10] = v5;
      v11 = next_pinyin(letters, v10 + 1, a4, 0, &v13, 0);
      if (v11)
      {
        v12 = v13 == &v11[v10 + 1];
      }

      else
      {
        v12 = 0;
      }

      result = v12;
      letters[v10] = 0;
    }
  }

  return result;
}

@end