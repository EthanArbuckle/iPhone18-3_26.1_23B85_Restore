@interface VoiceDialLastNameDataSource
- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person;
- (int)typeOfNameAtIndex:(unint64_t)index;
- (unint64_t)indexOfMainNameOfType:(int)type;
- (unint64_t)personNameCount;
@end

@implementation VoiceDialLastNameDataSource

- (unint64_t)personNameCount
{
  v3.receiver = self;
  v3.super_class = VoiceDialLastNameDataSource;
  return [(VoiceDialNameDataSource *)&v3 personNameCount]+ 1;
}

- (BOOL)getName:(id *)name phoneticName:(id *)phoneticName atIndex:(unint64_t)index forPerson:(void *)person
{
  v16.receiver = self;
  v16.super_class = VoiceDialLastNameDataSource;
  personNameCount = [(VoiceDialNameDataSource *)&v16 personNameCount];
  if (personNameCount <= index)
  {
    v12 = personNameCount;
    if (name)
    {
      v13 = 0;
      *name = 0;
      if (v12 == index)
      {
        if ([(VoiceDialNameDataSource *)self useCompositeNamesOnly])
        {
          v13 = *name;
        }

        else
        {
          v13 = ABRecordCopyValue(person, *MEMORY[0x29EDBE210]);
          *name = v13;
        }
      }

      LOBYTE(name) = v13 != 0;
    }

    if (phoneticName)
    {
      *phoneticName = 0;
      if (v12 == index && ![(VoiceDialNameDataSource *)self useCompositeNamesOnly])
      {
        *phoneticName = [(VoiceDialNameDataSource *)self copyPronunciationPropertyForPerson:person withNameType:1];
      }

      LOBYTE(name) = (name & 1) != 0 || *phoneticName != 0;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VoiceDialLastNameDataSource;
    LOBYTE(name) = [(VoiceDialNameDataSource *)&v15 getName:name phoneticName:phoneticName atIndex:index forPerson:person];
  }

  return name;
}

- (unint64_t)indexOfMainNameOfType:(int)type
{
  if (type == 1)
  {
    v5.receiver = self;
    v5.super_class = VoiceDialLastNameDataSource;
    return [(VoiceDialNameDataSource *)&v5 personNameCount];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VoiceDialLastNameDataSource;
    return [(VoiceDialNameDataSource *)&v4 indexOfMainNameOfType:?];
  }
}

- (int)typeOfNameAtIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = VoiceDialLastNameDataSource;
  personNameCount = [(VoiceDialNameDataSource *)&v8 personNameCount];
  if (personNameCount <= index)
  {
    if (personNameCount == index)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VoiceDialLastNameDataSource;
    return [(VoiceDialNameDataSource *)&v7 typeOfNameAtIndex:index];
  }
}

@end