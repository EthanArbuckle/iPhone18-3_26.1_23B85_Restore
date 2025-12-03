@interface SFUIShareSheetActivityCellSpec
+ (double)appIconWidth;
+ (double)peopleIconWidth;
+ (double)transportIconWidth;
+ (id)subtitleLabelColorForIdiom:(int64_t)idiom;
+ (id)titleLabelFontTextStyleForIdiom:(int64_t)idiom;
@end

@implementation SFUIShareSheetActivityCellSpec

+ (id)titleLabelFontTextStyleForIdiom:(int64_t)idiom
{
  v3 = MEMORY[0x1E69DDD28];
  if (idiom != 6)
  {
    v3 = MEMORY[0x1E69DDD08];
  }

  return *v3;
}

+ (double)peopleIconWidth
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    return 52.0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  if (v6 >= 414.0)
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    return 52.0;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  if (v6 >= 414.0)
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 20.0;
  if (userInterfaceIdiom == 6)
  {
    return 24.0;
  }

  return result;
}

+ (id)subtitleLabelColorForIdiom:(int64_t)idiom
{
  if (idiom == 6)
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