@interface PISmartBlackAndWhiteAdjustmentController(Analytics)
- (id)analyticsPayload;
@end

@implementation PISmartBlackAndWhiteAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = +[PEAnalyticsUtility adjustmentValueBucketizerFormatter];
  adjustment = [self adjustment];
  if (adjustment)
  {
    v4 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = visualInputKeys;
      v8 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v8)
      {
        goto LABEL_39;
      }

      v9 = v8;
      v10 = *v58;
      v11 = 0x277D3A000uLL;
      while (1)
      {
        v12 = 0;
        v55 = v9;
        do
        {
          if (*v58 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v57 + 1) + 8 * v12);
          if (([analyticsKeysBlocklist containsObject:v13] & 1) == 0)
          {
            v14 = v11;
            autoKey = [*(v11 + 2432) autoKey];
            if ([v13 isEqualToString:autoKey])
            {
              isAuto = [self isAuto];

              if (isAuto)
              {
                [v2 setObject:@"1" forKeyedSubscript:@"sbw_auto"];
                v11 = v14;
                goto LABEL_37;
              }
            }

            else
            {
            }

            v17 = v10;
            hueKey = [*(v14 + 2432) hueKey];
            v19 = [v13 isEqualToString:hueKey];

            if (v19)
            {
              v20 = MEMORY[0x277CCABB0];
              [self hue];
              v21 = [v20 numberWithDouble:?];
              v22 = [v54 stringFromNumber:v21];
              [v2 setObject:v22 forKeyedSubscript:@"sbw_mega"];

              v11 = v14;
LABEL_36:
              v9 = v55;
              goto LABEL_37;
            }

            grainKey = [*(v14 + 2432) grainKey];
            v11 = v14;
            if ([v13 isEqualToString:grainKey])
            {
              [self grain];
              v25 = v24;

              if (v25 != 0.0)
              {
                v26 = MEMORY[0x277CCABB0];
                [self grain];
                v27 = [v26 numberWithDouble:?];
                v28 = [v54 stringFromNumber:v27];
                [v2 setObject:v28 forKeyedSubscript:@"sbw_grain"];

                v11 = v14;
                goto LABEL_36;
              }
            }

            else
            {
            }

            neutralKey = [*(v14 + 2432) neutralKey];
            if ([v13 isEqualToString:neutralKey])
            {
              [self neutral];
              v31 = v30;

              if (v31 != 0.0)
              {
                v32 = MEMORY[0x277CCABB0];
                [self neutral];
                v33 = [v32 numberWithDouble:?];
                v34 = [v54 stringFromNumber:v33];
                [v2 setObject:v34 forKeyedSubscript:@"sbw_neutral"];

                v11 = v14;
                goto LABEL_36;
              }
            }

            else
            {
            }

            toneKey = [*(v14 + 2432) toneKey];
            if ([v13 isEqualToString:toneKey])
            {
              [self tone];
              v37 = v36;

              if (v37 != 0.0)
              {
                v38 = MEMORY[0x277CCABB0];
                [self tone];
                v39 = [v38 numberWithDouble:?];
                v40 = [v54 stringFromNumber:v39];
                v41 = v2;
                v42 = v40;
                v43 = @"sbw_tone";
                goto LABEL_30;
              }
            }

            else
            {
            }

            strengthKey = [*(v14 + 2432) strengthKey];
            if ([v13 isEqualToString:strengthKey])
            {
              [self strength];
              v46 = v45;

              if (v46 != 0.0)
              {
                v47 = MEMORY[0x277CCABB0];
                [self strength];
                v39 = [v47 numberWithDouble:?];
                v40 = [v54 stringFromNumber:v39];
                v41 = v2;
                v42 = v40;
                v43 = @"sbw_intensity";
LABEL_30:
                [v41 setObject:v42 forKeyedSubscript:v43];
LABEL_34:

                v11 = v14;
                goto LABEL_35;
              }
            }

            else
            {
            }

            v39 = [self valueForKey:v13];
            [v39 doubleValue];
            if (v48 != 0.0)
            {
              v49 = MEMORY[0x277CCABB0];
              [v39 doubleValue];
              v40 = [v49 numberWithDouble:?];
              [v54 stringFromNumber:v40];
              v51 = v50 = v2;
              [v50 setObject:v51 forKeyedSubscript:v13];

              v2 = v50;
              v10 = v17;
              goto LABEL_34;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_37:
          ++v12;
        }

        while (v9 != v12);
        v9 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (!v9)
        {
LABEL_39:

          v52 = v2;
          goto LABEL_41;
        }
      }
    }
  }

  v52 = MEMORY[0x277CBEC10];
LABEL_41:

  return v52;
}

@end