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
  v4 = [a1 adjustment];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 enabled];

    if (v6)
    {
      v43 = [a1 colorType];
      [a1 visualInputKeys];
      v7 = v42 = v3;
      v44 = a1;
      v8 = [a1 analyticsKeysBlocklist];
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
          if (([v8 containsObject:v14] & 1) == 0)
          {
            v15 = [MEMORY[0x277D3A9B0] colorTypeKey];
            v16 = [v14 isEqualToString:v15];

            if (v16)
            {
              v17 = [MEMORY[0x277D3A9B0] stringForColorType:v43];
              [v2 setObject:v17 forKeyedSubscript:@"whiteBalanceType"];
LABEL_36:

              continue;
            }

            v18 = [MEMORY[0x277D3A9B0] warmTintKey];
            if ([v14 isEqualToString:v18])
            {
              [v44 warmTint];
              v20 = v19;

              if (v20 != 0.0)
              {
                if (v43 != 3)
                {
                  continue;
                }

                v21 = MEMORY[0x277CCABB0];
                [v44 warmTint];
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

            v26 = [MEMORY[0x277D3A9B0] warmTempKey];
            if ([v14 isEqualToString:v26])
            {
              [v44 warmTemp];
              v28 = v27;

              if (v28 != 0.0)
              {
                if (v43 != 3)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [v44 warmTemp];
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

            v30 = [MEMORY[0x277D3A9B0] faceWarmthKey];
            if ([v14 isEqualToString:v30])
            {
              [v44 faceWarmth];
              v32 = v31;

              if (v32 != 0.0)
              {
                if (v43 != 1)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [v44 faceWarmth];
                goto LABEL_30;
              }
            }

            else
            {
            }

            v33 = [MEMORY[0x277D3A9B0] grayWarmthKey];
            if ([v14 isEqualToString:v33])
            {
              [v44 faceWarmth];
              v35 = v34;

              if (v35 != 0.0)
              {
                if ((v43 & 0xFFFFFFFFFFFFFFFDLL) != 0)
                {
                  continue;
                }

                v29 = MEMORY[0x277CCABB0];
                [v44 grayWarmth];
                goto LABEL_30;
              }
            }

            else
            {
            }

            v17 = [v44 valueForKey:v14];
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
  v14 = [MEMORY[0x277D3A9B0] faceIKey];
  v13 = [MEMORY[0x277D3A9B0] temperatureKey];
  v0 = [MEMORY[0x277D3A9B0] grayIKey];
  v10 = [MEMORY[0x277D3A9B0] grayYKey];
  v1 = [MEMORY[0x277D3A9B0] tintKey];
  v2 = [MEMORY[0x277D3A9B0] warmFaceKey];
  v3 = [MEMORY[0x277D3A9B0] faceQKey];
  v4 = [MEMORY[0x277D3A9B0] autoKey];
  v5 = [MEMORY[0x277D3A9B0] enabledKey];
  v6 = [MEMORY[0x277D3A9B0] grayQKey];
  v7 = [MEMORY[0x277D3A9B0] faceStrengthKey];
  v8 = [MEMORY[0x277D3A9B0] grayStrengthKey];
  v12 = [v11 setWithObjects:{v14, v13, v0, v10, v1, v2, v3, v4, v5, v6, v7, v8, 0}];

  return v12;
}

@end