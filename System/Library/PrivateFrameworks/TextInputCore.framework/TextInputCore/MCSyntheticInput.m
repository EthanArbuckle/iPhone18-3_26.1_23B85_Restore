@interface MCSyntheticInput
- (MCSyntheticInput)initWithCommittedText:(id)a3 syllables:(id)a4 useSubInputsAsSearchString:(BOOL)a5;
- (MCSyntheticInput)syntheticInputWithCommittedText:(id)a3 syllables:(id)a4;
- (MCSyntheticInput)syntheticInputWithCursorIndex:(unint64_t)a3;
- (NSString)text;
- (NSString)uncommittedText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)externalSuffix:(id)a3;
- (id)shortDescriptionExcludingSubInputs;
- (int)syllableIndex:(int *)a3;
@end

@implementation MCSyntheticInput

- (id)externalSuffix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v29 = 0;
  v6 = [(MCSyntheticInput *)self cursorIndex];
  v7 = [(MCSyntheticInput *)self committedText];
  v8 = [v7 length];

  if (v6 <= v8)
  {
    v10 = [(MCSyntheticInput *)self committedText];
    v11 = [v10 substringFromIndex:{-[MCSyntheticInput cursorIndex](self, "cursorIndex")}];

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

  v12 = [(MCSyntheticInput *)self syllables];
  v13 = [v12 count];

  if (v13 > v9)
  {
    v14 = v9;
    v15 = [(MCSyntheticInput *)self syllables];
    v16 = [v15 count];

    if (v16 > v14)
    {
      v17 = v14;
      do
      {
        if (v17 > v14)
        {
          [v5 appendString:v4];
        }

        v18 = v29;
        if (v29 >= 1 && (-[MCSyntheticInput syllables](self, "syllables"), v19 = objc_claimAutoreleasedReturnValue(), [v19 objectAtIndexedSubscript:v17], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, v21 >= v18))
        {
          v24 = [(MCSyntheticInput *)self syllables];
          v25 = [v24 objectAtIndexedSubscript:v17];
          v22 = [v25 substringFromIndex:v29];

          [v5 appendString:v22];
          v29 = 0;
        }

        else
        {
          v22 = [(MCSyntheticInput *)self syllables];
          v23 = [v22 objectAtIndexedSubscript:v17];
          [v5 appendString:v23];
        }

        ++v17;
        v26 = [(MCSyntheticInput *)self syllables];
        v27 = [v26 count];
      }

      while (v27 > v17);
    }
  }

LABEL_15:

  return v5;
}

- (int)syllableIndex:(int *)a3
{
  v5 = [(MCSyntheticInput *)self cursorIndex];
  v6 = [(MCSyntheticInput *)self committedText];
  v7 = [v6 length];

  if (v5 <= v7)
  {
    goto LABEL_6;
  }

  v8 = [(MCSyntheticInput *)self committedText];
  v9 = [v8 length];

  v10 = [(MCSyntheticInput *)self syllables];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = [(MCSyntheticInput *)self syllables];
      v14 = [v13 objectAtIndexedSubscript:v12];
      v15 = [v14 length] + v9;
      v16 = [(MCSyntheticInput *)self cursorIndex];

      if (v15 >= v16)
      {
        break;
      }

      v17 = [(MCSyntheticInput *)self syllables];
      v18 = [v17 objectAtIndexedSubscript:v12];
      v9 += [v18 length];

      ++v12;
      v19 = [(MCSyntheticInput *)self syllables];
      v20 = [v19 count];

      if (v20 <= v12)
      {
        goto LABEL_6;
      }
    }

    if (!a3 || [(MCSyntheticInput *)self cursorIndex]<= v9)
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
    if (!a3)
    {
      return result;
    }
  }

  *a3 = result;
  return v12;
}

- (NSString)text
{
  v3 = [(MCSyntheticInput *)self committedText];
  v4 = [(MCSyntheticInput *)self uncommittedText];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (NSString)uncommittedText
{
  v2 = [(MCSyntheticInput *)self syllables];
  v3 = [v2 componentsJoinedByString:&stru_283FDFAF8];

  return v3;
}

- (MCSyntheticInput)syntheticInputWithCursorIndex:(unint64_t)a3
{
  v5 = [(MCSyntheticInput *)self text];
  v6 = [v5 length];

  v7 = [(MCSyntheticInput *)self copy];
  v8 = v7;
  if (v7)
  {
    if (v6 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v6;
    }

    v7[7] = v9;
    v10 = v7;
  }

  else
  {
    v10 = objc_alloc_init(MCSyntheticInput);
  }

  v11 = v10;

  return v11;
}

- (MCSyntheticInput)syntheticInputWithCommittedText:(id)a3 syllables:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCSyntheticInput *)self copy];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[5];
    v8[5] = v9;

    v11 = [v7 copy];
    v12 = v8[6];
    v8[6] = v11;

    v13 = [v8 text];
    v8[7] = [v13 length];

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
  v4 = [(MCSyntheticInput *)self text];
  v5 = [v3 stringWithFormat:@"%@ inputIndex=%lu", v4, -[MCSyntheticInput cursorIndex](self, "cursorIndex")];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = MCSyntheticInput;
  v5 = [(MCKeyboardInput *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_committedText copyWithZone:a3];
    v7 = v5[5];
    v5[5] = v6;

    v8 = [(NSArray *)self->_syllables copyWithZone:a3];
    v9 = v5[6];
    v5[6] = v8;

    v5[7] = self->_cursorIndex;
    *(v5 + 32) = self->_includeSuffixAsSearchString;
    *(v5 + 33) = self->_useSubInputsAsSearchString;
  }

  return v5;
}

- (MCSyntheticInput)initWithCommittedText:(id)a3 syllables:(id)a4 useSubInputsAsSearchString:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = MCSyntheticInput;
  v10 = [(MCKeyboardInput *)&v15 init];
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = &stru_283FDFAF8;
    }

    objc_storeStrong(&v10->_committedText, v11);
    if (v8)
    {
    }

    if (v9)
    {
      v12 = [v9 copy];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v10->_syllables, v12);
    if (v9)
    {
    }

    v13 = [(MCSyntheticInput *)v10 text];
    v10->_cursorIndex = [v13 length];

    v10->_includeSuffixAsSearchString = 0;
    v10->_useSubInputsAsSearchString = a5;
  }

  return v10;
}

@end