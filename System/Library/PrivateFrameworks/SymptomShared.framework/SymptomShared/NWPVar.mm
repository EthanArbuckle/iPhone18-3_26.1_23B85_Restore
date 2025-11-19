@interface NWPVar
+ (id)_backgroundQueue;
+ (id)_fetchCheckpoint:(id)a3 isPrefix:(BOOL)a4;
+ (id)_serviceQueue;
- (BOOL)selectModel:(unint64_t)a3;
- (BOOL)setInitialValue:(id)a3;
- (BOOL)setReward:(float)a3 onValue:(id)a4 forPredictionGenerationId:(id)a5;
- (NWPVar)initWithCoder:(id)a3;
- (id)_initToCopy;
- (id)_pullCounts;
- (id)checkpoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromCheckpoint:(id)a3 forLabel:(id)a4;
- (id)initFromLastCheckpointForLabel:(id)a3;
- (id)initInValueSpace:(id)a3 withLabel:(id)a4;
- (id)predictValueGivenContext:(id)a3 generationId:(id *)a4;
- (int64_t)_pruneOldCheckpoints;
- (void)_mirrorFrom:(id)a3;
- (void)_setToCleanSlate;
- (void)encodeWithCoder:(id)a3;
- (void)setHyperParams:(id)a3;
@end

@implementation NWPVar

- (id)initInValueSpace:(id)a3 withLabel:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = [v6 count], v7) && v8)
  {
    v17.receiver = self;
    v17.super_class = NWPVar;
    v9 = [(NWPVar *)&v17 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_label, a4);
      v11 = [v6 copy];
      referenceValues = v10->_referenceValues;
      v10->_referenceValues = v11;

      [(NWPVar *)v10 _setToCleanSlate];
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v14 = nwpvarLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2324A0000, v14, OS_LOG_TYPE_ERROR, "wrong argument: allValues %@, label %@", buf, 0x16u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)initFromCheckpoint:(id)a3 forLabel:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [v6 UUIDString];
    v11 = [v9 initWithFormat:@"%s-%@-%@", "NWPVar", v8, v10];

    v12 = [NWPVar _fetchCheckpoint:v11 isPrefix:0];
    if (v12)
    {
      v19.receiver = self;
      v19.super_class = NWPVar;
      v13 = [(NWPVar *)&v19 init];
      v14 = v13;
      if (v13)
      {
        [(NWPVar *)v13 _mirrorFrom:v12];
      }

      self = v14;
      v15 = self;
    }

    else
    {
      v16 = nwpvarLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_2324A0000, v16, OS_LOG_TYPE_ERROR, "identifier failed to recover valid object for: %@ and label: %@", buf, 0x16u);
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = nwpvarLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2324A0000, v11, OS_LOG_TYPE_ERROR, "wrong identifier: %@ or label: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)initFromLastCheckpointForLabel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s-%@", "NWPVar", v4];
    v6 = [NWPVar _fetchCheckpoint:v5 isPrefix:1];
    if (v6)
    {
      v13.receiver = self;
      v13.super_class = NWPVar;
      v7 = [(NWPVar *)&v13 init];
      v8 = v7;
      if (v7)
      {
        [(NWPVar *)v7 _mirrorFrom:v6];
      }

      self = v8;
      v9 = self;
    }

    else
    {
      v10 = nwpvarLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_2324A0000, v10, OS_LOG_TYPE_ERROR, "identifier failed to recover last valid object for label: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v5 = nwpvarLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = 0;
      _os_log_impl(&dword_2324A0000, v5, OS_LOG_TYPE_ERROR, "wrong label: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_initToCopy
{
  v3.receiver = self;
  v3.super_class = NWPVar;
  return [(NWPVar *)&v3 init];
}

- (BOOL)setInitialValue:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:178 description:{@"Subclasses must provide an impl for %s", "-[NWPVar setInitialValue:]"}];

  return 0;
}

- (BOOL)selectModel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:184 description:{@"Subclasses must provide an impl for %s", "-[NWPVar selectModel:]"}];

  return 0;
}

