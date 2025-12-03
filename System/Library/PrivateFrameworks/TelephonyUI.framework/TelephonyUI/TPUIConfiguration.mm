@interface TPUIConfiguration
+ (double)defaultHeight;
+ (id)defaultFont;
+ (unint64_t)inCallBottomBarSpacing;
+ (unint64_t)pipStatusBarPadding;
+ (unint64_t)screenSize;
@end

@implementation TPUIConfiguration

+ (id)defaultFont
{
  if (defaultFont_onceToken != -1)
  {
    +[TPUIConfiguration defaultFont];
  }

  v3 = MEMORY[0x1E69DB878];
  v4 = *&defaultFont_defaultFontSize;
  v5 = *MEMORY[0x1E69DB978];

  return [v3 systemFontOfSize:v4 weight:v5];
}

void __32__TPUIConfiguration_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;

  v4 = v3 > 2207 || v3 == 1334;
  v5 = 13.0;
  if (v4)
  {
    v5 = 16.0;
  }

  defaultFont_defaultFontSize = *&v5;
}

+ (unint64_t)screenSize
{
  if (screenSize_onceToken != -1)
  {
    +[TPUIConfiguration screenSize];
  }

  return screenSize_screenSize;
}

void __31__TPUIConfiguration_screenSize__block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 5 || _os_feature_enabled_impl() && ([MEMORY[0x1E69DC938] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, v3 == 1))
  {
    screenSize_screenSize = 0;
    goto LABEL_53;
  }

  v4 = [MEMORY[0x1E6979328] mainDisplay];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  v11 = MGGetProductType();
  if (v10 != 1136)
  {
    if (v11 <= 2940697644)
    {
      if (v11 <= 1781728946)
      {
        if (v11 <= 851437780)
        {
          if (v11 != 133314240)
          {
            v13 = 574536383;
            goto LABEL_26;
          }

          goto LABEL_36;
        }

        if (v11 != 851437781)
        {
          if (v11 != 1169082144)
          {
            goto LABEL_56;
          }

LABEL_46:
          v14 = v10 == 2532;
LABEL_47:
          v12 = 9;
          if (v14)
          {
            v12 = 12;
          }

          goto LABEL_49;
        }

LABEL_36:
        v14 = v10 == 2556;
        goto LABEL_47;
      }

      if (v11 > 2688879998)
      {
        if (v11 == 2688879999)
        {
LABEL_37:
          v15 = v10 == 2796;
          goto LABEL_38;
        }

        if (v11 != 2793418701)
        {
          goto LABEL_56;
        }

        goto LABEL_36;
      }

      if (v11 == 1781728947)
      {
LABEL_87:
        v12 = 12;
        goto LABEL_49;
      }

      if (v11 == 1872992317)
      {
        v14 = v10 == 2736;
        goto LABEL_47;
      }

LABEL_56:
      if (v10 > 2223)
      {
        if (v10 <= 2435)
        {
          if (v10 > 2359)
          {
            if (v10 != 2360 && v10 != 2388)
            {
              goto LABEL_50;
            }

            v12 = 8;
            goto LABEL_49;
          }

          if (v10 == 2224)
          {
            v12 = 3;
            goto LABEL_49;
          }

          if (v10 != 2272)
          {
            goto LABEL_50;
          }

          goto LABEL_9;
        }

        if (v10 > 2687)
        {
          if (v10 != 2688)
          {
            if (v10 == 2732)
            {
              v12 = 7;
              goto LABEL_49;
            }

            if (v10 != 2778)
            {
              goto LABEL_50;
            }

            goto LABEL_33;
          }

LABEL_81:
          v12 = 5;
          goto LABEL_49;
        }

        if (v10 != 2436)
        {
          if (v10 != 2532)
          {
            goto LABEL_50;
          }

          goto LABEL_87;
        }

LABEL_88:
        v12 = 4;
        goto LABEL_49;
      }

      v12 = 2;
      if (v10 > 2000)
      {
        if (v10 > 2078)
        {
          if (v10 == 2079)
          {
            v12 = 9;
          }

          else
          {
            if (v10 != 2208)
            {
              goto LABEL_50;
            }

            v12 = 6;
          }

          goto LABEL_49;
        }

        if (v10 != 2001)
        {
          if (v10 != 2048)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (v10 > 1623)
        {
          if (v10 != 1624)
          {
            if (v10 != 1792)
            {
              goto LABEL_50;
            }

            goto LABEL_81;
          }

          goto LABEL_88;
        }

        if (v10 == 1024)
        {
          goto LABEL_49;
        }

        if (v10 != 1334)
        {
          goto LABEL_50;
        }
      }

      v12 = 1;
      goto LABEL_49;
    }

    if (v11 <= 3591055298)
    {
      if (v11 > 3001488777)
      {
        if (v11 == 3001488778)
        {
          goto LABEL_46;
        }

        if (v11 == 3048527336)
        {
LABEL_33:
          v12 = 14;
          goto LABEL_49;
        }

        goto LABEL_56;
      }

      if (v11 == 2940697645)
      {
        goto LABEL_36;
      }

      v13 = 2941181571;
LABEL_26:
      if (v11 != v13)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    if (v11 > 3885279869)
    {
      if (v11 != 4201643249)
      {
        if (v11 == 3885279870)
        {
          v12 = 9;
          if (v10 == 2436)
          {
            v12 = 10;
          }

          goto LABEL_49;
        }

        goto LABEL_56;
      }

      v15 = v10 == 2778;
    }

    else
    {
      if (v11 != 3591055299)
      {
        v13 = 3825599860;
        goto LABEL_26;
      }

      v15 = v10 == 2868;
    }

LABEL_38:
    v12 = 14;
    if (!v15)
    {
      v12 = 15;
    }

    goto LABEL_49;
  }

LABEL_9:
  v12 = 0;
LABEL_49:
  screenSize_screenSize = v12;
LABEL_50:
  v16 = TPDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = screenSize_screenSize;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(&dword_1B4894000, v16, OS_LOG_TYPE_DEFAULT, "Determined screen size to be %ld for screenHeight: %d", &v18, 0x12u);
  }

LABEL_53:
  v17 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)inCallBottomBarSpacing
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TPUIConfiguration_inCallBottomBarSpacing__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (inCallBottomBarSpacing_onceToken != -1)
  {
    dispatch_once(&inCallBottomBarSpacing_onceToken, block);
  }

  return inCallBottomBarSpacing_spacing;
}

unint64_t __43__TPUIConfiguration_inCallBottomBarSpacing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 0xF)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_1B48EBA98[result];
  }

  inCallBottomBarSpacing_spacing = v2;
  return result;
}

+ (unint64_t)pipStatusBarPadding
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__TPUIConfiguration_pipStatusBarPadding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (pipStatusBarPadding_onceToken != -1)
  {
    dispatch_once(&pipStatusBarPadding_onceToken, block);
  }

  return *&pipStatusBarPadding_padding;
}

uint64_t __40__TPUIConfiguration_pipStatusBarPadding__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  v2 = 1.0;
  if ((result - 1) <= 0xE)
  {
    v2 = dbl_1B48EBB18[result - 1];
  }

  pipStatusBarPadding_padding = *&v2;
  return result;
}

+ (double)defaultHeight
{
  v2 = +[TPUIConfiguration screenSize]- 10;
  if (v2 < 6)
  {
    return dbl_1B48EBB90[v2];
  }

  if (+[TPUIConfiguration inCallBottomBarSpacing]== 6)
  {
    return 82.0;
  }

  v4 = +[TPUIConfiguration inCallBottomBarSpacing];
  result = 72.0;
  if (v4 == 3)
  {
    return 82.0;
  }

  return result;
}

@end