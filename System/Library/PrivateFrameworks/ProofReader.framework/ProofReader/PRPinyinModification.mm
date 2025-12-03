@interface PRPinyinModification
+ (id)finalModificationsForInputString:(id)string;
+ (id)modificationsForInputString:(id)string;
- (BOOL)_shouldAppendLetter:(unsigned __int8)letter romanization:(int)romanization;
- (BOOL)isEqual:(id)equal;
- (PRPinyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange additionalSyllableRange:(_NSRange)additionalSyllableRange modificationScore:(double)score syllableCountScore:(unint64_t)countScore syllableLetters:(const char *)self0 producesPartialSyllable:(BOOL)self1 isTemporary:(BOOL)self2;
- (PRPinyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange modificationScore:(double)score isTemporary:(BOOL)temporary;
- (_NSRange)additionalSyllableRange;
- (_NSRange)range;
- (_NSRange)syllableRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRPinyinModification

+ (id)modificationsForInputString:(id)string
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 modificationsForPinyinInputString:string];
}

+ (id)finalModificationsForInputString:(id)string
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 finalModificationsForPinyinInputString:string];
}

- (PRPinyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange additionalSyllableRange:(_NSRange)additionalSyllableRange modificationScore:(double)score syllableCountScore:(unint64_t)countScore syllableLetters:(const char *)self0 producesPartialSyllable:(BOOL)self1 isTemporary:(BOOL)self2
{
  length = syllableRange.length;
  location = syllableRange.location;
  v17 = range.length;
  v18 = range.location;
  v24 = [string length];
  v25.receiver = self;
  v25.super_class = PRPinyinModification;
  v20 = [(PRPinyinModification *)&v25 init];
  v20->_range.location = v18;
  v20->_range.length = v17;
  v20->_replacementString = [string copy];
  v20->_modificationType = type;
  v20->_syllableRange.location = location;
  v20->_syllableRange.length = length;
  v20->_additionalSyllableRange = additionalSyllableRange;
  v20->_modificationScore = score;
  letters = v20->_letters;
  v20->_syllableCountScore = countScore;
  if (type != 5)
  {
    if (letters)
    {
      v22 = length - v17 + v24;
      if (v22 <= 6)
      {
        memmove(v20->_letters, letters, v22);
        letters += v22;
      }
    }
  }

  *letters = 0;
  v20->_producesPartialSyllable = syllable;
  v20->_isTemporary = temporary;
  return v20;
}

- (PRPinyinModification)initWithRange:(_NSRange)range replacementString:(id)string modificationType:(unint64_t)type syllableRange:(_NSRange)syllableRange modificationScore:(double)score isTemporary:(BOOL)temporary
{
  BYTE1(v9) = temporary;
  LOBYTE(v9) = 0;
  return [(PRPinyinModification *)self initWithRange:range.location replacementString:range.length modificationType:string syllableRange:type additionalSyllableRange:syllableRange.location modificationScore:syllableRange.length syllableCountScore:score syllableLetters:0x7FFFFFFFFFFFFFFFLL producesPartialSyllable:0 isTemporary:0, 0, v9];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRPinyinModification;
  [(PRPinyinModification *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isTemporary) = 1;
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
      LOBYTE(isTemporary) = 0;
      return isTemporary;
    }

    isTemporary = -[NSString isEqualToString:](self->_replacementString, "isEqualToString:", [equal replacementString]);
    if (isTemporary)
    {
      if (self->_range.location != [equal range] || self->_range.length != v14)
      {
        goto LABEL_20;
      }

      modificationType = self->_modificationType;
      if (modificationType != [equal modificationType])
      {
        goto LABEL_20;
      }

      modificationScore = self->_modificationScore;
      [equal modificationScore];
      if (modificationScore != v18)
      {
        goto LABEL_20;
      }

      syllableCountScore = self->_syllableCountScore;
      if (syllableCountScore != [equal syllableCountScore])
      {
        goto LABEL_20;
      }

      syllableRange = [equal syllableRange];
      LOBYTE(isTemporary) = 0;
      if (self->_syllableRange.location == syllableRange && self->_syllableRange.length == v20)
      {
        additionalSyllableRange = [equal additionalSyllableRange];
        LOBYTE(isTemporary) = 0;
        if (self->_additionalSyllableRange.location == additionalSyllableRange && self->_additionalSyllableRange.length == v22)
        {
          if (!self->_isTemporary)
          {
            goto LABEL_19;
          }

          isTemporary = [equal isTemporary];
          if (!isTemporary)
          {
            return isTemporary;
          }

          if (!self->_isTemporary)
          {
LABEL_19:
            if ([equal isTemporary])
            {
              goto LABEL_20;
            }
          }

          LOBYTE(isTemporary) = 1;
        }
      }
    }
  }

  return isTemporary;
}

- (id)description
{
  replacementString = [(PRPinyinModification *)self replacementString];
  modificationType = [(PRPinyinModification *)self modificationType];
  range = [(PRPinyinModification *)self range];
  v5 = v4;
  syllableRange = [(PRPinyinModification *)self syllableRange];
  v8 = v7;
  additionalSyllableRange = [(PRPinyinModification *)self additionalSyllableRange];
  v11 = v10;
  [(PRPinyinModification *)self modificationScore];
  v13 = v12;
  syllableCountScore = [(PRPinyinModification *)self syllableCountScore];
  producesPartialSyllable = [(PRPinyinModification *)self producesPartialSyllable];
  isTemporary = [(PRPinyinModification *)self isTemporary];
  v17 = MEMORY[0x1E696AEC0];
  v31.location = range;
  v31.length = v5;
  v18 = NSStringFromRange(v31);
  if (additionalSyllableRange != 0x7FFFFFFFFFFFFFFFLL || v11)
  {
    v33.location = additionalSyllableRange;
    v33.length = v11;
    v20 = NSStringFromRange(v33);
    v34.location = syllableRange;
    v34.length = v8;
    v27 = producesPartialSyllable;
    v28 = isTemporary;
    v26 = syllableCountScore;
    v25 = v13;
    v23 = v20;
    v24 = NSStringFromRange(v34);
    v22 = modificationType;
    v19 = @"range %@ -> <%@>, type %lu, syllables %@ %@, score %g, scs %lu, pps %d temp %d";
  }

  else
  {
    v32.location = syllableRange;
    v32.length = v8;
    v26 = producesPartialSyllable;
    v27 = isTemporary;
    v25 = syllableCountScore;
    v24 = v13;
    v22 = modificationType;
    v23 = NSStringFromRange(v32);
    v19 = @"range %@ -> <%@>, type %lu, syllable %@, score %g, scs %lu, pps %d temp %d";
  }

  return [v17 stringWithFormat:v19, v18, replacementString, v22, v23, v24, v25, v26, v27, v28];
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

- (BOOL)_shouldAppendLetter:(unsigned __int8)letter romanization:(int)romanization
{
  letterCopy = letter;
  letters = self->_letters;
  v8 = strnlen(self->_letters, 6uLL);
  v13 = 0;
  if (letterCopy == 39)
  {
    return 1;
  }

  v10 = v8;
  if (letterCopy > 0xF7 || letterCopy - 97 < 0x1A || letterCopy - 223 < 0x18 || (result = 0, letterCopy - 154 <= 4) && ((1 << (letterCopy + 102)) & 0x15) != 0)
  {
    if (v10 > 5 || self->_modificationType == 5)
    {
      return 0;
    }

    else
    {
      letters[v10] = letterCopy;
      v11 = next_pinyin(letters, v10 + 1, romanization, 0, &v13, 0);
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