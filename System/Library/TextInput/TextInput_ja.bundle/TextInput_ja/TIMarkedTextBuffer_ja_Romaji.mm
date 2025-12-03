@interface TIMarkedTextBuffer_ja_Romaji
- (TIMarkedTextBuffer_ja_Romaji)initWithInternalString:(id)string;
- (int64_t)internalIndex;
- (void)clear;
- (void)deleteFromInput:(int64_t *)input newInput:(id *)newInput inputIndex:(int64_t *)index;
- (void)setExternalInputIndex:(int64_t)index;
- (void)setInternalString:(id)string withInputIndex:(int64_t)index;
- (void)updateStateWithInputIndex:(int64_t)index;
@end

@implementation TIMarkedTextBuffer_ja_Romaji

- (TIMarkedTextBuffer_ja_Romaji)initWithInternalString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TIMarkedTextBuffer_ja_Romaji;
  v5 = [(TIMarkedTextBuffer_ja_Romaji *)&v9 init];
  if (v5)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    externalIndexToInternalIndexMappingArray = v5->_externalIndexToInternalIndexMappingArray;
    v5->_externalIndexToInternalIndexMappingArray = array;

    -[TIMarkedTextBuffer_ja_Romaji setInternalString:withInputIndex:](v5, "setInternalString:withInputIndex:", stringCopy, [stringCopy length]);
  }

  return v5;
}

- (void)setInternalString:(id)string withInputIndex:(int64_t)index
{
  objc_storeStrong(&self->_internalString, string);

  [(TIMarkedTextBuffer_ja_Romaji *)self updateStateWithInputIndex:index];
}

- (void)updateStateWithInputIndex:(int64_t)index
{
  v37 = *MEMORY[0x29EDCA608];
  internalString = [(TIMarkedTextBuffer_ja_Romaji *)self internalString];
  externalString = self->_externalString;
  self->_externalString = 0;

  externalIndexToInternalIndexMappingArray = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [externalIndexToInternalIndexMappingArray removeAllObjects];

  [(TIMarkedTextBuffer_ja_Romaji *)self setExternalInputIndex:0];
  if (internalString && [internalString length])
  {
    v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
    if (index < 1)
    {
      v11 = &stru_2A2525CC0;
    }

    else
    {
      v9 = [internalString substringToIndex:index];
      lowercaseString = [v9 lowercaseString];
      v11 = [Romakana hiraganaString:lowercaseString mappingArray:v8];
    }

    v31 = internalString;
    if ([internalString length] <= index)
    {
      v14 = &stru_2A2525CC0;
    }

    else
    {
      v12 = [internalString substringFromIndex:index];
      lowercaseString2 = [v12 lowercaseString];
      v14 = [Romakana hiraganaString:lowercaseString2 mappingArray:v8];
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

    if (!index)
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
          if (v22 == index)
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

    internalString = v31;
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)deleteFromInput:(int64_t *)input newInput:(id *)newInput inputIndex:(int64_t *)index
{
  externalIndex = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndex];
  externalString = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
  v46 = [externalString copy];

  internalIndex = [(TIMarkedTextBuffer_ja_Romaji *)self internalIndex];
  if (!externalIndex)
  {
    goto LABEL_37;
  }

  v12 = internalIndex;
  v44 = externalIndex - 2;
  if (externalIndex < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v46 substringWithRange:?];
  }

  v43 = externalIndex - 1;
  v14 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:?];
  unsignedIntValue = [v14 unsignedIntValue];

  v45 = v12 != unsignedIntValue;
  if (v12 == unsignedIntValue)
  {
    v18 = v13;
    v20 = [Romakana romajiString:v13];
    v19 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v44];
    unsignedIntValue2 = [v19 unsignedIntValue];
  }

  else
  {
    if (-[NSMutableArray count](self->_externalIndexToInternalIndexMappingArray, "count") <= (externalIndex + 1) || (-[NSMutableArray objectAtIndex:](self->_externalIndexToInternalIndexMappingArray, "objectAtIndex:"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 unsignedIntValue], v16, v12 != v17))
    {
      v20 = 0;
      v45 = 0;
      goto LABEL_15;
    }

    v18 = v13;
    v19 = [v46 substringWithRange:{externalIndex, 1}];
    v20 = [Romakana romajiString:v19];
    v21 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v43];
    unsignedIntValue2 = [v21 unsignedIntValue];
  }

  v23 = v12 - unsignedIntValue2;
  if (v12 != unsignedIntValue2)
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
    unsignedIntValue3 = [v25 unsignedIntValue];

    v23 = v12 - unsignedIntValue3;
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
    newInputCopy = newInput;
    inputCopy = input;
    externalString2 = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
    v29 = [externalString2 substringToIndex:v43];

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
    newInput = newInputCopy;
    input = inputCopy;
    v13 = v40;
LABEL_24:
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_41:
    v38 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v43];
    unsignedIntValue4 = [v38 unsignedIntValue];

    v23 = v12 - unsignedIntValue4;
    if (!input)
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
  if (input)
  {
LABEL_26:
    *input = v23;
  }

LABEL_27:
  if (index)
  {
    *index = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    if (newInput)
    {
      v36 = v20;
      *newInput = v20;
    }

    v37 = !v45;
    if (!index)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      *index = v12 - [v20 length];
    }
  }

LABEL_37:
}

- (int64_t)internalIndex
{
  externalIndex = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndex];
  externalIndexToInternalIndexMappingArray = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  v5 = [externalIndexToInternalIndexMappingArray count];

  if (externalIndex >= v5)
  {
    internalString = [(TIMarkedTextBuffer_ja_Romaji *)self internalString];
    unsignedIntValue = [internalString length];
  }

  else
  {
    internalString = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
    v7 = [internalString objectAtIndexedSubscript:{-[TIMarkedTextBuffer_ja_Romaji externalIndex](self, "externalIndex")}];
    unsignedIntValue = [v7 unsignedIntValue];
  }

  return unsignedIntValue;
}

- (void)setExternalInputIndex:(int64_t)index
{
  v4 = index & ~(index >> 63);
  externalString = [(TIMarkedTextBuffer_ja_Romaji *)self externalString];
  v6 = [externalString length];

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
  externalIndexToInternalIndexMappingArray = [(TIMarkedTextBuffer_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [externalIndexToInternalIndexMappingArray removeAllObjects];

  internalString = self->_internalString;
  self->_internalString = &stru_2A2525CC0;

  externalString = self->_externalString;
  self->_externalString = &stru_2A2525CC0;

  [(TIMarkedTextBuffer_ja_Romaji *)self setExternalIndex:0];
}

@end