- (void)setHyperParams:(id)a3
{
  v5 = a3;
  if (self->_hyperParams)
  {
    v6 = [(NSDictionary *)self->_hyperParams mutableCopy];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __25__NWPVar_setHyperParams___block_invoke;
    v13 = &unk_278986900;
    v14 = self;
    v15 = v6;
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:&v10];
    v8 = [v7 copy];
    hyperParams = self->_hyperParams;
    self->_hyperParams = v8;
  }

  else
  {
    objc_storeStrong(&self->_hyperParams, a3);
  }
}

void __25__NWPVar_setHyperParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v7];

      if (v6)
      {
        [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
      }
    }
  }
}

- (id)predictValueGivenContext:(id)a3 generationId:(id *)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:209 description:{@"Subclasses must provide an impl for %s", "-[NWPVar predictValueGivenContext:generationId:]"}];

  return 0;
}

- (BOOL)setReward:(float)a3 onValue:(id)a4 forPredictionGenerationId:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:215 description:{@"Subclasses must provide an impl for %s", "-[NWPVar setReward:onValue:forPredictionGenerationId:]"}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NWPVar alloc] _initToCopy];
  v5 = [(NWPVar *)self label];
  [v4 setLabel:v5];

  v6 = [(NWPVar *)self exportLabel];
  [v4 setExportLabel:v6];

  [v4 setModel:{-[NWPVar model](self, "model")}];
  [v4 setPullCount:{-[NWPVar pullCount](self, "pullCount")}];
  v7 = [(NWPVar *)self hyperParams];
  [v4 setHyperParams:v7];

  v8 = [(NWPVar *)self allState];
  [v4 setAllState:v8];

  v9 = [(NWPVar *)self referenceValues];
  [v4 setReferenceValues:v9];

  v10 = [(NWPVar *)self firstValue];
  [v4 setFirstValue:v10];

  v11 = [(NWPVar *)self expectingRewardOn];
  [v4 setExpectingRewardOn:v11];

  [v4 setLogicalClock:{-[NWPVar logicalClock](self, "logicalClock")}];
  v12 = [(NWPVar *)self durableId];
  [v4 setDurableId:v12];

  [v4 setUseScalarRange:{-[NWPVar useScalarRange](self, "useScalarRange")}];
  return v4;
}

- (void)_mirrorFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 label];
  [(NWPVar *)self setLabel:v5];

  v6 = [v4 exportLabel];
  [(NWPVar *)self setExportLabel:v6];

  -[NWPVar setModel:](self, "setModel:", [v4 model]);
  -[NWPVar setPullCount:](self, "setPullCount:", [v4 pullCount]);
  v7 = [v4 hyperParams];
  [(NWPVar *)self setHyperParams:v7];

  v8 = [v4 allState];
  [(NWPVar *)self setAllState:v8];

  v9 = [v4 referenceValues];
  [(NWPVar *)self setReferenceValues:v9];

  v10 = [v4 firstValue];
  [(NWPVar *)self setFirstValue:v10];

  v11 = [v4 expectingRewardOn];
  [(NWPVar *)self setExpectingRewardOn:v11];

  -[NWPVar setLogicalClock:](self, "setLogicalClock:", [v4 logicalClock]);
  v12 = [v4 durableId];
  [(NWPVar *)self setDurableId:v12];

  v13 = [v4 useScalarRange];

  [(NWPVar *)self setUseScalarRange:v13];
}

- (void)_setToCleanSlate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NWPVar *)self referenceValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addObject:*(*(&v13 + 1) + 8 * v9)];
        v10 = objc_alloc_init(NWPVarValueItem);
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3];
  [(NWPVar *)self setAllState:v11];

  [(NWPVar *)self setPullCount:0];
  [(NWPVar *)self setExpectingRewardOn:0];
  [(NWPVar *)self setDurableId:0];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_serviceQueue
{
  if (_serviceQueue_onceToken != -1)
  {
    +[NWPVar _serviceQueue];
  }

  v3 = _serviceQueue_service_queue;

  return v3;
}

uint64_t __23__NWPVar__serviceQueue__block_invoke()
{
  _serviceQueue_service_queue = dispatch_queue_create("com.apple.symptoms.NWPVar", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)_backgroundQueue
{
  if (_backgroundQueue_onceToken != -1)
  {
    +[NWPVar _backgroundQueue];
  }

  v3 = _backgroundQueue_background_queue;

  return v3;
}

void __26__NWPVar__backgroundQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.symptoms.NWPVar.background", v2);
  v1 = _backgroundQueue_background_queue;
  _backgroundQueue_background_queue = v0;
}

