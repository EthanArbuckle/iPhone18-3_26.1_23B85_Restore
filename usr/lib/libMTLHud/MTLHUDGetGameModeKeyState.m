@interface MTLHUDGetGameModeKeyState
@end

@implementation MTLHUDGetGameModeKeyState

void __MTLHUDGetGameModeKeyState_block_invoke(id a1)
{
  v1 = +[NSBundle mainBundle];
  v4 = [v1 objectForInfoDictionaryKey:@"LSSupportsGameMode"];

  v2 = v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 BOOLValue])
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    v2 = v4;
  }

  else
  {
    v3 = 0;
  }

  MTLHUDGetGameModeKeyState_state = v3;
}

@end