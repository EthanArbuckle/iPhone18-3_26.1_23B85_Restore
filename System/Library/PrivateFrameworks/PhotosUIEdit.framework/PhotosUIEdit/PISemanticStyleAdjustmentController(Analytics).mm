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
  adjustment = [self adjustment];
  if (adjustment)
  {
    v4 = adjustment;
    enabled = [self enabled];

    if (enabled)
    {
      visualInputKeys = [self visualInputKeys];
      analyticsKeysBlocklist = [self analyticsKeysBlocklist];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = visualInputKeys;
      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = v8;
      v10 = *v37;
      v33 = analyticsKeysBlocklist;
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
          if (([analyticsKeysBlocklist containsObject:v12] & 1) == 0)
          {
            selfCopy = self;
            toneKey = [MEMORY[0x277D3A968] toneKey];
            v40[0] = toneKey;
            colorKey = [MEMORY[0x277D3A968] colorKey];
            v40[1] = colorKey;
            intensityKey = [MEMORY[0x277D3A968] intensityKey];
            v40[2] = intensityKey;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
            v18 = [v17 containsObject:v12];

            if (v18)
            {
              v19 = MEMORY[0x277CCABB0];
              self = selfCopy;
              v20 = [selfCopy valueForKey:v12];
              cast = v20;
              goto LABEL_15;
            }

            castKey = [MEMORY[0x277D3A968] castKey];
            v23 = [v12 isEqualToString:castKey];

            self = selfCopy;
            if (v23)
            {
              cast = [selfCopy cast];
              [v32 setObject:cast forKeyedSubscript:@"styles_cast"];
            }

            else
            {
              cast = [selfCopy valueForKey:v12];
              [cast doubleValue];
              if (v24 != 0.0)
              {
                v19 = MEMORY[0x277CCABB0];
                v20 = cast;
LABEL_15:
                [v20 doubleValue];
                v25 = [v19 numberWithDouble:?];
                v26 = [v31 stringFromNumber:v25];
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"styles_%@", v12];
                [v32 setObject:v26 forKeyedSubscript:v27];
              }
            }

            analyticsKeysBlocklist = v33;
            v9 = v34;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (!v9)
        {
LABEL_19:

          if ([self hasDefaultStyleParameters])
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
  useStyleEngineKey = [MEMORY[0x277D3A968] useStyleEngineKey];
  statisticsKey = [MEMORY[0x277D3A968] statisticsKey];
  v3 = [v0 setWithObjects:{useStyleEngineKey, statisticsKey, 0}];

  return v3;
}

@end