@interface MTLHUDGameModeEnabled
@end

@implementation MTLHUDGameModeEnabled

void __MTLHUDGameModeEnabled_block_invoke(id a1)
{
  v10 = xmmword_6A298;
  v11 = unk_6A2A8;
  v12 = 30;
  v8 = *off_6A278;
  v9 = *&off_6A288;
  v1 = +[_CADeveloperHUDProperties instance];
  v2 = [v1 addMetric:&v8];

  v4 = HUDDispatchQueueGet(v3);
  v5 = notify_register_dispatch("com.apple.system.console_mode_changed", &MTLHUDGameModeEnabled_gameModeToken, v4, &__block_literal_global_755);

  if (v5)
  {
    v6 = MTLHUDGameModeEnabled_enabled;
  }

  else
  {
    state64 = 0;
    if (notify_get_state(MTLHUDGameModeEnabled_gameModeToken, &state64))
    {
      v7 = 1;
    }

    else
    {
      v7 = state64 == 0;
    }

    v6 = !v7;
    MTLHUDGameModeEnabled_enabled = v6;
  }

  [v2 setIntValue:v6];
}

void __MTLHUDGameModeEnabled_block_invoke_2(id a1, int a2)
{
  state64 = 0;
  if (notify_get_state(a2, &state64))
  {
    v2 = 1;
  }

  else
  {
    v2 = state64 == 0;
  }

  v3 = !v2;
  MTLHUDGameModeEnabled_enabled = v3;
  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 getMetric:@"com.apple.hud-stat.game-mode"];

  [v5 setIntValue:MTLHUDGameModeEnabled_enabled];
}

@end