@interface PISemanticStyleAdjustmentController(Analytics)
- (id)analyticsKeysBlocklist;
- (id)analyticsPayload;
@end

@implementation PISemanticStyleAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMinimumFractionDigits:1];
  v31 = v2;
  [v2 setMaximumFractionDigits:2];
  v3 = [a1 adjustment];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 enabled];

    if (v5)
    {
      v6 = [a1 visualInputKeys];
      v7 = [a1 analyticsKeysBlocklist];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = v8;
      v10 = *v37;
      v33 = v7;
      while (1)
      {
        v11 = 0;
        v34 = v9;
        do
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * v11);
          if (([v7 containsObject:v12] & 1) == 0)
          {
            v13 = a1;
            v14 = [MEMORY[0x277D3A968] toneKey];
            v40[0] = v14;
            v15 = [MEMORY[0x277D3A968] colorKey];
            v40[1] = v15;
            v16 = [MEMORY[0x277D3A968] intensityKey];
            v40[2] = v16;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
            v18 = [v17 containsObject:v12];

            if (v18)
            {
              v19 = MEMORY[0x277CCABB0];
              a1 = v13;
              v20 = [v13 valueForKey:v12];
              v21 = v20;
              goto LABEL_15;
            }

            v22 = [MEMORY[0x277D3A968] castKey];
            v23 = [v12 isEqualToString:v22];

            a1 = v13;
            if (v23)
            {
              v21 = [v13 cast];
              [v32 setObject:v21 forKeyedSubscript:@"styles_cast"];
            }

            else
            {
              v21 = [v13 valueForKey:v12];
              [v21 doubleValue];
              if (v24 != 0.0)
              {
                v19 = MEMORY[0x277CCABB0];
                v20 = v21;
LABEL_15:
                [v20 doubleValue];
                v25 = [v19 numberWithDouble:?];
                v26 = [v31 stringFromNumber:v25];
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"styles_%@", v12];
                [v32 setObject:v26 forKeyedSubscript:v27];
              }
            }

            v7 = v33;
            v9 = v34;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (!v9)
        {
LABEL_19:

          if ([a1 hasDefaultStyleParameters])
          {
            v28 = @"1";
          }

          else
          {
            v28 = @"0";
          }

          [v32 setObject:v28 forKeyedSubscript:@"styles_is_default"];
          v29 = v32;

          goto LABEL_24;
        }
      }
    }
  }

  v29 = MEMORY[0x277CBEC10];
LABEL_24:

  return v29;
}

- (id)analyticsKeysBlocklist
{
  v0 = MEMORY[0x277CBEB98];
  v1 = [MEMORY[0x277D3A968] useStyleEngineKey];
  v2 = [MEMORY[0x277D3A968] statisticsKey];
  v3 = [v0 setWithObjects:{v1, v2, 0}];

  return v3;
}

@end