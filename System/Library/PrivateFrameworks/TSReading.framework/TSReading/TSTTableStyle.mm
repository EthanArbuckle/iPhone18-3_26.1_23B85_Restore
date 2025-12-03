@interface TSTTableStyle
+ (id)nonEmphasisTableProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initDefaultPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors;
+ (void)p_populateParagraphStyle:(id)style;
- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)strokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (void)dealloc;
- (void)validate;
@end

@implementation TSTTableStyle

+ (id)properties
{
  result = +[TSTTableStyle properties]::sProperties;
  if (!+[TSTTableStyle properties]::sProperties)
  {
    result = [[TSSPropertySet alloc] initWithProperties:768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 799, 800, 801, 802, 803, 804, 805, 806, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 0];
    +[TSTTableStyle properties]::sProperties = result;
  }

  return result;
}

+ (id)propertiesAllowingNSNull
{
  result = +[TSTTableStyle propertiesAllowingNSNull]::s_nullProperties;
  if (!+[TSTTableStyle propertiesAllowingNSNull]::s_nullProperties)
  {
    objc_sync_enter(self);
    if (!+[TSTTableStyle propertiesAllowingNSNull]::s_nullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 0];
      __dmb(0xBu);
      +[TSTTableStyle propertiesAllowingNSNull]::s_nullProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyle propertiesAllowingNSNull]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyle.mm"), 164, @"Couldn't initialize lazy variable %s", "s_nullProperties"}];
      }
    }

    objc_sync_exit(self);
    return +[TSTTableStyle propertiesAllowingNSNull]::s_nullProperties;
  }

  return result;
}

+ (id)nonEmphasisTableProperties
{
  result = +[TSTTableStyle nonEmphasisTableProperties]::s_nonEmphasisProperties;
  if (!+[TSTTableStyle nonEmphasisTableProperties]::s_nonEmphasisProperties)
  {
    objc_sync_enter(self);
    if (!+[TSTTableStyle nonEmphasisTableProperties]::s_nonEmphasisProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 0];
      __dmb(0xBu);
      +[TSTTableStyle nonEmphasisTableProperties]::s_nonEmphasisProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableStyle nonEmphasisTableProperties]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyle.mm"), 232, @"Couldn't initialize lazy variable %s", "s_nonEmphasisProperties"}];
      }
    }

    objc_sync_exit(self);
    return +[TSTTableStyle nonEmphasisTableProperties]::s_nonEmphasisProperties;
  }

  return result;
}

+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors
{
  v6 = [TSTTableStrokePresetList strokePresetListForDefaultPropertyMapForTablePresetIndex:index colors:colors];

  [map setObject:v6 forProperty:787];
}

+ (void)initDefaultPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  p_setStrokeColors(map, index, colors);
  [map setIntValue:1 forProperty:799];
  [map setIntValue:0 forProperty:768];
  [map setIntValue:0 forProperty:769];
  [map setIntValue:0 forProperty:798];
  v9 = [TSTTableStrokePresetList strokePresetListForDefaultPropertyMapForTablePresetIndex:index colors:colors];

  [map setObject:v9 forProperty:787];
}

+ (void)p_populateParagraphStyle:(id)style
{
  v4 = +[TSWPParagraphStyle properties];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TSTTableStyle_p_populateParagraphStyle___block_invoke;
  v5[3] = &unk_279D47F10;
  v5[4] = style;
  [v4 enumeratePropertiesUsingBlock:v5];
}

uint64_t __42__TSTTableStyle_p_populateParagraphStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) definesProperty:a2];
  if ((result & 1) == 0)
  {
    v5 = [(TSSStyle *)TSWPParagraphStyle boxedDefaultValueForProperty:a2];
    v6 = *(a1 + 32);

    return [v6 setBoxedValue:v5 forProperty:a2];
  }

  return result;
}

- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSTTableStyle;
  return [(TSSStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTTableStyle;
  [(TSSStyle *)&v2 dealloc];
}

- (id)strokeForStrokePreset:(unint64_t)preset
{
  v4 = [(TSSStyle *)self valueForProperty:787];

  return [v4 horizontalStrokeForStrokePreset:preset];
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  v4 = [(TSSStyle *)self valueForProperty:787];

  return [v4 horizontalStrokeForStrokePreset:preset];
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  v4 = [(TSSStyle *)self valueForProperty:787];

  return [v4 verticalStrokeForStrokePreset:preset];
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  v4 = [(TSSStyle *)self valueForProperty:787];

  return [v4 exteriorStrokeForStrokePreset:preset];
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  v4 = [(TSSStyle *)self valueForProperty:787];

  return [v4 maskForStrokePreset:preset];
}

- (void)validate
{
  if (![(TSSStyle *)self stylesheet])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyle validate]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyle.mm"), 571, @"orphaned table style %@", self}];
  }

  if (![(TSSStylesheet *)[(TSSStyle *)self stylesheet] containsStyle:self]|| (v5 = [(TSSStyle *)self stylesheet], v5 != [(TSSStyle *)self stylesheet]))
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableStyle validate]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStyle.mm"];

    [currentHandler2 handleFailureInFunction:v7 file:v8 lineNumber:574 description:@"Table style not in its stylesheet"];
  }
}

@end