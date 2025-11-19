@interface TSTCellStyle
+ (id)nonEmphasisCellProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)regionStringForTableArea:(unsigned int)a3;
+ (id)styleIDForPreset:(unint64_t)a3 andTableArea:(unsigned int)a4;
+ (id)textStyleIDForPreset:(unint64_t)a3 andTableArea:(unsigned int)a4;
+ (void)initDefaultPropertyMap:(id)a3 forTableArea:(unsigned int)a4 presetIndex:(unint64_t)a5 colors:(id)a6 alternate:(int)a7;
+ (void)p_initBodyRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
+ (void)p_initFooterRowRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
+ (void)p_initHeaderColumnRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
+ (void)p_initHeaderRowRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6;
- (void)dealloc;
- (void)validate;
@end

@implementation TSTCellStyle

+ (id)properties
{
  result = +[TSTCellStyle properties]::sProperties;
  if (!+[TSTCellStyle properties]::sProperties)
  {
    objc_sync_enter(a1);
    if (!+[TSTCellStyle properties]::sProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:896, 897, 898, 899, 900, 901, 902, 903, 904, 0];
      __dmb(0xBu);
      +[TSTCellStyle properties]::sProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle properties]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 67, @"Couldn't initialize lazy variable %s", "sProperties"}];
      }
    }

    objc_sync_exit(a1);
    return +[TSTCellStyle properties]::sProperties;
  }

  return result;
}

+ (id)propertiesAllowingNSNull
{
  result = +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties;
  if (!+[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties)
  {
    objc_sync_enter(a1);
    if (!+[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:898, 899, 900, 901, 902, 0];
      __dmb(0xBu);
      +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle propertiesAllowingNSNull]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 83, @"Couldn't initialize lazy variable %s", "s_nullProperties"}];
      }
    }

    objc_sync_exit(a1);
    return +[TSTCellStyle propertiesAllowingNSNull]::s_nullProperties;
  }

  return result;
}

+ (id)nonEmphasisCellProperties
{
  result = +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties;
  if (!+[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties)
  {
    objc_sync_enter(a1);
    if (!+[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:896, 903, 904, 0];
      __dmb(0xBu);
      +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle nonEmphasisCellProperties]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 98, @"Couldn't initialize lazy variable %s", "s_nonEmphasisProperties"}];
      }
    }

    objc_sync_exit(a1);
    return +[TSTCellStyle nonEmphasisCellProperties]::s_nonEmphasisProperties;
  }

  return result;
}

+ (id)regionStringForTableArea:(unsigned int)a3
{
  if (a3 < 6)
  {
    return off_279D4ABF0[a3];
  }

  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle regionStringForTableArea:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 129, @"Unexpected value for region."}];
  return 0;
}

+ (id)styleIDForPreset:(unint64_t)a3 andTableArea:(unsigned int)a4
{
  v5 = [a1 regionStringForTableArea:*&a4];

  return String(@"tableCell", a3, v5);
}

+ (id)textStyleIDForPreset:(unint64_t)a3 andTableArea:(unsigned int)a4
{
  v5 = TSTTextStylePrefix;
  v6 = [a1 regionStringForTableArea:*&a4];

  return String(v5, a3, v6);
}

+ (void)p_initBodyRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  if (a6 <= 6 && ((1 << a6) & 0x54) != 0)
  {
    v7 = [TSDColorFill blackColor:a3];
  }

  else
  {
    v7 = [TSDColorFill whiteColor:a3];
  }

  [a3 setObject:v7 forProperty:898];
}

+ (void)p_initHeaderRowRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  if (a5)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [a5 objectAtIndex:s_TableStyleFills[4 * a4 + 1]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:a3 green:a4 blue:0 alpha:*&a6, 0.921500027, 0.921500027, 0.921500027, 1.0];
  }

  [a3 setObject:v7 forProperty:898];
}

+ (void)p_initHeaderColumnRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  if (a5)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [a5 objectAtIndex:s_TableStyleFills[4 * a4 + 2]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:a3 green:a4 blue:0 alpha:*&a6, 0.921500027, 0.921500027, 0.921500027, 1.0];
  }

  [a3 setObject:v7 forProperty:898];
}

+ (void)p_initFooterRowRegionPropertyMap:(id)a3 presetIndex:(unint64_t)a4 colors:(id)a5 alternate:(int)a6
{
  if (a5)
  {
    v7 = +[TSDColorFill colorWithColor:](TSDColorFill, "colorWithColor:", [a5 objectAtIndex:s_TableStyleFills[4 * a4 + 3]]);
  }

  else
  {
    v7 = [TSDColorFill colorWithRed:a3 green:a4 blue:0 alpha:*&a6, 235.0, 235.0, 235.0, 1.0];
  }

  [a3 setObject:v7 forProperty:898];
}

+ (void)initDefaultPropertyMap:(id)a3 forTableArea:(unsigned int)a4 presetIndex:(unint64_t)a5 colors:(id)a6 alternate:(int)a7
{
  if (a4 > 2)
  {
    if (a4 - 4 < 2)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle initDefaultPropertyMap:forTableArea:presetIndex:colors:alternate:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];
      v10 = @"there is no style for the corner cells";
      v11 = v9;
      v12 = v7;
      v13 = v8;
      v14 = 258;
LABEL_18:

      [v12 handleFailureInFunction:v13 file:v11 lineNumber:v14 description:v10];
      return;
    }

    if (a4 != 3)
    {
LABEL_17:
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTCellStyle initDefaultPropertyMap:forTableArea:presetIndex:colors:alternate:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];
      v10 = @"Unexpected value for region.";
      v11 = v17;
      v12 = v15;
      v13 = v16;
      v14 = 261;
      goto LABEL_18;
    }

    [a1 p_initFooterRowRegionPropertyMap:a3 presetIndex:a5 colors:a6 alternate:*&a7];
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {

        [a1 p_initHeaderColumnRegionPropertyMap:a3 presetIndex:a5 colors:a6 alternate:*&a7];
        return;
      }

      goto LABEL_17;
    }

    [a1 p_initHeaderRowRegionPropertyMap:a3 presetIndex:a5 colors:a6 alternate:*&a7];
  }

  else
  {

    [a1 p_initBodyRegionPropertyMap:a3 presetIndex:a5 colors:a6 alternate:*&a7];
  }
}

- (void)validate
{
  if (![(TSSStyle *)self stylesheet])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellStyle validate]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"), 373, @"orphaned cell style %@", self}];
  }

  if (![(TSSStylesheet *)[(TSSStyle *)self stylesheet] containsStyle:self]|| (v5 = [(TSSStyle *)self stylesheet], v5 != [(TSSStyle *)self stylesheet]))
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellStyle validate]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStyle.mm"];

    [v6 handleFailureInFunction:v7 file:v8 lineNumber:375 description:@"Cell style not in its stylesheet"];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTCellStyle;
  [(TSSStyle *)&v2 dealloc];
}

@end