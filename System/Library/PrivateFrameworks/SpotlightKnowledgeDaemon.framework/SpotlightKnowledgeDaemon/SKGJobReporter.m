@interface SKGJobReporter
- (SKGJobReporter)initWithVerbosity:(int)a3;
- (id)extractionReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5;
- (id)loggingReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5;
- (id)pipelineReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5;
- (id)reports;
- (void)_addValue:(id)a3 attribute:(id)a4 uniqueID:(id)a5 bundleID:(id)a6;
- (void)addAttribute:(id)a3 bundleID:(id)a4;
- (void)addFromRecord:(id)a3 bundleID:(id)a4;
- (void)clear;
- (void)enableCountingAttribute:(id)a3 message:(id)a4 processor:(id)a5;
- (void)enableLoggingAttribute:(id)a3 message:(id)a4 processor:(id)a5;
- (void)enableReportingAttribute:(id)a3 message:(id)a4 processor:(id)a5;
- (void)logAttribute:(id)a3 value:(id)a4 uniqueID:(id)a5 bundleID:(id)a6;
- (void)logFromRecord:(id)a3 uniqueID:(id)a4 bundleID:(id)a5;
@end

@implementation SKGJobReporter

- (void)enableCountingAttribute:(id)a3 message:(id)a4 processor:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  countingPairs = self->_countingPairs;
  if (!countingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_countingPairs;
    self->_countingPairs = v11;

    countingPairs = self->_countingPairs;
  }

  v13 = [(NSMutableDictionary *)countingPairs objectForKeyedSubscript:v9];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_countingPairs setObject:v14 forKeyedSubscript:v9];
  }

  v15 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:v9];
  [v15 setObject:v8 forKey:v16];

  [(NSMutableSet *)self->_countingAttributes addObject:v16];
  [(NSMutableSet *)self->_fetchAttributes addObject:v16];
}

- (void)enableReportingAttribute:(id)a3 message:(id)a4 processor:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  reportingPairs = self->_reportingPairs;
  if (!reportingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_reportingPairs;
    self->_reportingPairs = v11;

    reportingPairs = self->_reportingPairs;
  }

  v13 = [(NSMutableDictionary *)reportingPairs objectForKeyedSubscript:v9];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_reportingPairs setObject:v14 forKeyedSubscript:v9];
  }

  v15 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:v9];
  [v15 setObject:v8 forKey:v16];

  [(NSMutableSet *)self->_reportingAttributes addObject:v16];
  [(NSMutableSet *)self->_fetchAttributes addObject:v16];
}

- (void)enableLoggingAttribute:(id)a3 message:(id)a4 processor:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  loggingPairs = self->_loggingPairs;
  if (!loggingPairs)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_loggingPairs;
    self->_loggingPairs = v11;

    loggingPairs = self->_loggingPairs;
  }

  v13 = [(NSMutableDictionary *)loggingPairs objectForKeyedSubscript:v9];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_loggingPairs setObject:v14 forKeyedSubscript:v9];
  }

  v15 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v9];
  [v15 setObject:v8 forKey:v16];

  [(NSMutableSet *)self->_loggingAttributes addObject:v16];
  [(NSMutableSet *)self->_fetchAttributes addObject:v16];
}

- (SKGJobReporter)initWithVerbosity:(int)a3
{
  v30.receiver = self;
  v30.super_class = SKGJobReporter;
  v4 = [(SKGJobReporter *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v4->_verbosity = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counter = v5->_counter;
    v5->_counter = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countingPairs = v5->_countingPairs;
    v5->_countingPairs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    countingAttributes = v5->_countingAttributes;
    v5->_countingAttributes = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportingPairs = v5->_reportingPairs;
    v5->_reportingPairs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    reportingAttributes = v5->_reportingAttributes;
    v5->_reportingAttributes = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    loggingPairs = v5->_loggingPairs;
    v5->_loggingPairs = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loggingAttributes = v5->_loggingAttributes;
    v5->_loggingAttributes = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fetchAttributes = v5->_fetchAttributes;
    v5->_fetchAttributes = v20;

    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCAD78] UUID];
    v24 = [v23 description];
    v25 = [v22 stringWithFormat:@"/tmp/skg/reports/%@", v24];
    outputRoot = v5->_outputRoot;
    v5->_outputRoot = v25;

    v27 = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(v23) = [v27 fileExistsAtPath:v5->_outputRoot];

    if ((v23 & 1) == 0)
    {
      v28 = [MEMORY[0x277CCAA00] defaultManager];
      [v28 createDirectoryAtPath:v5->_outputRoot withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:0];
    }
  }

  return v5;
}

