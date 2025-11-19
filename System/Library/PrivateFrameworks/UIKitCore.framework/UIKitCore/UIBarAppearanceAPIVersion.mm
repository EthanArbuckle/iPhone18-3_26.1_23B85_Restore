@interface UIBarAppearanceAPIVersion
@end

@implementation UIBarAppearanceAPIVersion

void ___UIBarAppearanceAPIVersion_block_invoke()
{
  if (!dyld_program_sdk_at_least())
  {
    return;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"BarAppearanceVersion"];
  v2 = v1;
  if (v1)
  {
    v10 = v1;
  }

  else
  {
    v3 = _UIKitUserDefaults();
    v10 = [v3 objectForKey:@"BarAppearanceVersion"];
  }

  v4 = _UIKitUserDefaults();
  v5 = [v4 objectForKey:@"BarAppearanceVersionOverride"];

  if (v5)
  {
    v6 = v5;
    goto LABEL_9;
  }

  v6 = v10;
  if (v10)
  {
LABEL_9:
    v7 = [v6 integerValue];
    qword_1ED49BF80 = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v9 = _UIMainBundleIdentifier();
  if (([MEMORY[0x1E695E0F0] containsObject:v9] & 1) == 0)
  {
    qword_1ED49BF80 = 1;
  }

  v7 = qword_1ED49BF80;
  if (qword_1ED49BF80 < 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v7 >= 3)
  {
    v8 = 2;
LABEL_16:
    qword_1ED49BF80 = v8;
  }
}

@end