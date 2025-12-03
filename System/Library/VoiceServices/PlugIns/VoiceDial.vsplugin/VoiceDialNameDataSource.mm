@interface VoiceDialNameDataSource
+ (id)_nameDataSourceByLanguageMap;
+ (id)nameDataSourceForLanguageIdentifier:(id)identifier;
- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person;
- (id)copyPronunciationPropertyForPerson:(void *)person withNameType:(int)type;
- (int)matchingNameType:(id)type fromTypes:(unint64_t)types forPerson:(void *)person;
- (int)typeOfNameAtIndex:(unint64_t)index;
- (unint64_t)countOfNamesOfType:(int)type;
- (unint64_t)indexOfMainNameOfType:(int)type;
- (unint64_t)nameTypes;
@end

@implementation VoiceDialNameDataSource

+ (id)_nameDataSourceByLanguageMap
{
  pthread_once(&_nameDataSourceByLanguageMap___createNameSourceMapOnce, _CreateNameDataSourceMap);
  v2 = __nameSourceMap;

  return v2;
}

+ (id)nameDataSourceForLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && (v6 = [identifierCopy rangeOfString:@"-"], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [v5 substringToIndex:v6];
    if (v8 && ([self _nameDataSourceByLanguageMap], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
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
    selfCopy = v7;
  }

  else
  {
    selfCopy = self;
  }

  v12 = objc_alloc_init(selfCopy);

  return v12;
}

- (unint64_t)indexOfMainNameOfType:(int)type
{
  if (type > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_295FE1AA0[type];
  }
}

- (id)copyPronunciationPropertyForPerson:(void *)person withNameType:(int)type
{
  if (type)
  {
    if (type != 1)
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

  result = ABRecordCopyValue(person, *v6);
  if (!result)
  {

    return ABRecordCopyValue(person, v7);
  }

  return result;
}

- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person
{
  if (!person)
  {
    LOBYTE(nameCopy) = 0;
    return nameCopy;
  }

  nameCopy = name;
  if (name)
  {
    *name = 0;
    if (index <= 1)
    {
      if (!index)
      {
        personCopy2 = person;
        v12 = 0;
        goto LABEL_13;
      }

      if (index == 1)
      {
        personCopy2 = person;
        v12 = 9;
LABEL_13:
        v14 = VoiceDialPersonCopyCompositeName(personCopy2, v12);
        goto LABEL_14;
      }

LABEL_15:
      LOBYTE(nameCopy) = *nameCopy != 0;
      goto LABEL_16;
    }

    if (index == 2)
    {
      if ([(VoiceDialNameDataSource *)self useCompositeNamesOnly]|| VoiceDialPersonIsCompany(person))
      {
        goto LABEL_15;
      }

      v13 = MEMORY[0x29EDBE1E8];
    }

    else
    {
      if (index != 3)
      {
        goto LABEL_15;
      }

      v13 = MEMORY[0x29EDBE230];
    }

    v14 = ABRecordCopyValue(person, *v13);
LABEL_14:
    *nameCopy = v14;
    goto LABEL_15;
  }

LABEL_16:
  if (!phoneticName)
  {
    return nameCopy;
  }

  *phoneticName = 0;
  if (index == 2)
  {
    if ([(VoiceDialNameDataSource *)self useCompositeNamesOnly]|| VoiceDialPersonIsCompany(person))
    {
      goto LABEL_24;
    }

    v17 = [(VoiceDialNameDataSource *)self copyPronunciationPropertyForPerson:person withNameType:0];
  }

  else
  {
    if (index == 1)
    {
      personCopy4 = person;
      v16 = 15;
    }

    else
    {
      if (index)
      {
        goto LABEL_24;
      }

      personCopy4 = person;
      v16 = 6;
    }

    v17 = VoiceDialPersonCopyCompositeName(personCopy4, v16);
  }

  *phoneticName = v17;
LABEL_24:
  LOBYTE(nameCopy) = (nameCopy & 1) != 0 || *phoneticName != 0;
  return nameCopy;
}

- (int)typeOfNameAtIndex:(unint64_t)index
{
  if (index > 3)
  {
    return -1;
  }

  else
  {
    return dword_295FE1AC0[index];
  }
}

- (unint64_t)nameTypes
{
  if (!self->_nameTypeMask)
  {
    personNameCount = [(VoiceDialNameDataSource *)self personNameCount];
    if (personNameCount)
    {
      v4 = personNameCount;
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

- (unint64_t)countOfNamesOfType:(int)type
{
  if (([(VoiceDialNameDataSource *)self nameTypes]& (1 << type)) == 0)
  {
    return type == 1;
  }

  personNameCount = [(VoiceDialNameDataSource *)self personNameCount];
  if (!personNameCount)
  {
    return 0;
  }

  v6 = personNameCount;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    if ([(VoiceDialNameDataSource *)self typeOfNameAtIndex:i]== type)
    {
      ++v7;
    }
  }

  return v7;
}

- (int)matchingNameType:(id)type fromTypes:(unint64_t)types forPerson:(void *)person
{
  typeCopy = type;
  personNameCount = [(VoiceDialNameDataSource *)self personNameCount];
  v22 = typeCopy;
  if (typeCopy)
  {
    v8 = personNameCount;
    v21 = 1;
    if (personNameCount)
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = [(VoiceDialNameDataSource *)self typeOfNameAtIndex:v11 - 1];
        if (v12 == -1 || (v13 = v12, v14 = 1 << v12, (v14 & types) == 0))
        {
          v17 = -1;
          v16 = v10;
        }

        else
        {
          v25 = v10;
          v15 = [(VoiceDialNameDataSource *)self getName:&v25 phoneticName:0 atIndex:v11 - 1 forPerson:person];
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

    if ((types & 2) != 0 && v21 && (v17 == 3 || v17 == -1))
    {
      v19 = ABRecordCopyValue(person, *MEMORY[0x29EDBE210]);

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