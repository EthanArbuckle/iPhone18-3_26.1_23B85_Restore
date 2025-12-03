@interface PTTuningParameters
+ (float)noiseScaleFactorForHwModelID:(int)d sensorID:(int)iD;
+ (id)hwModelIDToString:(int)string;
+ (int)hwModelIDFromFigModelSpecificName:(id)name;
@end

@implementation PTTuningParameters

+ (float)noiseScaleFactorForHwModelID:(int)d sensorID:(int)iD
{
  v4 = d & 0xFFFFFFFE;
  if ((d & 0xFFFFFFFE) <= 19)
  {
    if (v4 == 14)
    {
      result = 0.25;
      if ((iD - 1811) >= 2 && iD != 2051)
      {
        return 0.24;
      }
    }

    else
    {
      if (v4 != 18)
      {
        goto LABEL_20;
      }

      result = 0.17;
      if (iD > 2130)
      {
        if (iD == 2131)
        {
          return result;
        }

LABEL_26:
        if (iD == 2323)
        {
          return result;
        }

        return 0.16;
      }

      if ((iD - 1811) >= 2 && iD != 2051)
      {
        return 0.16;
      }
    }
  }

  else
  {
    if (v4 != 20 && v4 != 24)
    {
      if (v4 == 22)
      {
        result = 0.17;
        if (iD == 1812 || iD == 2307)
        {
          return result;
        }

        goto LABEL_26;
      }

LABEL_20:
      result = 0.5;
      if (iD <= 1794)
      {
        if (iD != 1300)
        {
          if (iD == 1539)
          {
            return result;
          }

          return 0.25;
        }
      }

      else
      {
        if (iD == 1795)
        {
          return result;
        }

        if (iD != 1812)
        {
          if (iD == 1811)
          {
            return 0.75;
          }

          return 0.25;
        }
      }

      return 1.0;
    }

    result = flt_2244A5640[iD == 2308];
    if (iD == 1812)
    {
      return 0.25;
    }
  }

  return result;
}

+ (int)hwModelIDFromFigModelSpecificName:(id)name
{
  v3 = [&unk_2837F3A00 objectForKey:name];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (id)hwModelIDToString:(int)string
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&unk_2837F3A00 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = @"Unknown";
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&unk_2837F3A00);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [&unk_2837F3A00 objectForKeyedSubscript:v9];
        if ([v10 intValue] == string)
        {
          v7 = v9;

          goto LABEL_12;
        }
      }

      v5 = [&unk_2837F3A00 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = @"Unknown";
  }

LABEL_12:

  return v7;
}

@end