+ (id)_fetchCheckpoint:(id)a3 isPrefix:(BOOL)a4
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v6 = +[NWPVar _serviceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NWPVar__fetchCheckpoint_isPrefix___block_invoke;
  block[3] = &unk_278986928;
  v13 = a4;
  v11 = v5;
  v12 = &v14;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __36__NWPVar__fetchCheckpoint_isPrefix___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[NWPVar _defaultBackingStore];
  if (v2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:0];
      v4 = [v2 listItemsNameWithPrefix:*(a1 + 32) sortDescriptor:v3];
      v5 = v4;
      if (v4 && [v4 count])
      {
        v6 = nwpvarLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218242;
          v17 = [v5 count];
          v18 = 2112;
          v19 = v5;
          _os_log_impl(&dword_2324A0000, v6, OS_LOG_TYPE_DEBUG, "fetch returned %lu keys: %@", &v16, 0x16u);
        }

        v7 = [v5 firstObject];
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
LABEL_16:
        v12 = nwpvarLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          v14 = "not ";
          if (*(a1 + 48))
          {
            v14 = &unk_2324A8BAA;
          }

          v16 = 138412546;
          v17 = v13;
          v18 = 2080;
          v19 = v14;
          _os_log_impl(&dword_2324A0000, v12, OS_LOG_TYPE_ERROR, "Unable to fetch %@, %sprefixed", &v16, 0x16u);
        }

        goto LABEL_20;
      }
    }

    v10 = [v2 fetchItemUnderName:v7 verificationBlock:0];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
LABEL_20:

    goto LABEL_21;
  }

  v7 = nwpvarLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = "not ";
    if (*(a1 + 48))
    {
      v9 = &unk_2324A8BAA;
    }

    v16 = 138412546;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_2324A0000, v7, OS_LOG_TYPE_ERROR, "No backing store to fetch %@, %sprefixed", &v16, 0x16u);
  }

LABEL_21:

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)_pruneOldCheckpoints
{
  v2 = +[NWPVar _defaultBackingStore];
  if (v2)
  {
    v3 = MEMORY[0x277CCAC30];
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
    v5 = [v3 predicateWithFormat:@"%K BEGINSWITH %@ AND %K < %@", @"identifier", @"NWPVar", @"timeStamp", v4];

    v6 = [v2 deleteItemsMatchingPredicate:v5];
  }

  else
  {
    v7 = nwpvarLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324A0000, v7, OS_LOG_TYPE_ERROR, "No backing store to prune", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)checkpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = +[NWPVar _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__NWPVar_checkpoint__block_invoke;
  v6[3] = &unk_278986978;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __20__NWPVar_checkpoint__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[NWPVar _defaultBackingStore];
  if (v2)
  {
    v3 = [*(a1 + 32) durableId];

    if (!v3)
    {
      v4 = [MEMORY[0x277CCAD78] UUID];
      [*(a1 + 32) setDurableId:v4];
    }

    v5 = [*(a1 + 32) copy];
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [*(a1 + 32) label];
    v8 = [*(a1 + 32) durableId];
    v9 = [v8 UUIDString];
    v10 = [v6 initWithFormat:@"%s-%@-%@", "NWPVar", v7, v9];

    if ([v2 storeUnderName:v10 item:v5])
    {
      v11 = [*(a1 + 32) durableId];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      v14 = nwpvarLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 134218242;
        v24 = v15;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2324A0000, v14, OS_LOG_TYPE_ERROR, "(%p) failed to archive and import as: %@", buf, 0x16u);
      }
    }

    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = v16;
    if (!checkpointsLastPruned || ([v16 timeIntervalSinceDate:?], v18 > 604800.0))
    {
      v19 = +[NWPVar _serviceQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__NWPVar_checkpoint__block_invoke_108;
      block[3] = &unk_278986950;
      block[4] = *(a1 + 32);
      v22 = v17;
      dispatch_async(v19, block);
    }
  }

  else
  {
    v5 = nwpvarLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2324A0000, v5, OS_LOG_TYPE_ERROR, "No backing store to checkpoint to", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __20__NWPVar_checkpoint__block_invoke_108(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _pruneOldCheckpoints];
  v3 = nwpvarLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 134218240;
    v7 = v4;
    v8 = 2048;
    v9 = v2;
    _os_log_impl(&dword_2324A0000, v3, OS_LOG_TYPE_DEFAULT, "(%p) removed %ld stale checkpoints", &v6, 0x16u);
  }

  objc_storeStrong(&checkpointsLastPruned, *(a1 + 40));
  v5 = *MEMORY[0x277D85DE8];
}

