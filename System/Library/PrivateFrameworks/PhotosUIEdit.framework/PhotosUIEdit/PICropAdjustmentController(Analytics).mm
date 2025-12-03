@interface PICropAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PICropAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v74 = *MEMORY[0x277D85DE8];
  v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMinimumFractionDigits:1];
  [v2 setMaximumFractionDigits:2];
  adjustment = [self adjustment];
  if (adjustment)
  {
    v4 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v8 = visualInputKeys;
      v9 = [v8 countByEnumeratingWithState:&v69 objects:v73 count:16];
      if (!v9)
      {
        goto LABEL_44;
      }

      v10 = v9;
      v64 = 0;
      v67 = 0;
      v11 = 0x277D3A000uLL;
      v12 = *v70;
      v66 = v8;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v70 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v69 + 1) + 8 * v13);
          if (([analyticsKeysBlocklist containsObject:v14] & 1) == 0)
          {
            angleKey = [*(v11 + 2224) angleKey];
            if ([v14 isEqualToString:angleKey])
            {
              [self angle];
              v17 = v16;

              if (v17 != 0.0)
              {
                v18 = MEMORY[0x277CCABB0];
                [self angle];
                v19 = [v18 numberWithDouble:?];
                v20 = [v2 stringFromNumber:v19];
                v21 = v68;
                v22 = v20;
                v23 = @"straighten";
LABEL_20:
                [v21 setObject:v22 forKeyedSubscript:v23];
                goto LABEL_21;
              }
            }

            else
            {
            }

            yawKey = [*(v11 + 2224) yawKey];
            if ([v14 isEqualToString:yawKey])
            {
              [self yaw];
              v26 = v25;

              if (v26 != 0.0)
              {
                v27 = MEMORY[0x277CCABB0];
                [self yaw];
                v19 = [v27 numberWithDouble:?];
                v20 = [v2 stringFromNumber:v19];
                v21 = v68;
                v22 = v20;
                v23 = @"horizontal";
                goto LABEL_20;
              }
            }

            else
            {
            }

            pitchKey = [*(v11 + 2224) pitchKey];
            if ([v14 isEqualToString:pitchKey])
            {
              [self pitch];
              v30 = v29;

              if (v30 != 0.0)
              {
                v31 = MEMORY[0x277CCABB0];
                [self pitch];
                v19 = [v31 numberWithDouble:?];
                v20 = [v2 stringFromNumber:v19];
                v21 = v68;
                v22 = v20;
                v23 = @"vertical";
                goto LABEL_20;
              }
            }

            else
            {
            }

            v32 = v2;
            widthKey = [*(v11 + 2224) widthKey];
            if ([v14 isEqualToString:widthKey])
            {
            }

            else
            {
              heightKey = [*(v11 + 2224) heightKey];
              v35 = [v14 isEqualToString:heightKey];

              v11 = 0x277D3A000uLL;
              if (!v35)
              {
                xOriginKey = [MEMORY[0x277D3A8B0] xOriginKey];
                if ([v14 isEqualToString:xOriginKey])
                {

                  v2 = v32;
                  goto LABEL_37;
                }

                yOriginKey = [MEMORY[0x277D3A8B0] yOriginKey];
                v47 = [v14 isEqualToString:yOriginKey];

                v2 = v32;
                if (v47)
                {
LABEL_37:
                  if (v64)
                  {
                    v64 = 1;
                    v8 = v66;
                    goto LABEL_23;
                  }

                  v48 = MEMORY[0x277CCABB0];
                  xOriginKey2 = [MEMORY[0x277D3A8B0] xOriginKey];
                  v50 = [self valueForKey:xOriginKey2];
                  [v50 doubleValue];
                  v51 = [v48 numberWithDouble:?];
                  v19 = [v32 stringFromNumber:v51];

                  v52 = MEMORY[0x277CCABB0];
                  yOriginKey2 = [MEMORY[0x277D3A8B0] yOriginKey];
                  v53 = [self valueForKey:yOriginKey2];
                  [v53 doubleValue];
                  v54 = [v52 numberWithDouble:?];
                  v20 = [v32 stringFromNumber:v54];

                  v2 = v32;
                  v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v19, v20];;
                  [v68 setObject:v55 forKeyedSubscript:@"crop_rect_origin"];

                  v64 = 1;
LABEL_33:
                  v8 = v66;
LABEL_21:
                }

                else
                {
                  v19 = [self valueForKey:v14];
                  [v19 doubleValue];
                  if (v56 != 0.0)
                  {
                    v57 = MEMORY[0x277CCABB0];
                    [v19 doubleValue];
                    v20 = [v57 numberWithDouble:?];
                    v58 = [v2 stringFromNumber:v20];
                    [v68 setObject:v58 forKeyedSubscript:v14];

                    goto LABEL_33;
                  }

                  v8 = v66;
                }

LABEL_23:
                v11 = 0x277D3A000;
                goto LABEL_24;
              }
            }

            if ((v67 & 1) == 0)
            {
              widthKey2 = [*(v11 + 2224) widthKey];
              v37 = [self valueForKey:widthKey2];
              [v37 floatValue];
              v39 = v38;

              heightKey2 = [*(v11 + 2224) heightKey];
              v41 = [self valueForKey:heightKey2];
              [v41 floatValue];
              v43 = v42;

              *&v44 = v39 / v43;
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
              v2 = v32;
              v20 = [v32 stringFromNumber:v19];
              [v68 setObject:v20 forKeyedSubscript:@"crop_ratio"];
              v67 = 1;
              goto LABEL_33;
            }

            v67 = 1;
            v2 = v32;
            v8 = v66;
          }

LABEL_24:
          ++v13;
        }

        while (v10 != v13);
        v59 = [v8 countByEnumeratingWithState:&v69 objects:v73 count:16];
        v10 = v59;
        if (!v59)
        {
LABEL_44:

          v60 = v8;
          v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(self, "isAuto")];
          [v68 setObject:v61 forKeyedSubscript:@"crop_auto"];

          v62 = v68;
          goto LABEL_46;
        }
      }
    }
  }

  v62 = MEMORY[0x277CBEC10];
LABEL_46:

  return v62;
}

- (id)analyticsKeysBlocklist
{
  v0 = MEMORY[0x277CBEB98];
  constraintWidthKey = [MEMORY[0x277D3A8B0] constraintWidthKey];
  constraintHeightKey = [MEMORY[0x277D3A8B0] constraintHeightKey];
  v3 = [v0 setWithObjects:{constraintWidthKey, constraintHeightKey, 0}];

  return v3;
}

@end