@interface PIDepthAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PIDepthAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMinimumFractionDigits:1];
  [v2 setMaximumFractionDigits:2];
  adjustment = [self adjustment];
  if (adjustment)
  {
    v4 = adjustment;
    v39 = v2;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      selfCopy = self;
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v8 = visualInputKeys;
      v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v2 = v39;
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = v9;
      v11 = 0x277D3A000uLL;
      v12 = *v43;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          if (([analyticsKeysBlocklist containsObject:v14] & 1) == 0)
          {
            apertureKey = [*(v11 + 2248) apertureKey];
            v16 = [v14 isEqualToString:apertureKey];

            if (v16)
            {
              v17 = MEMORY[0x277CCABB0];
              [selfCopy aperture];
              v18 = [v17 numberWithDouble:?];
              v19 = [v2 stringFromNumber:v18];
              [v40 setObject:v19 forKeyedSubscript:@"aperture"];
              goto LABEL_15;
            }

            focusRectKey = [*(v11 + 2248) focusRectKey];
            v21 = [v14 isEqualToString:focusRectKey];

            if (v21)
            {
              focusRect = [selfCopy focusRect];
              v23 = [focusRect objectForKeyedSubscript:@"x"];
              [v23 floatValue];
              v25 = v24;

              focusRect2 = [selfCopy focusRect];
              v27 = [focusRect2 objectForKeyedSubscript:@"y"];
              [v27 floatValue];
              v29 = v28;

              v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
              v18 = [v2 stringFromNumber:v30];

              v31 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
              v19 = [v2 stringFromNumber:v31];

              v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v18, v19];
              [v40 setObject:v32 forKeyedSubscript:@"focusRect"];

              goto LABEL_15;
            }

            v18 = [selfCopy valueForKey:v14];
            [v18 doubleValue];
            if (v33 != 0.0)
            {
              v34 = MEMORY[0x277CCABB0];
              [v18 doubleValue];
              v19 = [v34 numberWithDouble:?];
              v35 = [v2 stringFromNumber:v19];
              [v40 setObject:v35 forKeyedSubscript:v14];

              v2 = v39;
LABEL_15:
            }

            v11 = 0x277D3A000;
            continue;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (!v10)
        {
LABEL_19:
          v36 = v8;

          v37 = v40;
          goto LABEL_22;
        }
      }
    }

    v37 = MEMORY[0x277CBEC10];
    v2 = v39;
  }

  else
  {
    v37 = MEMORY[0x277CBEC10];
  }

LABEL_22:

  return v37;
}

- (id)analyticsKeysBlocklist
{
  v0 = MEMORY[0x277CBEB98];
  depthInfoKey = [MEMORY[0x277D3A8C8] depthInfoKey];
  glassesMatteAllowedKey = [MEMORY[0x277D3A8C8] glassesMatteAllowedKey];
  v3 = [v0 setWithObjects:{depthInfoKey, glassesMatteAllowedKey, 0}];

  return v3;
}

@end