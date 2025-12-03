@interface PNRODSchemaPNRODSiriTurnGrainSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addExecutor:(id)executor;
- (void)addPlanGeneration:(id)generation;
- (void)addPlanResolution:(id)resolution;
- (void)addQueryDecoration:(id)decoration;
- (void)addResponseGeneration:(id)generation;
- (void)addSearch:(id)search;
- (void)setHasHasAssistantPerformanceData:(BOOL)data;
- (void)setHasHasDictationPerformanceData:(BOOL)data;
- (void)setHasHasReliabilityData:(BOOL)data;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODSiriTurnGrainSummary

- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithDictionary:(id)dictionary
{
  v122 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v115.receiver = self;
  v115.super_class = PNRODSchemaPNRODSiriTurnGrainSummary;
  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)&v115 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTurnid:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setStatus:](v5, "setStatus:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasAssistantPerformanceData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasAssistantPerformanceData:](v5, "setHasAssistantPerformanceData:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hasDictationPerformanceData"];
    objc_opt_class();
    v89 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasDictationPerformanceData:](v5, "setHasDictationPerformanceData:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hasReliabilityData"];
    objc_opt_class();
    v88 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasReliabilityData:](v5, "setHasReliabilityData:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"srt"];
    objc_opt_class();
    v87 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setSrt:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"launch"];
    objc_opt_class();
    v86 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setLaunch:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"epd"];
    objc_opt_class();
    v85 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setEpd:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"uufr"];
    objc_opt_class();
    v84 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setUufr:v19];
    }

    v79 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"ttfw"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTtfw:v21];
    }

    v76 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"queryDecoration"];
    objc_opt_class();
    v83 = v22;
    v90 = dictionaryCopy;
    if (objc_opt_isKindOfClass())
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v112;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v112 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v111 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[PNRODSchemaPNRODQueryDecoration alloc] initWithDictionary:v28];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addQueryDecoration:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v111 objects:v121 count:16];
        }

        while (v25);
      }

      dictionaryCopy = v90;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"search"];
    objc_opt_class();
    v82 = v30;
    v78 = v8;
    if (objc_opt_isKindOfClass())
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v107 objects:v120 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v108;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v108 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v107 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [[PNRODSchemaPNRODSearch alloc] initWithDictionary:v36];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addSearch:v37];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v107 objects:v120 count:16];
        }

        while (v33);
      }

      dictionaryCopy = v90;
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"planResolution"];
    objc_opt_class();
    v81 = v38;
    v77 = v9;
    if (objc_opt_isKindOfClass())
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v103 objects:v119 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v104;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v104 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v103 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[PNRODSchemaPNRODPlanResolution alloc] initWithDictionary:v44];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addPlanResolution:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v103 objects:v119 count:16];
        }

        while (v41);
      }
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"responseGeneration"];
    objc_opt_class();
    v80 = v46;
    if (objc_opt_isKindOfClass())
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v47 = v46;
      v48 = [v47 countByEnumeratingWithState:&v99 objects:v118 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v100;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v100 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v99 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = [[PNRODSchemaPNRODResponseGeneration alloc] initWithDictionary:v52];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addResponseGeneration:v53];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v99 objects:v118 count:16];
        }

        while (v49);
      }
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"executor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v55 = v54;
      v56 = [v55 countByEnumeratingWithState:&v95 objects:v117 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v96;
        do
        {
          for (n = 0; n != v57; ++n)
          {
            if (*v96 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v95 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = [[PNRODSchemaPNRODExecutor alloc] initWithDictionary:v60];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addExecutor:v61];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v95 objects:v117 count:16];
        }

        while (v57);
      }

      dictionaryCopy = v90;
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"planGeneration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v63 = v62;
      v64 = [v63 countByEnumeratingWithState:&v91 objects:v116 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v92;
        do
        {
          for (ii = 0; ii != v65; ++ii)
          {
            if (*v92 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = *(*(&v91 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v69 = [[PNRODSchemaPNRODPlanGeneration alloc] initWithDictionary:v68];
              [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 addPlanGeneration:v69];
            }
          }

          v65 = [v63 countByEnumeratingWithState:&v91 objects:v116 count:16];
        }

        while (v65);
      }

      dictionaryCopy = v90;
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"ttaie"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v70];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTtaie:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v72];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setFailureInfo:v73];
    }

    v74 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v113 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_epd)
  {
    v4 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"epd"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"epd"];
    }
  }

  if ([(NSArray *)self->_executors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v8 = self->_executors;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v103 objects:v112 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v104;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v104 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v103 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"executor"];
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
    dictionaryRepresentation3 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"failureInfo"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasAssistantPerformanceData](self, "hasAssistantPerformanceData")}];
    [dictionary setObject:v19 forKeyedSubscript:@"hasAssistantPerformanceData"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasDictationPerformanceData](self, "hasDictationPerformanceData")}];
    [dictionary setObject:v20 forKeyedSubscript:@"hasDictationPerformanceData"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasReliabilityData](self, "hasReliabilityData")}];
    [dictionary setObject:v21 forKeyedSubscript:@"hasReliabilityData"];
  }

  if (self->_launch)
  {
    launch = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    dictionaryRepresentation4 = [launch dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"launch"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"launch"];
    }
  }

  if ([(NSArray *)self->_planGenerations count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v26 = self->_planGenerations;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v99 objects:v111 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v100;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v100 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation5 = [*(*(&v99 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v99 objects:v111 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"planGeneration"];
  }

  if ([(NSArray *)self->_planResolutions count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v34 = self->_planResolutions;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v95 objects:v110 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v96;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v96 != v37)
          {
            objc_enumerationMutation(v34);
          }

          dictionaryRepresentation6 = [*(*(&v95 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array3 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null6];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v95 objects:v110 count:16];
      }

      while (v36);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"planResolution"];
  }

  if ([(NSArray *)self->_queryDecorations count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v42 = self->_queryDecorations;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v91 objects:v109 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v92;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v92 != v45)
          {
            objc_enumerationMutation(v42);
          }

          dictionaryRepresentation7 = [*(*(&v91 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation7)
          {
            [array4 addObject:dictionaryRepresentation7];
          }

          else
          {
            null7 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null7];
          }
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v91 objects:v109 count:16];
      }

      while (v44);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"queryDecoration"];
  }

  if ([(NSArray *)self->_responseGenerations count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v50 = self->_responseGenerations;
    v51 = [(NSArray *)v50 countByEnumeratingWithState:&v87 objects:v108 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v88;
      do
      {
        for (n = 0; n != v52; ++n)
        {
          if (*v88 != v53)
          {
            objc_enumerationMutation(v50);
          }

          dictionaryRepresentation8 = [*(*(&v87 + 1) + 8 * n) dictionaryRepresentation];
          if (dictionaryRepresentation8)
          {
            [array5 addObject:dictionaryRepresentation8];
          }

          else
          {
            null8 = [MEMORY[0x1E695DFB0] null];
            [array5 addObject:null8];
          }
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v87 objects:v108 count:16];
      }

      while (v52);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"responseGeneration"];
  }

  if ([(NSArray *)self->_searchs count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v58 = self->_searchs;
    v59 = [(NSArray *)v58 countByEnumeratingWithState:&v83 objects:v107 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v84;
      do
      {
        for (ii = 0; ii != v60; ++ii)
        {
          if (*v84 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation9 = [*(*(&v83 + 1) + 8 * ii) dictionaryRepresentation];
          if (dictionaryRepresentation9)
          {
            [array6 addObject:dictionaryRepresentation9];
          }

          else
          {
            null9 = [MEMORY[0x1E695DFB0] null];
            [array6 addObject:null9];
          }
        }

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v83 objects:v107 count:16];
      }

      while (v60);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"search"];
  }

  if (self->_srt)
  {
    v65 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
    dictionaryRepresentation10 = [v65 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"srt"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"srt"];
    }
  }

  if (*&self->_has)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODSiriTurnGrainSummary status](self, "status")}];
    [dictionary setObject:v68 forKeyedSubscript:@"status"];
  }

  if (self->_ttaie)
  {
    ttaie = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    dictionaryRepresentation11 = [ttaie dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"ttaie"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"ttaie"];
    }
  }

  if (self->_ttfw)
  {
    ttfw = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
    dictionaryRepresentation12 = [ttfw dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"ttfw"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"ttfw"];
    }
  }

  if (self->_turnid)
  {
    turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
    dictionaryRepresentation13 = [turnid dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"turnid"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"turnid"];
    }
  }

  if (self->_uufr)
  {
    uufr = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    dictionaryRepresentation14 = [uufr dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"uufr"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"uufr"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v81 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_turnid hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_hasAssistantPerformanceData;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_hasDictationPerformanceData;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_hasReliabilityData;
LABEL_10:
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_srt hash];
  v9 = [(PNRODSchemaPNRODMetricDuration *)self->_launch hash];
  v10 = v9 ^ [(PNRODSchemaPNRODMetricDuration *)self->_epd hash];
  v11 = v8 ^ v10 ^ [(PNRODSchemaPNRODMetricDuration *)self->_uufr hash];
  v12 = [(PNRODSchemaPNRODMetricDuration *)self->_ttfw hash];
  v13 = v12 ^ [(NSArray *)self->_queryDecorations hash];
  v14 = v13 ^ [(NSArray *)self->_searchs hash];
  v15 = v11 ^ v14 ^ [(NSArray *)self->_planResolutions hash];
  v16 = [(NSArray *)self->_responseGenerations hash];
  v17 = v16 ^ [(NSArray *)self->_executors hash];
  v18 = v17 ^ [(NSArray *)self->_planGenerations hash];
  v19 = v18 ^ [(PNRODSchemaPNRODMetricDuration *)self->_ttaie hash];
  return v15 ^ v19 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  turnid2 = [equalCopy turnid];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  turnid3 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  if (turnid3)
  {
    v8 = turnid3;
    turnid4 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
    turnid5 = [equalCopy turnid];
    v11 = [turnid4 isEqual:turnid5];

    if (!v11)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[136];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_87;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = equalCopy[136];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_87;
  }

  if (v15)
  {
    hasAssistantPerformanceData = self->_hasAssistantPerformanceData;
    if (hasAssistantPerformanceData != [equalCopy hasAssistantPerformanceData])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = equalCopy[136];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_87;
  }

  if (v17)
  {
    hasDictationPerformanceData = self->_hasDictationPerformanceData;
    if (hasDictationPerformanceData != [equalCopy hasDictationPerformanceData])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = equalCopy[136];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_87;
  }

  if (v19)
  {
    hasReliabilityData = self->_hasReliabilityData;
    if (hasReliabilityData != [equalCopy hasReliabilityData])
    {
      goto LABEL_87;
    }
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  turnid2 = [equalCopy srt];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  v21 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  if (v21)
  {
    v22 = v21;
    v23 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
    v24 = [equalCopy srt];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  turnid2 = [equalCopy launch];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  launch = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  if (launch)
  {
    v27 = launch;
    launch2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    launch3 = [equalCopy launch];
    v30 = [launch2 isEqual:launch3];

    if (!v30)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  turnid2 = [equalCopy epd];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  v31 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  if (v31)
  {
    v32 = v31;
    v33 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    v34 = [equalCopy epd];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  turnid2 = [equalCopy uufr];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  uufr = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  if (uufr)
  {
    v37 = uufr;
    uufr2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    uufr3 = [equalCopy uufr];
    v40 = [uufr2 isEqual:uufr3];

    if (!v40)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  turnid2 = [equalCopy ttfw];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  ttfw = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  if (ttfw)
  {
    v42 = ttfw;
    ttfw2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
    ttfw3 = [equalCopy ttfw];
    v45 = [ttfw2 isEqual:ttfw3];

    if (!v45)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  turnid2 = [equalCopy queryDecorations];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  queryDecorations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  if (queryDecorations)
  {
    v47 = queryDecorations;
    queryDecorations2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
    queryDecorations3 = [equalCopy queryDecorations];
    v50 = [queryDecorations2 isEqual:queryDecorations3];

    if (!v50)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  turnid2 = [equalCopy searchs];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  searchs = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  if (searchs)
  {
    v52 = searchs;
    searchs2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
    searchs3 = [equalCopy searchs];
    v55 = [searchs2 isEqual:searchs3];

    if (!v55)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  turnid2 = [equalCopy planResolutions];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  planResolutions = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  if (planResolutions)
  {
    v57 = planResolutions;
    planResolutions2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
    planResolutions3 = [equalCopy planResolutions];
    v60 = [planResolutions2 isEqual:planResolutions3];

    if (!v60)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  turnid2 = [equalCopy responseGenerations];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  responseGenerations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  if (responseGenerations)
  {
    v62 = responseGenerations;
    responseGenerations2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
    responseGenerations3 = [equalCopy responseGenerations];
    v65 = [responseGenerations2 isEqual:responseGenerations3];

    if (!v65)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  turnid2 = [equalCopy executors];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  executors = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  if (executors)
  {
    v67 = executors;
    executors2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
    executors3 = [equalCopy executors];
    v70 = [executors2 isEqual:executors3];

    if (!v70)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  turnid2 = [equalCopy planGenerations];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  planGenerations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  if (planGenerations)
  {
    v72 = planGenerations;
    planGenerations2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
    planGenerations3 = [equalCopy planGenerations];
    v75 = [planGenerations2 isEqual:planGenerations3];

    if (!v75)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  turnid2 = [equalCopy ttaie];
  if ((turnid != 0) == (turnid2 == 0))
  {
    goto LABEL_86;
  }

  ttaie = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  if (ttaie)
  {
    v77 = ttaie;
    ttaie2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    ttaie3 = [equalCopy ttaie];
    v80 = [ttaie2 isEqual:ttaie3];

    if (!v80)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  turnid2 = [equalCopy failureInfo];
  if ((turnid != 0) == (turnid2 == 0))
  {
LABEL_86:

    goto LABEL_87;
  }

  failureInfo = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  if (!failureInfo)
  {

LABEL_90:
    v86 = 1;
    goto LABEL_88;
  }

  v82 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v85 = [failureInfo2 isEqual:failureInfo3];

  if (v85)
  {
    goto LABEL_90;
  }

LABEL_87:
  v86 = 0;
LABEL_88:

  return v86;
}

- (void)writeTo:(id)to
{
  v82 = *MEMORY[0x1E69E9840];
  toCopy = to;
  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];

  if (turnid)
  {
    turnid2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_67;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_67:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
  v8 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
    PBDataWriterWriteSubmessage();
  }

  launch = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];

  if (launch)
  {
    launch2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    PBDataWriterWriteSubmessage();
  }

  uufr = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];

  if (uufr)
  {
    uufr2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    PBDataWriterWriteSubmessage();
  }

  ttfw = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];

  if (ttfw)
  {
    ttfw2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
    PBDataWriterWriteSubmessage();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v18 = self->_queryDecorations;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v73;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v20);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v23 = self->_searchs;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v69;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v69 != v26)
        {
          objc_enumerationMutation(v23);
        }

        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v25);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v28 = self->_planResolutions;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v65;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v65 != v31)
        {
          objc_enumerationMutation(v28);
        }

        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v64 objects:v79 count:16];
    }

    while (v30);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v33 = self->_responseGenerations;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v60 objects:v78 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v61;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v61 != v36)
        {
          objc_enumerationMutation(v33);
        }

        PBDataWriterWriteSubmessage();
      }

      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v60 objects:v78 count:16];
    }

    while (v35);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v38 = self->_executors;
  v39 = [(NSArray *)v38 countByEnumeratingWithState:&v56 objects:v77 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v57;
    do
    {
      for (n = 0; n != v40; ++n)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(v38);
        }

        PBDataWriterWriteSubmessage();
      }

      v40 = [(NSArray *)v38 countByEnumeratingWithState:&v56 objects:v77 count:16];
    }

    while (v40);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = self->_planGenerations;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v52 objects:v76 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v53;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v53 != v46)
        {
          objc_enumerationMutation(v43);
        }

        PBDataWriterWriteSubmessage();
      }

      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v52 objects:v76 count:16];
    }

    while (v45);
  }

  ttaie = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];

  if (ttaie)
  {
    ttaie2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];

  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addPlanGeneration:(id)generation
{
  generationCopy = generation;
  planGenerations = self->_planGenerations;
  v8 = generationCopy;
  if (!planGenerations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_planGenerations;
    self->_planGenerations = array;

    generationCopy = v8;
    planGenerations = self->_planGenerations;
  }

  [(NSArray *)planGenerations addObject:generationCopy];
}

