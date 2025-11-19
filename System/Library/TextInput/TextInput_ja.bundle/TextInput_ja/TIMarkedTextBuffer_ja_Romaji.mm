@interface TIMarkedTextBuffer_ja_Romaji
- (TIMarkedTextBuffer_ja_Romaji)initWithInternalString:(id)a3;
- (int64_t)internalIndex;
- (void)clear;
- (void)deleteFromInput:(int64_t *)a3 newInput:(id *)a4 inputIndex:(int64_t *)a5;
- (void)setExternalInputIndex:(int64_t)a3;
- (void)setInternalString:(id)a3 withInputIndex:(int64_t)a4;
- (void)updateStateWithInputIndex:(int64_t)a3;
@end

@implementation TIMarkedTextBuffer_ja_Romaji

- (TIMarkedTextBuffer_ja_Romaji)initWithInternalString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIMarkedTextBuffer_ja_Romaji;
  v5 = [(TIMarkedTextBuffer_ja_Romaji *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
    externalIndexToInternalIndexMappingArray = v5->_externalIndexToInternalIndexMappingArray;
    v5->_externalIndexToInternalIndexMappingArray = v6;

    -[TIMarkedTextBuffer_ja_Romaji setInternalString:withInputIndex:](v5, "setInternalString:withInputIndex:", v4, [v4 length]);
  }

  return v5;
}

- (void)setInternalString:(id)a3 withInputIndex:(int64_t)a4
{
  objc_storeStrong(&self->_internalString, a3);

  [(TIMarkedTextBuffer_ja_Romaji *)self updateStateWithInputIndex:a4];
}

