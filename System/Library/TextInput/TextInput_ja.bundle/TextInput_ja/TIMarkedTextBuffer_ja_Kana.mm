@interface TIMarkedTextBuffer_ja_Kana
- (TIMarkedTextBuffer_ja_Kana)initWithInternalString:(id)string;
- (void)clear;
- (void)deleteFromInput:(int64_t *)input newInput:(id *)newInput inputIndex:(int64_t *)index;
- (void)setInternalString:(id)string withInputIndex:(int64_t)index;
@end

@implementation TIMarkedTextBuffer_ja_Kana

- (TIMarkedTextBuffer_ja_Kana)initWithInternalString:(id)string
{
  stringCopy = string;
  v7.receiver = self;
  v7.super_class = TIMarkedTextBuffer_ja_Kana;
  v5 = [(TIMarkedTextBuffer_ja_Kana *)&v7 init];
  if (v5)
  {
    -[TIMarkedTextBuffer_ja_Kana setInternalString:withInputIndex:](v5, "setInternalString:withInputIndex:", stringCopy, [stringCopy length]);
    [(TIMarkedTextBuffer_ja_Kana *)v5 setHardwareKeyboard:1];
  }

  return v5;
}

- (void)setInternalString:(id)string withInputIndex:(int64_t)index
{
  stringCopy = string;
  v7 = stringCopy;
  if (index < 2)
  {
    goto LABEL_25;
  }

  indexCopy = index - 1;
  if (index - 1 >= [stringCopy length])
  {
    goto LABEL_25;
  }

  v9 = [v7 characterAtIndex:index - 1];
  if (v9 == 12444)
  {
    if (![(TIMarkedTextBuffer_ja_Kana *)self hardwareKeyboard])
    {
      goto LABEL_25;
    }

    v20 = [v7 substringWithRange:{index - 2, 1}];
    v16 = [@"はひふへほ" rangeOfString:v20];
    v18 = v21;

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = @"ぱぴぷぺぽ";
      goto LABEL_14;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_23;
  }

  if (v9 == 12443)
  {
    if ([(TIMarkedTextBuffer_ja_Kana *)self hardwareKeyboard])
    {
      v15 = [v7 substringWithRange:{index - 2, 1}];
      v16 = [@"うかきくけこさしすせそたちつてとはひふへほ" rangeOfString:v15];
      v18 = v17;

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = @"ゔがぎぐげござじずぜぞだぢづでどばびぶべぼ";
LABEL_14:
        v22 = [(__CFString *)v19 substringWithRange:v16, v18];
LABEL_18:
        v13 = v22;
        goto LABEL_23;
      }
    }

    else
    {
      v23 = [v7 characterAtIndex:index - 2] - 12353;
      if (v23 > 0x53)
      {
        goto LABEL_25;
      }

      v24 = Kana_variant_map[v23];
      v31 = v24;
      if (v24)
      {
        v22 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v31 length:1];
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  if (v9 != 8616)
  {
LABEL_25:
    indexCopy = index;
    goto LABEL_26;
  }

  v10 = [v7 characterAtIndex:index - 2];
  v32 = v10;
  uppercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] uppercaseLetterCharacterSet];
  v12 = [uppercaseLetterCharacterSet characterIsMember:v10];

  if (v12)
  {
    v13 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v32 length:1];
    lowercaseString = [v13 lowercaseString];
  }

  else
  {
    lowercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] lowercaseLetterCharacterSet];
    v26 = [lowercaseLetterCharacterSet characterIsMember:v10];

    v27 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v32 length:1];
    v13 = v27;
    if (!v26)
    {
      goto LABEL_23;
    }

    lowercaseString = [v27 uppercaseString];
  }

  v28 = lowercaseString;

  v13 = v28;
LABEL_23:
  if (!v13)
  {
    goto LABEL_25;
  }

  v29 = [v7 stringByReplacingCharactersInRange:index - 2 withString:{2, v13}];

  v7 = v29;
LABEL_26:
  externalString = self->_externalString;
  self->_externalIndex = indexCopy;
  self->_externalString = v7;
}

- (void)deleteFromInput:(int64_t *)input newInput:(id *)newInput inputIndex:(int64_t *)index
{
  if (input)
  {
    *input = 1;
  }

  if (index)
  {
    internalIndex = [(TIMarkedTextBuffer_ja_Kana *)self internalIndex];
    if (internalIndex <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = internalIndex;
    }

    *index = v7 - 1;
  }
}

- (void)clear
{
  externalString = self->_externalString;
  self->_externalString = &stru_2A2525CC0;

  self->_externalIndex = 0;
}

@end