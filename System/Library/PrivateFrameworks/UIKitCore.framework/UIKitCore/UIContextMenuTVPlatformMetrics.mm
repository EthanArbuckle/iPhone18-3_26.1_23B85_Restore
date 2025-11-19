@interface UIContextMenuTVPlatformMetrics
@end

@implementation UIContextMenuTVPlatformMetrics

UIColor *__39___UIContextMenuTVPlatformMetrics_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 0.25;
  if (!v3)
  {
    v4 = 0.08;
  }

  return [UIColor colorWithWhite:0.0 alpha:v4];
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_2(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = [a2 userInterfaceStyle];
    v5 = MEMORY[0x1E6979CF8];
    if (v4 != 2)
    {
      v5 = MEMORY[0x1E6979CE8];
    }

    v6 = *v5;
  }

  return v6;
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_3(uint64_t a1, char a2, char a3)
{
  if ((a2 & 9) != 0)
  {
    if (a3)
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
  }

  else if ((a2 & 4) != 0)
  {
    [UIColor colorWithDynamicProvider:&__block_literal_global_10_6];
  }

  else
  {
    +[UIColor clearColor];
  }
  v3 = ;

  return v3;
}

UIColor *__39___UIContextMenuTVPlatformMetrics_init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 0.0;
  if (v3)
  {
    v4 = 1.0;
  }

  return [UIColor colorWithWhite:v4 alpha:0.15];
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if ((a2 & 9) != 0)
    {
      +[UIColor blackColor];
    }

    else
    {
      [UIColor colorWithDynamicProvider:&__block_literal_global_15_3];
    }
    v2 = ;
  }

  return v2;
}

UIColor *__39___UIContextMenuTVPlatformMetrics_init__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 0.501960784;
  if (v3)
  {
    v4 = 0.48627451;
  }

  return [UIColor colorWithWhite:v4 alpha:1.0];
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 8) != 0)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v2 = ;

  return v2;
}

UIColor *__39___UIContextMenuTVPlatformMetrics_init__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 0.62745098;
  if (v3)
  {
    v4 = 0.48627451;
  }

  return [UIColor colorWithWhite:v4 alpha:1.0];
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = MEMORY[0x1E6979CF8];
  if (v2 != 2)
  {
    v3 = MEMORY[0x1E6979CE8];
  }

  v4 = *v3;

  return v4;
}

id __39___UIContextMenuTVPlatformMetrics_init__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B108, @"TVContextMenu_DarkModeBackgroundHairlineAlpha");
  v4 = 0;
  if (v3)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = *&qword_1ED48B110;
  }

  v6 = v2 == 1000 || v2 == 2;
  if (v6 && v5 > 0.0)
  {
    v7 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_937, @"TVContextMenu_DarkModeBackgroundHairlineWhite");
    v8 = *&qword_1ED48B100;
    if (v7)
    {
      v8 = 0.4;
    }

    v4 = [UIColor colorWithWhite:v8 alpha:v5];
  }

  return v4;
}

BOOL __39___UIContextMenuTVPlatformMetrics_init__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 parameters];
  v3 = [v2 effectiveShadowPath];
  v4 = v3 != 0;

  return v4;
}

BOOL __39___UIContextMenuTVPlatformMetrics_init__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 parameters];
  v3 = [v2 visiblePath];
  v4 = v3 != 0;

  return v4;
}

uint64_t __39___UIContextMenuTVPlatformMetrics_init__block_invoke_14(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 1;
  if (a3)
  {
    v3 = 2;
  }

  return v3 & (a2 << 60 >> 63);
}

void __39___UIContextMenuTVPlatformMetrics_init__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [v2 setFocusAnimationConfiguration:v3];

  [v2 setShadowExpansion:{45.0, 25.0}];
  [v2 setUnfocusedShadowVerticalOffset:10.0];
  [v2 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  [v2 setRoundContentWhenDeselected:1];
  [v2 setFocusedSizeIncrease:20.0];
  [v2 setCornerRadius:16.0];
  [v2 setClipsContentToBounds:1];
  [v2 setBackgroundColor:0 forState:0];
  [v2 setBackgroundColor:0 forState:1];
  [v2 setBackgroundColor:0 forState:4];
  [v2 setBackgroundColor:0 forState:8];
  v4 = [v2 contentView];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity:0];

  v7 = [v2 contentView];

  v6 = [v7 layer];
  [v6 setAllowsGroupBlending:0];
}

id __45___UIContextMenuTVPlatformMetrics_Glass_init__block_invoke(uint64_t a1, char a2, char a3)
{
  if ((a2 & 9) != 0)
  {
    if (a3)
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v3 = ;
  }

  else if ((a2 & 4) != 0)
  {
    v3 = [UIColor colorWithDynamicProvider:&__block_literal_global_4_17];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

UIColor *__45___UIContextMenuTVPlatformMetrics_Glass_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = v2 == 1000 || v2 == 2;
  v4 = 0.1;
  if (!v3)
  {
    v4 = 0.3;
  }

  return [UIColor colorWithWhite:1.0 alpha:v4];
}

id __45___UIContextMenuTVPlatformMetrics_Glass_init__block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if ((a2 & 9) != 0)
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v2 = ;
  }

  return v2;
}

void __45___UIContextMenuTVPlatformMetrics_Glass_init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [v2 setFocusAnimationConfiguration:v3];

  [v2 setShadowExpansion:{45.0, 25.0}];
  [v2 setUnfocusedShadowVerticalOffset:10.0];
  [v2 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  [v2 setRoundContentWhenDeselected:1];
  [v2 setAsymmetricFocusedSizeIncrease:{8.0, 8.0}];
  [v2 setCornerRadius:33.0];
  [v2 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  [v2 setBackgroundMaterial:0 forState:0];
  [v2 setBackgroundMaterial:0 forState:1];
  [v2 setBackgroundMaterial:0 forState:4];
  [v2 setBackgroundMaterial:0 forState:8];
  v4 = [v2 contentView];
  v5 = [v4 layer];
  [v5 setAllowsGroupOpacity:0];

  v7 = [v2 contentView];

  v6 = [v7 layer];
  [v6 setAllowsGroupBlending:0];
}

@end