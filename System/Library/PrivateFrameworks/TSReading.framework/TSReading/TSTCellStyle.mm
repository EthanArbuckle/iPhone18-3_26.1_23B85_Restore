@interface TSTCellStyle
+ (id)nonEmphasisCellProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)regionStringForTableArea:(unsigned int)area;
+ (id)styleIDForPreset:(unint64_t)preset andTableArea:(unsigned int)area;
+ (id)textStyleIDForPreset:(unint64_t)preset andTableArea:(unsigned int)area;
+ (void)initDefaultPropertyMap:(id)map forTableArea:(unsigned int)area presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (void)p_initBodyRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (void)p_initFooterRowRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate;
- (void)dealloc;
- (void)validate;
@end

@implementation TSTCellStyle

+ (id)properties
{
  result = +[TSTCellStyle properties]::sProperties;
  if (!+[TSTCellStyle properties]::sProperties)
  {
    objc_sync_enter(self);
    if (!+[TSTCellStyle properties]::sProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:896, 897, 898, 899, 900, 901, 902, 903, 904, 0];
      __dmb(0xBu);
      +[TSTCellStyle properties]::sProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle properties]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 67, @"Couldn't initialize lazy variable %s", "sProperties"}];
      }
    }

    objc_sync_exit(self);
    return +[TSTCellStyle properties]::sProperties;
  }

  return result;
}

+ (id)propertiesAllowingNSNull
{
  result = +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties;
  if (!+[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties)
  {
    objc_sync_enter(self);
    if (!+[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:898, 899, 900, 901, 902, 0];
      __dmb(0xBu);
      +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle propertiesAllowingNSNull]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 83, @"Couldn't initialize lazy variable %s", "s_nullProperties"}];
      }
    }

    objc_sync_exit(self);
    return +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties;
  }

  return result;
}

+ (id)nonEmphasisCellProperties
{
  result = +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties;
  if (!+[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties)
  {
    objc_sync_enter(self);
    if (!+[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:896, 903, 904, 0];
      __dmb(0xBu);
      +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle nonEmphasisCellProperties]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 98, @"Couldn't initialize lazy variable %s", "s_nonEmphasisProperties"}];
      }
    }

    objc_sync_exit(self);
    return +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties;
  }

  return result;
}

+ (id)regionStringForTableArea:(unsigned int)area
{
  if (area < 6)
  {
    return off_279D4ABF0[area];
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle regionStringForTableArea:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 129, @"Unexpected value for region."}];
  return 0;
}

+ (id)styleIDForPreset:(unint64_t)preset andTableArea:(unsigned int)area
{
  v5 = [self regionStringForTableArea:*&area];

  return String(@"tableCell", preset, v5);
}

+ (id)textStyleIDForPreset:(unint64_t)preset andTableArea:(unsigned int)area
{
  v5 = TSTTextStylePrefix;
  v6 = [self regionStringForTableArea:*&area];

  return String(v5, preset, v6);
}

+ (void)p_initBodyRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  if (alternate <= 6 && ((1 << alternate) & 0x54) != 0)
  {
    v7 = [TSDColorFill blackColor:map];
  }

  else
  {
    v7 = [TSDColorFill whiteColor:map];
  }

  [map setObject:v7 forProperty:898];
}

+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  if (colors)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [colors objectAtIndex:s_TableStyleFills[4 * index + 1]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:map green:index blue:0 alpha:*&alternate, 0.921500027, 0.921500027, 0.921500027, 1.0];
  }

  [map setObject:v7 forProperty:898];
}

+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  if (colors)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [colors objectAtIndex:s_TableStyleFills[4 * index + 2]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:map green:index blue:0 alpha:*&alternate, 0.921500027, 0.921500027, 0.921500027, 1.0];
  }

  [map setObject:v7 forProperty:898];
}

+ (void)p_initFooterRowRegionPropertyMap:(id)map presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  if (colors)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [colors objectAtIndex:s_TableStyleFills[4 * index + 3]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:map green:index blue:0 alpha:*&alternate, 235.0, 235.0, 235.0, 1.0];
  }

  [map setObject:v7 forProperty:898];
}

+ (void)initDefaultPropertyMap:(id)map forTableArea:(unsigned int)area presetIndex:(unint64_t)index colors:(id)colors alternate:(int)alternate
{
  if (area > 2)
  {
    if (area - 4 < 2)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle initDefaultPropertyMap:forTableArea:presetIndex:colors:alternate:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];
      v10 = @"there is no style for the corner cells";
      v11 = v9;
      v12 = currentHandler;
      v13 = v8;
      v14 = 258;
LABEL_18:

      [v12 handleFailureInFunction:v13 file:v11 lineNumber:v14 description:v10];
      return;
    }

    if (area != 3)
    {
LABEL_17:
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle initDefaultPropertyMap:forTableArea:presetIndex:colors:alternate:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];
      v10 = @"Unexpected value for region.";
      v11 = v17;
      v12 = currentHandler2;
      v13 = v16;
      v14 = 261;
      goto LABEL_18;
    }

    [self p_initFooterRowRegionPropertyMap:map presetIndex:index colors:colors alternate:*&alternate];
  }

  else if (area)
  {
    if (area != 1)
    {
      if (area == 2)
      {

        [self p_initHeaderColumnRegionPropertyMap:map presetIndex:index colors:colors alternate:*&alternate];
        return;
      }

      goto LABEL_17;
    }

    [self p_initHeaderRowRegionPropertyMap:map presetIndex:index colors:colors alternate:*&alternate];
  }

  else
  {

    [self p_initBodyRegionPropertyMap:map presetIndex:index colors:colors alternate:*&alternate];
  }
}

- (void)validate
{
  if (![(TSSStyle *)self stylesheet])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellStyle validate]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 373, @"orphaned cell style %@", self}];
  }

  if (![(TSSStylesheet *)[(TSSStyle *)self stylesheet] containsStyle:self]|| (v5 = [(TSSStyle *)self stylesheet], v5 != [(TSSStyle *)self stylesheet]))
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellStyle validate]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];

    [currentHandler2 handleFailureInFunction:v7 file:v8 lineNumber:375 description:@"Cell style not in its stylesheet"];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTCellStyle;
  [(TSSStyle *)&v2 dealloc];
}

@end