@interface SKDBreadcrumbProcessor
+ (id)referenceDateFor:(id)a3;
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDBreadcrumbProcessor)init;
- (SKDBreadcrumbProcessor)initWithDataDetector:(id)a3 listener:(id)a4;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (id)processedAttributes;
- (id)requiredAttributes;
- (unint64_t)maxEntityCount;
@end

@implementation SKDBreadcrumbProcessor

- (SKDBreadcrumbProcessor)init
{
  v3 = +[SKGDataDetector sharedDetector];
  v4 = [MEMORY[0x277D657A8] sharedProcessorListener];
  v5 = [(SKDBreadcrumbProcessor *)self initWithDataDetector:v3 listener:v4];

  return v5;
}

- (SKDBreadcrumbProcessor)initWithDataDetector:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKDBreadcrumbProcessor;
  v9 = [(SKDRecordProcessor *)&v12 initWithName:@"breadcrumb"];
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
  if (requiredAttributes_onceBreadReqToken != -1)
  {
    [SKDBreadcrumbProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sBreadcrumbReqAttributes;

  return v3;
}

void __44__SKDBreadcrumbProcessor_requiredAttributes__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CC31A0];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = requiredAttributes_sBreadcrumbReqAttributes;
  requiredAttributes_sBreadcrumbReqAttributes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)processedAttributes
{
  if (processedAttributes_onceBreadToken != -1)
  {
    [SKDBreadcrumbProcessor processedAttributes];
  }

  v3 = processedAttributes_sBreadcrumbAttributes;

  return v3;
}

