@interface SKDLocationProcessor
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDLocationProcessor)init;
- (SKDLocationProcessor)initWithDataDetector:(id)a3 listener:(id)a4;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
@end

@implementation SKDLocationProcessor

- (SKDLocationProcessor)init
{
  v3 = +[SKGDataDetector sharedDetector];
  v4 = [MEMORY[0x277D657A8] sharedProcessorListener];
  v5 = [(SKDLocationProcessor *)self initWithDataDetector:v3 listener:v4];

  return v5;
}

- (SKDLocationProcessor)initWithDataDetector:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKDLocationProcessor;
  v9 = [(SKDRecordProcessor *)&v12 initWithName:@"location"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_detector, a3);
    objc_storeStrong(&v10->_listener, a4);
  }

  return v10;
}

- (unint64_t)maxEntityCount
{
  v2 = [MEMORY[0x277D657A0] sharedContext];
  v3 = [v2 maxEntityCount];

  return v3;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceLocReqToken != -1)
  {
    [SKDLocationProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sLocReqAttributes;

  return v3;
}

void __42__SKDLocationProcessor_requiredAttributes__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2DD0];
  v4[0] = *MEMORY[0x277CC2A90];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = requiredAttributes_sLocReqAttributes;
  requiredAttributes_sLocReqAttributes = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (id)processedAttributes
{
  if (processedAttributes_onceLocToken != -1)
  {
    [SKDLocationProcessor processedAttributes];
  }

  v3 = processedAttributes_sLocAttributes;

  return v3;
}

