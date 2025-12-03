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
  adjustment = [self adjustment];
  if (adjustment)
  {
    v4 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = visualInputKeys;
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
          if (([analyticsKeysBlocklist containsObject:v12] & 1) == 0)
          {
            autoKey = [MEMORY[0x277D3A9A0] autoKey];
            if ([v12 isEqualToString:autoKey])
            {
              isAuto = [self isAuto];

              if (isAuto)
              {
                [v2 setObject:@"1" forKeyedSubscript:@"st_auto"];
                goto LABEL_45;
              }
            }

            else
            {
            }

            offsetExposureKey = [MEMORY[0x277D3A9A0] offsetExposureKey];
            if ([v12 isEqualToString:offsetExposureKey])
            {
              [self offsetExposure];
              v17 = v16;

              if (v17 != 0.0)
              {
                v18 = MEMORY[0x277CCABB0];
                [self inputExposure];
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

            offsetLocalLightKey = [MEMORY[0x277D3A9A0] offsetLocalLightKey];
            if ([v12 isEqualToString:offsetLocalLightKey])
            {
              [self offsetLocalLight];
              v26 = v25;

              if (v26 != 0.0)
              {
                v27 = MEMORY[0x277CCABB0];
                [self inputLocalLight];
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

            offsetHighlightsKey = [MEMORY[0x277D3A9A0] offsetHighlightsKey];
            if ([v12 isEqualToString:offsetHighlightsKey])
            {
              [self offsetHighlights];
              v30 = v29;

              if (v30 != 0.0)
              {
                v31 = MEMORY[0x277CCABB0];
                [self inputHighlights];
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

            offsetShadowsKey = [MEMORY[0x277D3A9A0] offsetShadowsKey];
            if ([v12 isEqualToString:offsetShadowsKey])
            {
              [self offsetShadows];
              v34 = v33;

              if (v34 != 0.0)
              {
                v35 = MEMORY[0x277CCABB0];
                [self inputShadows];
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

            offsetContrastKey = [MEMORY[0x277D3A9A0] offsetContrastKey];
            if ([v12 isEqualToString:offsetContrastKey])
            {
              [self offsetContrast];
              v38 = v37;

              if (v38 != 0.0)
              {
                v39 = MEMORY[0x277CCABB0];
                [self inputContrast];
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

            offsetBrightnessKey = [MEMORY[0x277D3A9A0] offsetBrightnessKey];
            if ([v12 isEqualToString:offsetBrightnessKey])
            {
              [self offsetBrightness];
              v42 = v41;

              if (v42 != 0.0)
              {
                v43 = MEMORY[0x277CCABB0];
                [self inputBrightness];
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

            offsetBlackKey = [MEMORY[0x277D3A9A0] offsetBlackKey];
            if ([v12 isEqualToString:offsetBlackKey])
            {
              [self offsetBlack];
              v46 = v45;

              if (v46 != 0.0)
              {
                v47 = MEMORY[0x277CCABB0];
                [self inputBlack];
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

            inputLightKey = [MEMORY[0x277D3A9A0] inputLightKey];
            if ([v12 isEqualToString:inputLightKey])
            {
              [self inputLight];
              v50 = v49;

              if (v50 != 0.0)
              {
                v51 = MEMORY[0x277CCABB0];
                [self inputLight];
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

            v52 = [self valueForKey:v12];
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
  inputRawHighlightsKey = [MEMORY[0x277D3A9A0] inputRawHighlightsKey];
  inputExposureKey = [MEMORY[0x277D3A9A0] inputExposureKey];
  inputHighlightsKey = [MEMORY[0x277D3A9A0] inputHighlightsKey];
  inputContrastKey = [MEMORY[0x277D3A9A0] inputContrastKey];
  inputBlackKey = [MEMORY[0x277D3A9A0] inputBlackKey];
  enabledKey = [MEMORY[0x277D3A9A0] enabledKey];
  inputBrightnessKey = [MEMORY[0x277D3A9A0] inputBrightnessKey];
  inputShadowsKey = [MEMORY[0x277D3A9A0] inputShadowsKey];
  inputLocalLightKey = [MEMORY[0x277D3A9A0] inputLocalLightKey];
  statisticsKey = [MEMORY[0x277D3A9A0] statisticsKey];
  v12 = [v11 setWithObjects:{inputRawHighlightsKey, inputExposureKey, inputHighlightsKey, inputContrastKey, inputBlackKey, enabledKey, inputBrightnessKey, inputShadowsKey, inputLocalLightKey, statisticsKey, 0}];

  return v12;
}

@end