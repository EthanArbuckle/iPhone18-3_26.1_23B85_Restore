@interface NWPVarBandit
- (BOOL)selectModel:(unint64_t)model;
- (BOOL)setInitialValue:(id)value;
- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id;
- (id)_epsilongreedy_predictValueGivenContext:(id)context;
- (id)_ucb_predictValueGivenContext:(id)context;
- (id)initInNumRangeFrom:(id)from to:(id)to stride:(float)stride withLabel:(id)label;
- (id)initInValueSpace:(id)space withLabel:(id)label;
- (id)predictValueGivenContext:(id)context generationId:(id *)id;
- (void)_defaultModelInit;
@end

@implementation NWPVarBandit

- (void)_defaultModelInit
{
  v7[8] = *MEMORY[0x277D85DE8];
  [(NWPVar *)self setModel:1];
  v6[0] = @"analytics";
  v6[1] = @"kEpsilonValue";
  v7[0] = MEMORY[0x277CBEC28];
  v7[1] = &unk_284788300;
  v6[2] = @"kEpsilonDecayRate";
  v6[3] = @"kEpsilonLastRewards";
  v7[2] = &unk_284788320;
  v7[3] = &unk_284788320;
  v6[4] = @"kEpsilonDecayedMinimumValue";
  v6[5] = @"kEpsilonResetAt";
  v7[4] = &unk_284788320;
  v7[5] = &unk_284788320;
  v6[6] = @"kUCBConfidenceValue";
  v6[7] = @"kUCBResetAt";
  v7[6] = &unk_284788310;
  v7[7] = &unk_284788320;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:8];
  [(NWPVar *)self setHyperParams:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NWPVarBandit *)self setLastSampleRewards:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)initInValueSpace:(id)space withLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = NWPVarBandit;
  v4 = [(NWPVar *)&v7 initInValueSpace:space withLabel:label];
  v5 = v4;
  if (v4)
  {
    [v4 _defaultModelInit];
  }

  return v5;
}

- (id)initInNumRangeFrom:(id)from to:(id)to stride:(float)stride withLabel:(id)label
{
  fromCopy = from;
  toCopy = to;
  labelCopy = label;
  selfCopy = 0;
  if (fromCopy && toCopy)
  {
    [fromCopy floatValue];
    v15 = v14;
    [toCopy floatValue];
    if (v15 > v16 || ((v17 = v16, v18 = v16 - v15, stride >= 0.01) ? (v19 = v18 < stride) : (v19 = 1), v19))
    {
      selfCopy = 0;
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        *&v21 = v15;
        v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
        v23 = _numToInternalKey(v22);
        [v20 addObject:v23];

        v15 = v15 + stride;
      }

      while (v15 <= v17);
      v27.receiver = self;
      v27.super_class = NWPVarBandit;
      v24 = [(NWPVar *)&v27 initInValueSpace:v20 withLabel:labelCopy];
      v25 = v24;
      if (v24)
      {
        [v24 setUseScalarRange:1];
        [v25 _defaultModelInit];
      }

      self = v25;

      selfCopy = self;
    }
  }

  return selfCopy;
}

