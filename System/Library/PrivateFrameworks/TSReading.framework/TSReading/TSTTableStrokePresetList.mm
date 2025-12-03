@interface TSTTableStrokePresetList
+ (id)init;
+ (id)strokePresetListForDefaultPropertyMapForTablePresetIndex:(unint64_t)index colors:(id)colors;
+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke;
+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (BOOL)isEqual:(id)equal;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (void)dealloc;
- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index;
- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index;
@end

@implementation TSTTableStrokePresetList

+ (id)init
{
  v3.receiver = self;
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

- (BOOL)isEqual:(id)equal
{
  v9 = *(equal + 1);
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
  v13 = equal + 16;
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

- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index
{
  if (self->mCount <= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList setStrokePreset:atIndex:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"];

    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:109 description:@"preset index higher than count"];
  }

  else
  {
    mPresets = self->mPresets;
    v7 = self->mPresets[index];
    presetCopy = preset;
    if (v7)
    {
    }

    mPresets[index] = preset;
  }
}

+ (id)strokePresetListForDefaultPropertyMapForTablePresetIndex:(unint64_t)index colors:(id)colors
{
  if (colors)
  {
    v6 = s_TSTStrokePresetColors[index];
    v7 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [colors objectAtIndex:v6], 1.0);
    v8 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [colors objectAtIndex:v6], 1.0);
    blackColor = [colors objectAtIndex:v6];
  }

  else
  {
    v7 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [MEMORY[0x277D6C2A8] blackColor], 1.0);
    v8 = +[TSDStroke strokeWithColor:width:](TSDStroke, "strokeWithColor:width:", [MEMORY[0x277D6C2A8] blackColor], 1.0);
    blackColor = [MEMORY[0x277D6C2A8] blackColor];
  }

  v10 = [TSDStroke strokeWithColor:blackColor width:1.0];

  return [self strokePresetListForDefaultPropertyMapWithHorizontalStroke:v7 verticalStroke:v8 exteriorStroke:v10];
}

+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  v8 = objc_alloc_init(TSTTableStrokePresetList);
  v8->mCount = 15;
  v9 = [(TSTTableStrokePresetList *)v8 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [[TSTTableStrokePresetData alloc] initWithMask:sHardCodedMasks[i] horizontalStroke:stroke verticalStroke:verticalStroke exteriorStroke:exteriorStroke];
      [(TSTTableStrokePresetList *)v8 setStrokePreset:v12 atIndex:i];
    }
  }

  return v8;
}

+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke
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
        thinStrokeCopy = stroke;
      }

      else
      {
        thinStrokeCopy = thinStroke;
      }

      v11 = [[TSTTableStrokePresetData alloc] initWithMask:sHardCodedMasks[i] horizontalStroke:thinStrokeCopy verticalStroke:thinStrokeCopy exteriorStroke:thinStrokeCopy];
      [(TSTTableStrokePresetList *)v6 setStrokePreset:v11 atIndex:i];
    }
  }

  return v6;
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList horizontalStrokeForStrokePreset:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 225, @"illegal preset index"}];
  }

  v7 = self->mPresets[preset];

  return [(TSTTableStrokePresetData *)v7 horizontalStroke];
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList verticalStrokeForStrokePreset:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 234, @"illegal preset index"}];
  }

  v7 = self->mPresets[preset];

  return [(TSTTableStrokePresetData *)v7 verticalStroke];
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList exteriorStrokeForStrokePreset:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 244, @"illegal preset index"}];
  }

  v7 = self->mPresets[preset];

  return [(TSTTableStrokePresetData *)v7 exteriorStroke];
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStrokePresetList maskForStrokePreset:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokePresetList.mm"), 253, @"illegal preset index"}];
  }

  v7 = self->mPresets[preset];

  return [(TSTTableStrokePresetData *)v7 mask];
}

- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index
{
  v6 = -[TSTTableStrokePresetData initWithMask:horizontalStroke:verticalStroke:exteriorStroke:]([TSTTableStrokePresetData alloc], "initWithMask:horizontalStroke:verticalStroke:exteriorStroke:", [-[TSTTableStrokePresetList presetAtIndex:](self presetAtIndex:{index), "mask"}], stroke, stroke, stroke);
  [(TSTTableStrokePresetList *)self setStrokePreset:v6 atIndex:index];
}

@end