@interface MCSyntheticInput
- (MCSyntheticInput)initWithCommittedText:(id)text syllables:(id)syllables useSubInputsAsSearchString:(BOOL)string;
- (MCSyntheticInput)syntheticInputWithCommittedText:(id)text syllables:(id)syllables;
- (MCSyntheticInput)syntheticInputWithCursorIndex:(unint64_t)index;
- (NSString)text;
- (NSString)uncommittedText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)externalSuffix:(id)suffix;
- (id)shortDescriptionExcludingSubInputs;
- (int)syllableIndex:(int *)index;
@end

@implementation MCSyntheticInput

- (id)externalSuffix:(id)suffix
{
  suffixCopy = suffix;
  v5 = objc_opt_new();
  v29 = 0;
  cursorIndex = [(MCSyntheticInput *)self cursorIndex];
  committedText = [(MCSyntheticInput *)self committedText];
  v8 = [committedText length];

  if (cursorIndex <= v8)
  {
    committedText2 = [(MCSyntheticInput *)self committedText];
    v11 = [committedText2 substringFromIndex:{-[MCSyntheticInput cursorIndex](self, "cursorIndex")}];

    [v5 appendString:v11];
    v9 = 0;
  }

  else
  {
    v9 = [(MCSyntheticInput *)self syllableIndex:&v29];
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_15;
    }
  }

  syllables = [(MCSyntheticInput *)self syllables];
  v13 = [syllables count];

  if (v13 > v9)
  {
    v14 = v9;
    syllables2 = [(MCSyntheticInput *)self syllables];
    v16 = [syllables2 count];

    if (v16 > v14)
    {
      v17 = v14;
      do
      {
        if (v17 > v14)
        {
          [v5 appendString:suffixCopy];
        }

        v18 = v29;
        if (v29 >= 1 && (-[MCSyntheticInput syllables](self, "syllables"), v19 = objc_claimAutoreleasedReturnValue(), [v19 objectAtIndexedSubscript:v17], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, v21 >= v18))
        {
          syllables3 = [(MCSyntheticInput *)self syllables];
          v25 = [syllables3 objectAtIndexedSubscript:v17];
          syllables4 = [v25 substringFromIndex:v29];

          [v5 appendString:syllables4];
          v29 = 0;
        }

        else
        {
          syllables4 = [(MCSyntheticInput *)self syllables];
          v23 = [syllables4 objectAtIndexedSubscript:v17];
          [v5 appendString:v23];
        }

        ++v17;
        syllables5 = [(MCSyntheticInput *)self syllables];
        v27 = [syllables5 count];
      }

      while (v27 > v17);
    }
  }

LABEL_15:

  return v5;
}

- (int)syllableIndex:(int *)index
{
  cursorIndex = [(MCSyntheticInput *)self cursorIndex];
  committedText = [(MCSyntheticInput *)self committedText];
  v7 = [committedText length];

  if (cursorIndex <= v7)
  {
    goto LABEL_6;
  }

  committedText2 = [(MCSyntheticInput *)self committedText];
  v9 = [committedText2 length];

  syllables = [(MCSyntheticInput *)self syllables];
  v11 = [syllables count];

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      syllables2 = [(MCSyntheticInput *)self syllables];
      v14 = [syllables2 objectAtIndexedSubscript:v12];
      v15 = [v14 length] + v9;
      cursorIndex2 = [(MCSyntheticInput *)self cursorIndex];

      if (v15 >= cursorIndex2)
      {
        break;
      }

      syllables3 = [(MCSyntheticInput *)self syllables];
      v18 = [syllables3 objectAtIndexedSubscript:v12];
      v9 += [v18 length];

      ++v12;
      syllables4 = [(MCSyntheticInput *)self syllables];
      v20 = [syllables4 count];

      if (v20 <= v12)
      {
        goto LABEL_6;
      }
    }

    if (!index || [(MCSyntheticInput *)self cursorIndex]<= v9)
    {
      return v12;
    }

    result = [(MCSyntheticInput *)self cursorIndex]- v9;
  }

  else
  {
LABEL_6:
    result = -1;
    LODWORD(v12) = -1;
    if (!index)
    {
      return result;
    }
  }

  *index = result;
  return v12;
}

- (NSString)text
{
  committedText = [(MCSyntheticInput *)self committedText];
  uncommittedText = [(MCSyntheticInput *)self uncommittedText];
  v5 = [committedText stringByAppendingString:uncommittedText];

  return v5;
}

- (NSString)uncommittedText
{
  syllables = [(MCSyntheticInput *)self syllables];
  v3 = [syllables componentsJoinedByString:&stru_283FDFAF8];

  return v3;
}

- (MCSyntheticInput)syntheticInputWithCursorIndex:(unint64_t)index
{
  text = [(MCSyntheticInput *)self text];
  v6 = [text length];

  v7 = [(MCSyntheticInput *)self copy];
  v8 = v7;
  if (v7)
  {
    if (v6 >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v6;
    }

    v7[7] = indexCopy;
    v10 = v7;
  }

  else
  {
    v10 = objc_alloc_init(MCSyntheticInput);
  }

  v11 = v10;

  return v11;
}

- (MCSyntheticInput)syntheticInputWithCommittedText:(id)text syllables:(id)syllables
{
  textCopy = text;
  syllablesCopy = syllables;
  v8 = [(MCSyntheticInput *)self copy];
  if (v8)
  {
    v9 = [textCopy copy];
    v10 = v8[5];
    v8[5] = v9;

    v11 = [syllablesCopy copy];
    v12 = v8[6];
    v8[6] = v11;

    text = [v8 text];
    v8[7] = [text length];

    v14 = v8;
  }

  else
  {
    v14 = objc_alloc_init(MCSyntheticInput);
  }

  v15 = v14;

  return v15;
}

- (id)shortDescriptionExcludingSubInputs
{
  v3 = MEMORY[0x277CCACA8];
  text = [(MCSyntheticInput *)self text];
  v5 = [v3 stringWithFormat:@"%@ inputIndex=%lu", text, -[MCSyntheticInput cursorIndex](self, "cursorIndex")];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = MCSyntheticInput;
  v5 = [(MCKeyboardInput *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_committedText copyWithZone:zone];
    v7 = v5[5];
    v5[5] = v6;

    v8 = [(NSArray *)self->_syllables copyWithZone:zone];
    v9 = v5[6];
    v5[6] = v8;

    v5[7] = self->_cursorIndex;
    *(v5 + 32) = self->_includeSuffixAsSearchString;
    *(v5 + 33) = self->_useSubInputsAsSearchString;
  }

  return v5;
}

- (MCSyntheticInput)initWithCommittedText:(id)text syllables:(id)syllables useSubInputsAsSearchString:(BOOL)string
{
  textCopy = text;
  syllablesCopy = syllables;
  v15.receiver = self;
  v15.super_class = MCSyntheticInput;
  v10 = [(MCKeyboardInput *)&v15 init];
  if (v10)
  {
    if (textCopy)
    {
      v11 = [textCopy copy];
    }

    else
    {
      v11 = &stru_283FDFAF8;
    }

    objc_storeStrong(&v10->_committedText, v11);
    if (textCopy)
    {
    }

    if (syllablesCopy)
    {
      v12 = [syllablesCopy copy];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v10->_syllables, v12);
    if (syllablesCopy)
    {
    }

    text = [(MCSyntheticInput *)v10 text];
    v10->_cursorIndex = [text length];

    v10->_includeSuffixAsSearchString = 0;
    v10->_useSubInputsAsSearchString = string;
  }

  return v10;
}

@end