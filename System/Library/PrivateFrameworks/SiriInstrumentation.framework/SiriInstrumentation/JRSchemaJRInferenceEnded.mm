@interface JRSchemaJRInferenceEnded
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRInferenceEnded)initWithDictionary:(id)a3;
- (JRSchemaJRInferenceEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (float)alreadyPromptedAtIndex:(unint64_t)a3;
- (float)callerComponentAtIndex:(unint64_t)a3;
- (float)parameterTypeAtIndex:(unint64_t)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)bucketedDistanceAtIndex:(unint64_t)a3;
- (int)parameterSubTypeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addAlreadyPrompted:(float)a3;
- (void)addBucketedDistance:(int)a3;
- (void)addCallerComponent:(float)a3;
- (void)addCandidateHistoryCount:(id)a3;
- (void)addCandidateRisk:(id)a3;
- (void)addIntervalUntilStartTime:(id)a3;
- (void)addJrEntitySimilarityScores:(id)a3;
- (void)addParameterSubType:(int)a3;
- (void)addParameterType:(float)a3;
- (void)addScores:(id)a3;
- (void)addSearchToolRanks:(id)a3;
- (void)addTupleHistoryCount:(id)a3;
- (void)setHasLoudnessLevel:(BOOL)a3;
- (void)setHasSignalToNoiseRatio:(BOOL)a3;
- (void)setHasTrialConfirmationRate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRInferenceEnded

- (JRSchemaJRInferenceEnded)initWithDictionary:(id)a3
{
  v191 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v178.receiver = self;
  v178.super_class = JRSchemaJRInferenceEnded;
  v5 = [(JRSchemaJRInferenceEnded *)&v178 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelInputShapes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRModelInputShapes alloc] initWithDictionary:v6];
      [(JRSchemaJRInferenceEnded *)v5 setModelInputShapes:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"modelOutputs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRModelOutputs alloc] initWithDictionary:v8];
      [(JRSchemaJRInferenceEnded *)v5 setModelOutputs:v9];
    }

    v115 = v8;
    v116 = v6;
    v10 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(JRSchemaJRInferenceEnded *)v5 setVersion:v11];
    }

    v114 = v10;
    v12 = [v4 objectForKeyedSubscript:@"trialDisambiguationRate"];
    objc_opt_class();
    v128 = v12;
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setTrialDisambiguationRate:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"trialConfirmationRate"];
    objc_opt_class();
    v127 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setTrialConfirmationRate:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"riskProfile"];
    objc_opt_class();
    v126 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[JRSchemaRiskProfile alloc] initWithDictionary:v14];
      [(JRSchemaJRInferenceEnded *)v5 setRiskProfile:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"parameterType"];
    objc_opt_class();
    v125 = v16;
    v129 = v4;
    if (objc_opt_isKindOfClass())
    {
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v174 objects:v190 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v175;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v175 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v174 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v22 floatValue];
              [(JRSchemaJRInferenceEnded *)v5 addParameterType:?];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v174 objects:v190 count:16];
        }

        while (v19);
      }

      v4 = v129;
    }

    v23 = [v4 objectForKeyedSubscript:@"alreadyPrompted"];
    objc_opt_class();
    v124 = v23;
    if (objc_opt_isKindOfClass())
    {
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v170 objects:v189 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v171;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v171 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v170 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v29 floatValue];
              [(JRSchemaJRInferenceEnded *)v5 addAlreadyPrompted:?];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v170 objects:v189 count:16];
        }

        while (v26);
      }

      v4 = v129;
    }

    v30 = [v4 objectForKeyedSubscript:@"callerComponent"];
    objc_opt_class();
    v123 = v30;
    if (objc_opt_isKindOfClass())
    {
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v166 objects:v188 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v167;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v167 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v166 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v36 floatValue];
              [(JRSchemaJRInferenceEnded *)v5 addCallerComponent:?];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v166 objects:v188 count:16];
        }

        while (v33);
      }

      v4 = v129;
    }

    v37 = [v4 objectForKeyedSubscript:@"candidateHistoryCount"];
    objc_opt_class();
    v122 = v37;
    if (objc_opt_isKindOfClass())
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v162 objects:v187 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v163;
        do
        {
          for (m = 0; m != v40; ++m)
          {
            if (*v163 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v162 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [[JRSchemaSegmentedCandidateCount alloc] initWithDictionary:v43];
              [(JRSchemaJRInferenceEnded *)v5 addCandidateHistoryCount:v44];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v162 objects:v187 count:16];
        }

        while (v40);
      }
    }

    v45 = [v4 objectForKeyedSubscript:@"tupleHistoryCount"];
    objc_opt_class();
    v121 = v45;
    if (objc_opt_isKindOfClass())
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v158 objects:v186 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v159;
        do
        {
          for (n = 0; n != v48; ++n)
          {
            if (*v159 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v158 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = [[JRSchemaSegmentedTupleCount alloc] initWithDictionary:v51];
              [(JRSchemaJRInferenceEnded *)v5 addTupleHistoryCount:v52];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v158 objects:v186 count:16];
        }

        while (v48);
      }
    }

    v53 = [v4 objectForKeyedSubscript:@"candidateRisk"];
    objc_opt_class();
    v120 = v53;
    if (objc_opt_isKindOfClass())
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v154 objects:v185 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v155;
        do
        {
          for (ii = 0; ii != v56; ++ii)
          {
            if (*v155 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v154 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = [[JRSchemaJRCandidateRiskLevel alloc] initWithDictionary:v59];
              [(JRSchemaJRInferenceEnded *)v5 addCandidateRisk:v60];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v154 objects:v185 count:16];
        }

        while (v56);
      }
    }

    v61 = [v4 objectForKeyedSubscript:@"searchToolRanks"];
    objc_opt_class();
    v119 = v61;
    if (objc_opt_isKindOfClass())
    {
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v62 = v61;
      v63 = [v62 countByEnumeratingWithState:&v150 objects:v184 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v151;
        do
        {
          for (jj = 0; jj != v64; ++jj)
          {
            if (*v151 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v150 + 1) + 8 * jj);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v68 = [[JRSchemaJRCandidateSearchToolRank alloc] initWithDictionary:v67];
              [(JRSchemaJRInferenceEnded *)v5 addSearchToolRanks:v68];
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v150 objects:v184 count:16];
        }

        while (v64);
      }
    }

    v69 = [v4 objectForKeyedSubscript:@"bucketedDistance"];
    objc_opt_class();
    v118 = v69;
    if (objc_opt_isKindOfClass())
    {
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v70 = v69;
      v71 = [v70 countByEnumeratingWithState:&v146 objects:v183 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v147;
        do
        {
          for (kk = 0; kk != v72; ++kk)
          {
            if (*v147 != v73)
            {
              objc_enumerationMutation(v70);
            }

            v75 = *(*(&v146 + 1) + 8 * kk);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRInferenceEnded addBucketedDistance:](v5, "addBucketedDistance:", [v75 intValue]);
            }
          }

          v72 = [v70 countByEnumeratingWithState:&v146 objects:v183 count:16];
        }

        while (v72);
      }

      v4 = v129;
    }

    v76 = [v4 objectForKeyedSubscript:@"intervalUntilStartTime"];
    objc_opt_class();
    v117 = v76;
    if (objc_opt_isKindOfClass())
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v77 = v76;
      v78 = [v77 countByEnumeratingWithState:&v142 objects:v182 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v143;
        do
        {
          for (mm = 0; mm != v79; ++mm)
          {
            if (*v143 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v82 = *(*(&v142 + 1) + 8 * mm);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v83 = [[JRSchemaIntervalUntilStartTime alloc] initWithDictionary:v82];
              [(JRSchemaJRInferenceEnded *)v5 addIntervalUntilStartTime:v83];
            }
          }

          v79 = [v77 countByEnumeratingWithState:&v142 objects:v182 count:16];
        }

        while (v79);
      }
    }

    v84 = [v4 objectForKeyedSubscript:@"parameterSubType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v85 = v84;
      v86 = [v85 countByEnumeratingWithState:&v138 objects:v181 count:16];
      if (v86)
      {
        v87 = v86;
        v88 = *v139;
        do
        {
          for (nn = 0; nn != v87; ++nn)
          {
            if (*v139 != v88)
            {
              objc_enumerationMutation(v85);
            }

            v90 = *(*(&v138 + 1) + 8 * nn);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRInferenceEnded addParameterSubType:](v5, "addParameterSubType:", [v90 intValue]);
            }
          }

          v87 = [v85 countByEnumeratingWithState:&v138 objects:v181 count:16];
        }

        while (v87);
      }

      v4 = v129;
    }

    v91 = [v4 objectForKeyedSubscript:@"signalToNoiseRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v91 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setSignalToNoiseRatio:?];
    }

    v92 = [v4 objectForKeyedSubscript:@"loudnessLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v92 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setLoudnessLevel:?];
    }

    v93 = [v4 objectForKeyedSubscript:@"scores"];
    objc_opt_class();
    v112 = v91;
    v113 = v84;
    v111 = v92;
    if (objc_opt_isKindOfClass())
    {
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v94 = v93;
      v95 = [v94 countByEnumeratingWithState:&v134 objects:v180 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = *v135;
        do
        {
          for (i1 = 0; i1 != v96; ++i1)
          {
            if (*v135 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v134 + 1) + 8 * i1);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v100 = [[JRSchemaJRTokenConfidence alloc] initWithDictionary:v99];
              [(JRSchemaJRInferenceEnded *)v5 addScores:v100];
            }
          }

          v96 = [v94 countByEnumeratingWithState:&v134 objects:v180 count:16];
        }

        while (v96);
      }

      v84 = v113;
      v92 = v111;
    }

    v101 = [v4 objectForKeyedSubscript:@"jrEntitySimilarityScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v102 = v101;
      v103 = [v102 countByEnumeratingWithState:&v130 objects:v179 count:16];
      if (v103)
      {
        v104 = v103;
        v105 = *v131;
        do
        {
          for (i2 = 0; i2 != v104; ++i2)
          {
            if (*v131 != v105)
            {
              objc_enumerationMutation(v102);
            }

            v107 = *(*(&v130 + 1) + 8 * i2);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v108 = [[JRSchemaJREntitySimilarityScores alloc] initWithDictionary:v107];
              [(JRSchemaJRInferenceEnded *)v5 addJrEntitySimilarityScores:v108];
            }
          }

          v104 = [v102 countByEnumeratingWithState:&v130 objects:v179 count:16];
        }

        while (v104);
      }

      v4 = v129;
      v91 = v112;
      v84 = v113;
      v92 = v111;
    }

    v109 = v5;
  }

  return v5;
}

- (JRSchemaJRInferenceEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRInferenceEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRInferenceEnded *)self dictionaryRepresentation];
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
  v128 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alreadyPrompteds count])
  {
    v4 = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"alreadyPrompted"];
  }

  if ([(NSArray *)self->_bucketedDistances count])
  {
    v6 = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"bucketedDistance"];
  }

  if ([(NSArray *)self->_callerComponents count])
  {
    v8 = [(JRSchemaJRInferenceEnded *)self callerComponents];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"callerComponent"];
  }

  if ([(NSArray *)self->_candidateHistoryCounts count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v11 = self->_candidateHistoryCounts;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v117 objects:v127 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v118;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v118 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v117 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v117 objects:v127 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"candidateHistoryCount"];
  }

  if ([(NSArray *)self->_candidateRisks count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v19 = self->_candidateRisks;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v113 objects:v126 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v114;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v114 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v113 + 1) + 8 * j) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v113 objects:v126 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"candidateRisk"];
  }

  if ([(NSArray *)self->_intervalUntilStartTimes count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v27 = self->_intervalUntilStartTimes;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v109 objects:v125 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v110;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v110 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v109 + 1) + 8 * k) dictionaryRepresentation];
          if (v32)
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = [MEMORY[0x1E695DFB0] null];
            [v26 addObject:v33];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"intervalUntilStartTime"];
  }

  if ([(NSArray *)self->_jrEntitySimilarityScores count])
  {
    v34 = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v35 = self->_jrEntitySimilarityScores;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v105 objects:v124 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v106;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v106 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v105 + 1) + 8 * m) dictionaryRepresentation];
          if (v40)
          {
            [v34 addObject:v40];
          }

          else
          {
            v41 = [MEMORY[0x1E695DFB0] null];
            [v34 addObject:v41];
          }
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v105 objects:v124 count:16];
      }

      while (v37);
    }

    [v3 setObject:v34 forKeyedSubscript:@"jrEntitySimilarityScores"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v42 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self loudnessLevel];
    v43 = [v42 numberWithFloat:?];
    [v3 setObject:v43 forKeyedSubscript:@"loudnessLevel"];
  }

  if (self->_modelInputShapes)
  {
    v44 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    v45 = [v44 dictionaryRepresentation];
    if (v45)
    {
      [v3 setObject:v45 forKeyedSubscript:@"modelInputShapes"];
    }

    else
    {
      v46 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v46 forKeyedSubscript:@"modelInputShapes"];
    }
  }

  if (self->_modelOutputs)
  {
    v47 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"modelOutputs"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"modelOutputs"];
    }
  }

  if ([(NSArray *)self->_parameterSubTypes count])
  {
    v50 = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"parameterSubType"];
  }

  if ([(NSArray *)self->_parameterTypes count])
  {
    v52 = [(JRSchemaJRInferenceEnded *)self parameterTypes];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"parameterType"];
  }

  if (self->_riskProfile)
  {
    v54 = [(JRSchemaJRInferenceEnded *)self riskProfile];
    v55 = [v54 dictionaryRepresentation];
    if (v55)
    {
      [v3 setObject:v55 forKeyedSubscript:@"riskProfile"];
    }

    else
    {
      v56 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v56 forKeyedSubscript:@"riskProfile"];
    }
  }

  if ([(NSArray *)self->_scores count])
  {
    v57 = [MEMORY[0x1E695DF70] array];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v58 = self->_scores;
    v59 = [(NSArray *)v58 countByEnumeratingWithState:&v101 objects:v123 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v102;
      do
      {
        for (n = 0; n != v60; ++n)
        {
          if (*v102 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v101 + 1) + 8 * n) dictionaryRepresentation];
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

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v101 objects:v123 count:16];
      }

      while (v60);
    }

    [v3 setObject:v57 forKeyedSubscript:@"scores"];
  }

  if ([(NSArray *)self->_searchToolRanks count])
  {
    v65 = [MEMORY[0x1E695DF70] array];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v66 = self->_searchToolRanks;
    v67 = [(NSArray *)v66 countByEnumeratingWithState:&v97 objects:v122 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v98;
      do
      {
        for (ii = 0; ii != v68; ++ii)
        {
          if (*v98 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = [*(*(&v97 + 1) + 8 * ii) dictionaryRepresentation];
          if (v71)
          {
            [v65 addObject:v71];
          }

          else
          {
            v72 = [MEMORY[0x1E695DFB0] null];
            [v65 addObject:v72];
          }
        }

        v68 = [(NSArray *)v66 countByEnumeratingWithState:&v97 objects:v122 count:16];
      }

      while (v68);
    }

    [v3 setObject:v65 forKeyedSubscript:@"searchToolRanks"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v86 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self signalToNoiseRatio];
    v87 = [v86 numberWithFloat:?];
    [v3 setObject:v87 forKeyedSubscript:@"signalToNoiseRatio"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_102:
      if ((has & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_102;
  }

  v88 = MEMORY[0x1E696AD98];
  [(JRSchemaJRInferenceEnded *)self trialConfirmationRate];
  v89 = [v88 numberWithFloat:?];
  [v3 setObject:v89 forKeyedSubscript:@"trialConfirmationRate"];

  if (*&self->_has)
  {
LABEL_103:
    v74 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self trialDisambiguationRate];
    v75 = [v74 numberWithFloat:?];
    [v3 setObject:v75 forKeyedSubscript:@"trialDisambiguationRate"];
  }

LABEL_104:
  if ([(NSArray *)self->_tupleHistoryCounts count])
  {
    v76 = [MEMORY[0x1E695DF70] array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v77 = self->_tupleHistoryCounts;
    v78 = [(NSArray *)v77 countByEnumeratingWithState:&v93 objects:v121 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v94;
      do
      {
        for (jj = 0; jj != v79; ++jj)
        {
          if (*v94 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = [*(*(&v93 + 1) + 8 * jj) dictionaryRepresentation];
          if (v82)
          {
            [v76 addObject:v82];
          }

          else
          {
            v83 = [MEMORY[0x1E695DFB0] null];
            [v76 addObject:v83];
          }
        }

        v79 = [(NSArray *)v77 countByEnumeratingWithState:&v93 objects:v121 count:16];
      }

      while (v79);
    }

    [v3 setObject:v76 forKeyedSubscript:@"tupleHistoryCount"];
  }

  if (self->_version)
  {
    v84 = [(JRSchemaJRInferenceEnded *)self version];
    v85 = [v84 dictionaryRepresentation];
    if (v85)
    {
      [v3 setObject:v85 forKeyedSubscript:@"version"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v91 = v3;

  return v3;
}

- (unint64_t)hash
{
  v47 = [(JRSchemaJRModelInputShapes *)self->_modelInputShapes hash];
  v46 = [(JRSchemaJRModelOutputs *)self->_modelOutputs hash];
  v45 = [(SISchemaVersion *)self->_version hash];
  if (*&self->_has)
  {
    trialDisambiguationRate = self->_trialDisambiguationRate;
    if (trialDisambiguationRate >= 0.0)
    {
      v7 = trialDisambiguationRate;
    }

    else
    {
      v7 = -trialDisambiguationRate;
    }

    *v3.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v5 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v44 = v5;
  if ((*&self->_has & 2) != 0)
  {
    trialConfirmationRate = self->_trialConfirmationRate;
    if (trialConfirmationRate >= 0.0)
    {
      v11 = trialConfirmationRate;
    }

    else
    {
      v11 = -trialConfirmationRate;
    }

    *v3.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v13), v4, v3).i64[0];
    v14 = 2654435761u * *v3.i64;
    v15 = v14 + v12;
    if (v12 <= 0.0)
    {
      v15 = 2654435761u * *v3.i64;
    }

    v16 = v14 - fabs(v12);
    if (v12 >= 0.0)
    {
      v16 = v15;
    }

    v43 = v16;
  }

  else
  {
    v43 = 0;
  }

  v42 = [(JRSchemaRiskProfile *)self->_riskProfile hash];
  v41 = [(NSArray *)self->_parameterTypes hash];
  v17 = [(NSArray *)self->_alreadyPrompteds hash];
  v18 = [(NSArray *)self->_callerComponents hash];
  v19 = [(NSArray *)self->_candidateHistoryCounts hash];
  v20 = [(NSArray *)self->_tupleHistoryCounts hash];
  v21 = [(NSArray *)self->_candidateRisks hash];
  v22 = [(NSArray *)self->_searchToolRanks hash];
  v23 = [(NSArray *)self->_bucketedDistances hash];
  v24 = [(NSArray *)self->_intervalUntilStartTimes hash];
  v25 = [(NSArray *)self->_parameterSubTypes hash];
  if ((*&self->_has & 4) != 0)
  {
    signalToNoiseRatio = self->_signalToNoiseRatio;
    if (signalToNoiseRatio >= 0.0)
    {
      v30 = signalToNoiseRatio;
    }

    else
    {
      v30 = -signalToNoiseRatio;
    }

    *v26.i64 = floor(v30 + 0.5);
    v31 = (v30 - *v26.i64) * 1.84467441e19;
    *v27.i64 = *v26.i64 - trunc(*v26.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v26 = vbslq_s8(vnegq_f64(v32), v27, v26);
    v28 = 2654435761u * *v26.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v28 += v31;
      }
    }

    else
    {
      v28 -= fabs(v31);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    loudnessLevel = self->_loudnessLevel;
    if (loudnessLevel >= 0.0)
    {
      v35 = loudnessLevel;
    }

    else
    {
      v35 = -loudnessLevel;
    }

    *v26.i64 = floor(v35 + 0.5);
    v36 = (v35 - *v26.i64) * 1.84467441e19;
    *v27.i64 = *v26.i64 - trunc(*v26.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v33 = 2654435761u * *vbslq_s8(vnegq_f64(v37), v27, v26).i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v33 += v36;
      }
    }

    else
    {
      v33 -= fabs(v36);
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v46 ^ v47 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  v39 = v28 ^ v33 ^ [(NSArray *)self->_scores hash];
  return v38 ^ v39 ^ [(NSArray *)self->_jrEntitySimilarityScores hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_96;
  }

  v5 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  v6 = [v4 modelInputShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v7 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    v10 = [v4 modelInputShapes];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  v6 = [v4 modelOutputs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v12 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    v15 = [v4 modelOutputs];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self version];
  v6 = [v4 version];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v17 = [(JRSchemaJRInferenceEnded *)self version];
  if (v17)
  {
    v18 = v17;
    v19 = [(JRSchemaJRInferenceEnded *)self version];
    v20 = [v4 version];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[152];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_96;
  }

  if (*&has)
  {
    trialDisambiguationRate = self->_trialDisambiguationRate;
    [v4 trialDisambiguationRate];
    if (trialDisambiguationRate != v25)
    {
      goto LABEL_96;
    }

    has = self->_has;
    v23 = v4[152];
  }

  v26 = (*&has >> 1) & 1;
  if (v26 != ((v23 >> 1) & 1))
  {
    goto LABEL_96;
  }

  if (v26)
  {
    trialConfirmationRate = self->_trialConfirmationRate;
    [v4 trialConfirmationRate];
    if (trialConfirmationRate != v28)
    {
      goto LABEL_96;
    }
  }

  v5 = [(JRSchemaJRInferenceEnded *)self riskProfile];
  v6 = [v4 riskProfile];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v29 = [(JRSchemaJRInferenceEnded *)self riskProfile];
  if (v29)
  {
    v30 = v29;
    v31 = [(JRSchemaJRInferenceEnded *)self riskProfile];
    v32 = [v4 riskProfile];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self parameterTypes];
  v6 = [v4 parameterTypes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v34 = [(JRSchemaJRInferenceEnded *)self parameterTypes];
  if (v34)
  {
    v35 = v34;
    v36 = [(JRSchemaJRInferenceEnded *)self parameterTypes];
    v37 = [v4 parameterTypes];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
  v6 = [v4 alreadyPrompteds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v39 = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
  if (v39)
  {
    v40 = v39;
    v41 = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
    v42 = [v4 alreadyPrompteds];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self callerComponents];
  v6 = [v4 callerComponents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v44 = [(JRSchemaJRInferenceEnded *)self callerComponents];
  if (v44)
  {
    v45 = v44;
    v46 = [(JRSchemaJRInferenceEnded *)self callerComponents];
    v47 = [v4 callerComponents];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  v6 = [v4 candidateHistoryCounts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v49 = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  if (v49)
  {
    v50 = v49;
    v51 = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
    v52 = [v4 candidateHistoryCounts];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  v6 = [v4 tupleHistoryCounts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v54 = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  if (v54)
  {
    v55 = v54;
    v56 = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
    v57 = [v4 tupleHistoryCounts];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  v6 = [v4 candidateRisks];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v59 = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  if (v59)
  {
    v60 = v59;
    v61 = [(JRSchemaJRInferenceEnded *)self candidateRisks];
    v62 = [v4 candidateRisks];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  v6 = [v4 searchToolRanks];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v64 = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  if (v64)
  {
    v65 = v64;
    v66 = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
    v67 = [v4 searchToolRanks];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
  v6 = [v4 bucketedDistances];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v69 = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
  if (v69)
  {
    v70 = v69;
    v71 = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
    v72 = [v4 bucketedDistances];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  v6 = [v4 intervalUntilStartTimes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v74 = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  if (v74)
  {
    v75 = v74;
    v76 = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
    v77 = [v4 intervalUntilStartTimes];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
  v6 = [v4 parameterSubTypes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v79 = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
  if (v79)
  {
    v80 = v79;
    v81 = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
    v82 = [v4 parameterSubTypes];
    v83 = [v81 isEqual:v82];

    if (!v83)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v84 = self->_has;
  v85 = (*&v84 >> 2) & 1;
  v86 = v4[152];
  if (v85 != ((v86 >> 2) & 1))
  {
    goto LABEL_96;
  }

  if (v85)
  {
    signalToNoiseRatio = self->_signalToNoiseRatio;
    [v4 signalToNoiseRatio];
    if (signalToNoiseRatio != v88)
    {
      goto LABEL_96;
    }

    v84 = self->_has;
    v86 = v4[152];
  }

  v89 = (*&v84 >> 3) & 1;
  if (v89 != ((v86 >> 3) & 1))
  {
    goto LABEL_96;
  }

  if (v89)
  {
    loudnessLevel = self->_loudnessLevel;
    [v4 loudnessLevel];
    if (loudnessLevel != v91)
    {
      goto LABEL_96;
    }
  }

  v5 = [(JRSchemaJRInferenceEnded *)self scores];
  v6 = [v4 scores];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_95;
  }

  v92 = [(JRSchemaJRInferenceEnded *)self scores];
  if (v92)
  {
    v93 = v92;
    v94 = [(JRSchemaJRInferenceEnded *)self scores];
    v95 = [v4 scores];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  v6 = [v4 jrEntitySimilarityScores];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_95:

    goto LABEL_96;
  }

  v97 = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  if (!v97)
  {

LABEL_99:
    v102 = 1;
    goto LABEL_97;
  }

  v98 = v97;
  v99 = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  v100 = [v4 jrEntitySimilarityScores];
  v101 = [v99 isEqual:v100];

  if (v101)
  {
    goto LABEL_99;
  }

LABEL_96:
  v102 = 0;
LABEL_97:

  return v102;
}

- (void)writeTo:(id)a3
{
  v135 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];

  if (v5)
  {
    v6 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(JRSchemaJRInferenceEnded *)self modelOutputs];

  if (v7)
  {
    v8 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(JRSchemaJRInferenceEnded *)self version];

  if (v9)
  {
    v10 = [(JRSchemaJRInferenceEnded *)self version];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v12 = [(JRSchemaJRInferenceEnded *)self riskProfile];

  if (v12)
  {
    v13 = [(JRSchemaJRInferenceEnded *)self riskProfile];
    PBDataWriterWriteSubmessage();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v14 = self->_parameterTypes;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v119 objects:v134 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v120;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v120 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v119 + 1) + 8 * i) floatValue];
        PBDataWriterWriteFloatField();
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v119 objects:v134 count:16];
    }

    while (v16);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v19 = self->_alreadyPrompteds;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v115 objects:v133 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v116;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v116 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v115 + 1) + 8 * j) floatValue];
        PBDataWriterWriteFloatField();
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v115 objects:v133 count:16];
    }

    while (v21);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v24 = self->_callerComponents;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v111 objects:v132 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v112;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v112 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v111 + 1) + 8 * k) floatValue];
        PBDataWriterWriteFloatField();
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v111 objects:v132 count:16];
    }

    while (v26);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v29 = self->_candidateHistoryCounts;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v107 objects:v131 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v108;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v108 != v32)
        {
          objc_enumerationMutation(v29);
        }

        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v107 objects:v131 count:16];
    }

    while (v31);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v34 = self->_tupleHistoryCounts;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v103 objects:v130 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v104;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v104 != v37)
        {
          objc_enumerationMutation(v34);
        }

        PBDataWriterWriteSubmessage();
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v103 objects:v130 count:16];
    }

    while (v36);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v39 = self->_candidateRisks;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v99 objects:v129 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v100;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v100 != v42)
        {
          objc_enumerationMutation(v39);
        }

        PBDataWriterWriteSubmessage();
      }

      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v99 objects:v129 count:16];
    }

    while (v41);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v44 = self->_searchToolRanks;
  v45 = [(NSArray *)v44 countByEnumeratingWithState:&v95 objects:v128 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v96;
    do
    {
      for (jj = 0; jj != v46; ++jj)
      {
        if (*v96 != v47)
        {
          objc_enumerationMutation(v44);
        }

        PBDataWriterWriteSubmessage();
      }

      v46 = [(NSArray *)v44 countByEnumeratingWithState:&v95 objects:v128 count:16];
    }

    while (v46);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v49 = self->_bucketedDistances;
  v50 = [(NSArray *)v49 countByEnumeratingWithState:&v91 objects:v127 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v92;
    do
    {
      for (kk = 0; kk != v51; ++kk)
      {
        if (*v92 != v52)
        {
          objc_enumerationMutation(v49);
        }

        [*(*(&v91 + 1) + 8 * kk) intValue];
        PBDataWriterWriteInt32Field();
      }

      v51 = [(NSArray *)v49 countByEnumeratingWithState:&v91 objects:v127 count:16];
    }

    while (v51);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v54 = self->_intervalUntilStartTimes;
  v55 = [(NSArray *)v54 countByEnumeratingWithState:&v87 objects:v126 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v88;
    do
    {
      for (mm = 0; mm != v56; ++mm)
      {
        if (*v88 != v57)
        {
          objc_enumerationMutation(v54);
        }

        PBDataWriterWriteSubmessage();
      }

      v56 = [(NSArray *)v54 countByEnumeratingWithState:&v87 objects:v126 count:16];
    }

    while (v56);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v59 = self->_parameterSubTypes;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v83 objects:v125 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v84;
    do
    {
      for (nn = 0; nn != v61; ++nn)
      {
        if (*v84 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [*(*(&v83 + 1) + 8 * nn) intValue];
        PBDataWriterWriteInt32Field();
      }

      v61 = [(NSArray *)v59 countByEnumeratingWithState:&v83 objects:v125 count:16];
    }

    while (v61);
  }

  v64 = self->_has;
  if ((v64 & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v64 = self->_has;
  }

  if ((v64 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v65 = self->_scores;
  v66 = [(NSArray *)v65 countByEnumeratingWithState:&v79 objects:v124 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v80;
    do
    {
      for (i1 = 0; i1 != v67; ++i1)
      {
        if (*v80 != v68)
        {
          objc_enumerationMutation(v65);
        }

        PBDataWriterWriteSubmessage();
      }

      v67 = [(NSArray *)v65 countByEnumeratingWithState:&v79 objects:v124 count:16];
    }

    while (v67);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v70 = self->_jrEntitySimilarityScores;
  v71 = [(NSArray *)v70 countByEnumeratingWithState:&v75 objects:v123 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v76;
    do
    {
      for (i2 = 0; i2 != v72; ++i2)
      {
        if (*v76 != v73)
        {
          objc_enumerationMutation(v70);
        }

        PBDataWriterWriteSubmessage();
      }

      v72 = [(NSArray *)v70 countByEnumeratingWithState:&v75 objects:v123 count:16];
    }

    while (v72);
  }
}

- (void)addJrEntitySimilarityScores:(id)a3
{
  v4 = a3;
  jrEntitySimilarityScores = self->_jrEntitySimilarityScores;
  v8 = v4;
  if (!jrEntitySimilarityScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_jrEntitySimilarityScores;
    self->_jrEntitySimilarityScores = v6;

    v4 = v8;
    jrEntitySimilarityScores = self->_jrEntitySimilarityScores;
  }

  [(NSArray *)jrEntitySimilarityScores addObject:v4];
}

- (void)addScores:(id)a3
{
  v4 = a3;
  scores = self->_scores;
  v8 = v4;
  if (!scores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_scores;
    self->_scores = v6;

    v4 = v8;
    scores = self->_scores;
  }

  [(NSArray *)scores addObject:v4];
}

- (void)setHasLoudnessLevel:(BOOL)a3
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

- (void)setHasSignalToNoiseRatio:(BOOL)a3
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

- (int)parameterSubTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_parameterSubTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addParameterSubType:(int)a3
{
  v3 = *&a3;
  parameterSubTypes = self->_parameterSubTypes;
  if (!parameterSubTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterSubTypes;
    self->_parameterSubTypes = v6;

    parameterSubTypes = self->_parameterSubTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)parameterSubTypes addObject:v8];
}

- (void)addIntervalUntilStartTime:(id)a3
{
  v4 = a3;
  intervalUntilStartTimes = self->_intervalUntilStartTimes;
  v8 = v4;
  if (!intervalUntilStartTimes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intervalUntilStartTimes;
    self->_intervalUntilStartTimes = v6;

    v4 = v8;
    intervalUntilStartTimes = self->_intervalUntilStartTimes;
  }

  [(NSArray *)intervalUntilStartTimes addObject:v4];
}

- (int)bucketedDistanceAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_bucketedDistances objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addBucketedDistance:(int)a3
{
  v3 = *&a3;
  bucketedDistances = self->_bucketedDistances;
  if (!bucketedDistances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_bucketedDistances;
    self->_bucketedDistances = v6;

    bucketedDistances = self->_bucketedDistances;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)bucketedDistances addObject:v8];
}

- (void)addSearchToolRanks:(id)a3
{
  v4 = a3;
  searchToolRanks = self->_searchToolRanks;
  v8 = v4;
  if (!searchToolRanks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchToolRanks;
    self->_searchToolRanks = v6;

    v4 = v8;
    searchToolRanks = self->_searchToolRanks;
  }

  [(NSArray *)searchToolRanks addObject:v4];
}

- (void)addCandidateRisk:(id)a3
{
  v4 = a3;
  candidateRisks = self->_candidateRisks;
  v8 = v4;
  if (!candidateRisks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateRisks;
    self->_candidateRisks = v6;

    v4 = v8;
    candidateRisks = self->_candidateRisks;
  }

  [(NSArray *)candidateRisks addObject:v4];
}

- (void)addTupleHistoryCount:(id)a3
{
  v4 = a3;
  tupleHistoryCounts = self->_tupleHistoryCounts;
  v8 = v4;
  if (!tupleHistoryCounts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleHistoryCounts;
    self->_tupleHistoryCounts = v6;

    v4 = v8;
    tupleHistoryCounts = self->_tupleHistoryCounts;
  }

  [(NSArray *)tupleHistoryCounts addObject:v4];
}

- (void)addCandidateHistoryCount:(id)a3
{
  v4 = a3;
  candidateHistoryCounts = self->_candidateHistoryCounts;
  v8 = v4;
  if (!candidateHistoryCounts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateHistoryCounts;
    self->_candidateHistoryCounts = v6;

    v4 = v8;
    candidateHistoryCounts = self->_candidateHistoryCounts;
  }

  [(NSArray *)candidateHistoryCounts addObject:v4];
}

- (float)callerComponentAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_callerComponents objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addCallerComponent:(float)a3
{
  callerComponents = self->_callerComponents;
  if (!callerComponents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_callerComponents;
    self->_callerComponents = v6;

    callerComponents = self->_callerComponents;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)callerComponents addObject:v9];
}

- (float)alreadyPromptedAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_alreadyPrompteds objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addAlreadyPrompted:(float)a3
{
  alreadyPrompteds = self->_alreadyPrompteds;
  if (!alreadyPrompteds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alreadyPrompteds;
    self->_alreadyPrompteds = v6;

    alreadyPrompteds = self->_alreadyPrompteds;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)alreadyPrompteds addObject:v9];
}

- (float)parameterTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_parameterTypes objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addParameterType:(float)a3
{
  parameterTypes = self->_parameterTypes;
  if (!parameterTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterTypes;
    self->_parameterTypes = v6;

    parameterTypes = self->_parameterTypes;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)parameterTypes addObject:v9];
}

- (void)setHasTrialConfirmationRate:(BOOL)a3
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
  v33.receiver = self;
  v33.super_class = JRSchemaJRInferenceEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v33 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaJRInferenceEnded *)self deleteModelInputShapes];
  }

  v9 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaJRInferenceEnded *)self deleteModelOutputs];
  }

  v12 = [(JRSchemaJRInferenceEnded *)self version];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(JRSchemaJRInferenceEnded *)self deleteVersion];
  }

  v15 = [(JRSchemaJRInferenceEnded *)self riskProfile];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(JRSchemaJRInferenceEnded *)self deleteRiskProfile];
  }

  v18 = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v18 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setCandidateHistoryCounts:v19];

  v20 = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v20 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setTupleHistoryCounts:v21];

  v22 = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  v23 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v22 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setCandidateRisks:v23];

  v24 = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  v25 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v24 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setSearchToolRanks:v25];

  v26 = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v26 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setIntervalUntilStartTimes:v27];

  v28 = [(JRSchemaJRInferenceEnded *)self scores];
  v29 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v28 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setScores:v29];

  v30 = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  v31 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v30 underConditions:v4];
  [(JRSchemaJRInferenceEnded *)self setJrEntitySimilarityScores:v31];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end