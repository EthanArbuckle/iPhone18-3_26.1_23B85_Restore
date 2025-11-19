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
  v4 = [a1 adjustment];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 enabled];

    if (v6)
    {
      v7 = [a1 visualInputKeys];
      v8 = [a1 analyticsKeysBlocklist];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v9 = v7;
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
          if (([v8 containsObject:{v14, v46}] & 1) == 0)
          {
            v15 = [MEMORY[0x277D3A988] autoKey];
            if ([v14 isEqualToString:v15])
            {
              v16 = [a1 isAuto];

              if (v16)
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

            v17 = [MEMORY[0x277D3A988] offsetSaturationKey];
            if ([v14 isEqualToString:v17])
            {
              [a1 offsetSaturation];
              v19 = v18;

              if (v19 != 0.0)
              {
                v20 = MEMORY[0x277CCABB0];
                [a1 inputSaturation];
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

            v26 = [MEMORY[0x277D3A988] offsetContrastKey];
            if ([v14 isEqualToString:v26])
            {
              [a1 offsetContrast];
              v28 = v27;

              if (v28 != 0.0)
              {
                v29 = MEMORY[0x277CCABB0];
                [a1 inputContrast];
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

            v30 = [MEMORY[0x277D3A988] inputColorKey];
            if ([v14 isEqualToString:v30])
            {
              [a1 inputColor];
              v32 = v31;

              if (v32 != 0.0)
              {
                v33 = MEMORY[0x277CCABB0];
                [a1 inputColor];
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

            v34 = [a1 valueForKey:v14];
            [v34 doubleValue];
            if (v35 != 0.0)
            {
              v36 = MEMORY[0x277CCABB0];
              [v34 doubleValue];
              v37 = [v36 numberWithDouble:?];
              [v3 stringFromNumber:v37];
              v38 = v9;
              v39 = v8;
              v40 = a1;
              v41 = v3;
              v43 = v42 = v2;
              [v42 setObject:v43 forKeyedSubscript:v14];

              v2 = v42;
              v3 = v41;
              a1 = v40;
              v8 = v39;
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
  v1 = [MEMORY[0x277D3A988] statisticsKey];
  v2 = [MEMORY[0x277D3A988] enabledKey];
  v3 = [MEMORY[0x277D3A988] inputSaturationKey];
  v4 = [MEMORY[0x277D3A988] inputCastKey];
  v5 = [MEMORY[0x277D3A988] inputContrastKey];
  v6 = [MEMORY[0x277D3A988] offsetCastKey];
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, 0}];

  return v7;
}

@end