- (void)addExecutor:(id)executor
{
  executorCopy = executor;
  executors = self->_executors;
  v8 = executorCopy;
  if (!executors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_executors;
    self->_executors = array;

    executorCopy = v8;
    executors = self->_executors;
  }

  [(NSArray *)executors addObject:executorCopy];
}

- (void)addResponseGeneration:(id)generation
{
  generationCopy = generation;
  responseGenerations = self->_responseGenerations;
  v8 = generationCopy;
  if (!responseGenerations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_responseGenerations;
    self->_responseGenerations = array;

    generationCopy = v8;
    responseGenerations = self->_responseGenerations;
  }

  [(NSArray *)responseGenerations addObject:generationCopy];
}

- (void)addPlanResolution:(id)resolution
{
  resolutionCopy = resolution;
  planResolutions = self->_planResolutions;
  v8 = resolutionCopy;
  if (!planResolutions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_planResolutions;
    self->_planResolutions = array;

    resolutionCopy = v8;
    planResolutions = self->_planResolutions;
  }

  [(NSArray *)planResolutions addObject:resolutionCopy];
}

- (void)addSearch:(id)search
{
  searchCopy = search;
  searchs = self->_searchs;
  v8 = searchCopy;
  if (!searchs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchs;
    self->_searchs = array;

    searchCopy = v8;
    searchs = self->_searchs;
  }

  [(NSArray *)searchs addObject:searchCopy];
}