- (BOOL)setInitialValue:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_14;
  }

  if (![(NWPVar *)self useScalarRange])
  {
    allState = [(NWPVar *)self allState];
    v12 = [allState objectForKeyedSubscript:valueCopy];

    if (v12)
    {
      [(NWPVar *)self setFirstValue:valueCopy];
      v8 = 1;
      goto LABEL_15;
    }

    v13 = nwpvarLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = 134218242;
    selfCopy3 = self;
    v19 = 2112;
    v20 = valueCopy;
    v14 = "(%p) failure to set initial value: %@, out of range";
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = nwpvarLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    v17 = 134218242;
    selfCopy3 = self;
    v19 = 2112;
    v20 = valueCopy;
    v14 = "(%p) failure to set initial value: %@, expected numerical type";
LABEL_12:
    _os_log_impl(&dword_2324A0000, v13, OS_LOG_TYPE_ERROR, v14, &v17, 0x16u);
    goto LABEL_13;
  }

  v5 = _numToInternalKey(valueCopy);
  allState2 = [(NWPVar *)self allState];
  v7 = [allState2 objectForKeyedSubscript:v5];
  v8 = v7 != 0;

  if (v7)
  {
    v9 = MEMORY[0x277CCABB0];
    [v5 floatValue];
    v10 = [v9 numberWithFloat:?];
    [(NWPVar *)self setFirstValue:v10];
  }

  else
  {
    v10 = nwpvarLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      selfCopy3 = self;
      v19 = 2112;
      v20 = valueCopy;
      _os_log_impl(&dword_2324A0000, v10, OS_LOG_TYPE_ERROR, "(%p) failure to set initial value: %@, out of numerical range", &v17, 0x16u);
    }
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)selectModel:(unint64_t)model
{
  v3 = model - 1;
  if (model - 1 <= 1)
  {
    [(NWPVar *)self setModel:?];
  }

  return v3 < 2;
}