- (void)addAttribute:(id)a3 bundleID:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SKGJobReporter *)self countingAttributes];
  if ([v7 containsObject:v13])
  {
  }

  else
  {
    v8 = [(SKGJobReporter *)self reportingAttributes];
    v9 = [v8 containsObject:v13];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v6];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA940]);
    [(NSMutableDictionary *)self->_counter setObject:v11 forKeyedSubscript:v6];
  }

  v12 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v6];
  [v12 addObject:v13];

LABEL_7:
}

- (void)addFromRecord:(id)a3 bundleID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(SKGJobReporter *)self fetchAttributes];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = *MEMORY[0x277CBEEE8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15 == v12;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [(SKGJobReporter *)self addAttribute:v14 bundleID:v7];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addValue:(id)a3 attribute:(id)a4 uniqueID:(id)a5 bundleID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", self->_outputRoot, v13];
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v15 fileExistsAtPath:v14];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    [v17 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.txt", v14, v11];
  v29 = 0;
  v19 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v18 encoding:4 error:&v29];
  v20 = v29;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_2846CE8D8;
  }

  [(__CFString *)v21 stringByAppendingFormat:@"%@;=;%@\n", v12, v10];
  v22 = v26 = v10;
  v28 = v20;
  [v22 writeToFile:v18 atomically:1 encoding:4 error:&v28];
  v23 = v28;

  v24 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v13];

  if (!v24)
  {
    v25 = objc_alloc_init(MEMORY[0x277CCA940]);
    [(NSMutableDictionary *)self->_counter setObject:v25 forKeyedSubscript:v13];
  }

  objc_autoreleasePoolPop(context);
}

