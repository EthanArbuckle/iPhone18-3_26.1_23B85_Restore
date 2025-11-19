@interface VoiceDialNameDataSource
+ (id)_nameDataSourceByLanguageMap;
+ (id)nameDataSourceForLanguageIdentifier:(id)a3;
- (BOOL)getName:(id *)a3 phoneticName:(id *)a4 atIndex:(unint64_t)a5 forPerson:(void *)a6;
- (id)copyPronunciationPropertyForPerson:(void *)a3 withNameType:(int)a4;
- (int)matchingNameType:(id)a3 fromTypes:(unint64_t)a4 forPerson:(void *)a5;
- (int)typeOfNameAtIndex:(unint64_t)a3;
- (unint64_t)countOfNamesOfType:(int)a3;
- (unint64_t)indexOfMainNameOfType:(int)a3;
- (unint64_t)nameTypes;
@end

@implementation VoiceDialNameDataSource

+ (id)_nameDataSourceByLanguageMap
{
  pthread_once(&_nameDataSourceByLanguageMap___createNameSourceMapOnce, _CreateNameDataSourceMap);
  v2 = __nameSourceMap;

  return v2;
}

+ (id)nameDataSourceForLanguageIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 rangeOfString:@"-"], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [v5 substringToIndex:v6];
    if (v8 && ([a1 _nameDataSourceByLanguageMap], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      v7 = NSClassFromString(v10);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = a1;
  }

  v12 = objc_alloc_init(v11);

  return v12;
}

- (unint64_t)indexOfMainNameOfType:(int)a3
{
  if (a3 > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_295FE1AA0[a3];
  }
}

- (id)copyPronunciationPropertyForPerson:(void *)a3 withNameType:(int)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return 0;
    }

    v5 = MEMORY[0x29EDBE200];
    v6 = MEMORY[0x29EDBE208];
  }

  else
  {
    v5 = MEMORY[0x29EDBE1D8];
    v6 = MEMORY[0x29EDBE1E0];
  }

  v7 = *v5;
  if (*v6 == -1 || v7 == -1)
  {
    return 0;
  }

  result = ABRecordCopyValue(a3, *v6);
  if (!result)
  {

    return ABRecordCopyValue(a3, v7);
  }

  return result;
}

- (BOOL)getName:(id *)a3 phoneticName:(id *)a4 atIndex:(unint64_t)a5 forPerson:(void *)a6
{
  if (!a6)
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  v9 = a3;
  if (a3)
  {
    *a3 = 0;
    if (a5 <= 1)
    {
      if (!a5)
      {
        v11 = a6;
        v12 = 0;
        goto LABEL_13;
      }

      if (a5 == 1)
      {
        v11 = a6;
        v12 = 9;
LABEL_13:
        v14 = VoiceDialPersonCopyCompositeName(v11, v12);
        goto LABEL_14;
      }

LABEL_15:
      LOBYTE(v9) = *v9 != 0;
      goto LABEL_16;
    }

    if (a5 == 2)
    {
      if ([(VoiceDialNameDataSource *)self useCompositeNamesOnly]|| VoiceDialPersonIsCompany(a6))
      {
        goto LABEL_15;
      }

      v13 = MEMORY[0x29EDBE1E8];
    }

    else
    {
      if (a5 != 3)
      {
        goto LABEL_15;
      }

      v13 = MEMORY[0x29EDBE230];
    }

    v14 = ABRecordCopyValue(a6, *v13);
LABEL_14:
    *v9 = v14;
    goto LABEL_15;
  }

LABEL_16:
  if (!a4)
  {
    return v9;
  }

  *a4 = 0;
  if (a5 == 2)
  {
    if ([(VoiceDialNameDataSource *)self useCompositeNamesOnly]|| VoiceDialPersonIsCompany(a6))
    {
      goto LABEL_24;
    }

    v17 = [(VoiceDialNameDataSource *)self copyPronunciationPropertyForPerson:a6 withNameType:0];
  }

  else
  {
    if (a5 == 1)
    {
      v15 = a6;
      v16 = 15;
    }

    else
    {
      if (a5)
      {
        goto LABEL_24;
      }

      v15 = a6;
      v16 = 6;
    }

    v17 = VoiceDialPersonCopyCompositeName(v15, v16);
  }

  *a4 = v17;
LABEL_24:
  LOBYTE(v9) = (v9 & 1) != 0 || *a4 != 0;
  return v9;
}

- (int)typeOfNameAtIndex:(unint64_t)a3
{
  if (a3 > 3)
  {
    return -1;
  }

  else
  {
    return dword_295FE1AC0[a3];
  }
}

- (unint64_t)nameTypes
{
  if (!self->_nameTypeMask)
  {
    v3 = [(VoiceDialNameDataSource *)self personNameCount];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = [(VoiceDialNameDataSource *)self typeOfNameAtIndex:i];
        if (v6 != -1)
        {
          self->_nameTypeMask |= 1 << v6;
        }
      }
    }
  }

  return self->_nameTypeMask;
}

- (unint64_t)countOfNamesOfType:(int)a3
{
  if (([(VoiceDialNameDataSource *)self nameTypes]& (1 << a3)) == 0)
  {
    return a3 == 1;
  }

  v5 = [(VoiceDialNameDataSource *)self personNameCount];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    if ([(VoiceDialNameDataSource *)self typeOfNameAtIndex:i]== a3)
    {
      ++v7;
    }
  }

  return v7;
}

- (int)matchingNameType:(id)a3 fromTypes:(unint64_t)a4 forPerson:(void *)a5
{
  v6 = a3;
  v7 = [(VoiceDialNameDataSource *)self personNameCount];
  v22 = v6;
  if (v6)
  {
    v8 = v7;
    v21 = 1;
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = [(VoiceDialNameDataSource *)self typeOfNameAtIndex:v11 - 1];
        if (v12 == -1 || (v13 = v12, v14 = 1 << v12, (v14 & a4) == 0))
        {
          v17 = -1;
          v16 = v10;
        }

        else
        {
          v25 = v10;
          v15 = [(VoiceDialNameDataSource *)self getName:&v25 phoneticName:0 atIndex:v11 - 1 forPerson:a5];
          v16 = v25;

          v17 = -1;
          if (v15 && v16)
          {
            if ([v16 caseInsensitiveCompare:v22])
            {
              v17 = -1;
            }

            else
            {
              v17 = v13;
            }
          }

          v9 |= v14;
        }

        if (v17 != -1)
        {
          break;
        }

        v10 = v16;
      }

      while (v11++ < v8);
      v21 = (v9 & 2) == 0;
    }

    else
    {
      v16 = 0;
      v17 = -1;
    }

    if ((a4 & 2) != 0 && v21 && (v17 == 3 || v17 == -1))
    {
      v19 = ABRecordCopyValue(a5, *MEMORY[0x29EDBE210]);

      if (v19)
      {
        if (![v19 caseInsensitiveCompare:v22])
        {
          v17 = 1;
        }

        v16 = v19;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = -1;
  }

  return v17;
}

@end