@interface PISmartColorAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PISmartColorAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[PEAnalyticsUtility adjustmentValueBucketizerFormatter];
  adjustment = [self adjustment];
  if (adjustment)
  {
    v5 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v9 = visualInputKeys;
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = v10;
      v12 = *v49;
      v47 = *v49;
      while (1)
      {
        v13 = 0;
        v46 = v11;
        do
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v48 + 1) + 8 * v13);
          if (([analyticsKeysBlocklist containsObject:{v14, v46}] & 1) == 0)
          {
            autoKey = [MEMORY[0x277D3A988] autoKey];
            if ([v14 isEqualToString:autoKey])
            {
              isAuto = [self isAuto];

              if (isAuto)
              {
                [v2 setObject:@"1" forKeyedSubscript:@"sc_auto"];
LABEL_29:
                v12 = v47;
                goto LABEL_30;
              }
            }

            else
            {
            }

            offsetSaturationKey = [MEMORY[0x277D3A988] offsetSaturationKey];
            if ([v14 isEqualToString:offsetSaturationKey])
            {
              [self offsetSaturation];
              v19 = v18;

              if (v19 != 0.0)
              {
                v20 = MEMORY[0x277CCABB0];
                [self inputSaturation];
                v21 = [v20 numberWithDouble:?];
                v22 = [v3 stringFromNumber:v21];
                v23 = v2;
                v24 = v22;
                v25 = @"saturation";
LABEL_24:
                [v23 setObject:v24 forKeyedSubscript:v25];

                goto LABEL_29;
              }
            }

            else
            {
            }

            offsetContrastKey = [MEMORY[0x277D3A988] offsetContrastKey];
            if ([v14 isEqualToString:offsetContrastKey])
            {
              [self offsetContrast];
              v28 = v27;

              if (v28 != 0.0)
              {
                v29 = MEMORY[0x277CCABB0];
                [self inputContrast];
                v21 = [v29 numberWithDouble:?];
                v22 = [v3 stringFromNumber:v21];
                v23 = v2;
                v24 = v22;
                v25 = @"vibrance";
                goto LABEL_24;
              }
            }

            else
            {
            }

            inputColorKey = [MEMORY[0x277D3A988] inputColorKey];
            if ([v14 isEqualToString:inputColorKey])
            {
              [self inputColor];
              v32 = v31;

              if (v32 != 0.0)
              {
                v33 = MEMORY[0x277CCABB0];
                [self inputColor];
                v21 = [v33 numberWithDouble:?];
                v22 = [v3 stringFromNumber:v21];
                v23 = v2;
                v24 = v22;
                v25 = @"sc_mega";
                goto LABEL_24;
              }
            }

            else
            {
            }

            v34 = [self valueForKey:v14];
            [v34 doubleValue];
            if (v35 != 0.0)
            {
              v36 = MEMORY[0x277CCABB0];
              [v34 doubleValue];
              v37 = [v36 numberWithDouble:?];
              [v3 stringFromNumber:v37];
              v38 = v9;
              v39 = analyticsKeysBlocklist;
              selfCopy = self;
              v41 = v3;
              v43 = v42 = v2;
              [v42 setObject:v43 forKeyedSubscript:v14];

              v2 = v42;
              v3 = v41;
              self = selfCopy;
              analyticsKeysBlocklist = v39;
              v9 = v38;
              v11 = v46;
            }

            goto LABEL_29;
          }

LABEL_30:
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (!v11)
        {
LABEL_32:

          v44 = v2;
          goto LABEL_34;
        }
      }
    }
  }

  v44 = MEMORY[0x277CBEC10];
LABEL_34:

  return v44;
}

- (id)analyticsKeysBlocklist
{
  v0 = MEMORY[0x277CBEB98];
  statisticsKey = [MEMORY[0x277D3A988] statisticsKey];
  enabledKey = [MEMORY[0x277D3A988] enabledKey];
  inputSaturationKey = [MEMORY[0x277D3A988] inputSaturationKey];
  inputCastKey = [MEMORY[0x277D3A988] inputCastKey];
  inputContrastKey = [MEMORY[0x277D3A988] inputContrastKey];
  offsetCastKey = [MEMORY[0x277D3A988] offsetCastKey];
  v7 = [v0 setWithObjects:{statisticsKey, enabledKey, inputSaturationKey, inputCastKey, inputContrastKey, offsetCastKey, 0}];

  return v7;
}

@end