- (void)logAttribute:(id)a3 value:(id)a4 uniqueID:(id)a5 bundleID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SKGJobReporter *)self loggingAttributes];
  v15 = [v14 containsObject:v10];

  if (v15 && v11 && *MEMORY[0x277CBEEE8] != v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [(SKGJobReporter *)self _addValue:*(*(&v22 + 1) + 8 * v20++) attribute:v10 uniqueID:v12 bundleID:v13, v22];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }
    }

    else
    {
      [(SKGJobReporter *)self _addValue:v11 attribute:v10 uniqueID:v12 bundleID:v13];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logFromRecord:(id)a3 uniqueID:(id)a4 bundleID:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(SKGJobReporter *)self loggingAttributes];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v8 objectForKeyedSubscript:v16];
        if (v17)
        {
          [(SKGJobReporter *)self logAttribute:v16 value:v17 uniqueID:v9 bundleID:v10];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)pipelineReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v73 = a5;
  v10 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:v8];
  v11 = [v10 count];

  if (v11)
  {
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v69 = v9;
    obj = v9;
    v79 = v8;
    v82 = self;
    v74 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    if (v74)
    {
      v85 = 0;
      v75 = 0;
      v12 = 0;
      v72 = *v95;
      do
      {
        v13 = 0;
        v14 = v12;
        do
        {
          if (*v95 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v94 + 1) + 8 * v13);
          v16 = [v15 length];
          v17 = @"\t\t\t";
          if (v16 >= 0xF)
          {
            v18 = [v15 length];
            v17 = @"\t";
            if (v18 < 0x18)
            {
              v17 = @"\t\t";
            }
          }

          v78 = v13;
          v77 = v17;
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v76 = v15;
          v84 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v15];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v83 = v73;
          v19 = [v83 countByEnumeratingWithState:&v90 objects:v99 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v91;
            v81 = *v91;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v91 != v22)
                {
                  objc_enumerationMutation(v83);
                }

                v24 = *(*(&v90 + 1) + 8 * i);
                v25 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:v8];
                v26 = [v25 objectForKeyedSubscript:v24];

                if (v26)
                {
                  v27 = [v84 countForObject:v24];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v80 objectForKeyedSubscript:v24];
                    v30 = v29;
                    v31 = &unk_2846E7E18;
                    if (v29)
                    {
                      v31 = v29;
                    }

                    v32 = v31;

                    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v28 + objc_msgSend(v32, "unsignedIntValue")}];
                    self = v82;
                    [v80 setObject:v33 forKeyedSubscript:v24];

                    v34 = MEMORY[0x277CCACA8];
                    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
                    v36 = [v34 stringWithFormat:@" %@: %@", v26, v35];

                    v22 = v81;
                    [v12 addObject:v36];
                    v21 += v28;
                    v85 = v36;
                    v8 = v79;
                  }
                }
              }

              v20 = [v83 countByEnumeratingWithState:&v90 objects:v99 count:16];
            }

            while (v20);
          }

          else
          {
            v21 = 0;
          }

          if ([v12 count])
          {
            [v12 sortUsingSelector:sel_compare_];
            v37 = MEMORY[0x277CCACA8];
            v38 = [v12 componentsJoinedByString:{@", "}];
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
            v40 = v77;
            v41 = [v37 stringWithFormat:@"%@%@ %@, total: %@", v76, v77, v38, v39];

            [v71 addObject:v41];
            v75 = v41;
          }

          else
          {
            v40 = v77;
          }

          v13 = v78 + 1;
          v14 = v12;
        }

        while (v78 + 1 != v74);
        v74 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v74);
    }

    else
    {
      v85 = 0;
      v75 = 0;
      v12 = 0;
    }

    v43 = v71;
    if ([v71 count])
    {
      v44 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v45 = v73;
      v46 = [v45 countByEnumeratingWithState:&v86 objects:v98 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = *v87;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v87 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v51 = *(*(&v86 + 1) + 8 * j);
            v52 = [(NSMutableDictionary *)self->_countingPairs objectForKeyedSubscript:v8];
            v53 = [v52 objectForKeyedSubscript:v51];

            if (v53)
            {
              v54 = [v80 objectForKeyedSubscript:v51];
              v55 = v54;
              v56 = &unk_2846E7E18;
              if (v54)
              {
                v56 = v54;
              }

              v57 = v56;

              v58 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@: %@", v53, v57];

              [v44 addObject:v58];
              v59 = [v57 unsignedIntValue];

              v8 = v79;
              v48 += v59;
              v85 = v58;
            }

            self = v82;
          }

          v47 = [v45 countByEnumeratingWithState:&v86 objects:v98 count:16];
        }

        while (v47);
      }

      else
      {
        v48 = 0;
      }

      [v44 sortUsingSelector:sel_compare_];
      v61 = MEMORY[0x277CCACA8];
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
      v63 = [v44 componentsJoinedByString:{@", "}];
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
      v65 = [v61 stringWithFormat:@"\nTotal: bundles: %@, %@, total: %@", v62, v63, v64];

      v43 = v71;
      [v71 addObject:v65];
      v60 = v65;
    }

    else
    {
      v44 = v12;
      v60 = v75;
    }

    objc_autoreleasePoolPop(context);
    v9 = v69;
    if ([v43 count])
    {
      v42 = [v43 componentsJoinedByString:@"\n"];
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v66 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)extractionReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v45 = a5;
  v52 = v8;
  v10 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:v8];
  v11 = [v10 count];

  if (v11)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    v41 = v9;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v9;
    v46 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    v12 = 0;
    if (v46)
    {
      v47 = 0;
      v13 = 0;
      v44 = *v58;
      do
      {
        v14 = 0;
        v15 = v13;
        do
        {
          if (*v58 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v14;
          v16 = *(*(&v57 + 1) + 8 * v14);
          v17 = [v16 length];
          v18 = @"\t\t\t";
          if (v17 >= 0xF)
          {
            v19 = [v16 length];
            v18 = @"\t";
            if (v19 < 0x18)
            {
              v18 = @"\t\t";
            }
          }

          v49 = v18;
          v51 = objc_alloc_init(MEMORY[0x277CBEB18]);

          v48 = v16;
          v20 = [(NSMutableDictionary *)self->_counter objectForKeyedSubscript:v16];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v21 = v45;
          v22 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v54;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v54 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v53 + 1) + 8 * i);
                v27 = [(NSMutableDictionary *)self->_reportingPairs objectForKeyedSubscript:v52];
                v28 = [v27 objectForKeyedSubscript:v26];

                if (v28)
                {
                  v29 = [v20 countForObject:v26];
                  if (v29)
                  {
                    v30 = MEMORY[0x277CCACA8];
                    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
                    v32 = [v30 stringWithFormat:@" %@: %@", v28, v31];

                    [v51 addObject:v32];
                    v12 = v32;
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
            }

            while (v23);
          }

          v13 = v51;
          if ([v51 count])
          {
            v33 = MEMORY[0x277CCACA8];
            v34 = [v51 componentsJoinedByString:{@", "}];
            v35 = v49;
            v36 = [v33 stringWithFormat:@"%@%@%@", v48, v49, v34, context];

            [v43 addObject:v36];
            v47 = v36;
          }

          else
          {
            v35 = v49;
          }

          v14 = v50 + 1;
          v15 = v51;
        }

        while (v50 + 1 != v46);
        v46 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v46);
    }

    else
    {
      v47 = 0;
      v13 = 0;
    }

    objc_autoreleasePoolPop(context);
    if ([v43 count])
    {
      v37 = [v43 componentsJoinedByString:@"\n"];
    }

    else
    {
      v37 = 0;
    }

    v9 = v41;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)loggingReportForProcessor:(id)a3 bundles:(id)a4 attributes:(id)a5
{
  v225 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v126 = a4;
  v136 = a5;
  v159 = v8;
  v9 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v8];
  v10 = [v9 count];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    verbosity = self->_verbosity;
    v160 = v12;
    v158 = self;
    switch(verbosity)
    {
      case 4:
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v138 = v126;
        v131 = [v138 countByEnumeratingWithState:&v177 objects:v216 count:16];
        if (v131)
        {
          v125 = v11;
          v50 = 0x277CCA000uLL;
          obja = *v178;
          do
          {
            v51 = 0;
            do
            {
              if (*v178 != obja)
              {
                objc_enumerationMutation(v138);
              }

              v134 = v51;
              v162 = *(*(&v177 + 1) + 8 * v51);
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v146 = v136;
              v52 = [v146 countByEnumeratingWithState:&v173 objects:v215 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v174;
                v140 = *v174;
                do
                {
                  v55 = 0;
                  v143 = v53;
                  do
                  {
                    if (*v174 != v54)
                    {
                      objc_enumerationMutation(v146);
                    }

                    v56 = *(*(&v173 + 1) + 8 * v55);
                    v57 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v159];
                    v58 = [v57 objectForKeyedSubscript:v56];

                    if (v58)
                    {
                      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", self->_outputRoot, v162, v56];
                      v60 = [*(v50 + 2560) defaultManager];
                      v61 = [v60 fileExistsAtPath:v59];

                      if (v61)
                      {
                        v155 = v55;
                        v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v152 = v59;
                        v63 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v59 encoding:4 error:0];
                        v169 = 0u;
                        v170 = 0u;
                        v171 = 0u;
                        v172 = 0u;
                        v149 = v63;
                        v64 = [v63 componentsSeparatedByString:@"\n"];
                        v65 = [v64 countByEnumeratingWithState:&v169 objects:v214 count:16];
                        if (v65)
                        {
                          v66 = v65;
                          v67 = *v170;
                          do
                          {
                            for (i = 0; i != v66; ++i)
                            {
                              if (*v170 != v67)
                              {
                                objc_enumerationMutation(v64);
                              }

                              v69 = [*(*(&v169 + 1) + 8 * i) componentsSeparatedByString:@"=;"];;
                              v70 = [v69 firstObject];
                              v71 = [v69 lastObject];
                              v72 = [v62 objectForKeyedSubscript:v70];

                              if (!v72)
                              {
                                v73 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v62 setObject:v73 forKeyedSubscript:v70];
                              }

                              v74 = [v62 objectForKeyedSubscript:v70];
                              [v74 addObject:v71];
                            }

                            v66 = [v64 countByEnumeratingWithState:&v169 objects:v214 count:16];
                          }

                          while (v66);
                        }

                        v167 = 0u;
                        v168 = 0u;
                        v165 = 0u;
                        v166 = 0u;
                        v75 = v62;
                        v76 = [v75 countByEnumeratingWithState:&v165 objects:v213 count:16];
                        if (v76)
                        {
                          v77 = v76;
                          v78 = *v166;
                          do
                          {
                            for (j = 0; j != v77; ++j)
                            {
                              if (*v166 != v78)
                              {
                                objc_enumerationMutation(v75);
                              }

                              v80 = *(*(&v165 + 1) + 8 * j);
                              v81 = [v75 objectForKeyedSubscript:v56];
                              v82 = [v81 count];

                              if (v82)
                              {
                                v83 = MEMORY[0x277CCACA8];
                                v84 = [v75 objectForKeyedSubscript:v56];
                                v85 = [v84 allObjects];
                                v86 = [v85 componentsJoinedByString:@"\n\t\t"];
                                v87 = [v83 stringWithFormat:@"%@: %@:\n\t%@:\n\t\t%@", v162, v80, v56, v86];

                                [v160 addObject:v87];
                              }
                            }

                            v77 = [v75 countByEnumeratingWithState:&v165 objects:v213 count:16];
                          }

                          while (v77);
                        }

                        v55 = v155;
                        self = v158;
                        v50 = 0x277CCA000;
                        v54 = v140;
                        v53 = v143;
                        v59 = v152;
                      }
                    }

                    ++v55;
                  }

                  while (v55 != v53);
                  v53 = [v146 countByEnumeratingWithState:&v173 objects:v215 count:16];
                }

                while (v53);
              }

              v51 = v134 + 1;
            }

            while (v134 + 1 != v131);
            v131 = [v138 countByEnumeratingWithState:&v177 objects:v216 count:16];
          }

          while (v131);
          goto LABEL_118;
        }

        break;
      case 3:
        v195 = 0u;
        v196 = 0u;
        v193 = 0u;
        v194 = 0u;
        v138 = v126;
        v132 = [v138 countByEnumeratingWithState:&v193 objects:v220 count:16];
        if (v132)
        {
          v125 = v11;
          objb = *v194;
          do
          {
            v88 = 0;
            do
            {
              if (*v194 != objb)
              {
                objc_enumerationMutation(v138);
              }

              v135 = v88;
              v89 = *(*(&v193 + 1) + 8 * v88);
              v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v189 = 0u;
              v190 = 0u;
              v191 = 0u;
              v192 = 0u;
              v150 = v136;
              v91 = [v150 countByEnumeratingWithState:&v189 objects:v219 count:16];
              if (v91)
              {
                v92 = v91;
                v93 = *v190;
                v141 = *v190;
                v144 = v89;
                do
                {
                  v94 = 0;
                  v147 = v92;
                  do
                  {
                    if (*v190 != v93)
                    {
                      objc_enumerationMutation(v150);
                    }

                    v95 = *(*(&v189 + 1) + 8 * v94);
                    v96 = [(NSMutableDictionary *)v158->_loggingPairs objectForKeyedSubscript:v159];
                    v97 = [v96 objectForKeyedSubscript:v95];

                    if (v97)
                    {
                      v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", v158->_outputRoot, v89, v95];
                      v99 = [MEMORY[0x277CCAA00] defaultManager];
                      v100 = [v99 fileExistsAtPath:v98];

                      if (v100)
                      {
                        v163 = v94;
                        v156 = v98;
                        v101 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v98 encoding:4 error:0];
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v153 = v101;
                        v102 = [v101 componentsSeparatedByString:@"\n"];
                        v103 = [v102 countByEnumeratingWithState:&v185 objects:v218 count:16];
                        if (v103)
                        {
                          v104 = v103;
                          v105 = *v186;
                          do
                          {
                            for (k = 0; k != v104; ++k)
                            {
                              if (*v186 != v105)
                              {
                                objc_enumerationMutation(v102);
                              }

                              v107 = [*(*(&v185 + 1) + 8 * k) componentsSeparatedByString:@"=;"];;
                              v108 = [v107 lastObject];
                              v109 = [v90 objectForKeyedSubscript:v95];

                              if (!v109)
                              {
                                v110 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v90 setObject:v110 forKeyedSubscript:v95];
                              }

                              v111 = [v90 objectForKeyedSubscript:v95];
                              [v111 addObject:v108];
                            }

                            v104 = [v102 countByEnumeratingWithState:&v185 objects:v218 count:16];
                          }

                          while (v104);
                        }

                        v93 = v141;
                        v89 = v144;
                        v92 = v147;
                        v94 = v163;
                        v98 = v156;
                      }
                    }

                    ++v94;
                  }

                  while (v94 != v92);
                  v92 = [v150 countByEnumeratingWithState:&v189 objects:v219 count:16];
                }

                while (v92);
              }

              if ([v90 count])
              {
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\n", v89];
                [v12 addObject:v112];
                v183 = 0u;
                v184 = 0u;
                v181 = 0u;
                v182 = 0u;
                v113 = v90;
                v164 = [v113 countByEnumeratingWithState:&v181 objects:v217 count:16];
                if (v164)
                {
                  v157 = *v182;
                  do
                  {
                    for (m = 0; m != v164; ++m)
                    {
                      if (*v182 != v157)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v115 = *(*(&v181 + 1) + 8 * m);
                      v116 = [v113 objectForKeyedSubscript:v115];
                      v117 = [v116 count];

                      if (v117)
                      {
                        v118 = MEMORY[0x277CCACA8];
                        v119 = [v113 objectForKeyedSubscript:v115];
                        v120 = [v119 allObjects];
                        v121 = [v120 componentsJoinedByString:@"\n\t\t"];
                        v122 = [v118 stringWithFormat:@"\t%@:\n\t\t%@\n", v115, v121];

                        [v12 addObject:v122];
                        v112 = v122;
                      }
                    }

                    v164 = [v113 countByEnumeratingWithState:&v181 objects:v217 count:16];
                  }

                  while (v164);
                }
              }

              v88 = v135 + 1;
            }

            while (v135 + 1 != v132);
            v132 = [v138 countByEnumeratingWithState:&v193 objects:v220 count:16];
          }

          while (v132);
