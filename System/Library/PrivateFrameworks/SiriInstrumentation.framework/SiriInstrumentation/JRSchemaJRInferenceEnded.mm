@interface JRSchemaJRInferenceEnded
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRInferenceEnded)initWithDictionary:(id)dictionary;
- (JRSchemaJRInferenceEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)alreadyPromptedAtIndex:(unint64_t)index;
- (float)callerComponentAtIndex:(unint64_t)index;
- (float)parameterTypeAtIndex:(unint64_t)index;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)bucketedDistanceAtIndex:(unint64_t)index;
- (int)parameterSubTypeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addAlreadyPrompted:(float)prompted;
- (void)addBucketedDistance:(int)distance;
- (void)addCallerComponent:(float)component;
- (void)addCandidateHistoryCount:(id)count;
- (void)addCandidateRisk:(id)risk;
- (void)addIntervalUntilStartTime:(id)time;
- (void)addJrEntitySimilarityScores:(id)scores;
- (void)addParameterSubType:(int)type;
- (void)addParameterType:(float)type;
- (void)addScores:(id)scores;
- (void)addSearchToolRanks:(id)ranks;
- (void)addTupleHistoryCount:(id)count;
- (void)setHasLoudnessLevel:(BOOL)level;
- (void)setHasSignalToNoiseRatio:(BOOL)ratio;
- (void)setHasTrialConfirmationRate:(BOOL)rate;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRInferenceEnded

- (JRSchemaJRInferenceEnded)initWithDictionary:(id)dictionary
{
  v191 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v178.receiver = self;
  v178.super_class = JRSchemaJRInferenceEnded;
  v5 = [(JRSchemaJRInferenceEnded *)&v178 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelInputShapes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRModelInputShapes alloc] initWithDictionary:v6];
      [(JRSchemaJRInferenceEnded *)v5 setModelInputShapes:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelOutputs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRModelOutputs alloc] initWithDictionary:v8];
      [(JRSchemaJRInferenceEnded *)v5 setModelOutputs:v9];
    }

    v115 = v8;
    v116 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaVersion alloc] initWithDictionary:v10];
      [(JRSchemaJRInferenceEnded *)v5 setVersion:v11];
    }

    v114 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"trialDisambiguationRate"];
    objc_opt_class();
    v128 = v12;
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setTrialDisambiguationRate:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"trialConfirmationRate"];
    objc_opt_class();
    v127 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setTrialConfirmationRate:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"riskProfile"];
    objc_opt_class();
    v126 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[JRSchemaRiskProfile alloc] initWithDictionary:v14];
      [(JRSchemaJRInferenceEnded *)v5 setRiskProfile:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"parameterType"];
    objc_opt_class();
    v125 = v16;
    v129 = dictionaryCopy;
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

      dictionaryCopy = v129;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"alreadyPrompted"];
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

      dictionaryCopy = v129;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"callerComponent"];
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

      dictionaryCopy = v129;
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"candidateHistoryCount"];
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

    v45 = [dictionaryCopy objectForKeyedSubscript:@"tupleHistoryCount"];
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

    v53 = [dictionaryCopy objectForKeyedSubscript:@"candidateRisk"];
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

    v61 = [dictionaryCopy objectForKeyedSubscript:@"searchToolRanks"];
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

    v69 = [dictionaryCopy objectForKeyedSubscript:@"bucketedDistance"];
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

      dictionaryCopy = v129;
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"intervalUntilStartTime"];
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

    v84 = [dictionaryCopy objectForKeyedSubscript:@"parameterSubType"];
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

      dictionaryCopy = v129;
    }

    v91 = [dictionaryCopy objectForKeyedSubscript:@"signalToNoiseRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v91 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setSignalToNoiseRatio:?];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"loudnessLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v92 floatValue];
      [(JRSchemaJRInferenceEnded *)v5 setLoudnessLevel:?];
    }

    v93 = [dictionaryCopy objectForKeyedSubscript:@"scores"];
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

    v101 = [dictionaryCopy objectForKeyedSubscript:@"jrEntitySimilarityScores"];
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

      dictionaryCopy = v129;
      v91 = v112;
      v84 = v113;
      v92 = v111;
    }

    v109 = v5;
  }

  return v5;
}

- (JRSchemaJRInferenceEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRInferenceEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRInferenceEnded *)self dictionaryRepresentation];
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
  v128 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alreadyPrompteds count])
  {
    alreadyPrompteds = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
    v5 = [alreadyPrompteds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"alreadyPrompted"];
  }

  if ([(NSArray *)self->_bucketedDistances count])
  {
    bucketedDistances = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
    v7 = [bucketedDistances copy];
    [dictionary setObject:v7 forKeyedSubscript:@"bucketedDistance"];
  }

  if ([(NSArray *)self->_callerComponents count])
  {
    callerComponents = [(JRSchemaJRInferenceEnded *)self callerComponents];
    v9 = [callerComponents copy];
    [dictionary setObject:v9 forKeyedSubscript:@"callerComponent"];
  }

  if ([(NSArray *)self->_candidateHistoryCounts count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v117 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v117 objects:v127 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidateHistoryCount"];
  }

  if ([(NSArray *)self->_candidateRisks count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v113 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v113 objects:v126 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"candidateRisk"];
  }

  if ([(NSArray *)self->_intervalUntilStartTimes count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v109 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"intervalUntilStartTime"];
  }

  if ([(NSArray *)self->_jrEntitySimilarityScores count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v105 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array4 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null4];
          }
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v105 objects:v124 count:16];
      }

      while (v37);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"jrEntitySimilarityScores"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v42 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self loudnessLevel];
    v43 = [v42 numberWithFloat:?];
    [dictionary setObject:v43 forKeyedSubscript:@"loudnessLevel"];
  }

  if (self->_modelInputShapes)
  {
    modelInputShapes = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    dictionaryRepresentation5 = [modelInputShapes dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"modelInputShapes"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"modelInputShapes"];
    }
  }

  if (self->_modelOutputs)
  {
    modelOutputs = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    dictionaryRepresentation6 = [modelOutputs dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"modelOutputs"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"modelOutputs"];
    }
  }

  if ([(NSArray *)self->_parameterSubTypes count])
  {
    parameterSubTypes = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
    v51 = [parameterSubTypes copy];
    [dictionary setObject:v51 forKeyedSubscript:@"parameterSubType"];
  }

  if ([(NSArray *)self->_parameterTypes count])
  {
    parameterTypes = [(JRSchemaJRInferenceEnded *)self parameterTypes];
    v53 = [parameterTypes copy];
    [dictionary setObject:v53 forKeyedSubscript:@"parameterType"];
  }

  if (self->_riskProfile)
  {
    riskProfile = [(JRSchemaJRInferenceEnded *)self riskProfile];
    dictionaryRepresentation7 = [riskProfile dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"riskProfile"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"riskProfile"];
    }
  }

  if ([(NSArray *)self->_scores count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation8 = [*(*(&v101 + 1) + 8 * n) dictionaryRepresentation];
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

        v60 = [(NSArray *)v58 countByEnumeratingWithState:&v101 objects:v123 count:16];
      }

      while (v60);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"scores"];
  }

  if ([(NSArray *)self->_searchToolRanks count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation9 = [*(*(&v97 + 1) + 8 * ii) dictionaryRepresentation];
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

        v68 = [(NSArray *)v66 countByEnumeratingWithState:&v97 objects:v122 count:16];
      }

      while (v68);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"searchToolRanks"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v86 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self signalToNoiseRatio];
    v87 = [v86 numberWithFloat:?];
    [dictionary setObject:v87 forKeyedSubscript:@"signalToNoiseRatio"];

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
  [dictionary setObject:v89 forKeyedSubscript:@"trialConfirmationRate"];

  if (*&self->_has)
  {
LABEL_103:
    v74 = MEMORY[0x1E696AD98];
    [(JRSchemaJRInferenceEnded *)self trialDisambiguationRate];
    v75 = [v74 numberWithFloat:?];
    [dictionary setObject:v75 forKeyedSubscript:@"trialDisambiguationRate"];
  }