- (id)_epsilongreedy_predictValueGivenContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(NWPVarValue_Record);
  hyperParams = [(NWPVar *)self hyperParams];
  v6 = [hyperParams objectForKeyedSubscript:@"kEpsilonResetAt"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue && [(NWPVar *)self pullCount]>= unsignedIntegerValue)
  {
    [(NWPVar *)self _setToCleanSlate];
  }

  hyperParams2 = [(NWPVar *)self hyperParams];
  v9 = [hyperParams2 objectForKeyedSubscript:@"kEpsilonValue"];
  [v9 floatValue];
  v11 = v10;

  hyperParams3 = [(NWPVar *)self hyperParams];
  v13 = [hyperParams3 objectForKeyedSubscript:@"kEpsilonDecayRate"];
  [v13 floatValue];
  v15 = v14;

  v16 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  if (v15 > 0.0)
  {
    v11 = v11 / (([(NWPVar *)self pullCount]* v15) + 1.0);
    hyperParams4 = [(NWPVar *)self hyperParams];
    v18 = [hyperParams4 objectForKeyedSubscript:@"kEpsilonDecayedMinimumValue"];
    [v18 floatValue];
    if (v11 <= v19)
    {
      hyperParams5 = [(NWPVar *)self hyperParams];
      v21 = [hyperParams5 objectForKeyedSubscript:@"kEpsilonDecayedMinimumValue"];
      [v21 floatValue];
      v11 = v22;
    }
  }

  if (v16 <= v11)
  {
    referenceValues = [(NWPVar *)self referenceValues];
    v37 = arc4random_uniform([referenceValues count]);

    referenceValues2 = [(NWPVar *)self referenceValues];
    [referenceValues2 objectAtIndexedSubscript:v37];
    v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    [(NWPVarValue_Record *)v4 setInfo:2];
    nwpvarLogHandle();
    *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      selfCopy5 = self;
      v51 = 2048;
      v52 = v16;
      v53 = 2048;
      v54 = v11;
      v55 = 2112;
      v56 = *&v33;
      _os_log_impl(&dword_2324A0000, v24, OS_LOG_TYPE_INFO, "(%p) prediction detail, exploring, rand (%f) vs. epsilon (%f), returning: %@", buf, 0x2Au);
    }
  }

  else
  {
    allState = [(NWPVar *)self allState];
    [allState keysSortedByValueUsingComparator:&__block_literal_global_320];
    *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v25 = nwpvarLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v51 = 2112;
      v52 = *&v24;
      _os_log_impl(&dword_2324A0000, v25, OS_LOG_TYPE_DEBUG, "(%p) prediction detail, exploiting, all: %@", buf, 0x16u);
    }

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allState2 = [(NWPVar *)self allState];
    v28 = [v24 objectAtIndexedSubscript:0];
    v29 = [allState2 objectForKeyedSubscript:v28];
    [v29 sampleRewardMean];
    v31 = v30;

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke_321;
    v45[3] = &unk_2789869E0;
    v32 = v26;
    v46 = v32;
    selfCopy3 = self;
    v48 = v31;
    [v24 enumerateObjectsUsingBlock:v45];
    [v32 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v32, "count"))}];
    v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [(NWPVarValue_Record *)v4 setInfo:1];
    v34 = nwpvarLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v32 count];
      *buf = 134219266;
      selfCopy5 = self;
      v51 = 2048;
      v52 = v16;
      v53 = 2048;
      v54 = v11;
      v55 = 2048;
      v56 = v35;
      v57 = 2112;
      v58 = v33;
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&dword_2324A0000, v34, OS_LOG_TYPE_INFO, "(%p) prediction detail, exploiting, rand (%f) vs. epsilon (%f), leaders count: %lu, returning: %@, leaders: %@", buf, 0x3Eu);
    }
  }

  v39 = nwpvarLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy5 = self;
    v51 = 2112;
    v52 = v33;
    _os_log_impl(&dword_2324A0000, v39, OS_LOG_TYPE_INFO, "(%p) prediction: %@", buf, 0x16u);
  }

  if ([(NWPVar *)self useScalarRange])
  {
    v40 = _numToInternalKey(*&v33);
    [(NWPVarValue_Record *)v4 setValue:v40];
  }

  else
  {
    [(NWPVarValue_Record *)v4 setValue:*&v33];
  }

  *&v41 = v11;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  [(NWPVarValue_Record *)v4 setEffective_epsilon:v42];

  v43 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 sampleRewardMean];
  v7 = v6;
  [v5 sampleRewardMean];
  if (v7 <= v8)
  {
    [v4 sampleRewardMean];
    v11 = v10;
    [v5 sampleRewardMean];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke_321(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v11 = v7;
  if (a3)
  {
    v8 = [*(a1 + 40) allState];
    v9 = [v8 objectForKeyedSubscript:v11];

    [v9 sampleRewardMean];
    if (vabdd_f64(v10, *(a1 + 48)) >= 0.000000001)
    {
      *a4 = 1;
    }

    else
    {
      [*(a1 + 32) addObject:v11];
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)_ucb_predictValueGivenContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(NWPVarValue_Record);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hyperParams = [(NWPVar *)self hyperParams];
  v6 = [hyperParams objectForKeyedSubscript:@"kUCBConfidenceValue"];
  [v6 floatValue];
  v8 = v7;

  hyperParams2 = [(NWPVar *)self hyperParams];
  v10 = [hyperParams2 objectForKeyedSubscript:@"kUCBResetAt"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue && [(NWPVar *)self pullCount]>= unsignedIntegerValue)
  {
    [(NWPVar *)self _setToCleanSlate];
  }

  v12 = log(([(NWPVar *)self pullCount]+ 1));
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  allState = [(NWPVar *)self allState];
  v14 = [allState countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(allState);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        allState2 = [(NWPVar *)self allState];
        v21 = [allState2 objectForKeyedSubscript:v19];

        v22 = MEMORY[0x277CCABB0];
        [v21 sampleRewardMean];
        v24 = [v22 numberWithDouble:{v23 + v8 * sqrt((v16 / objc_msgSend(v21, "armPullCount")))}];
        [v4 setObject:v24 forKeyedSubscript:v19];
      }

      v15 = [allState countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
  }

  v25 = [v4 keysSortedByValueUsingComparator:&__block_literal_global_324];
  v26 = [v25 objectAtIndexedSubscript:0];
  v27 = nwpvarLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy = self;
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_2324A0000, v27, OS_LOG_TYPE_INFO, "(%p) prediction: %@", buf, 0x16u);
  }

  if ([(NWPVar *)self useScalarRange])
  {
    v28 = _numToInternalKey(v26);
    v29 = v32;
    [(NWPVarValue_Record *)v32 setValue:v28];
  }

  else
  {
    v29 = v32;
    [(NWPVarValue_Record *)v32 setValue:v26];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)predictValueGivenContext:(id)context generationId:(id *)id
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc_init(NWPVarValue_Record);
  [(NWPVar *)self setLogicalClock:[(NWPVar *)self logicalClock]+ 1];
  firstValue = [(NWPVar *)self firstValue];

  if (!firstValue)
  {
    if ([(NWPVar *)self model]== 2)
    {
      [(NWPVarBandit *)self _ucb_predictValueGivenContext:contextCopy];
    }

    else
    {
      [(NWPVarBandit *)self _epsilongreedy_predictValueGivenContext:contextCopy];
    }
    v18 = ;

    useScalarRange = [(NWPVar *)self useScalarRange];
    value = [(NWPVarValue_Record *)v18 value];
    firstValue2 = value;
    if (useScalarRange)
    {
      v21 = MEMORY[0x277CCABB0];
      [value floatValue];
      v22 = [v21 numberWithFloat:?];

      firstValue2 = v22;
    }

    v7 = v18;
    if (id)
    {
      goto LABEL_10;
    }

LABEL_17:
    value2 = [(NWPVarValue_Record *)v7 value];
    [(NWPVar *)self setExpectingRewardOn:value2];
    goto LABEL_18;
  }

  firstValue2 = [(NWPVar *)self firstValue];
  if ([(NWPVar *)self useScalarRange])
  {
    v10 = _numToInternalKey(firstValue2);
    [(NWPVarValue_Record *)v7 setValue:v10];
  }

  else
  {
    [(NWPVarValue_Record *)v7 setValue:firstValue2];
  }

  [(NWPVarValue_Record *)v7 setInfo:4];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [(NWPVarValue_Record *)v7 setEffective_epsilon:v11];

  [(NWPVar *)self setFirstValue:0];
  v12 = nwpvarLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v25 = 134218242;
    selfCopy = self;
    v27 = 2112;
    v28 = firstValue2;
    _os_log_impl(&dword_2324A0000, v12, OS_LOG_TYPE_INFO, "(%p) prediction from initial value: %@", &v25, 0x16u);
  }

  if (!id)
  {
    goto LABEL_17;
  }

