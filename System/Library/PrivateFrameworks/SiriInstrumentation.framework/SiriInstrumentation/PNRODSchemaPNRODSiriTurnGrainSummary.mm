@interface PNRODSchemaPNRODSiriTurnGrainSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addExecutor:(id)a3;
- (void)addPlanGeneration:(id)a3;
- (void)addPlanResolution:(id)a3;
- (void)addQueryDecoration:(id)a3;
- (void)addResponseGeneration:(id)a3;
- (void)addSearch:(id)a3;
- (void)setHasHasAssistantPerformanceData:(BOOL)a3;
- (void)setHasHasDictationPerformanceData:(BOOL)a3;
- (void)setHasHasReliabilityData:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODSiriTurnGrainSummary

- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithDictionary:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v115.receiver = self;
  v115.super_class = PNRODSchemaPNRODSiriTurnGrainSummary;
  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)&v115 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTurnid:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setStatus:](v5, "setStatus:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasAssistantPerformanceData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasAssistantPerformanceData:](v5, "setHasAssistantPerformanceData:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"hasDictationPerformanceData"];
    objc_opt_class();
    v89 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasDictationPerformanceData:](v5, "setHasDictationPerformanceData:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"hasReliabilityData"];
    objc_opt_class();
    v88 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODSiriTurnGrainSummary setHasReliabilityData:](v5, "setHasReliabilityData:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"srt"];
    objc_opt_class();
    v87 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setSrt:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"launch"];
    objc_opt_class();
    v86 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setLaunch:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"epd"];
    objc_opt_class();
    v85 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setEpd:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"uufr"];
    objc_opt_class();
    v84 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setUufr:v19];
    }

    v79 = v6;
    v20 = [v4 objectForKeyedSubscript:@"ttfw"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTtfw:v21];
    }

    v76 = v20;
    v22 = [v4 objectForKeyedSubscript:@"queryDecoration"];
    objc_opt_class();
    v83 = v22;
    v90 = v4;
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

      v4 = v90;
    }

    v30 = [v4 objectForKeyedSubscript:@"search"];
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

      v4 = v90;
    }

    v38 = [v4 objectForKeyedSubscript:@"planResolution"];
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

    v46 = [v4 objectForKeyedSubscript:@"responseGeneration"];
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

    v54 = [v4 objectForKeyedSubscript:@"executor"];
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

      v4 = v90;
    }

    v62 = [v4 objectForKeyedSubscript:@"planGeneration"];
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

      v4 = v90;
    }

    v70 = [v4 objectForKeyedSubscript:@"ttaie"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v70];
      [(PNRODSchemaPNRODSiriTurnGrainSummary *)v5 setTtaie:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODSiriTurnGrainSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_epd)
  {
    v4 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"epd"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"epd"];
    }
  }

  if ([(NSArray *)self->_executors count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v103 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"executor"];
  }

  if (self->_failureInfo)
  {
    v15 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"failureInfo"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasAssistantPerformanceData](self, "hasAssistantPerformanceData")}];
    [v3 setObject:v19 forKeyedSubscript:@"hasAssistantPerformanceData"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasDictationPerformanceData](self, "hasDictationPerformanceData")}];
    [v3 setObject:v20 forKeyedSubscript:@"hasDictationPerformanceData"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODSiriTurnGrainSummary hasReliabilityData](self, "hasReliabilityData")}];
    [v3 setObject:v21 forKeyedSubscript:@"hasReliabilityData"];
  }

  if (self->_launch)
  {
    v22 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"launch"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"launch"];
    }
  }

  if ([(NSArray *)self->_planGenerations count])
  {
    v25 = [MEMORY[0x1E695DF70] array];
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

          v31 = [*(*(&v99 + 1) + 8 * j) dictionaryRepresentation];
          if (v31)
          {
            [v25 addObject:v31];
          }

          else
          {
            v32 = [MEMORY[0x1E695DFB0] null];
            [v25 addObject:v32];
          }
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v99 objects:v111 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"planGeneration"];
  }

  if ([(NSArray *)self->_planResolutions count])
  {
    v33 = [MEMORY[0x1E695DF70] array];
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

          v39 = [*(*(&v95 + 1) + 8 * k) dictionaryRepresentation];
          if (v39)
          {
            [v33 addObject:v39];
          }

          else
          {
            v40 = [MEMORY[0x1E695DFB0] null];
            [v33 addObject:v40];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v95 objects:v110 count:16];
      }

      while (v36);
    }

    [v3 setObject:v33 forKeyedSubscript:@"planResolution"];
  }

  if ([(NSArray *)self->_queryDecorations count])
  {
    v41 = [MEMORY[0x1E695DF70] array];
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

          v47 = [*(*(&v91 + 1) + 8 * m) dictionaryRepresentation];
          if (v47)
          {
            [v41 addObject:v47];
          }

          else
          {
            v48 = [MEMORY[0x1E695DFB0] null];
            [v41 addObject:v48];
          }
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v91 objects:v109 count:16];
      }

      while (v44);
    }

    [v3 setObject:v41 forKeyedSubscript:@"queryDecoration"];
  }

  if ([(NSArray *)self->_responseGenerations count])
  {
    v49 = [MEMORY[0x1E695DF70] array];
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

          v55 = [*(*(&v87 + 1) + 8 * n) dictionaryRepresentation];
          if (v55)
          {
            [v49 addObject:v55];
          }

          else
          {
            v56 = [MEMORY[0x1E695DFB0] null];
            [v49 addObject:v56];
          }
        }

        v52 = [(NSArray *)v50 countByEnumeratingWithState:&v87 objects:v108 count:16];
      }

      while (v52);
    }

    [v3 setObject:v49 forKeyedSubscript:@"responseGeneration"];
  }

  if ([(NSArray *)self->_searchs count])
  {
    v57 = [MEMORY[0x1E695DF70] array];
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

          v63 = [*(*(&v83 + 1) + 8 * ii) dictionaryRepresentation];
          if (v63)
          {
            [v57 addObject:v63];
          }

          else
          {
            v64 = [MEMORY[0x1E695DFB0] null];
            [v57 addObject:v64];
          }
        }

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v83 objects:v107 count:16];
      }

      while (v60);
    }

    [v3 setObject:v57 forKeyedSubscript:@"search"];
  }

  if (self->_srt)
  {
    v65 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
    v66 = [v65 dictionaryRepresentation];
    if (v66)
    {
      [v3 setObject:v66 forKeyedSubscript:@"srt"];
    }

    else
    {
      v67 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v67 forKeyedSubscript:@"srt"];
    }
  }

  if (*&self->_has)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODSiriTurnGrainSummary status](self, "status")}];
    [v3 setObject:v68 forKeyedSubscript:@"status"];
  }

  if (self->_ttaie)
  {
    v69 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    v70 = [v69 dictionaryRepresentation];
    if (v70)
    {
      [v3 setObject:v70 forKeyedSubscript:@"ttaie"];
    }

    else
    {
      v71 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v71 forKeyedSubscript:@"ttaie"];
    }
  }

  if (self->_ttfw)
  {
    v72 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
    v73 = [v72 dictionaryRepresentation];
    if (v73)
    {
      [v3 setObject:v73 forKeyedSubscript:@"ttfw"];
    }

    else
    {
      v74 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v74 forKeyedSubscript:@"ttfw"];
    }
  }

  if (self->_turnid)
  {
    v75 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
    v76 = [v75 dictionaryRepresentation];
    if (v76)
    {
      [v3 setObject:v76 forKeyedSubscript:@"turnid"];
    }

    else
    {
      v77 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v77 forKeyedSubscript:@"turnid"];
    }
  }

  if (self->_uufr)
  {
    v78 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    v79 = [v78 dictionaryRepresentation];
    if (v79)
    {
      [v3 setObject:v79 forKeyedSubscript:@"uufr"];
    }

    else
    {
      v80 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v80 forKeyedSubscript:@"uufr"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v81 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  v6 = [v4 turnid];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v7 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
    v10 = [v4 turnid];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[136];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_87;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = v4[136];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_87;
  }

  if (v15)
  {
    hasAssistantPerformanceData = self->_hasAssistantPerformanceData;
    if (hasAssistantPerformanceData != [v4 hasAssistantPerformanceData])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = v4[136];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_87;
  }

  if (v17)
  {
    hasDictationPerformanceData = self->_hasDictationPerformanceData;
    if (hasDictationPerformanceData != [v4 hasDictationPerformanceData])
    {
      goto LABEL_87;
    }

    has = self->_has;
    v13 = v4[136];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_87;
  }

  if (v19)
  {
    hasReliabilityData = self->_hasReliabilityData;
    if (hasReliabilityData != [v4 hasReliabilityData])
    {
      goto LABEL_87;
    }
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  v6 = [v4 srt];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v21 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  if (v21)
  {
    v22 = v21;
    v23 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
    v24 = [v4 srt];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  v6 = [v4 launch];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v26 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  if (v26)
  {
    v27 = v26;
    v28 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    v29 = [v4 launch];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  v6 = [v4 epd];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v31 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  if (v31)
  {
    v32 = v31;
    v33 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    v34 = [v4 epd];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  v6 = [v4 uufr];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v36 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  if (v36)
  {
    v37 = v36;
    v38 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    v39 = [v4 uufr];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  v6 = [v4 ttfw];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v41 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  if (v41)
  {
    v42 = v41;
    v43 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
    v44 = [v4 ttfw];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  v6 = [v4 queryDecorations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v46 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  if (v46)
  {
    v47 = v46;
    v48 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
    v49 = [v4 queryDecorations];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  v6 = [v4 searchs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v51 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  if (v51)
  {
    v52 = v51;
    v53 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
    v54 = [v4 searchs];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  v6 = [v4 planResolutions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v56 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  if (v56)
  {
    v57 = v56;
    v58 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
    v59 = [v4 planResolutions];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  v6 = [v4 responseGenerations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v61 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  if (v61)
  {
    v62 = v61;
    v63 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
    v64 = [v4 responseGenerations];
    v65 = [v63 isEqual:v64];

    if (!v65)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  v6 = [v4 executors];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v66 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  if (v66)
  {
    v67 = v66;
    v68 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
    v69 = [v4 executors];
    v70 = [v68 isEqual:v69];

    if (!v70)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  v6 = [v4 planGenerations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v71 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  if (v71)
  {
    v72 = v71;
    v73 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
    v74 = [v4 planGenerations];
    v75 = [v73 isEqual:v74];

    if (!v75)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  v6 = [v4 ttaie];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_86;
  }

  v76 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  if (v76)
  {
    v77 = v76;
    v78 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    v79 = [v4 ttaie];
    v80 = [v78 isEqual:v79];

    if (!v80)
    {
      goto LABEL_87;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_86:

    goto LABEL_87;
  }

  v81 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  if (!v81)
  {

LABEL_90:
    v86 = 1;
    goto LABEL_88;
  }

  v82 = v81;
  v83 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  v84 = [v4 failureInfo];
  v85 = [v83 isEqual:v84];

  if (v85)
  {
    goto LABEL_90;
  }

LABEL_87:
  v86 = 0;
LABEL_88:

  return v86;
}

- (void)writeTo:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];

  if (v5)
  {
    v6 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
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

  v10 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
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

  v48 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];

  if (v48)
  {
    v49 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];

  if (v50)
  {
    v51 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addPlanGeneration:(id)a3
{
  v4 = a3;
  planGenerations = self->_planGenerations;
  v8 = v4;
  if (!planGenerations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_planGenerations;
    self->_planGenerations = v6;

    v4 = v8;
    planGenerations = self->_planGenerations;
  }

  [(NSArray *)planGenerations addObject:v4];
}

- (void)addExecutor:(id)a3
{
  v4 = a3;
  executors = self->_executors;
  v8 = v4;
  if (!executors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_executors;
    self->_executors = v6;

    v4 = v8;
    executors = self->_executors;
  }

  [(NSArray *)executors addObject:v4];
}

- (void)addResponseGeneration:(id)a3
{
  v4 = a3;
  responseGenerations = self->_responseGenerations;
  v8 = v4;
  if (!responseGenerations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_responseGenerations;
    self->_responseGenerations = v6;

    v4 = v8;
    responseGenerations = self->_responseGenerations;
  }

  [(NSArray *)responseGenerations addObject:v4];
}

- (void)addPlanResolution:(id)a3
{
  v4 = a3;
  planResolutions = self->_planResolutions;
  v8 = v4;
  if (!planResolutions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_planResolutions;
    self->_planResolutions = v6;

    v4 = v8;
    planResolutions = self->_planResolutions;
  }

  [(NSArray *)planResolutions addObject:v4];
}

- (void)addSearch:(id)a3
{
  v4 = a3;
  searchs = self->_searchs;
  v8 = v4;
  if (!searchs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchs;
    self->_searchs = v6;

    v4 = v8;
    searchs = self->_searchs;
  }

  [(NSArray *)searchs addObject:v4];
}

- (void)addQueryDecoration:(id)a3
{
  v4 = a3;
  queryDecorations = self->_queryDecorations;
  v8 = v4;
  if (!queryDecorations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_queryDecorations;
    self->_queryDecorations = v6;

    v4 = v8;
    queryDecorations = self->_queryDecorations;
  }

  [(NSArray *)queryDecorations addObject:v4];
}

- (void)setHasHasReliabilityData:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasDictationPerformanceData:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasAssistantPerformanceData:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PNRODSchemaPNRODSiriTurnGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self turnid];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTurnid];
  }

  v9 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self srt];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteSrt];
  }

  v12 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self launch];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteLaunch];
  }

  v15 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self epd];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteEpd];
  }

  v18 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self uufr];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteUufr];
  }

  v21 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttfw];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTtfw];
  }

  v24 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self queryDecorations];
  v25 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v24 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setQueryDecorations:v25];

  v26 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self searchs];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v26 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setSearchs:v27];

  v28 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planResolutions];
  v29 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v28 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setPlanResolutions:v29];

  v30 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self responseGenerations];
  v31 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v30 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setResponseGenerations:v31];

  v32 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self executors];
  v33 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v32 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setExecutors:v33];

  v34 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self planGenerations];
  v35 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v34 underConditions:v4];
  [(PNRODSchemaPNRODSiriTurnGrainSummary *)self setPlanGenerations:v35];

  v36 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self ttaie];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODSiriTurnGrainSummary *)self deleteTtaie];
  }

  v39 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self failureInfo];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
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