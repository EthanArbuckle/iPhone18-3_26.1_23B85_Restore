@interface VUIMLUtilities
+ (int64_t)gridStyleConsideringAX:(int64_t)a3;
+ (int64_t)gridStyleForCSSStyle:(id)a3;
@end

@implementation VUIMLUtilities

+ (int64_t)gridStyleConsideringAX:(int64_t)a3
{
  if ([MEMORY[0x1E69DF678] isAXLargeEnabled:0])
  {
    v4 = 3;
    if (a3 != 8)
    {
      v4 = a3;
    }

    if (((1 << a3) & 0x40000C8) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    if (((1 << a3) & 0x80230) != 0)
    {
      v6 = 6;
    }

    else
    {
      v6 = v5;
    }

    if (a3 <= 0x1A)
    {
      return v6;
    }

    else
    {
      return a3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E69DF678] isAXSmallEnabled:0];
    v9 = 4;
    if (a3 == 26)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    if (a3 != 19)
    {
      v9 = v10;
    }

    if (a3 == 4)
    {
      v9 = 3;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return a3;
    }
  }
}

+ (int64_t)gridStyleForCSSStyle:(id)a3
{
  v3 = a3;
  if (gridStyleForCSSStyle__onceToken != -1)
  {
    +[VUIMLUtilities gridStyleForCSSStyle:];
  }

  v4 = [gridStyleForCSSStyle__sGridStyleMap objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [gridStyleForCSSStyle__sGridStyleMap objectForKeyedSubscript:v3];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

void __39__VUIMLUtilities_gridStyleForCSSStyle___block_invoke()
{
  v3[18] = *MEMORY[0x1E69E9840];
  v2[0] = @"a";
  v2[1] = @"aa";
  v3[0] = &unk_1F5E5DB90;
  v3[1] = &unk_1F5E5DBA8;
  v2[2] = @"b";
  v2[3] = @"c";
  v3[2] = &unk_1F5E5DBC0;
  v3[3] = &unk_1F5E5DBD8;
  v2[4] = @"cc";
  v2[5] = @"d";
  v3[4] = &unk_1F5E5DBF0;
  v3[5] = &unk_1F5E5DC08;
  v2[6] = @"dd";
  v2[7] = @"e";
  v3[6] = &unk_1F5E5DC20;
  v3[7] = &unk_1F5E5DC38;
  v2[8] = @"f";
  v2[9] = @"k";
  v3[8] = &unk_1F5E5DC50;
  v3[9] = &unk_1F5E5DC68;
  v2[10] = @"oc";
  v2[11] = @"rc";
  v3[10] = &unk_1F5E5DC80;
  v3[11] = &unk_1F5E5DC98;
  v2[12] = @"tm";
  v2[13] = @"sl";
  v3[12] = &unk_1F5E5DCB0;
  v3[13] = &unk_1F5E5DCC8;
  v2[14] = @"full";
  v2[15] = @"edgeToEdge";
  v3[14] = &unk_1F5E5DCE0;
  v3[15] = &unk_1F5E5DCF8;
  v2[16] = @"split";
  v2[17] = @"showcase";
  v3[16] = &unk_1F5E5DD10;
  v3[17] = &unk_1F5E5DD28;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:18];
  v1 = gridStyleForCSSStyle__sGridStyleMap;
  gridStyleForCSSStyle__sGridStyleMap = v0;
}

@end