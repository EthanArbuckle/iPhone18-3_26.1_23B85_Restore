@interface TSTTableStrokePresetList
+ (id)init;
+ (id)strokePresetListForDefaultPropertyMapForTablePresetIndex:(unint64_t)a3 colors:(id)a4;
+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)a3 andThinStroke:(id)a4;
+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)a3 verticalStroke:(id)a4 exteriorStroke:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)exteriorStrokeForStrokePreset:(unint64_t)a3;
- (id)horizontalStrokeForStrokePreset:(unint64_t)a3;
- (id)verticalStrokeForStrokePreset:(unint64_t)a3;
- (unsigned)maskForStrokePreset:(unint64_t)a3;
- (void)dealloc;
- (void)setStroke:(id)a3 forPresetIndex:(unint64_t)a4;
- (void)setStrokePreset:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation TSTTableStrokePresetList

+ (id)init
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSTTableStrokePresetList;
  return objc_msgSendSuper2(&v3, sel_init);
}

- (void)dealloc
{
  if (self->mCount)
  {
    v3 = 0;
    do
    {
    }

    while (v3 < self->mCount);
  }

  v4.receiver = self;
  v4.super_class = TSTTableStrokePresetList;
  [(TSTTableStrokePresetList *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v9 = *(a3 + 1);
  if (v9 != self->mCount)
  {
    return 0;
  }

  if (!v9)
  {
    return 1;
  }

  v15 = v6;
  v16 = v5;
  v17 = v4;
  v18 = v3;
  v19 = v7;
  v20 = v8;
  v11 = 0;
  mPresets = self->mPresets;
  v13 = a3 + 16;
  do
  {
    result = [(TSTTableStrokePresetData *)mPresets[v11] isEqual:*&v13[8 * v11], v15, v16, v17, v18, v19, v20];
    if (!result)
    {
      break;
    }

    ++v11;
  }

  while (v11 < self->mCount);
  return result;
}

- (void)setStrokePreset:(id)a3 atIndex:(unint64_t)a4
{
  if (self->mCount <= a4)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList setStrokePreset:atIndex:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"];

    [v9 handleFailureInFunction:v10 file:v11 lineNumber:109 description:@"preset index higher than count"];
  }

  else
  {
    mPresets = self->mPresets;
    v7 = self->mPresets[a4];
    v8 = a3;
    if (v7)
    {
    }

    mPresets[a4] = a3;
  }
}

+ (id)strokePresetListForDefaultPropertyMapForTablePresetIndex:(unint64_t)a3 colors:(id)a4
{
  if (a4)
  {
    v6 = s_TSTStrokePresetColors[a3];
    v7 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [a4 objectAtIndex:v6], 1.0);
    v8 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [a4 objectAtIndex:v6], 1.0);
    v9 = [a4 objectAtIndex:v6];
  }

  else
  {
    v7 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [MEMORY[0x277D6C2A8] blackColor], 1.0);
    v8 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [MEMORY[0x277D6C2A8] blackColor], 1.0);
    v9 = [MEMORY[0x277D6C2A8] blackColor];
  }

  v10 = [TSDStroke strokeWithColor:v9 width:1.0];

  return [a1 strokePresetListForDefaultPropertyMapWithHorizontalStroke:v7 verticalStroke:v8 exteriorStroke:v10];
}

+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)a3 verticalStroke:(id)a4 exteriorStroke:(id)a5
{
  v8 = objc_alloc_init(TSTTableStrokePresetList);
  v8->mCount = 15;
  v9 = [(TSTTableStrokePresetList *)v8 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [[TSTTableStrokePresetData alloc] initWithMask:sHardCodedMasks[i] horizontalStroke:a3 verticalStroke:a4 exteriorStroke:a5];
      [(TSTTableStrokePresetList *)v8 setStrokePreset:v12 atIndex:i];
    }
  }

  return v8;
}

+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)a3 andThinStroke:(id)a4
{
  v6 = objc_alloc_init(TSTTableStrokePresetList);
  v6->mCount = 15;
  v7 = [(TSTTableStrokePresetList *)v6 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      if (sUseFatStroke[i])
      {
        v10 = a3;
      }

      else
      {
        v10 = a4;
      }

      v11 = [[TSTTableStrokePresetData alloc] initWithMask:sHardCodedMasks[i] horizontalStroke:v10 verticalStroke:v10 exteriorStroke:v10];
      [(TSTTableStrokePresetList *)v6 setStrokePreset:v11 atIndex:i];
    }
  }

  return v6;
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)a3
{
  if (self->mCount <= a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList horizontalStrokeForStrokePreset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 225, @"illegal preset index"}];
  }

  v7 = self->mPresets[a3];

  return [(TSTTableStrokePresetData *)v7 horizontalStroke];
}

- (id)verticalStrokeForStrokePreset:(unint64_t)a3
{
  if (self->mCount <= a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList verticalStrokeForStrokePreset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 234, @"illegal preset index"}];
  }

  v7 = self->mPresets[a3];

  return [(TSTTableStrokePresetData *)v7 verticalStroke];
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)a3
{
  if (self->mCount <= a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList exteriorStrokeForStrokePreset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 244, @"illegal preset index"}];
  }

  v7 = self->mPresets[a3];

  return [(TSTTableStrokePresetData *)v7 exteriorStroke];
}

- (unsigned)maskForStrokePreset:(unint64_t)a3
{
  if (self->mCount <= a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList maskForStrokePreset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 253, @"illegal preset index"}];
  }

  v7 = self->mPresets[a3];

  return [(TSTTableStrokePresetData *)v7 mask];
}

- (void)setStroke:(id)a3 forPresetIndex:(unint64_t)a4
{
  v6 = -[TSTTableStrokePresetData initWithMask:horizontalStroke:verticalStroke:exteriorStroke:]([TSTTableStrokePresetData alloc], "initWithMask:horizontalStroke:verticalStroke:exteriorStroke:", [-[TSTTableStrokePresetList presetAtIndex:](self presetAtIndex:{a4), "mask"}], a3, a3, a3);
  [(TSTTableStrokePresetList *)self setStrokePreset:v6 atIndex:a4];
}

@end