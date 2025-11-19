@interface TSTCustomFormatList
- (BOOL)supportsIDMapForType:(int)a3;
- (TSTCustomFormatList)init;
- (TSTCustomFormatList)initWithContext:(id)a3;
- (id)allNumberKeys;
- (id)customFormatWrapperForKey:(unsigned int)a3;
- (id)newUniqueNameFromName:(id)a3 preserveSeed:(BOOL)a4;
- (unsigned)addCustomFormat:(void *)a3 duringImport:(BOOL)a4;
- (unsigned)addCustomFormat:(void *)a3 withOldKey:(unsigned int)a4;
- (void)dealloc;
- (void)p_setupNamesList;
@end

@implementation TSTCustomFormatList

- (TSTCustomFormatList)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCustomFormatList init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCustomFormatList.mm"), 16, @"Don't use init for TSTCustomFormatList"}];
  return 0;
}

- (TSTCustomFormatList)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTCustomFormatList;
  result = [(TSTTableDataList *)&v4 initWithType:6 context:a3];
  if (result)
  {
    result->mNamesList = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTCustomFormatList;
  [(TSTTableDataList *)&v3 dealloc];
}

- (BOOL)supportsIDMapForType:(int)a3
{
  if (a3 == 6)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSTCustomFormatList;
  return [(TSTTableDataList *)&v6 supportsIDMapForType:?];
}

- (unsigned)addCustomFormat:(void *)a3 duringImport:(BOOL)a4
{
  v4 = a4;
  KeyForCustomFormat = TSTTableDataListGetKeyForCustomFormat(&self->super, a3);
  if (KeyForCustomFormat)
  {
    v8 = KeyForCustomFormat;
    TSTTableDataListAddReferenceForKey(&self->super.super.super.isa, KeyForCustomFormat);
  }

  else
  {
    v9 = [(TSTCustomFormatList *)self newUniqueNameFromName:TSUCustomFormat::formatName(a3) preserveSeed:v4];
    TSUCustomFormat::setFormatName(a3, v9);
    v10 = TSTTableDataListAddCustomFormat(&self->super, a3);
    v8 = v10;
    mNamesList = self->mNamesList;
    if (mNamesList)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      -[NSMutableDictionary setObject:forKey:](mNamesList, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:v10], v9);
    }
  }

  return v8;
}

- (unsigned)addCustomFormat:(void *)a3 withOldKey:(unsigned int)a4
{
  v7 = [(TSTCustomFormatList *)self customFormatForKey:*&a4];
  if (v7 && (TSUCustomFormat::customFormatIsEqual(v7, a3) & 1) != 0)
  {
    return a4;
  }

  return [(TSTCustomFormatList *)self addCustomFormat:a3 duringImport:0];
}

- (id)customFormatWrapperForKey:(unsigned int)a3
{
  v3 = [objc_alloc(MEMORY[0x277D6C2B8]) initWithCustomFormat:TSTTableDataListGetCustomFormatForKey(self, *&a3)];

  return v3;
}

- (id)allNumberKeys
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[TSTCustomFormatList count](self, "count")}];
  if ([(TSTTableDataList *)self nextID])
  {
    v4 = 0;
    do
    {
      if ([(TSTCustomFormatList *)self customFormatForKey:v4])
      {
        [v3 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v4)}];
      }

      v4 = (v4 + 1);
    }

    while (v4 < [(TSTTableDataList *)self nextID]);
  }

  return v3;
}

- (void)p_setupNamesList
{
  if (!self->mNamesList)
  {
    v3 = [(TSTCustomFormatList *)self count]<= 20 ? [(TSTCustomFormatList *)self count]: 20;
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v3];
    self->mNamesList = v4;
    if (v4)
    {
      if ([(TSTCustomFormatList *)self count]>= 1)
      {
        v5 = [(TSTTableDataList *)self nextID];
        if ((v5 - 1) >= 1)
        {
          LODWORD(v6) = v5;
          do
          {
            v6 = (v6 - 1);
            v7 = [(TSTCustomFormatList *)self customFormatForKey:v6];
            if (v7)
            {
              -[NSMutableDictionary setObject:forKey:](self->mNamesList, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:v6], TSUCustomFormat::formatName(v7));
            }
          }

          while (v6 > 1);
        }
      }
    }
  }
}

- (id)newUniqueNameFromName:(id)a3 preserveSeed:(BOOL)a4
{
  if (!a3)
  {
    a3 = [TSTBundle() localizedStringForKey:@"Custom Format" value:&stru_287D36338 table:@"TSTables"];
  }

  v16 = a3;
  [(TSTCustomFormatList *)self p_setupNamesList];
  if ([(NSMutableDictionary *)self->mNamesList objectForKey:v16])
  {
    v6 = v16;
    do
    {
      v17 = v6;
      v7 = [v6 componentsSeparatedByString:@" "];
      v8 = [objc_msgSend(v7 objectAtIndex:{objc_msgSend(v7, "count") - 1), "integerValue"}];
      if (!v8 || a4)
      {
        v13 = v17;
        v12 = @" 1";
      }

      else
      {
        v9 = v8;
        v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        [v10 addObjectsFromArray:v7];
        [v10 removeLastObject];
        v11 = [v10 componentsJoinedByString:@" "];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" %li", v9 + 1];
        v13 = v11;
      }

      v18 = [v13 stringByAppendingString:v12];
      v14 = [(NSMutableDictionary *)self->mNamesList objectForKey:v18];
      v6 = v18;
      a4 = 0;
    }

    while (v14);
  }

  else
  {
    v6 = v16;
  }

  return v6;
}

@end