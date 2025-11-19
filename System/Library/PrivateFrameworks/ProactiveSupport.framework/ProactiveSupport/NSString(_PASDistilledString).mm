@interface NSString(_PASDistilledString)
+ (id)_pas_distilledStringClasses;
- (id)_pas_distilledString;
- (id)_pas_revivedString;
@end

@implementation NSString(_PASDistilledString)

- (id)_pas_distilledString
{
  v2 = [a1 length];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = [a1 UTF8String];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = v4 + v3;
  if (*(v4 + v3))
  {
    goto LABEL_4;
  }

  if ([a1 isEqualToString:@"0"])
  {
    v8 = &unk_1F1B2FF10;
    goto LABEL_6;
  }

  if ([a1 hasPrefix:@" "] & 1) != 0 || (objc_msgSend(a1, "hasPrefix:", @"+") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"-"))
  {
    goto LABEL_60;
  }

  if (v3 <= 0x14)
  {
    v11 = v5 + 1;
    v10 = *v5;
    v12 = v10 == 45;
    if (v10 != 45)
    {
      v11 = v5;
    }

    if (*v11 == 48)
    {
      goto LABEL_37;
    }

    __endptr = 0;
    if (v10 == 45)
    {
      v13 = strtol(v5, &__endptr, 10);
      if (*__endptr)
      {
        goto LABEL_37;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithLong:v13];
    }

    else
    {
      v17 = strtoul(v5, &__endptr, 10);
      if (*__endptr)
      {
        goto LABEL_37;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17];
    }

    goto LABEL_5;
  }

  if (v3 != 36)
  {
    v12 = 0;
    goto LABEL_37;
  }

  v14 = 0;
  v12 = 0;
  while (1)
  {
    if (v14 <= 0x24)
    {
      if (((1 << v14) & 0x842100) != 0)
      {
        if (v5[v14] != 45)
        {
          goto LABEL_37;
        }

        v12 = 1;
        goto LABEL_27;
      }

      if (v14 == 36)
      {
        break;
      }
    }

    v15 = v5[v14];
    if ((v15 - 65) >= 6 && (v15 - 48) > 9)
    {
      goto LABEL_37;
    }

LABEL_27:
    ++v14;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_37:
  if (v3 >= 9 && !v12 && (*v5 - 48) <= 9)
  {
    v18 = v3 - 1;
    if ((v5[v3 - 1] - 48) <= 9 && (*v5 != 48 || v5[1] == 46 || !v5[1]))
    {
      v19 = v5;
      while (1)
      {
        v19 = strstr(v19 + 1, ".0");
        if (!v19)
        {
          break;
        }

        if (v19[2] && v19[2] != 46)
        {
          goto LABEL_60;
        }
      }

      if (v3 <= 0xB)
      {
        while (1)
        {
          v20 = *v5++;
          v21 = (1 << v20) & 0x1B400000000000;
          if (v20 > 0x34 || v21 == 0)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_60;
          }

          --v18;
        }
      }

      v7 = [MEMORY[0x1E696AC88] _pas_fromVersionStringIfPossible:a1];
      if (v7)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_60:
  if (v3 < 0xC || (v3 & 3) != 0)
  {
LABEL_4:
    v7 = [a1 copy];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:a1 options:0];
  v8 = v23;
  if (!v23)
  {
    goto LABEL_74;
  }

  v24 = [v23 length];
  v25 = (v24 % 3) ^ 3;
  if (!(v24 % 3))
  {
    v25 = 0;
  }

  if (*(v6 - 1) == 61)
  {
    if (!v25)
    {
      goto LABEL_74;
    }

    if (*(v6 - 2) == 61)
    {
      if (v25 == 1)
      {
LABEL_74:

        goto LABEL_4;
      }
    }

    else if (v25 == 2)
    {
      goto LABEL_74;
    }
  }

  else if (v25)
  {
    goto LABEL_74;
  }

  if (v3 != 4 * (([v8 length] + 2) / 3uLL))
  {
    goto LABEL_74;
  }

LABEL_6:

  return v8;
}

- (id)_pas_revivedString
{
  v1 = [a1 copy];

  return v1;
}

+ (id)_pas_distilledStringClasses
{
  if (_pas_distilledStringClasses__pasOnceToken2 != -1)
  {
    dispatch_once(&_pas_distilledStringClasses__pasOnceToken2, &__block_literal_global_1581);
  }

  v1 = _pas_distilledStringClasses__pasExprOnceResult;

  return v1;
}

@end