@interface VoiceDialMaidenNameDataSource
- (BOOL)getName:(id *)a3 phoneticName:(id *)a4 atIndex:(unint64_t)a5 forPerson:(void *)a6;
- (int)matchingNameType:(id)a3 fromTypes:(unint64_t)a4 forPerson:(void *)a5;
- (int)typeOfNameAtIndex:(unint64_t)a3;
- (unint64_t)countOfNamesOfType:(int)a3;
- (unint64_t)personNameCount;
@end

@implementation VoiceDialMaidenNameDataSource

- (unint64_t)personNameCount
{
  v3.receiver = self;
  v3.super_class = VoiceDialMaidenNameDataSource;
  return [(VoiceDialNameDataSource *)&v3 personNameCount]+ 2;
}

- (BOOL)getName:(id *)a3 phoneticName:(id *)a4 atIndex:(unint64_t)a5 forPerson:(void *)a6
{
  v25.receiver = self;
  v25.super_class = VoiceDialMaidenNameDataSource;
  v11 = [(VoiceDialNameDataSource *)&v25 personNameCount];
  v12 = a5 - v11;
  if (a5 < v11)
  {
    v24.receiver = self;
    v24.super_class = VoiceDialMaidenNameDataSource;
    return [(VoiceDialNameDataSource *)&v24 getName:a3 phoneticName:a4 atIndex:a5 forPerson:a6];
  }

  if (!a3)
  {
    if (!a4)
    {
      return 0;
    }

LABEL_8:
    v14 = 0;
    *a4 = 0;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  *a3 = 0;
  if (a4)
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
  if (!VoiceDialPersonIsCompany(a6))
  {
    v16 = ABRecordCopyValue(a6, *MEMORY[0x29EDBE1E8]);
    if (v16)
    {
      v17 = v16;
      v18 = *MEMORY[0x29EDBE210];
      v19 = ABRecordCopyValue(a6, *MEMORY[0x29EDBE210]);
      if (v19)
      {
        v20 = v19;
        MaidenNameFromLastName = VoiceDialMaidenNameDataSourceCreateMaidenNameFromLastName(v19);
        if (MaidenNameFromLastName)
        {
          v22 = MaidenNameFromLastName;
          if (a3)
          {
            *a3 = VoiceDialPersonCopyCompositeNameWithSubstitution(a6, MaidenNameFromLastName, v18, v15);
          }

          if ((v14 & 1) == 0)
          {
            *a4 = VoiceDialPersonCopyCompositeNameWithSubstitution(a6, v22, v18, v15 | 6u);
          }

          CFRelease(v22);
        }

        CFRelease(v20);
      }

      CFRelease(v17);
    }
  }

LABEL_22:
  if (!a3)
  {
    if ((v14 & 1) == 0)
    {
      return *a4 != 0;
    }

    return 0;
  }

  result = *a3 != 0;
  if (*a3)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  if ((v23 & 1) == 0)
  {
    return *a4 != 0;
  }

  return result;
}

- (int)typeOfNameAtIndex:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = VoiceDialMaidenNameDataSource;
  v5 = [(VoiceDialNameDataSource *)&v8 personNameCount];
  if (a3 >= v5)
  {
    if (a3 - v5 >= 2)
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
    return [(VoiceDialNameDataSource *)&v7 typeOfNameAtIndex:a3];
  }
}

- (unint64_t)countOfNamesOfType:(int)a3
{
  v5.receiver = self;
  v5.super_class = VoiceDialMaidenNameDataSource;
  result = [(VoiceDialNameDataSource *)&v5 countOfNamesOfType:?];
  if (a3 == 1)
  {
    ++result;
  }

  return result;
}

- (int)matchingNameType:(id)a3 fromTypes:(unint64_t)a4 forPerson:(void *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = VoiceDialMaidenNameDataSource;
  v9 = [(VoiceDialNameDataSource *)&v15 matchingNameType:v8 fromTypes:a4 forPerson:a5];
  if (v9 == -1)
  {
    if ((a4 & 2) != 0 && (v10 = ABRecordCopyValue(a5, *MEMORY[0x29EDBE210])) != 0)
    {
      v11 = v10;
      MaidenNameFromLastName = VoiceDialMaidenNameDataSourceCreateMaidenNameFromLastName(v10);
      if (MaidenNameFromLastName)
      {
        v13 = MaidenNameFromLastName;
        if ([v8 caseInsensitiveCompare:MaidenNameFromLastName])
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