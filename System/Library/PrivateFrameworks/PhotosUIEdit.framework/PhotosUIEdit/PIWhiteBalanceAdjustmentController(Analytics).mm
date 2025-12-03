@interface PIWhiteBalanceAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PIWhiteBalanceAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[PEAnalyticsUtility adjustmentValueBucketizerFormatter];
  adjustment = [self adjustment];
  if (adjustment)
  {
    v5 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      colorType = [self colorType];
      [self visualInputKeys];
      v7 = v42 = v3;
      selfCopy = self;
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = v7;
      v3 = v42;
      obj = v9;
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (!v10)
      {
        goto LABEL_39;
      }

      v11 = v10;
      v12 = *v47;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          if (([analyticsKeysBlocklist containsObject:v14] & 1) == 0)
          {
            colorTypeKey = [MEMORY[0x277D3A9B0] colorTypeKey];
            v16 = [v14 isEqualToString:colorTypeKey];

            if (v16)
            {
              v17 = [MEMORY[0x277D3A9B0] stringForColorType:colorType];
              [v2 setObject:v17 forKeyedSubscript:@"whiteBalanceType"];
LABEL_36:

              continue;
            }

            warmTintKey = [MEMORY[0x277D3A9B0] warmTintKey];
            if ([v14 isEqualToString:warmTintKey])
            {
              [selfCopy warmTint];
              v20 = v19;

              if (v20 != 0.0)
              {
                if (colorType != 3)
                {
                  continue;
                }

                v21 = MEMORY[0x277CCABB0];
                [selfCopy warmTint];
                v17 = [v21 numberWithDouble:?];
                v22 = [v3 stringFromNumber:v17];
                v23 = v2;
                v24 = v22;
                v25 = @"tint";
LABEL_31:
                [v23 setObject:v24 forKeyedSubscript:v25];
LABEL_35:

                goto LABEL_36;
              }
            }

            else
            {
            }

            warmTempKey = [MEMORY[0x277D3A9B0] warmTempKey];
            if ([v14 isEqualToString:warmTempKey])
            {
              [selfCopy warmTemp];
              v28 = v27;

              if (v28 != 0.0)
              {
                if (colorType != 3)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [selfCopy warmTemp];
LABEL_30:
                v17 = [v29 numberWithDouble:?];
                v22 = [v3 stringFromNumber:v17];
                v23 = v2;
                v24 = v22;
                v25 = @"temperature";
                goto LABEL_31;
              }
            }

            else
            {
            }

            faceWarmthKey = [MEMORY[0x277D3A9B0] faceWarmthKey];
            if ([v14 isEqualToString:faceWarmthKey])
            {
              [selfCopy faceWarmth];
              v32 = v31;

              if (v32 != 0.0)
              {
                if (colorType != 1)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [selfCopy faceWarmth];
                goto LABEL_30;
              }
            }

            else
            {
            }

            grayWarmthKey = [MEMORY[0x277D3A9B0] grayWarmthKey];
            if ([v14 isEqualToString:grayWarmthKey])
            {
              [selfCopy faceWarmth];
              v35 = v34;

              if (v35 != 0.0)
              {
                if ((colorType & 0xFFFFFFFFFFFFFFFDLL) != 0)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [selfCopy grayWarmth];
                goto LABEL_30;
              }
            }

            else
            {
            }

            v17 = [selfCopy valueForKey:v14];
            [v17 doubleValue];
            if (v36 == 0.0)
            {
              goto LABEL_36;
            }

            v37 = MEMORY[0x277CCABB0];
            [v17 doubleValue];
            v22 = [v37 numberWithDouble:?];
            [v3 stringFromNumber:v22];
            v39 = v38 = v2;
            [v38 setObject:v39 forKeyedSubscript:v14];

            v2 = v38;
            v3 = v42;
            goto LABEL_35;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (!v11)
        {
LABEL_39:

          v40 = v2;
          goto LABEL_41;
        }
      }
    }
  }

  v40 = MEMORY[0x277CBEC10];
LABEL_41:

  return v40;
}

- (id)analyticsKeysBlocklist
{
  v11 = MEMORY[0x277CBEB98];
  faceIKey = [MEMORY[0x277D3A9B0] faceIKey];
  temperatureKey = [MEMORY[0x277D3A9B0] temperatureKey];
  grayIKey = [MEMORY[0x277D3A9B0] grayIKey];
  grayYKey = [MEMORY[0x277D3A9B0] grayYKey];
  tintKey = [MEMORY[0x277D3A9B0] tintKey];
  warmFaceKey = [MEMORY[0x277D3A9B0] warmFaceKey];
  faceQKey = [MEMORY[0x277D3A9B0] faceQKey];
  autoKey = [MEMORY[0x277D3A9B0] autoKey];
  enabledKey = [MEMORY[0x277D3A9B0] enabledKey];
  grayQKey = [MEMORY[0x277D3A9B0] grayQKey];
  faceStrengthKey = [MEMORY[0x277D3A9B0] faceStrengthKey];
  grayStrengthKey = [MEMORY[0x277D3A9B0] grayStrengthKey];
  v12 = [v11 setWithObjects:{faceIKey, temperatureKey, grayIKey, grayYKey, tintKey, warmFaceKey, faceQKey, autoKey, enabledKey, grayQKey, faceStrengthKey, grayStrengthKey, 0}];

  return v12;
}

@end