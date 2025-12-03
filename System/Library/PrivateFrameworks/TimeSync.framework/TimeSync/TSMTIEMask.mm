@interface TSMTIEMask
+ (id)UDPHardwareMask;
+ (id)UDPSoftwareMask;
+ (id)gPTP1Hop;
+ (id)gPTP7Hop;
+ (id)gPTPMask1;
+ (id)gPTPMask2;
+ (id)gPTPMask3;
- (BOOL)mtieConformsToMask:(id)mask withErrors:(id *)errors;
- (TSMTIEMask)initWithDictionary:(id)dictionary;
- (id)mtieMaskFromStart:(double)start toEnd:(double)end withStep:(double)step;
@end

@implementation TSMTIEMask

+ (id)UDPHardwareMask
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"UDP End-to-End Ports over peer-to-peer wireless with Hardware Timestamping" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:1.0 offset:0.000206 lowerLimit:0.0 upperLimit:0.000006];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.000212 lowerLimit:0.000006 upperLimit:INFINITY];

  [array addObject:v7];
  [v2 setElements:array];

  return v2;
}

+ (id)UDPSoftwareMask
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"UDP End-to-End Ports over wired or wireless infrastructure" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:1.0 offset:0.000206 lowerLimit:0.0 upperLimit:0.006];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.006206 lowerLimit:0.006 upperLimit:INFINITY];

  [array addObject:v7];
  [v2 setElements:array];

  return v2;
}

+ (id)gPTPMask1
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"802.1AS MTIE Mask 1" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0000069548 offset:0.0 lowerLimit:0.0 upperLimit:0.0637];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.000000443 lowerLimit:0.0637 upperLimit:0.3183];

  [array addObject:v7];
  v8 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.00005 offset:0.0 lowerLimit:0.3183 upperLimit:INFINITY];

  [array addObject:v8];
  [v2 setElements:array];

  return v2;
}

+ (id)gPTPMask2
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"802.1AS MTIE Mask 2" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.000000407 lowerLimit:0.0 upperLimit:0.4069];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.000001 offset:0.0 lowerLimit:0.4069 upperLimit:INFINITY];

  [array addObject:v7];
  [v2 setElements:array];

  return v2;
}

+ (id)gPTPMask3
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"802.1AS MTIE Mask 3" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.00000005 offset:0.0 lowerLimit:0.0 upperLimit:4.0];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.0000002 lowerLimit:4.0 upperLimit:INFINITY];

  [array addObject:v7];
  [v2 setElements:array];

  return v2;
}

+ (id)gPTP7Hop
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"gPTP MTIE Mask for 7 Hops" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.000000407 lowerLimit:0.0 upperLimit:0.4069];
  [array addObject:v6];
  v7 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.000001 offset:0.0 lowerLimit:0.4069 upperLimit:1.0];

  [array addObject:v7];
  v8 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.0000001 lowerLimit:1.0 upperLimit:INFINITY];

  [array addObject:v8];
  [v2 setElements:array];

  return v2;
}

+ (id)gPTP1Hop
{
  v2 = objc_alloc_init(objc_opt_class());
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"gPTP MTIE Mask for 7 Hops" value:&stru_287F0FAF8 table:0];
  [v2 setName:v4];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [[TSMTIEMaskElement alloc] initWithCoefficient:0.0 offset:0.00000016 lowerLimit:0.0 upperLimit:INFINITY];
  [array addObject:v6];
  [v2 setElements:array];

  return v2;
}

- (TSMTIEMask)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = TSMTIEMask;
  v5 = [(TSMTIEMask *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v7 = [v6 copy];
    name = v5->_name;
    v5->_name = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [dictionaryCopy objectForKeyedSubscript:{@"equation", 0}];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[TSMTIEMaskElement alloc] initWithDictionary:*(*(&v20 + 1) + 8 * v14)];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v9];
    elements = v5->_elements;
    v5->_elements = v16;

    if (![(NSArray *)v5->_elements count])
    {

      v5 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)mtieConformsToMask:(id)mask withErrors:(id *)errors
{
  v53 = *MEMORY[0x277D85DE8];
  maskCopy = mask;
  if ([maskCopy count])
  {
    if (errors)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v6 = 0;
    }

    errorsCopy = errors;
    v39 = maskCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = maskCopy;
    v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      v41 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          elements = [(TSMTIEMask *)self elements];
          v14 = [elements countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = v6;
            v17 = *v44;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v44 != v17)
                {
                  objc_enumerationMutation(elements);
                }

                v19 = *(*(&v43 + 1) + 8 * j);
                [v12 observationInterval];
                v21 = v20;
                [v19 lowerLimit];
                if (v21 >= v22)
                {
                  [v12 observationInterval];
                  v24 = v23;
                  [v19 upperLimit];
                  if (v24 < v25)
                  {
                    [v19 a];
                    v27 = v26;
                    [v12 observationInterval];
                    v29 = v28 / 1000000000.0;
                    [v19 b];
                    v31 = (v30 + v27 * v29) * 1000000000.0;
                    [v12 mtie];
                    v6 = v16;
                    if (v32 <= v31 || v16 == 0)
                    {
                      v41 &= v32 <= v31;
                    }

                    else
                    {
                      v34 = objc_alloc_init(TSMTIEMaskError);
                      [v12 observationInterval];
                      [(TSMTIEMaskError *)v34 setObservationInterval:?];
                      [v12 mtie];
                      [(TSMTIEMaskError *)v34 setMtie:?];
                      [(TSMTIEMaskError *)v34 setMask:v31];
                      [v16 addObject:v34];

                      v41 = 0;
                    }

                    goto LABEL_27;
                  }
                }
              }

              v15 = [elements countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

            v6 = v16;
          }

LABEL_27:
        }

        v9 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v9);
    }

    else
    {
      v41 = 1;
    }

    if (errorsCopy)
    {
      v35 = v6;
      *errorsCopy = v6;
    }

    maskCopy = v39;
    v7 = v41;
  }

  else
  {
    v7 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (id)mtieMaskFromStart:(double)start toEnd:(double)end withStep:(double)step
{
  v30 = *MEMORY[0x277D85DE8];
  for (i = [MEMORY[0x277CBEB18] array];
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    elements = [(TSMTIEMask *)self elements];
    v11 = [elements countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(elements);
          }

          v15 = *(*(&v25 + 1) + 8 * j);
          [v15 lowerLimit];
          if (start >= v16)
          {
            [v15 upperLimit];
            if (start < v17)
            {
              [v15 a];
              v20 = v19;
              [v15 b];
              v18 = (v21 + v20 * (start / 1000000000.0)) * 1000000000.0;
              goto LABEL_13;
            }
          }
        }

        v12 = [elements countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = NAN;
LABEL_13:

    v22 = [[TSMTIEValue alloc] initWithObservationInterval:start andMTIE:v18];
    [i addObject:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return i;
}

@end