@interface STKSoundFactory
+ (id)class0SMSSound;
+ (id)soundForOptions:(id)a3;
+ (id)soundForRingToneWithDuration:(double)a3;
@end

@implementation STKSoundFactory

+ (id)soundForOptions:(id)a3
{
  v4 = *MEMORY[0x277CC4010];
  v5 = a3;
  v6 = [v5 bs_safeStringForKey:v4];
  v7 = [v5 bs_safeNumberForKey:*MEMORY[0x277CC4040]];

  [v7 doubleValue];
  v9 = v8;

  if (v6)
  {
    if (CFEqual(v6, *MEMORY[0x277CC4088]) || CFEqual(v6, *MEMORY[0x277CC4078]))
    {
      v10 = [a1 soundForRingToneWithDuration:v9];
      goto LABEL_29;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4018]))
    {
      v11 = a1;
      v12 = 1070;
LABEL_27:
      v10 = [v11 soundForSystemSoundID:v12 duration:v9];
      goto LABEL_29;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4030]))
    {
      v11 = a1;
      v12 = 1071;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4070]))
    {
      v11 = a1;
      v12 = 1072;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4048]))
    {
      v11 = a1;
      v12 = 1073;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4028]))
    {
      v11 = a1;
      v12 = 1074;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4038]))
    {
      v11 = a1;
      v12 = 1075;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4020]))
    {
      v11 = a1;
      v12 = 1051;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4050]))
    {
      v11 = a1;
      v12 = 1052;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4068]))
    {
      v11 = a1;
      v12 = 1054;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4058]))
    {
      v11 = a1;
      v12 = 1053;
      goto LABEL_27;
    }

    if (CFEqual(v6, *MEMORY[0x277CC4080]))
    {
      v11 = a1;
      v12 = 1055;
      goto LABEL_27;
    }
  }

  v10 = 0;
LABEL_29:

  return v10;
}

+ (id)soundForRingToneWithDuration:(double)a3
{
  v3 = [[STKToneAlertSound alloc] initWithType:1 duration:a3];

  return v3;
}

+ (id)class0SMSSound
{
  v2 = [[STKToneAlertSound alloc] initWithType:2 duration:0.0];

  return v2;
}

@end