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
  v3 = [a1 adjustment];
  if (v3)
  {
    v4 = v3;
    v39 = v2;
    v5 = [a1 enabled];

    if (v5)
    {
      v6 = [a1 visualInputKeys];
      v41 = a1;
      v7 = [a1 analyticsKeysBlocklist];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v8 = v6;
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
          if (([v7 containsObject:v14] & 1) == 0)
          {
            v15 = [*(v11 + 2248) apertureKey];
            v16 = [v14 isEqualToString:v15];

            if (v16)
            {
              v17 = MEMORY[0x277CCABB0];
              [v41 aperture];
              v18 = [v17 numberWithDouble:?];
              v19 = [v2 stringFromNumber:v18];
              [v40 setObject:v19 forKeyedSubscript:@"aperture"];
              goto LABEL_15;
            }

            v20 = [*(v11 + 2248) focusRectKey];
            v21 = [v14 isEqualToString:v20];

            if (v21)
            {
              v22 = [v41 focusRect];
              v23 = [v22 objectForKeyedSubscript:@"x"];
              [v23 floatValue];
              v25 = v24;

              v26 = [v41 focusRect];
              v27 = [v26 objectForKeyedSubscript:@"y"];
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

            v18 = [v41 valueForKey:v14];
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
  v1 = [MEMORY[0x277D3A8C8] depthInfoKey];
  v2 = [MEMORY[0x277D3A8C8] glassesMatteAllowedKey];
  v3 = [v0 setWithObjects:{v1, v2, 0}];

  return v3;
}

@end