LABEL_104:
  if ([(NSArray *)self->_tupleHistoryCounts count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation10 = [*(*(&v93 + 1) + 8 * jj) dictionaryRepresentation];
          if (dictionaryRepresentation10)
          {
            [array7 addObject:dictionaryRepresentation10];
          }

          else
          {
            null10 = [MEMORY[0x1E695DFB0] null];
            [array7 addObject:null10];
          }
        }

        v79 = [(NSArray *)v77 countByEnumeratingWithState:&v93 objects:v121 count:16];
      }

      while (v79);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"tupleHistoryCount"];
  }

  if (self->_version)
  {
    version = [(JRSchemaJRInferenceEnded *)self version];
    dictionaryRepresentation11 = [version dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"version"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"version"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v91 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_96;
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  modelInputShapes2 = [equalCopy modelInputShapes];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  modelInputShapes3 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  if (modelInputShapes3)
  {
    v8 = modelInputShapes3;
    modelInputShapes4 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    modelInputShapes5 = [equalCopy modelInputShapes];
    v11 = [modelInputShapes4 isEqual:modelInputShapes5];

    if (!v11)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  modelInputShapes2 = [equalCopy modelOutputs];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  modelOutputs = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  if (modelOutputs)
  {
    v13 = modelOutputs;
    modelOutputs2 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    modelOutputs3 = [equalCopy modelOutputs];
    v16 = [modelOutputs2 isEqual:modelOutputs3];

    if (!v16)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self version];
  modelInputShapes2 = [equalCopy version];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  version = [(JRSchemaJRInferenceEnded *)self version];
  if (version)
  {
    v18 = version;
    version2 = [(JRSchemaJRInferenceEnded *)self version];
    version3 = [equalCopy version];
    v21 = [version2 isEqual:version3];

    if (!v21)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[152];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_96;
  }

  if (*&has)
  {
    trialDisambiguationRate = self->_trialDisambiguationRate;
    [equalCopy trialDisambiguationRate];
    if (trialDisambiguationRate != v25)
    {
      goto LABEL_96;
    }

    has = self->_has;
    v23 = equalCopy[152];
  }

  v26 = (*&has >> 1) & 1;
  if (v26 != ((v23 >> 1) & 1))
  {
    goto LABEL_96;
  }

  if (v26)
  {
    trialConfirmationRate = self->_trialConfirmationRate;
    [equalCopy trialConfirmationRate];
    if (trialConfirmationRate != v28)
    {
      goto LABEL_96;
    }
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self riskProfile];
  modelInputShapes2 = [equalCopy riskProfile];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  riskProfile = [(JRSchemaJRInferenceEnded *)self riskProfile];
  if (riskProfile)
  {
    v30 = riskProfile;
    riskProfile2 = [(JRSchemaJRInferenceEnded *)self riskProfile];
    riskProfile3 = [equalCopy riskProfile];
    v33 = [riskProfile2 isEqual:riskProfile3];

    if (!v33)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self parameterTypes];
  modelInputShapes2 = [equalCopy parameterTypes];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  parameterTypes = [(JRSchemaJRInferenceEnded *)self parameterTypes];
  if (parameterTypes)
  {
    v35 = parameterTypes;
    parameterTypes2 = [(JRSchemaJRInferenceEnded *)self parameterTypes];
    parameterTypes3 = [equalCopy parameterTypes];
    v38 = [parameterTypes2 isEqual:parameterTypes3];

    if (!v38)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
  modelInputShapes2 = [equalCopy alreadyPrompteds];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  alreadyPrompteds = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
  if (alreadyPrompteds)
  {
    v40 = alreadyPrompteds;
    alreadyPrompteds2 = [(JRSchemaJRInferenceEnded *)self alreadyPrompteds];
    alreadyPrompteds3 = [equalCopy alreadyPrompteds];
    v43 = [alreadyPrompteds2 isEqual:alreadyPrompteds3];

    if (!v43)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self callerComponents];
  modelInputShapes2 = [equalCopy callerComponents];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  callerComponents = [(JRSchemaJRInferenceEnded *)self callerComponents];
  if (callerComponents)
  {
    v45 = callerComponents;
    callerComponents2 = [(JRSchemaJRInferenceEnded *)self callerComponents];
    callerComponents3 = [equalCopy callerComponents];
    v48 = [callerComponents2 isEqual:callerComponents3];

    if (!v48)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  modelInputShapes2 = [equalCopy candidateHistoryCounts];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  candidateHistoryCounts = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  if (candidateHistoryCounts)
  {
    v50 = candidateHistoryCounts;
    candidateHistoryCounts2 = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
    candidateHistoryCounts3 = [equalCopy candidateHistoryCounts];
    v53 = [candidateHistoryCounts2 isEqual:candidateHistoryCounts3];

    if (!v53)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  modelInputShapes2 = [equalCopy tupleHistoryCounts];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  tupleHistoryCounts = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  if (tupleHistoryCounts)
  {
    v55 = tupleHistoryCounts;
    tupleHistoryCounts2 = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
    tupleHistoryCounts3 = [equalCopy tupleHistoryCounts];
    v58 = [tupleHistoryCounts2 isEqual:tupleHistoryCounts3];

    if (!v58)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  modelInputShapes2 = [equalCopy candidateRisks];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  candidateRisks = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  if (candidateRisks)
  {
    v60 = candidateRisks;
    candidateRisks2 = [(JRSchemaJRInferenceEnded *)self candidateRisks];
    candidateRisks3 = [equalCopy candidateRisks];
    v63 = [candidateRisks2 isEqual:candidateRisks3];

    if (!v63)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  modelInputShapes2 = [equalCopy searchToolRanks];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  searchToolRanks = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  if (searchToolRanks)
  {
    v65 = searchToolRanks;
    searchToolRanks2 = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
    searchToolRanks3 = [equalCopy searchToolRanks];
    v68 = [searchToolRanks2 isEqual:searchToolRanks3];

    if (!v68)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
  modelInputShapes2 = [equalCopy bucketedDistances];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  bucketedDistances = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
  if (bucketedDistances)
  {
    v70 = bucketedDistances;
    bucketedDistances2 = [(JRSchemaJRInferenceEnded *)self bucketedDistances];
    bucketedDistances3 = [equalCopy bucketedDistances];
    v73 = [bucketedDistances2 isEqual:bucketedDistances3];

    if (!v73)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  modelInputShapes2 = [equalCopy intervalUntilStartTimes];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  intervalUntilStartTimes = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  if (intervalUntilStartTimes)
  {
    v75 = intervalUntilStartTimes;
    intervalUntilStartTimes2 = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
    intervalUntilStartTimes3 = [equalCopy intervalUntilStartTimes];
    v78 = [intervalUntilStartTimes2 isEqual:intervalUntilStartTimes3];

    if (!v78)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
  modelInputShapes2 = [equalCopy parameterSubTypes];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  parameterSubTypes = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
  if (parameterSubTypes)
  {
    v80 = parameterSubTypes;
    parameterSubTypes2 = [(JRSchemaJRInferenceEnded *)self parameterSubTypes];
    parameterSubTypes3 = [equalCopy parameterSubTypes];
    v83 = [parameterSubTypes2 isEqual:parameterSubTypes3];

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
  v86 = equalCopy[152];
  if (v85 != ((v86 >> 2) & 1))
  {
    goto LABEL_96;
  }

  if (v85)
  {
    signalToNoiseRatio = self->_signalToNoiseRatio;
    [equalCopy signalToNoiseRatio];
    if (signalToNoiseRatio != v88)
    {
      goto LABEL_96;
    }

    v84 = self->_has;
    v86 = equalCopy[152];
  }

  v89 = (*&v84 >> 3) & 1;
  if (v89 != ((v86 >> 3) & 1))
  {
    goto LABEL_96;
  }

  if (v89)
  {
    loudnessLevel = self->_loudnessLevel;
    [equalCopy loudnessLevel];
    if (loudnessLevel != v91)
    {
      goto LABEL_96;
    }
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self scores];
  modelInputShapes2 = [equalCopy scores];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
    goto LABEL_95;
  }

  scores = [(JRSchemaJRInferenceEnded *)self scores];
  if (scores)
  {
    v93 = scores;
    scores2 = [(JRSchemaJRInferenceEnded *)self scores];
    scores3 = [equalCopy scores];
    v96 = [scores2 isEqual:scores3];

    if (!v96)
    {
      goto LABEL_96;
    }
  }

  else
  {
  }

  modelInputShapes = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  modelInputShapes2 = [equalCopy jrEntitySimilarityScores];
  if ((modelInputShapes != 0) == (modelInputShapes2 == 0))
  {
LABEL_95:

    goto LABEL_96;
  }

  jrEntitySimilarityScores = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  if (!jrEntitySimilarityScores)
  {

LABEL_99:
    v102 = 1;
    goto LABEL_97;
  }

  v98 = jrEntitySimilarityScores;
  jrEntitySimilarityScores2 = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  jrEntitySimilarityScores3 = [equalCopy jrEntitySimilarityScores];
  v101 = [jrEntitySimilarityScores2 isEqual:jrEntitySimilarityScores3];

  if (v101)
  {
    goto LABEL_99;
  }

LABEL_96:
  v102 = 0;
LABEL_97:

  return v102;
}

- (void)writeTo:(id)to
{
  v135 = *MEMORY[0x1E69E9840];
  toCopy = to;
  modelInputShapes = [(JRSchemaJRInferenceEnded *)self modelInputShapes];

  if (modelInputShapes)
  {
    modelInputShapes2 = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
    PBDataWriterWriteSubmessage();
  }

  modelOutputs = [(JRSchemaJRInferenceEnded *)self modelOutputs];

  if (modelOutputs)
  {
    modelOutputs2 = [(JRSchemaJRInferenceEnded *)self modelOutputs];
    PBDataWriterWriteSubmessage();
  }

  version = [(JRSchemaJRInferenceEnded *)self version];

  if (version)
  {
    version2 = [(JRSchemaJRInferenceEnded *)self version];
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

  riskProfile = [(JRSchemaJRInferenceEnded *)self riskProfile];

  if (riskProfile)
  {
    riskProfile2 = [(JRSchemaJRInferenceEnded *)self riskProfile];
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

- (void)addJrEntitySimilarityScores:(id)scores
{
  scoresCopy = scores;
  jrEntitySimilarityScores = self->_jrEntitySimilarityScores;
  v8 = scoresCopy;
  if (!jrEntitySimilarityScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_jrEntitySimilarityScores;
    self->_jrEntitySimilarityScores = array;

    scoresCopy = v8;
    jrEntitySimilarityScores = self->_jrEntitySimilarityScores;
  }

  [(NSArray *)jrEntitySimilarityScores addObject:scoresCopy];
}

- (void)addScores:(id)scores
{
  scoresCopy = scores;
  scores = self->_scores;
  v8 = scoresCopy;
  if (!scores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_scores;
    self->_scores = array;

    scoresCopy = v8;
    scores = self->_scores;
  }

  [(NSArray *)scores addObject:scoresCopy];
}

- (void)setHasLoudnessLevel:(BOOL)level
{
  if (level)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSignalToNoiseRatio:(BOOL)ratio
{
  if (ratio)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)parameterSubTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_parameterSubTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addParameterSubType:(int)type
{
  v3 = *&type;
  parameterSubTypes = self->_parameterSubTypes;
  if (!parameterSubTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterSubTypes;
    self->_parameterSubTypes = array;

    parameterSubTypes = self->_parameterSubTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)parameterSubTypes addObject:v8];
}

- (void)addIntervalUntilStartTime:(id)time
{
  timeCopy = time;
  intervalUntilStartTimes = self->_intervalUntilStartTimes;
  v8 = timeCopy;
  if (!intervalUntilStartTimes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intervalUntilStartTimes;
    self->_intervalUntilStartTimes = array;

    timeCopy = v8;
    intervalUntilStartTimes = self->_intervalUntilStartTimes;
  }

  [(NSArray *)intervalUntilStartTimes addObject:timeCopy];
}

- (int)bucketedDistanceAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_bucketedDistances objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addBucketedDistance:(int)distance
{
  v3 = *&distance;
  bucketedDistances = self->_bucketedDistances;
  if (!bucketedDistances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_bucketedDistances;
    self->_bucketedDistances = array;

    bucketedDistances = self->_bucketedDistances;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)bucketedDistances addObject:v8];
}

- (void)addSearchToolRanks:(id)ranks
{
  ranksCopy = ranks;
  searchToolRanks = self->_searchToolRanks;
  v8 = ranksCopy;
  if (!searchToolRanks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchToolRanks;
    self->_searchToolRanks = array;

    ranksCopy = v8;
    searchToolRanks = self->_searchToolRanks;
  }

  [(NSArray *)searchToolRanks addObject:ranksCopy];
}

- (void)addCandidateRisk:(id)risk
{
  riskCopy = risk;
  candidateRisks = self->_candidateRisks;
  v8 = riskCopy;
  if (!candidateRisks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateRisks;
    self->_candidateRisks = array;

    riskCopy = v8;
    candidateRisks = self->_candidateRisks;
  }

  [(NSArray *)candidateRisks addObject:riskCopy];
}

- (void)addTupleHistoryCount:(id)count
{
  countCopy = count;
  tupleHistoryCounts = self->_tupleHistoryCounts;
  v8 = countCopy;
  if (!tupleHistoryCounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleHistoryCounts;
    self->_tupleHistoryCounts = array;

    countCopy = v8;
    tupleHistoryCounts = self->_tupleHistoryCounts;
  }

  [(NSArray *)tupleHistoryCounts addObject:countCopy];
}

- (void)addCandidateHistoryCount:(id)count
{
  countCopy = count;
  candidateHistoryCounts = self->_candidateHistoryCounts;
  v8 = countCopy;
  if (!candidateHistoryCounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateHistoryCounts;
    self->_candidateHistoryCounts = array;

    countCopy = v8;
    candidateHistoryCounts = self->_candidateHistoryCounts;
  }

  [(NSArray *)candidateHistoryCounts addObject:countCopy];
}

- (float)callerComponentAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_callerComponents objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addCallerComponent:(float)component
{
  callerComponents = self->_callerComponents;
  if (!callerComponents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_callerComponents;
    self->_callerComponents = array;

    callerComponents = self->_callerComponents;
  }

  *&v8 = component;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)callerComponents addObject:v9];
}

- (float)alreadyPromptedAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_alreadyPrompteds objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addAlreadyPrompted:(float)prompted
{
  alreadyPrompteds = self->_alreadyPrompteds;
  if (!alreadyPrompteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alreadyPrompteds;
    self->_alreadyPrompteds = array;

    alreadyPrompteds = self->_alreadyPrompteds;
  }

  *&v8 = prompted;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)alreadyPrompteds addObject:v9];
}

- (float)parameterTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_parameterTypes objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addParameterType:(float)type
{
  parameterTypes = self->_parameterTypes;
  if (!parameterTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterTypes;
    self->_parameterTypes = array;

    parameterTypes = self->_parameterTypes;
  }

  *&v8 = type;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)parameterTypes addObject:v9];
}

- (void)setHasTrialConfirmationRate:(BOOL)rate
{
  if (rate)
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
  v33.receiver = self;
  v33.super_class = JRSchemaJRInferenceEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v33 applySensitiveConditionsPolicy:policyCopy];
  modelInputShapes = [(JRSchemaJRInferenceEnded *)self modelInputShapes];
  v7 = [modelInputShapes applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaJRInferenceEnded *)self deleteModelInputShapes];
  }

  modelOutputs = [(JRSchemaJRInferenceEnded *)self modelOutputs];
  v10 = [modelOutputs applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(JRSchemaJRInferenceEnded *)self deleteModelOutputs];
  }

  version = [(JRSchemaJRInferenceEnded *)self version];
  v13 = [version applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(JRSchemaJRInferenceEnded *)self deleteVersion];
  }

  riskProfile = [(JRSchemaJRInferenceEnded *)self riskProfile];
  v16 = [riskProfile applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(JRSchemaJRInferenceEnded *)self deleteRiskProfile];
  }

  candidateHistoryCounts = [(JRSchemaJRInferenceEnded *)self candidateHistoryCounts];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidateHistoryCounts underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setCandidateHistoryCounts:v19];

  tupleHistoryCounts = [(JRSchemaJRInferenceEnded *)self tupleHistoryCounts];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:tupleHistoryCounts underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setTupleHistoryCounts:v21];

  candidateRisks = [(JRSchemaJRInferenceEnded *)self candidateRisks];
  v23 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:candidateRisks underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setCandidateRisks:v23];

  searchToolRanks = [(JRSchemaJRInferenceEnded *)self searchToolRanks];
  v25 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:searchToolRanks underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setSearchToolRanks:v25];

  intervalUntilStartTimes = [(JRSchemaJRInferenceEnded *)self intervalUntilStartTimes];
  v27 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:intervalUntilStartTimes underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setIntervalUntilStartTimes:v27];

  scores = [(JRSchemaJRInferenceEnded *)self scores];
  v29 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:scores underConditions:policyCopy];
  [(JRSchemaJRInferenceEnded *)self setScores:v29];

  jrEntitySimilarityScores = [(JRSchemaJRInferenceEnded *)self jrEntitySimilarityScores];
  v31 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:jrEntitySimilarityScores underConditions:policyCopy];
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