LABEL_118:
          v11 = v125;
          v12 = v160;
        }

        break;
      case 2:
        v125 = v11;
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        obj = v126;
        v133 = [obj countByEnumeratingWithState:&v209 objects:v224 count:16];
        if (v133)
        {
          v130 = *v210;
          v15 = 0x277CCA000uLL;
          do
          {
            v16 = 0;
            do
            {
              if (*v210 != v130)
              {
                objc_enumerationMutation(obj);
              }

              v137 = v16;
              v17 = *(*(&v209 + 1) + 8 * v16);
              v205 = 0u;
              v206 = 0u;
              v207 = 0u;
              v208 = 0u;
              v142 = v136;
              v154 = [v142 countByEnumeratingWithState:&v205 objects:v223 count:16];
              if (v154)
              {
                v151 = *v206;
                v139 = v17;
                do
                {
                  v18 = 0;
                  do
                  {
                    if (*v206 != v151)
                    {
                      objc_enumerationMutation(v142);
                    }

                    v161 = v18;
                    v19 = *(*(&v205 + 1) + 8 * v18);
                    v20 = [(NSMutableDictionary *)self->_loggingPairs objectForKeyedSubscript:v159];
                    v21 = [v20 objectForKeyedSubscript:v19];

                    if (v21)
                    {
                      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@.txt", self->_outputRoot, v17, v19];
                      v23 = [*(v15 + 2560) defaultManager];
                      v24 = [v23 fileExistsAtPath:v22];

                      if (v24)
                      {
                        v148 = v22;
                        v25 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v22 encoding:4 error:0];
                        v201 = 0u;
                        v202 = 0u;
                        v203 = 0u;
                        v204 = 0u;
                        v145 = v25;
                        v26 = [v25 componentsSeparatedByString:@"\n"];
                        v27 = [v26 countByEnumeratingWithState:&v201 objects:v222 count:16];
                        if (v27)
                        {
                          v28 = v27;
                          v29 = *v202;
                          do
                          {
                            for (n = 0; n != v28; ++n)
                            {
                              if (*v202 != v29)
                              {
                                objc_enumerationMutation(v26);
                              }

                              v31 = [*(*(&v201 + 1) + 8 * n) componentsSeparatedByString:@"=;"];;
                              v32 = [v31 lastObject];
                              v33 = [v14 objectForKeyedSubscript:v19];

                              if (!v33)
                              {
                                v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
                                [v14 setObject:v34 forKeyedSubscript:v19];
                              }

                              v35 = [v14 objectForKeyedSubscript:v19];
                              [v35 addObject:v32];
                            }

                            v28 = [v26 countByEnumeratingWithState:&v201 objects:v222 count:16];
                          }

                          while (v28);
                        }

                        self = v158;
                        v15 = 0x277CCA000;
                        v17 = v139;
                        v22 = v148;
                      }
                    }

                    v18 = v161 + 1;
                  }

                  while (v161 + 1 != v154);
                  v154 = [v142 countByEnumeratingWithState:&v205 objects:v223 count:16];
                }

                while (v154);
              }

              v16 = v137 + 1;
            }

            while (v137 + 1 != v133);
            v133 = [obj countByEnumeratingWithState:&v209 objects:v224 count:16];
          }

          while (v133);
        }

        v199 = 0u;
        v200 = 0u;
        v197 = 0u;
        v198 = 0u;
        v138 = v14;
        v36 = [v138 countByEnumeratingWithState:&v197 objects:v221 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v198;
          do
          {
            for (ii = 0; ii != v37; ++ii)
            {
              v40 = v138;
              if (*v198 != v38)
              {
                objc_enumerationMutation(v138);
                v40 = v138;
              }

              v41 = *(*(&v197 + 1) + 8 * ii);
              v42 = [v40 objectForKeyedSubscript:v41];
              v43 = [v42 count];

              if (v43)
              {
                v44 = MEMORY[0x277CCACA8];
                v45 = [v40 objectForKeyedSubscript:v41];
                v46 = [v45 allObjects];
                v47 = [v46 componentsJoinedByString:@"\n\t"];
                v48 = [v44 stringWithFormat:@"%@:\n\t%@\n", v41, v47];

                [v160 addObject:v48];
              }
            }

            v37 = [v138 countByEnumeratingWithState:&v197 objects:v221 count:16];
          }

          while (v37);
        }

        goto LABEL_118;
      default:
LABEL_120:
        if ([v12 count])
        {
          v49 = [v12 componentsJoinedByString:@"\n"];
        }

        else
        {
          v49 = 0;
        }

        objc_autoreleasePoolPop(v11);
        goto LABEL_124;
    }

    goto LABEL_120;
  }

  v49 = 0;
LABEL_124:

  v123 = *MEMORY[0x277D85DE8];

  return v49;
}

- (void)clear
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtPath:self->_outputRoot error:0];
}

- (id)reports
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(NSMutableDictionary *)self->_counter allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v5 = [(NSMutableDictionary *)self->_countingPairs allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v7 = [(NSMutableSet *)self->_countingAttributes allObjects];
  v31 = [v7 sortedArrayUsingSelector:sel_compare_];

  v8 = [(NSMutableSet *)self->_reportingAttributes allObjects];
  v30 = [v8 sortedArrayUsingSelector:sel_compare_];

  v9 = [(NSMutableSet *)self->_loggingAttributes allObjects];
  v29 = [v9 sortedArrayUsingSelector:sel_compare_];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v28 = *v35;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ === %@\n", v11];
        [v12 addObject:v13];

        v14 = [(SKGJobReporter *)self pipelineReportForProcessor:v11 bundles:v4 attributes:v31];
        if (v14)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Pipeline report **"];
          [v12 addObject:v15];

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v14];
          [v12 addObject:v16];
        }

        v17 = [(SKGJobReporter *)self extractionReportForProcessor:v11 bundles:v4 attributes:v30];
        if (v17)
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Extraction report **"];
          [v12 addObject:v18];

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v17];
          [v12 addObject:v19];
        }

        v20 = [(SKGJobReporter *)self loggingReportForProcessor:v11 bundles:v4 attributes:v29];
        if (v20)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"** Logging report **"];
          [v12 addObject:v21];

          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v20];
          [v12 addObject:v22];
        }

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"=== end %@ ]\n", v11];
        [v12 addObject:v23];

        v24 = [v12 componentsJoinedByString:@"\n"];
        [v32 addObject:v24];
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  [(SKGJobReporter *)self clear];
  v25 = *MEMORY[0x277D85DE8];

  return v32;
}

@end