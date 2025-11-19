@interface TIMarkedTextBuffer_ja_Kana
- (TIMarkedTextBuffer_ja_Kana)initWithInternalString:(id)a3;
- (void)clear;
- (void)deleteFromInput:(int64_t *)a3 newInput:(id *)a4 inputIndex:(int64_t *)a5;
- (void)setInternalString:(id)a3 withInputIndex:(int64_t)a4;
@end

@implementation TIMarkedTextBuffer_ja_Kana

- (TIMarkedTextBuffer_ja_Kana)initWithInternalString:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIMarkedTextBuffer_ja_Kana;
  v5 = [(TIMarkedTextBuffer_ja_Kana *)&v7 init];
  if (v5)
  {
    -[TIMarkedTextBuffer_ja_Kana setInternalString:withInputIndex:](v5, "setInternalString:withInputIndex:", v4, [v4 length]);
    [(TIMarkedTextBuffer_ja_Kana *)v5 setHardwareKeyboard:1];
  }

  return v5;
}

- (void)setInternalString:(id)a3 withInputIndex:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 < 2)
  {
    goto LABEL_25;
  }

  v8 = a4 - 1;
  if (a4 - 1 >= [v6 length])
  {
    goto LABEL_25;
  }

  v9 = [v7 characterAtIndex:a4 - 1];
  if (v9 == 12444)
  {
    if (![(TIMarkedTextBuffer_ja_Kana *)self hardwareKeyboard])
    {
      goto LABEL_25;
    }

    v20 = [v7 substringWithRange:{a4 - 2, 1}];
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
      v15 = [v7 substringWithRange:{a4 - 2, 1}];
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
      v23 = [v7 characterAtIndex:a4 - 2] - 12353;
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
    v8 = a4;
    goto LABEL_26;
  }

  v10 = [v7 characterAtIndex:a4 - 2];
  v32 = v10;
  v11 = [MEMORY[0x29EDB9F50] uppercaseLetterCharacterSet];
  v12 = [v11 characterIsMember:v10];

  if (v12)
  {
    v13 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v32 length:1];
    v14 = [v13 lowercaseString];
  }

  else
  {
    v25 = [MEMORY[0x29EDB9F50] lowercaseLetterCharacterSet];
    v26 = [v25 characterIsMember:v10];

    v27 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v32 length:1];
    v13 = v27;
    if (!v26)
    {
      goto LABEL_23;
    }

    v14 = [v27 uppercaseString];
  }

  v28 = v14;

  v13 = v28;
LABEL_23:
  if (!v13)
  {
    goto LABEL_25;
  }

  v29 = [v7 stringByReplacingCharactersInRange:a4 - 2 withString:{2, v13}];

  v7 = v29;
LABEL_26:
  externalString = self->_externalString;
  self->_externalIndex = v8;
  self->_externalString = v7;
}

- (void)deleteFromInput:(int64_t *)a3 newInput:(id *)a4 inputIndex:(int64_t *)a5
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a5)
  {
    v6 = [(TIMarkedTextBuffer_ja_Kana *)self internalIndex];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    *a5 = v7 - 1;
  }
}

- (void)clear
{
  externalString = self->_externalString;
  self->_externalString = &stru_2A2525CC0;

  self->_externalIndex = 0;
}

@end