void __45__SKDBreadcrumbProcessor_processedAttributes__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2A90];
  v4[0] = *MEMORY[0x277CC2AD8];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = processedAttributes_sBreadcrumbAttributes;
  processedAttributes_sBreadcrumbAttributes = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = SKDBreadcrumbProcessor;
  if ([(SKDRecordProcessor *)&v22 willProcessRecord:v6 bundleID:a4])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(SKDBreadcrumbProcessor *)self processedAttributes];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v6 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];

          if (v12)
          {
            v14 = [(SKDRecordProcessor *)self logger];
            v15 = +[SKDPipelineEvent alreadyProcessedEvent];
            [v14 logEvent:v15 level:6];

            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:v7];

  v11 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:v11];

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v10, "setTextContentLength:", [v12 length]);
  v13 = [SKDBreadcrumbProcessor referenceDateFor:v6];
  if (v13)
  {
    v14 = [(SKDBreadcrumbProcessor *)self listener];
    v76 = [v14 currentTimezone];
  }

  else
  {
    v76 = 0;
  }

  v15 = objc_alloc_init(SKGEntityRanker);
  v75 = v7;
  if (v12)
  {
    v16 = [(SKDRecordProcessor *)self logger];
    v17 = [v16 trackingEventBeginWithName:@"data-detector" event:v10];

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = [(SKDBreadcrumbProcessor *)self detector];
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __49__SKDBreadcrumbProcessor_processRecord_bundleID___block_invoke;
    v90[3] = &unk_27893E290;
    v20 = v15;
    v91 = v15;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __49__SKDBreadcrumbProcessor_processRecord_bundleID___block_invoke_2;
    v87[3] = &unk_27893E2B8;
    v21 = v18;
    v88 = v21;
    v89 = self;
    v22 = v13;
    v23 = [v19 enumerateDetectedDataInString:v12 locale:0 referenceDate:v13 referenceTimezone:v76 entityBlock:v90 rangeBlock:v87];

    v24 = [(SKDRecordProcessor *)self logger];
    [v24 trackingEventEnd:v17];

    if (v23)
    {
      [(SKDItemUpdate *)v10 addAttribute:SKDItemAttributeTextContentEntityRanges value:v21];
    }

    v25 = v23 ^ 1;
    v13 = v22;
    v15 = v20;
    v7 = v75;
  }

  else
  {
    v25 = 0;
  }

  if ([(SKDRecordProcessor *)self suspended]|| v25)
  {
    if ([(SKDRecordProcessor *)self suspended])
    {
      v62 = 3;
    }

    else
    {
      v62 = 1;
    }

    [(SKDEvent *)v10 updateStatus:v62];
    v26 = [(SKDRecordProcessor *)self logger];
    [v26 logEvent:v10 level:6];
  }

  else
  {
    v67 = [(SKDBreadcrumbProcessor *)self maxEntityCount];
    v26 = [(SKGEntityRanker *)v15 addresses];
    v73 = v10;
    v74 = v6;
    v71 = v12;
    v72 = self;
    v69 = v15;
    v70 = v13;
    v68 = v26;
    if ([v26 count])
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v26;
      v28 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v84;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v84 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v83 + 1) + 8 * i);
            v33 = [v32 city];

            if (v33)
            {
              v34 = 1;
            }

            else
            {
              v35 = [v32 area];

              if (v35)
              {
                v34 = 2;
              }

              else
              {
                v36 = [v32 country];

                if (v36)
                {
                  v34 = 3;
                }

                else
                {
                  v34 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }
            }

            v37 = objc_alloc(MEMORY[0x277CC3398]);
            v38 = [v32 address];
            v39 = [v32 synonyms];
            v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
            [v32 score];
            v41 = [v37 initWithAddress:v38 synonyms:v39 type:v40 lat:&unk_2846E8890 lng:&unk_2846E88A0 confidence:?];

            [v27 addObject:v41];
          }

          v29 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
        }

        while (v29);
      }

      v42 = [v27 count];
      if (v42 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v42;
      }

      v44 = [v27 subarrayWithRange:{0, v43}];
      v10 = v73;
      [(SKDItemUpdate *)v73 addAttribute:*MEMORY[0x277CC2A90] value:v44];

      v6 = v74;
      v7 = v75;
      v12 = v71;
      self = v72;
      v13 = v70;
      v26 = v68;
    }

    v45 = [(SKGEntityRanker *)v15 links];
    if ([v45 count])
    {
      v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v65 = v45;
      obja = v45;
      v47 = [obja countByEnumeratingWithState:&v79 objects:v93 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v80;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v80 != v49)
            {
              objc_enumerationMutation(obja);
            }

            v51 = *(*(&v79 + 1) + 8 * j);
            v52 = objc_alloc(MEMORY[0x277CC3438]);
            v53 = [v51 link];
            v54 = [v51 domain];
            v92 = v54;
            v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
            [v51 score];
            v56 = [v52 initWithLink:v53 synonyms:v55 confidence:?];

            [v46 addObject:v56];
          }

          v48 = [obja countByEnumeratingWithState:&v79 objects:v93 count:16];
        }

        while (v48);
      }

      v57 = [v46 count];
      if (v57 >= v67)
      {
        v58 = v67;
      }

      else
      {
        v58 = v57;
      }

      v59 = [v46 subarrayWithRange:{0, v58, v65}];
      v10 = v73;
      [(SKDItemUpdate *)v73 addAttribute:*MEMORY[0x277CC2AD8] value:v59];

      v6 = v74;
      v7 = v75;
      v12 = v71;
      self = v72;
      v15 = v69;
      v13 = v70;
      v26 = v68;
      v45 = v66;
    }

    v60 = [(SKDRecordProcessor *)self marker];
    [(SKDItemUpdate *)v10 addAttribute:v60 value:MEMORY[0x277CBEC38]];

    [(SKDEvent *)v10 updateStatus:2];
    v61 = [(SKDRecordProcessor *)self logger];
    [v61 logEvent:v10 level:6];
  }

  v63 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __49__SKDBreadcrumbProcessor_processRecord_bundleID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v7 addObject:v8];

  result = [*(a1 + 40) suspended];
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

+ (id)referenceDateFor:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E3E0, &qword_231C228C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  if (a3)
  {
    a3 = sub_231C17C10();
  }

  static SKDBreadcrumbProcessor.referenceDate(for:)(a3, v8);

  v9 = sub_231C17B70();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_231C17B50();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

@end