- (void)updateStateWithInputIndex:(int64_t)a3
{
  v37 = *MEMORY[0x29EDCA608];
  v5 = [(TIMarkedTextBuffer_ja_Romaji *)self internalString];
  externalString = self->_externalString;
  self->_externalString = 0;

  v7 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [v7 removeAllObjects];

  [(TIMarkedTextBuffer_ja_Romaji *)self setExternalInputIndex:0];
  if (v5 && [v5 length])
  {
    v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
    if (a3 < 1)
    {
      v11 = &stru_2A2525CC0;
    }

    else
    {
      v9 = [v5 substringToIndex:a3];
      v10 = [v9 lowercaseString];
      v11 = [Romakana hiraganaString:v10 mappingArray:v8];
    }

    v31 = v5;
    if ([v5 length] <= a3)
    {
      v14 = &stru_2A2525CC0;
    }

    else
    {
      v12 = [v5 substringFromIndex:a3];
      v13 = [v12 lowercaseString];
      v14 = [Romakana hiraganaString:v13 mappingArray:v8];
    }

    v29 = v14;
    v30 = v11;
    v15 = [(__CFString *)v11 stringByAppendingString:v14];
    v16 = self->_externalString;
    self->_externalString = v15;

    self->_externalIndex = 0x7FFFFFFFFFFFFFFFLL;
    externalIndexToInternalIndexMappingArray = self->_externalIndexToInternalIndexMappingArray;
    v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
    [(NSMutableArray *)externalIndexToInternalIndexMappingArray addObject:v18];

    if (!a3)
    {
      self->_externalIndex = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = 0;
      v24 = *v33;
      do
      {
        v25 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v22 += [*(*(&v32 + 1) + 8 * v25) intValue];
          v26 = self->_externalIndexToInternalIndexMappingArray;
          v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v22];
          [(NSMutableArray *)v26 addObject:v27];

          ++v23;
          if (v22 == a3)
          {
            self->_externalIndex = v23;
          }

          ++v25;
        }

        while (v21 != v25);
        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    v5 = v31;
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)deleteFromInput:(int64_t *)a3 newInput:(id *)a4 inputIndex:(int64_t *)a5
{
  v9 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndex];
  v10 = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
  v46 = [v10 copy];

  v11 = [(TIMarkedTextBuffer_ja_Romaji *)self internalIndex];
  if (!v9)
  {
    goto LABEL_37;
  }

  v12 = v11;
  v44 = v9 - 2;
  if (v9 < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v46 substringWithRange:?];
  }

  v43 = v9 - 1;
  v14 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:?];
  v15 = [v14 unsignedIntValue];

  v45 = v12 != v15;
  if (v12 == v15)
  {
    v18 = v13;
    v20 = [Romakana romajiString:v13];
    v19 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v44];
    v22 = [v19 unsignedIntValue];
  }

  else
  {
    if (-[NSMutableArray count](self->_externalIndexToInternalIndexMappingArray, "count") <= (v9 + 1) || (-[NSMutableArray objectAtIndex:](self->_externalIndexToInternalIndexMappingArray, "objectAtIndex:"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 unsignedIntValue], v16, v12 != v17))
    {
      v20 = 0;
      v45 = 0;
      goto LABEL_15;
    }

    v18 = v13;
    v19 = [v46 substringWithRange:{v9, 1}];
    v20 = [Romakana romajiString:v19];
    v21 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v43];
    v22 = [v21 unsignedIntValue];
  }

  v23 = v12 - v22;
  if (v12 != v22)
  {
    v13 = v18;
    if (v23)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v13 = v18;
LABEL_15:
  if ([v13 isEqualToString:@"ん"])
  {
    v24 = [Romakana romajiString:v13];

    v25 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v44];
    v26 = v13;
    v27 = [v25 unsignedIntValue];

    v23 = v12 - v27;
    v13 = v26;
    v20 = v24;
    if (v23)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  if ([v13 isEqualToString:@"っ"])
  {
    v40 = v13;
    v41 = a4;
    v42 = a3;
    v28 = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
    v29 = [v28 substringToIndex:v43];

    v30 = [v29 length];
    v31 = [MEMORY[0x29EDBA050] stringWithCapacity:3 * v30];
    if (v30 >= 1)
    {
      for (i = 0; i != v30; ++i)
      {
        v33 = [v29 substringWithRange:{i, 1}];
        v34 = [Romakana romajiString:v33];
        if (!v34)
        {
          v34 = v33;
        }

        [v31 appendString:v34];
      }
    }

    v35 = [MEMORY[0x29EDBA0F8] stringWithString:v31];

    v20 = v35;
    v23 = v12;
    a4 = v41;
    a3 = v42;
    v13 = v40;
LABEL_24:
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_41:
    v38 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v43];
    v39 = [v38 unsignedIntValue];

    v23 = v12 - v39;
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v23 = 0;
  if (!v20)
  {
    goto LABEL_41;
  }

LABEL_25:
  if (a3)
  {
LABEL_26:
    *a3 = v23;
  }

LABEL_27:
  if (a5)
  {
    *a5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    if (a4)
    {
      v36 = v20;
      *a4 = v20;
    }

    v37 = !v45;
    if (!a5)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      *a5 = v12 - [v20 length];
    }
  }

LABEL_37:
}

- (int64_t)internalIndex
{
  v3 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndex];
  v4 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v6 = [(TIMarkedTextBuffer_ja_Romaji *)self internalString];
    v8 = [v6 length];
  }

  else
  {
    v6 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
    v7 = [v6 objectAtIndexedSubscript:{-[TIMarkedTextBuffer_ja_Romaji externalIndex](self, "externalIndex")}];
    v8 = [v7 unsignedIntValue];
  }

  return v8;
}

- (void)setExternalInputIndex:(int64_t)a3
{
  v4 = a3 & ~(a3 >> 63);
  v5 = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
  v6 = [v5 length];

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  self->_externalIndex = v7;
}

- (void)clear
{
  v3 = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [v3 removeAllObjects];

  internalString = self->_internalString;
  self->_internalString = &stru_2A2525CC0;

  externalString = self->_externalString;
  self->_externalString = &stru_2A2525CC0;

  [(TIMarkedTextBuffer_ja_Romaji *)self setExternalIndex:0];
}

@end