LABEL_10:
  value2 = [MEMORY[0x277CCAD78] UUID];
  uuidCache = [(NWPVarBandit *)self uuidCache];

  if (!uuidCache)
  {
    v15 = [[SFCache alloc] initWithPolicy:0];
    [(NWPVarBandit *)self setUuidCache:v15];
  }

  uuidCache2 = [(NWPVarBandit *)self uuidCache];
  [uuidCache2 addEntry:v7 forKey:value2];

  v17 = value2;
  *id = value2;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return firstValue2;
}

- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(value);
  v9 = COERCE_DOUBLE(id);
  if ([(NWPVar *)self useScalarRange])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      nwpvarLogHandle();
      *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134218498;
      selfCopy9 = self;
      v72 = 2048;
      rewardCopy2 = reward;
      v74 = 2112;
      armPullCount2 = *&v8;
      v20 = "(%p) setting reward: %f for invalid value type: %@, failed";
      goto LABEL_16;
    }

    v10 = _numToInternalKey(*&v8);

    v8 = *&v10;
  }

  if (v8 == 0.0 || (-[NWPVar allState](self, "allState"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:*&v8], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    nwpvarLogHandle();
    *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134218498;
    selfCopy9 = self;
    v72 = 2048;
    rewardCopy2 = reward;
    v74 = 2112;
    armPullCount2 = *&v8;
    v20 = "(%p) setting reward: %f for invalid value: %@, failed";
LABEL_16:
    v21 = v13;
    v22 = 32;
LABEL_17:
    _os_log_impl(&dword_2324A0000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_18;
  }

  if (v9 != 0.0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v13 = COERCE_DOUBLE(*&v9);
      uuidCache = [(NWPVarBandit *)self uuidCache];

      if (uuidCache)
      {
        uuidCache2 = [(NWPVarBandit *)self uuidCache];
        v16 = [uuidCache2 entryForKey:v13];

        if (v16)
        {
          value = [v16 value];
          v18 = [value isEqual:*&v8];

          if (v18)
          {
            uuidCache3 = [(NWPVarBandit *)self uuidCache];
            [uuidCache3 removeObjectForKey:v13];

            goto LABEL_25;
          }

          v58 = nwpvarLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [v16 value];
            v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 134218498;
            selfCopy9 = self;
            v72 = 2112;
            rewardCopy2 = v59;
            v74 = 2112;
            armPullCount2 = *&v8;
            _os_log_impl(&dword_2324A0000, v58, OS_LOG_TYPE_ERROR, "(%p) supplied uuid was minted for a different value %@ (which is not %@)", buf, 0x20u);
          }

          goto LABEL_53;
        }

        v16 = nwpvarLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy9 = self;
          v72 = 2112;
          rewardCopy2 = *&v13;
          v57 = "(%p) supplied uuid has already been used or expired %@";
          goto LABEL_49;
        }
      }

      else
      {
        v16 = nwpvarLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy9 = self;
          v72 = 2112;
          rewardCopy2 = *&v13;
          v57 = "(%p) supplied uuid didn't come from us %@";
LABEL_49:
          _os_log_impl(&dword_2324A0000, v16, OS_LOG_TYPE_ERROR, v57, buf, 0x16u);
        }
      }