void __43__SKDLocationProcessor_processedAttributes__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CC2A90];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = processedAttributes_sLocAttributes;
  processedAttributes_sLocAttributes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v5.receiver = self;
  v5.super_class = SKDLocationProcessor;
  return [(SKDRecordProcessor *)&v5 willProcessRecord:a3 bundleID:a4];
}

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:v7];

  v11 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:v11];

  v12 = [v6 objectForKeyedSubscript:@"kMDItemTextContentLanguage"];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v12];
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = @"und";
  }

  [(SKDItemUpdate *)v10 setTextContentLanguage:v14];
  v110 = objc_alloc_init(SKGEntityRanker);
  v104 = *MEMORY[0x277CC2A90];
  v15 = [v6 objectForKeyedSubscript:?];
  if ([v15 count])
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  v111 = self;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v18 = [(SKDRecordProcessor *)self logger];
    v113 = [v18 trackingEventBeginWithName:@"resolve-locations" event:v10];

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v15;
    v19 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
    if (v19)
    {
      v20 = v19;
      v106 = v15;
      v108 = v10;
      v102 = v7;
      v117 = *v137;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v137 != v117)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v136 + 1) + 8 * i);
          v23 = [(SKDRecordProcessor *)self logger];
          v24 = [v23 trackingEventBeginWithName:@"resolve-location" event:v108];

          v25 = [(SKDLocationProcessor *)self detector];
          v26 = [v22 label];
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke;
          v133[3] = &unk_27893E338;
          v134 = v110;
          v135 = self;
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_2;
          v132[3] = &unk_27893E3D8;
          v132[4] = self;
          v27 = v13;
          v28 = [v25 enumerateDetectedDataInString:v26 locale:v13 referenceDate:0 referenceTimezone:0 entityBlock:v133 rangeBlock:v132];

          v29 = [(SKDRecordProcessor *)self logger];
          [v29 trackingEventEnd:v24];

          if (!v28)
          {
            v17 = 0;
            v7 = v102;
            v10 = v108;
            v13 = v27;
            goto LABEL_20;
          }

          v13 = v27;
        }

        v20 = [obj countByEnumeratingWithState:&v136 objects:v142 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v17 = 1;
      v7 = v102;
      v10 = v108;
LABEL_20:
      v15 = v106;
    }

    else
    {
      v17 = 1;
    }

    v30 = [(SKDRecordProcessor *)self logger];
    [v30 trackingEventEnd:v113];
  }

  if ([(SKDRecordProcessor *)self suspended]|| !v17)
  {
    if ([(SKDRecordProcessor *)self suspended])
    {
      v44 = 3;
    }

    else
    {
      v44 = 1;
    }

    [(SKDEvent *)v10 updateStatus:v44];
    v45 = [(SKDRecordProcessor *)self logger];
    [v45 logEvent:v10 level:6];

    v46 = v10;
  }

  else
  {
    v31 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2DD0]];
    v32 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2D18]];
    v33 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC2D50]];
    v105 = v31;
    v107 = v15;
    v99 = v33;
    v100 = v32;
    if (v31)
    {
      if (!v13)
      {
        v34 = [(SKDLocationProcessor *)v111 listener];
        v13 = [v34 currentLocale];
      }

      if (v32 && v33)
      {
        [v32 doubleValue];
        v36 = v35;
        [v33 doubleValue];
        v38 = v37;
        v39 = [(SKDRecordProcessor *)v111 logger];
        v40 = [v39 trackingEventBeginWithName:@"resolve-location" event:v10];

        v41 = [(SKDLocationProcessor *)v111 detector];
        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_3;
        v130[3] = &unk_27893E338;
        v42 = v131;
        v131[0] = v110;
        v131[1] = v111;
        v43 = [v41 enumerateLocationsInString:v105 locale:v13 latitude:v130 longitude:v36 entityBlock:v38];
      }

      else
      {
        v47 = [(SKDRecordProcessor *)v111 logger];
        v40 = [v47 trackingEventBeginWithName:@"resolve-location" event:v10];

        v41 = [(SKDLocationProcessor *)v111 detector];
        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_4;
        v128[3] = &unk_27893E338;
        v42 = v129;
        v129[0] = v110;
        v129[1] = v111;
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_5;
        v127[3] = &unk_27893E3D8;
        v127[4] = v111;
        v43 = [v41 enumerateDetectedLocationsInString:v105 locale:v13 entityBlock:v128 rangeBlock:v127];
      }

      v17 = v43;

      v48 = [(SKDRecordProcessor *)v111 logger];
      [v48 trackingEventEnd:v40];

      v33 = v99;
      v32 = v100;
    }

    if ([(SKDRecordProcessor *)v111 suspended]|| !v17)
    {
      if ([(SKDRecordProcessor *)v111 suspended])
      {
        v58 = 3;
      }

      else
      {
        v58 = 1;
      }

      [(SKDEvent *)v10 updateStatus:v58];
      v59 = [(SKDRecordProcessor *)v111 logger];
      [v59 logEvent:v10 level:6];

      v60 = v10;
    }

    else
    {
      v97 = [v6 objectForKeyedSubscript:@"_SKGTestLocation"];
      v103 = v7;
      if (v97)
      {
        v49 = v111;
        if (!v13)
        {
          v50 = [(SKDLocationProcessor *)v111 listener];
          v13 = [v50 currentLocale];
        }

        v51 = [v97 componentsSeparatedByString:{@", "}];
        if ([v51 count] == 3)
        {
          v52 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
          [(SKGAddress *)v52 setAddress:v97];
          v53 = [v51 objectAtIndexedSubscript:0];
          [(SKGAddress *)v52 setCity:v53];

          v54 = [v51 objectAtIndexedSubscript:1];
          [(SKGAddress *)v52 setArea:v54];

          v55 = [v51 objectAtIndexedSubscript:2];
          [(SKGAddress *)v52 setCountry:v55];

          v56 = [(SKDLocationProcessor *)v111 detector];
          v57 = [v56 locationFromAddress:v52 locale:v13];

          [(SKGEntityRanker *)v110 addEntity:v57];
        }

        v94 = v13;
      }

      else
      {
        v94 = v13;
        v49 = v111;
      }

      v101 = v12;
      v109 = v10;
      v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v96 = [(SKGEntityRanker *)v110 locations];
      if ([v96 count])
      {
        v98 = v6;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v114 = v96;
        v62 = [v114 countByEnumeratingWithState:&v123 objects:v141 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v124;
          do
          {
            v65 = 0;
            v112 = v63;
            do
            {
              if (*v124 != v64)
              {
                objc_enumerationMutation(v114);
              }

              v66 = *(*(&v123 + 1) + 8 * v65);
              v67 = [v66 address];

              if (v67)
              {
                v68 = [v66 address];
                v69 = [v68 address];

                if (([v61 containsObject:v69] & 1) == 0)
                {
                  obja = objc_alloc(MEMORY[0x277CC3398]);
                  v70 = [v66 expansions];
                  v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v66, "type")}];
                  v72 = MEMORY[0x277CCABB0];
                  [v66 lat];
                  v73 = [v72 numberWithDouble:?];
                  v74 = v61;
                  v75 = v64;
                  v76 = MEMORY[0x277CCABB0];
                  [v66 lng];
                  v77 = [v76 numberWithDouble:?];
                  [v66 score];
                  v78 = [obja initWithAddress:v69 synonyms:v70 type:v71 lat:v73 lng:v77 confidence:?];

                  v64 = v75;
                  v61 = v74;

                  v63 = v112;
                  [v118 addObject:v78];
                  [v74 addObject:v69];
                }
              }

              ++v65;
            }

            while (v63 != v65);
            v63 = [v114 countByEnumeratingWithState:&v123 objects:v141 count:16];
          }

          while (v63);
        }

        v6 = v98;
        v49 = v111;
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v79 = v107;
      v80 = [v79 countByEnumeratingWithState:&v119 objects:v140 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v120;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v120 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v119 + 1) + 8 * j);
            v85 = [v84 label];
            v86 = [v61 containsObject:v85];

            if ((v86 & 1) == 0)
            {
              [v118 addObject:v84];
            }
          }

          v81 = [v79 countByEnumeratingWithState:&v119 objects:v140 count:16];
        }

        while (v81);
      }

      v87 = [(SKDLocationProcessor *)v49 maxEntityCount];
      v12 = v101;
      v7 = v103;
      v10 = v109;
      v33 = v99;
      v32 = v100;
      if ([v118 count])
      {
        [v118 sortUsingComparator:&__block_literal_global_40];
        if ([v118 count] < v87)
        {
          v87 = [v118 count];
        }

        v88 = [v118 subarrayWithRange:{0, v87, v94}];
        [(SKDItemUpdate *)v109 addAttribute:v104 value:v88];
      }

      v89 = [(SKDRecordProcessor *)v49 marker];
      [(SKDItemUpdate *)v109 addAttribute:v89 value:MEMORY[0x277CBEC38]];

      [(SKDEvent *)v109 updateStatus:2];
      v90 = [(SKDRecordProcessor *)v49 logger];
      [v90 logEvent:v109 level:6];

      v91 = v109;
      v13 = v95;
      v15 = v107;
    }
  }

  v92 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addEntity:a2];
  result = [*(a1 + 40) suspended];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) suspended];
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addEntity:a2];
  result = [*(a1 + 40) suspended];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

void __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addEntity:v5];
  }

  if ([*(a1 + 40) suspended])
  {
    *a3 = 1;
  }
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) suspended];
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __47__SKDLocationProcessor_processRecord_bundleID___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 confidence];
  v6 = v5;
  [v4 confidence];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end