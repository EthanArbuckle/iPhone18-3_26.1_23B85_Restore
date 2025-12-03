@interface VoiceDialMaidenNameDataSource
- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person;
- (int)matchingNameType:(id)type fromTypes:(unint64_t)types forPerson:(void *)person;
- (int)typeOfNameAtIndex:(unint64_t)index;
- (unint64_t)countOfNamesOfType:(int)type;
- (unint64_t)personNameCount;
@end

@implementation VoiceDialMaidenNameDataSource

- (unint64_t)personNameCount
{
  v3.receiver = self;
  v3.super_class = VoiceDialMaidenNameDataSource;
  return [(VoiceDialNameDataSource *)&v3 personNameCount]+ 2;
}

- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person
{
  v25.receiver = self;
  v25.super_class = VoiceDialMaidenNameDataSource;
  personNameCount = [(VoiceDialNameDataSource *)&v25 personNameCount];
  v12 = index - personNameCount;
  if (index < personNameCount)
  {
    v24.receiver = self;
    v24.super_class = VoiceDialMaidenNameDataSource;
    return [(VoiceDialNameDataSource *)&v24 getName:name phoneticName:phoneticName atIndex:index forPerson:person];
  }

  if (!name)
  {
    if (!phoneticName)
    {
      return 0;
    }

LABEL_8:
    v14 = 0;
    *phoneticName = 0;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  *name = 0;
  if (phoneticName)
  {
    goto LABEL_8;
  }

  v14 = 1;
  if (!v12)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_11;
  }

LABEL_9:
  if (v12 != 1)
  {
    goto LABEL_22;
  }

  v15 = 9;
LABEL_11:
  if (!VoiceDialPersonIsCompany(person))
  {
    v16 = ABRecordCopyValue(person, *MEMORY[0x29EDBE1E8]);
    if (v16)
    {
      v17 = v16;
      v18 = *MEMORY[0x29EDBE210];
      v19 = ABRecordCopyValue(person, *MEMORY[0x29EDBE210]);
      if (v19)
      {
        v20 = v19;
        MaidenNameFromLastName = VoiceDialMaidenNameDataSourceCreateMaidenNameFromLastName(v19);
        if (MaidenNameFromLastName)
        {
          v22 = MaidenNameFromLastName;
          if (name)
          {
            *name = VoiceDialPersonCopyCompositeNameWithSubstitution(person, MaidenNameFromLastName, v18, v15);
          }

          if ((v14 & 1) == 0)
          {
            *phoneticName = VoiceDialPersonCopyCompositeNameWithSubstitution(person, v22, v18, v15 | 6u);
          }

          CFRelease(v22);
        }

        CFRelease(v20);
      }

      CFRelease(v17);
    }
  }

LABEL_22:
  if (!name)
  {
    if ((v14 & 1) == 0)
    {
      return *phoneticName != 0;
    }

    return 0;
  }

  result = *name != 0;
  if (*name)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  if ((v23 & 1) == 0)
  {
    return *phoneticName != 0;
  }

  return result;
}

- (int)typeOfNameAtIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = VoiceDialMaidenNameDataSource;
  personNameCount = [(VoiceDialNameDataSource *)&v8 personNameCount];
  if (index >= personNameCount)
  {
    if (index - personNameCount >= 2)
    {
      return -1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VoiceDialMaidenNameDataSource;
    return [(VoiceDialNameDataSource *)&v7 typeOfNameAtIndex:index];
  }
}

- (unint64_t)countOfNamesOfType:(int)type
{
  v5.receiver = self;
  v5.super_class = VoiceDialMaidenNameDataSource;
  result = [(VoiceDialNameDataSource *)&v5 countOfNamesOfType:?];
  if (type == 1)
  {
    ++result;
  }

  return result;
}

- (int)matchingNameType:(id)type fromTypes:(unint64_t)types forPerson:(void *)person
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = VoiceDialMaidenNameDataSource;
  v9 = [(VoiceDialNameDataSource *)&v15 matchingNameType:typeCopy fromTypes:types forPerson:person];
  if (v9 == -1)
  {
    if ((types & 2) != 0 && (v10 = ABRecordCopyValue(person, *MEMORY[0x29EDBE210])) != 0)
    {
      v11 = v10;
      MaidenNameFromLastName = VoiceDialMaidenNameDataSourceCreateMaidenNameFromLastName(v10);
      if (MaidenNameFromLastName)
      {
        v13 = MaidenNameFromLastName;
        if ([typeCopy caseInsensitiveCompare:MaidenNameFromLastName])
        {
          v9 = -1;
        }

        else
        {
          v9 = 1;
        }

        CFRelease(v13);
      }

      else
      {
        v9 = -1;
      }

      CFRelease(v11);
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

@end