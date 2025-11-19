@interface NSError(WiFiKit)
+ (id)associationErrorWithCode:()WiFiKit requiresPassword:signalStrength:isPrivateMACFailureThresholdMet:;
+ (id)associationErrorWithCode:()WiFiKit requiresPassword:signalStrength:userInfo:;
+ (id)associationErrorWithReason:()WiFiKit;
+ (id)scanErrorWithCode:()WiFiKit;
+ (id)scanErrorWithReason:()WiFiKit;
@end

@implementation NSError(WiFiKit)

+ (id)associationErrorWithReason:()WiFiKit
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA068];
  v5 = WFAssociationErrorCodeToString(a3);
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 associationErrorWithReason:a3 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)associationErrorWithCode:()WiFiKit requiresPassword:signalStrength:isPrivateMACFailureThresholdMet:
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  [v10 setObject:v11 forKey:@"kWFAssociationPrivateMacFailureThresholdMetKey"];

  v12 = [MEMORY[0x277CCA9B8] associationErrorWithCode:a3 requiresPassword:a4 signalStrength:a5 userInfo:v10];

  return v12;
}

+ (id)associationErrorWithCode:()WiFiKit requiresPassword:signalStrength:userInfo:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = 1;
  if (a3 > -3914)
  {
    if (a3 <= -3907)
    {
      if ((a3 + 3912) < 2)
      {
        goto LABEL_31;
      }

      if (a3 == -3913 || a3 == -3909)
      {
        v10 = 20;
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case -3906:
        v11 = a5 < -74;
        v12 = 12;
        break;
      case -100:
        v10 = 0;
        goto LABEL_31;
      case -3905:
        v11 = a5 < -74;
        v12 = 3;
        break;
      default:
LABEL_22:
        v10 = 12;
        goto LABEL_31;
    }

    if (v11)
    {
      v10 = 21;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    if (a3 > -3941)
    {
      if ((a3 + 3925) < 2)
      {
        goto LABEL_31;
      }

      if (a3 != -3940 && a3 != -3938)
      {
        goto LABEL_22;
      }
    }

    else if (a3 > -3946)
    {
      if (a3 != -3945)
      {
        if (a3 == -3941)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    else if (a3 != -3970)
    {
      if (a3 == -3947)
      {
        v10 = 11;
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 12;
    }
  }

LABEL_31:
  v13 = MEMORY[0x277CBEB38];
  v20 = *MEMORY[0x277CCA068];
  v14 = WFAssociationErrorCodeToString(v10);
  v21[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v13 dictionaryWithDictionary:v15];

  if (v9)
  {
    [v16 addEntriesFromDictionary:v9];
  }

  v17 = [MEMORY[0x277CCA9B8] associationErrorWithReason:v10 userInfo:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)scanErrorWithCode:()WiFiKit
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 82)
  {
    v3 = 0;
  }

  if (a3 == 37)
  {
    v3 = 37;
  }

  if (a3 != 16)
  {
    a3 = v3;
  }

  v4 = [MEMORY[0x277CCA9B8] scanErrorWithReason:a3];

  return v4;
}

+ (id)scanErrorWithReason:()WiFiKit
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    if (!a3)
    {
      v4 = @"Cannot scan while power is off";
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v4 = @"Scan cancelled";
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v4 = @"Device scan channels are empty";
        goto LABEL_13;
      case 16:
        v4 = @"Unable to queue scan, device is busy.";
        goto LABEL_13;
      case 37:
        v4 = @"Existing scan in progress";
        goto LABEL_13;
    }
  }

  v4 = @"Unknown scan error";
LABEL_13:
  v5 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.wifikit.error" code:a3 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end