- (NWPVar)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NWPVar;
  v5 = [(NWPVar *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [v4 decodeObjectForKey:@"exportLabel"];
    exportLabel = v5->_exportLabel;
    v5->_exportLabel = v9;

    v5->_model = [v4 decodeIntegerForKey:@"model"];
    v5->_pullCount = [v4 decodeIntegerForKey:@"pullCount"];
    v11 = [v4 decodeObjectForKey:@"hyperParams"];
    hyperParams = v5->_hyperParams;
    v5->_hyperParams = v11;

    v13 = [v4 decodeObjectForKey:@"allState"];
    allState = v5->_allState;
    v5->_allState = v13;

    v15 = [v4 decodeObjectForKey:@"referenceValues"];
    referenceValues = v5->_referenceValues;
    v5->_referenceValues = v15;

    v17 = [v4 decodeObjectForKey:@"firstValue"];
    firstValue = v5->_firstValue;
    v5->_firstValue = v17;

    v19 = [v4 decodeObjectForKey:@"expectingRewardOn"];
    expectingRewardOn = v5->_expectingRewardOn;
    v5->_expectingRewardOn = v19;

    v5->_logicalClock = [v4 decodeInt64ForKey:@"logicalClock"];
    v21 = [v4 decodeObjectForKey:@"durableId"];
    durableId = v5->_durableId;
    v5->_durableId = v21;

    v5->_useScalarRange = [v4 decodeBoolForKey:@"useScalarRange"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NWPVar *)self label];
  [v13 encodeObject:v5 forKey:@"label"];

  v6 = [(NWPVar *)self exportLabel];
  [v13 encodeObject:v6 forKey:@"exportLabel"];

  [v13 encodeInteger:-[NWPVar model](self forKey:{"model"), @"model"}];
  [v13 encodeInteger:-[NWPVar pullCount](self forKey:{"pullCount"), @"pullCount"}];
  v7 = [(NWPVar *)self hyperParams];
  [v13 encodeObject:v7 forKey:@"hyperParams"];

  v8 = [(NWPVar *)self allState];
  [v13 encodeObject:v8 forKey:@"allState"];

  v9 = [(NWPVar *)self referenceValues];
  [v13 encodeObject:v9 forKey:@"referenceValues"];

  v10 = [(NWPVar *)self firstValue];
  [v13 encodeObject:v10 forKey:@"firstValue"];

  v11 = [(NWPVar *)self expectingRewardOn];
  [v13 encodeObject:v11 forKey:@"expectingRewardOn"];

  [v13 encodeInt64:-[NWPVar logicalClock](self forKey:{"logicalClock"), @"logicalClock"}];
  v12 = [(NWPVar *)self durableId];
  [v13 encodeObject:v12 forKey:@"durableId"];

  [v13 encodeBool:-[NWPVar useScalarRange](self forKey:{"useScalarRange"), @"useScalarRange"}];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = "var";
  if (self->_useScalarRange)
  {
    v4 = "num";
  }

  logicalClock = self->_logicalClock;
  v6 = [v3 initWithFormat:@"(%p) label: %@, exportLabel: %@, model: %lu, pullCount: %lu, %s-range, initVal: %@, expecting: %@, logical-clock: %llu, state: %@", self, *&self->_label, self->_model, self->_pullCount, v4, self->_firstValue, self->_expectingRewardOn, logicalClock, self->_allState];

  return v6;
}

- (id)_pullCounts
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NWPVar *)self allState];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NWPVar *)self allState];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "armPullCount")}];
        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end