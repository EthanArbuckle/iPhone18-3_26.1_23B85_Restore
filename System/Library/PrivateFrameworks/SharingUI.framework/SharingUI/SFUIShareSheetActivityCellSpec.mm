@interface SFUIShareSheetActivityCellSpec
+ (double)appIconWidth;
+ (double)peopleIconWidth;
+ (double)transportIconWidth;
+ (id)subtitleLabelColorForIdiom:(int64_t)a3;
+ (id)titleLabelFontTextStyleForIdiom:(int64_t)a3;
@end

@implementation SFUIShareSheetActivityCellSpec

+ (id)titleLabelFontTextStyleForIdiom:(int64_t)a3
{
  v3 = MEMORY[0x1E69DDD28];
  if (a3 != 6)
  {
    v3 = MEMORY[0x1E69DDD08];
  }

  return *v3;
}

+ (double)peopleIconWidth
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 52.0;
  }

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 _referenceBounds];
  if (v6 >= 414.0)
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v4 = 62.0;
    }

    else
    {
      v4 = 66.0;
    }
  }

  else
  {
    v4 = 62.0;
  }

  return v4;
}

+ (double)appIconWidth
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 52.0;
  }

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 _referenceBounds];
  if (v6 >= 414.0)
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v4 = 60.0;
    }

    else
    {
      v4 = 64.0;
    }
  }

  else
  {
    v4 = 60.0;
  }

  return v4;
}

+ (double)transportIconWidth
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 20.0;
  if (v3 == 6)
  {
    return 24.0;
  }

  return result;
}

+ (id)subtitleLabelColorForIdiom:(int64_t)a3
{
  if (a3 == 6)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v3 = ;

  return v3;
}

@end