@interface PISmartToneAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PISmartToneAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = +[PEAnalyticsUtility adjustmentValueBucketizerFormatter];
  v3 = [a1 adjustment];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 enabled];

    if (v5)
    {
      v6 = [a1 visualInputKeys];
      v7 = [a1 analyticsKeysBlocklist];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (!v8)
      {
        goto LABEL_52;
      }

      v9 = v8;
      v10 = *v64;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v64 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v63 + 1) + 8 * v11);
          if (([v7 containsObject:v12] & 1) == 0)
          {
            v13 = [MEMORY[0x277D3A9A0] autoKey];
            if ([v12 isEqualToString:v13])
            {
              v14 = [a1 isAuto];

              if (v14)
              {
                [v2 setObject:@"1" forKeyedSubscript:@"st_auto"];
                goto LABEL_45;
              }
            }

            else
            {
            }

            v15 = [MEMORY[0x277D3A9A0] offsetExposureKey];
            if ([v12 isEqualToString:v15])
            {
              [a1 offsetExposure];
              v17 = v16;

              if (v17 != 0.0)
              {
                v18 = MEMORY[0x277CCABB0];
                [a1 inputExposure];
                v19 = [v18 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"exposure";
LABEL_44:
                [v21 setObject:v22 forKeyedSubscript:v23];

                goto LABEL_45;
              }
            }

            else
            {
            }

            v24 = [MEMORY[0x277D3A9A0] offsetLocalLightKey];
            if ([v12 isEqualToString:v24])
            {
              [a1 offsetLocalLight];
              v26 = v25;

              if (v26 != 0.0)
              {
                v27 = MEMORY[0x277CCABB0];
                [a1 inputLocalLight];
                v19 = [v27 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"brilliance";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v28 = [MEMORY[0x277D3A9A0] offsetHighlightsKey];
            if ([v12 isEqualToString:v28])
            {
              [a1 offsetHighlights];
              v30 = v29;

              if (v30 != 0.0)
              {
                v31 = MEMORY[0x277CCABB0];
                [a1 inputHighlights];
                v19 = [v31 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"highlights";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v32 = [MEMORY[0x277D3A9A0] offsetShadowsKey];
            if ([v12 isEqualToString:v32])
            {
              [a1 offsetShadows];
              v34 = v33;

              if (v34 != 0.0)
              {
                v35 = MEMORY[0x277CCABB0];
                [a1 inputShadows];
                v19 = [v35 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"shadows";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v36 = [MEMORY[0x277D3A9A0] offsetContrastKey];
            if ([v12 isEqualToString:v36])
            {
              [a1 offsetContrast];
              v38 = v37;

              if (v38 != 0.0)
              {
                v39 = MEMORY[0x277CCABB0];
                [a1 inputContrast];
                v19 = [v39 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"contrast";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v40 = [MEMORY[0x277D3A9A0] offsetBrightnessKey];
            if ([v12 isEqualToString:v40])
            {
              [a1 offsetBrightness];
              v42 = v41;

              if (v42 != 0.0)
              {
                v43 = MEMORY[0x277CCABB0];
                [a1 inputBrightness];
                v19 = [v43 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"brightness";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v44 = [MEMORY[0x277D3A9A0] offsetBlackKey];
            if ([v12 isEqualToString:v44])
            {
              [a1 offsetBlack];
              v46 = v45;

              if (v46 != 0.0)
              {
                v47 = MEMORY[0x277CCABB0];
                [a1 inputBlack];
                v19 = [v47 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"black_point";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v48 = [MEMORY[0x277D3A9A0] inputLightKey];
            if ([v12 isEqualToString:v48])
            {
              [a1 inputLight];
              v50 = v49;

              if (v50 != 0.0)
              {
                v51 = MEMORY[0x277CCABB0];
                [a1 inputLight];
                v19 = [v51 numberWithDouble:?];
                v20 = [v61 stringFromNumber:v19];
                v21 = v2;
                v22 = v20;
                v23 = @"st_mega";
                goto LABEL_44;
              }
            }

            else
            {
            }

            v52 = [a1 valueForKey:v12];
            [v52 doubleValue];
            if (v53 != 0.0)
            {
              v54 = MEMORY[0x277CCABB0];
              [v52 doubleValue];
              v60 = [v54 numberWithDouble:?];
              [v61 stringFromNumber:v60];
              v56 = v55 = v2;
              [v55 setObject:v56 forKeyedSubscript:v12];

              v2 = v55;
            }
          }

LABEL_45:
          ++v11;
        }

        while (v9 != v11);
        v57 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
        v9 = v57;
        if (!v57)
        {
LABEL_52:

          v58 = v2;
          goto LABEL_54;
        }
      }
    }
  }

  v58 = MEMORY[0x277CBEC10];
LABEL_54:

  return v58;
}

- (id)analyticsKeysBlocklist
{
  v11 = MEMORY[0x277CBEB98];
  v10 = [MEMORY[0x277D3A9A0] inputRawHighlightsKey];
  v0 = [MEMORY[0x277D3A9A0] inputExposureKey];
  v1 = [MEMORY[0x277D3A9A0] inputHighlightsKey];
  v2 = [MEMORY[0x277D3A9A0] inputContrastKey];
  v3 = [MEMORY[0x277D3A9A0] inputBlackKey];
  v4 = [MEMORY[0x277D3A9A0] enabledKey];
  v5 = [MEMORY[0x277D3A9A0] inputBrightnessKey];
  v6 = [MEMORY[0x277D3A9A0] inputShadowsKey];
  v7 = [MEMORY[0x277D3A9A0] inputLocalLightKey];
  v8 = [MEMORY[0x277D3A9A0] statisticsKey];
  v12 = [v11 setWithObjects:{v10, v0, v1, v2, v3, v4, v5, v6, v7, v8, 0}];

  return v12;
}

@end