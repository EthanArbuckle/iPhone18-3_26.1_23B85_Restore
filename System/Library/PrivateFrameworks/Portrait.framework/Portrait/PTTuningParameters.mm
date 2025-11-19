@interface PTTuningParameters
+ (float)noiseScaleFactorForHwModelID:(int)a3 sensorID:(int)a4;
+ (id)hwModelIDToString:(int)a3;
+ (int)hwModelIDFromFigModelSpecificName:(id)a3;
@end

@implementation PTTuningParameters

+ (float)noiseScaleFactorForHwModelID:(int)a3 sensorID:(int)a4
{
  v4 = a3 & 0xFFFFFFFE;
  if ((a3 & 0xFFFFFFFE) <= 19)
  {
    if (v4 == 14)
    {
      result = 0.25;
      if ((a4 - 1811) >= 2 && a4 != 2051)
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
      if (a4 > 2130)
      {
        if (a4 == 2131)
        {
          return result;
        }

LABEL_26:
        if (a4 == 2323)
        {
          return result;
        }

        return 0.16;
      }

      if ((a4 - 1811) >= 2 && a4 != 2051)
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
        if (a4 == 1812 || a4 == 2307)
        {
          return result;
        }

        goto LABEL_26;
      }

LABEL_20:
      result = 0.5;
      if (a4 <= 1794)
      {
        if (a4 != 1300)
        {
          if (a4 == 1539)
          {
            return result;
          }

          return 0.25;
        }
      }

      else
      {
        if (a4 == 1795)
        {
          return result;
        }

        if (a4 != 1812)
        {
          if (a4 == 1811)
          {
            return 0.75;
          }

          return 0.25;
        }
      }

      return 1.0;
    }

    result = flt_2244A5640[a4 == 2308];
    if (a4 == 1812)
    {
      return 0.25;
    }
  }

  return result;
}

+ (int)hwModelIDFromFigModelSpecificName:(id)a3
{
  v3 = [&unk_2837F3A00 objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)hwModelIDToString:(int)a3
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
        if ([v10 intValue] == a3)
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