LABEL_53:

      goto LABEL_18;
    }

    nwpvarLogHandle();
    *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy9 = self;
      v72 = 2112;
      rewardCopy2 = v9;
      v20 = "(%p) supplied uuid is not the expected type %@";
      v21 = v13;
      v22 = 22;
      goto LABEL_17;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  expectingRewardOn = [(NWPVar *)self expectingRewardOn];
  v27 = [*&v8 isEqual:expectingRewardOn];

  if (v27)
  {
    [(NWPVar *)self setExpectingRewardOn:0];
    v16 = 0;
    v28 = 1;
    goto LABEL_26;
  }

  v16 = 0;
LABEL_25:
  v28 = 0;
LABEL_26:
  allState = [(NWPVar *)self allState];
  v30 = [allState objectForKeyedSubscript:*&v8];

  v31 = v30;
  objc_sync_enter(v31);
  v69 = (*&v9 != 0) | v28;
  if (v69 == 1)
  {
    [(NWPVar *)self setPullCount:[(NWPVar *)self pullCount]+ 1];
    [v31 setArmPullCount:{objc_msgSend(v31, "armPullCount") + 1}];
    v32 = nwpvarLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *&v33 = COERCE_DOUBLE([(NWPVar *)self pullCount]);
    armPullCount = [v31 armPullCount];
    armObservedCount = [v31 armObservedCount];
    v36 = "weak";
    *buf = 134219010;
    selfCopy9 = self;
    if (v9 != 0.0)
    {
      v36 = "strong";
    }

    v72 = 2048;
    rewardCopy2 = *&v33;
    v74 = 2048;
    armPullCount2 = armPullCount;
    v76 = 2048;
    armObservedCount2 = armObservedCount;
    v78 = 2080;
    v79 = v36;
    v37 = "(%p) incrementing pulls to %lu, arm pulls to %llu, arm observed %llu, %s prediction nexus";
    v38 = v32;
    v39 = 52;
  }

  else
  {
    [v31 setArmObservedCount:{objc_msgSend(v31, "armObservedCount") + 1}];
    v32 = nwpvarLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 134218752;
    selfCopy9 = self;
    v72 = 2048;
    rewardCopy2 = COERCE_DOUBLE([(NWPVar *)self pullCount]);
    v74 = 2048;
    armPullCount2 = [v31 armPullCount];
    v76 = 2048;
    armObservedCount2 = [v31 armObservedCount];
    v37 = "(%p) not incrementing pulls %lu, arm pulls %llu, arm observed up to %llu, no prediction nexus";
    v38 = v32;
    v39 = 42;
  }

  _os_log_impl(&dword_2324A0000, v38, OS_LOG_TYPE_INFO, v37, buf, v39);