- (void)addQueryDecoration:(id)decoration
{
  decorationCopy = decoration;
  queryDecorations = self->_queryDecorations;
  v8 = decorationCopy;
  if (!queryDecorations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_queryDecorations;
    self->_queryDecorations = array;

    decorationCopy = v8;
    queryDecorations = self->_queryDecorations;
  }

  [(NSArray *)queryDecorations addObject:decorationCopy];
}

- (void)setHasHasReliabilityData:(BOOL)data
{
  if (data)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasDictationPerformanceData:(BOOL)data
{
  if (data)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasAssistantPerformanceData:(BOOL)data
{
  if (data)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v43.receiver = self;
  v43.super_class = PNRODSchemaPNRODSiriTurnGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:policyCopy];
  turnid = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  v7 = [turnid applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTurnid];
  }

  v9 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  v10 = [v9 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteSrt];
  }

  launch = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  v13 = [launch applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteLaunch];
  }

  v15 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  v16 = [v15 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteEpd];
  }

  uufr = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  v19 = [uufr applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteUufr];
  }

  ttfw = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  v22 = [ttfw applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTtfw];
  }

  queryDecorations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  v25 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:queryDecorations underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setQueryDecorations:v25];

  searchs = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:searchs underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setSearchs:v27];

  planResolutions = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  v29 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:planResolutions underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setPlanResolutions:v29];

  responseGenerations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  v31 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:responseGenerations underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setResponseGenerations:v31];

  executors = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  v33 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:executors underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setExecutors:v33];

  planGenerations = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  v35 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:planGenerations underConditions:policyCopy];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setPlanGenerations:v35];

  ttaie = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  v37 = [ttaie applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v37 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTtaie];
  }

  failureInfo = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  v40 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v40 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteFailureInfo];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end