LABEL_34:

  [v31 sampleRewardMean];
  [v31 setSampleRewardMean:{v40 + (reward - v40) * (1.0 / (objc_msgSend(v31, "armObservedCount") + objc_msgSend(v31, "armPullCount")))}];
  [v31 sampleRewardSum];
  [v31 setSampleRewardSum:v41 + reward];
  [v31 sampleRewardSumSquares];
  [v31 setSampleRewardSumSquares:reward * reward + v42];
  hyperParams = [(NWPVar *)self hyperParams];
  v44 = [hyperParams objectForKeyedSubscript:@"kEpsilonLastRewards"];
  intValue = [v44 intValue];

  if (intValue)
  {
    lastSampleRewards = [(NWPVarBandit *)self lastSampleRewards];
    v47 = [lastSampleRewards objectForKeyedSubscript:*&v8];

    if (!v47)
    {
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      lastSampleRewards2 = [(NWPVarBandit *)self lastSampleRewards];
      [lastSampleRewards2 setObject:v47 forKeyedSubscript:*&v8];
    }

    *&v48 = reward;
    v50 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
    [v47 addObject:v50];

    if ([v47 count] > intValue)
    {
      [v47 removeObjectAtIndex:0];
    }
  }

  telemetryReporter = [(NWPVar *)self telemetryReporter];
  if (!telemetryReporter)
  {
    goto LABEL_60;
  }

  exportLabel = [(NWPVar *)self exportLabel];
  if (!exportLabel)
  {
    goto LABEL_59;
  }

  hyperParams2 = [(NWPVar *)self hyperParams];
  v54 = [hyperParams2 objectForKeyedSubscript:@"analytics"];
  bOOLValue = [v54 BOOLValue];

  if (bOOLValue)
  {
    if (v69)
    {
      info = [v16 info];
    }

    else
    {
      info = 3;
    }

    effective_epsilon = [v16 effective_epsilon];
    v61 = effective_epsilon;
    if (effective_epsilon)
    {
      telemetryReporter = effective_epsilon;
    }

    else
    {
      hyperParams3 = [(NWPVar *)self hyperParams];
      telemetryReporter = [hyperParams3 objectForKeyedSubscript:@"kEpsilonValue"];
    }

    telemetryReporter2 = [(NWPVar *)self telemetryReporter];
    (telemetryReporter2)[2](telemetryReporter2, self, telemetryReporter, *&v8, info, reward);

LABEL_59:
  }

LABEL_60:
  objc_sync_exit(v31);

  v64 = nwpvarLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    armPullCount3 = [v31 armPullCount];
    [v31 sampleRewardMean];
    v67 = v66;
    [v31 sampleRewardSum];
    *buf = 134219010;
    selfCopy9 = self;
    v72 = 2112;
    rewardCopy2 = v8;
    v74 = 2048;
    armPullCount2 = armPullCount3;
    v76 = 2048;
    armObservedCount2 = v67;
    v78 = 2048;
    v79 = v68;
    _os_log_impl(&dword_2324A0000, v64, OS_LOG_TYPE_INFO, "(%p) setting reward detail for %@: pulls=%llu, sampleRewardMean=%f, sampleRewardSum=%f", buf, 0x34u);
  }

  v23 = 1;
  v13 = v16;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end