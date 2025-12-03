@interface NWPVar
+ (id)_backgroundQueue;
+ (id)_fetchCheckpoint:(id)checkpoint isPrefix:(BOOL)prefix;
+ (id)_serviceQueue;
- (BOOL)selectModel:(unint64_t)model;
- (BOOL)setInitialValue:(id)value;
- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id;
- (NWPVar)initWithCoder:(id)coder;
- (id)_initToCopy;
- (id)_pullCounts;
- (id)checkpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromCheckpoint:(id)checkpoint forLabel:(id)label;
- (id)initFromLastCheckpointForLabel:(id)label;
- (id)initInValueSpace:(id)space withLabel:(id)label;
- (id)predictValueGivenContext:(id)context generationId:(id *)id;
- (int64_t)_pruneOldCheckpoints;
- (void)_mirrorFrom:(id)from;
- (void)_setToCleanSlate;
- (void)encodeWithCoder:(id)coder;
- (void)setHyperParams:(id)params;
@end

@implementation NWPVar

- (id)initInValueSpace:(id)space withLabel:(id)label
{
  v22 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  labelCopy = label;
  if (spaceCopy && (v8 = [spaceCopy count], labelCopy) && v8)
  {
    v17.receiver = self;
    v17.super_class = NWPVar;
    v9 = [(NWPVar *)&v17 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_label, label);
      v11 = [spaceCopy copy];
      referenceValues = v10->_referenceValues;
      v10->_referenceValues = v11;

      [(NWPVar *)v10 _setToCleanSlate];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v14 = nwpvarLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = spaceCopy;
      v20 = 2112;
      v21 = labelCopy;
      _os_log_impl(&dword_2324A0000, v14, OS_LOG_TYPE_ERROR, "wrong argument: allValues %@, label %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)initFromCheckpoint:(id)checkpoint forLabel:(id)label
{
  v24 = *MEMORY[0x277D85DE8];
  checkpointCopy = checkpoint;
  labelCopy = label;
  v8 = labelCopy;
  if (checkpointCopy && labelCopy)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    uUIDString = [checkpointCopy UUIDString];
    v11 = [v9 initWithFormat:@"%s-%@-%@", "NWPVar", v8, uUIDString];

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
      selfCopy = self;
    }

    else
    {
      v16 = nwpvarLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = checkpointCopy;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_2324A0000, v16, OS_LOG_TYPE_ERROR, "identifier failed to recover valid object for: %@ and label: %@", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v11 = nwpvarLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = checkpointCopy;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2324A0000, v11, OS_LOG_TYPE_ERROR, "wrong identifier: %@ or label: %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)initFromLastCheckpointForLabel:(id)label
{
  v16 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (labelCopy)
  {
    labelCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s-%@", "NWPVar", labelCopy];
    v6 = [NWPVar _fetchCheckpoint:labelCopy isPrefix:1];
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
      selfCopy = self;
    }

    else
    {
      v10 = nwpvarLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = labelCopy;
        _os_log_impl(&dword_2324A0000, v10, OS_LOG_TYPE_ERROR, "identifier failed to recover last valid object for label: %@", buf, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    labelCopy = nwpvarLogHandle();
    if (os_log_type_enabled(labelCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = 0;
      _os_log_impl(&dword_2324A0000, labelCopy, OS_LOG_TYPE_ERROR, "wrong label: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_initToCopy
{
  v3.receiver = self;
  v3.super_class = NWPVar;
  return [(NWPVar *)&v3 init];
}

- (BOOL)setInitialValue:(id)value
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:178 description:{@"Subclasses must provide an impl for %s", "-[NWPVar setInitialValue:]"}];

  return 0;
}

- (BOOL)selectModel:(unint64_t)model
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:184 description:{@"Subclasses must provide an impl for %s", "-[NWPVar selectModel:]"}];

  return 0;
}

- (void)setHyperParams:(id)params
{
  paramsCopy = params;
  if (self->_hyperParams)
  {
    v6 = [(NSDictionary *)self->_hyperParams mutableCopy];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __25__NWPVar_setHyperParams___block_invoke;
    v13 = &unk_278986900;
    selfCopy = self;
    v15 = v6;
    v7 = v6;
    [paramsCopy enumerateKeysAndObjectsUsingBlock:&v10];
    v8 = [v7 copy];
    hyperParams = self->_hyperParams;
    self->_hyperParams = v8;
  }

  else
  {
    objc_storeStrong(&self->_hyperParams, params);
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

- (id)predictValueGivenContext:(id)context generationId:(id *)id
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:209 description:{@"Subclasses must provide an impl for %s", "-[NWPVar predictValueGivenContext:generationId:]"}];

  return 0;
}

- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NWPVar.m" lineNumber:215 description:{@"Subclasses must provide an impl for %s", "-[NWPVar setReward:onValue:forPredictionGenerationId:]"}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _initToCopy = [[NWPVar alloc] _initToCopy];
  label = [(NWPVar *)self label];
  [_initToCopy setLabel:label];

  exportLabel = [(NWPVar *)self exportLabel];
  [_initToCopy setExportLabel:exportLabel];

  [_initToCopy setModel:{-[NWPVar model](self, "model")}];
  [_initToCopy setPullCount:{-[NWPVar pullCount](self, "pullCount")}];
  hyperParams = [(NWPVar *)self hyperParams];
  [_initToCopy setHyperParams:hyperParams];

  allState = [(NWPVar *)self allState];
  [_initToCopy setAllState:allState];

  referenceValues = [(NWPVar *)self referenceValues];
  [_initToCopy setReferenceValues:referenceValues];

  firstValue = [(NWPVar *)self firstValue];
  [_initToCopy setFirstValue:firstValue];

  expectingRewardOn = [(NWPVar *)self expectingRewardOn];
  [_initToCopy setExpectingRewardOn:expectingRewardOn];

  [_initToCopy setLogicalClock:{-[NWPVar logicalClock](self, "logicalClock")}];
  durableId = [(NWPVar *)self durableId];
  [_initToCopy setDurableId:durableId];

  [_initToCopy setUseScalarRange:{-[NWPVar useScalarRange](self, "useScalarRange")}];
  return _initToCopy;
}

- (void)_mirrorFrom:(id)from
{
  fromCopy = from;
  label = [fromCopy label];
  [(NWPVar *)self setLabel:label];

  exportLabel = [fromCopy exportLabel];
  [(NWPVar *)self setExportLabel:exportLabel];

  -[NWPVar setModel:](self, "setModel:", [fromCopy model]);
  -[NWPVar setPullCount:](self, "setPullCount:", [fromCopy pullCount]);
  hyperParams = [fromCopy hyperParams];
  [(NWPVar *)self setHyperParams:hyperParams];

  allState = [fromCopy allState];
  [(NWPVar *)self setAllState:allState];

  referenceValues = [fromCopy referenceValues];
  [(NWPVar *)self setReferenceValues:referenceValues];

  firstValue = [fromCopy firstValue];
  [(NWPVar *)self setFirstValue:firstValue];

  expectingRewardOn = [fromCopy expectingRewardOn];
  [(NWPVar *)self setExpectingRewardOn:expectingRewardOn];

  -[NWPVar setLogicalClock:](self, "setLogicalClock:", [fromCopy logicalClock]);
  durableId = [fromCopy durableId];
  [(NWPVar *)self setDurableId:durableId];

  useScalarRange = [fromCopy useScalarRange];

  [(NWPVar *)self setUseScalarRange:useScalarRange];
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
  referenceValues = [(NWPVar *)self referenceValues];
  v6 = [referenceValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(referenceValues);
        }

        [v3 addObject:*(*(&v13 + 1) + 8 * v9)];
        v10 = objc_alloc_init(NWPVarValueItem);
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [referenceValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (id)_fetchCheckpoint:(id)checkpoint isPrefix:(BOOL)prefix
{
  checkpointCopy = checkpoint;
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
  prefixCopy = prefix;
  v11 = checkpointCopy;
  v12 = &v14;
  v7 = checkpointCopy;
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

- (NWPVar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NWPVar;
  v5 = [(NWPVar *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [coderCopy decodeObjectForKey:@"exportLabel"];
    exportLabel = v5->_exportLabel;
    v5->_exportLabel = v9;

    v5->_model = [coderCopy decodeIntegerForKey:@"model"];
    v5->_pullCount = [coderCopy decodeIntegerForKey:@"pullCount"];
    v11 = [coderCopy decodeObjectForKey:@"hyperParams"];
    hyperParams = v5->_hyperParams;
    v5->_hyperParams = v11;

    v13 = [coderCopy decodeObjectForKey:@"allState"];
    allState = v5->_allState;
    v5->_allState = v13;

    v15 = [coderCopy decodeObjectForKey:@"referenceValues"];
    referenceValues = v5->_referenceValues;
    v5->_referenceValues = v15;

    v17 = [coderCopy decodeObjectForKey:@"firstValue"];
    firstValue = v5->_firstValue;
    v5->_firstValue = v17;

    v19 = [coderCopy decodeObjectForKey:@"expectingRewardOn"];
    expectingRewardOn = v5->_expectingRewardOn;
    v5->_expectingRewardOn = v19;

    v5->_logicalClock = [coderCopy decodeInt64ForKey:@"logicalClock"];
    v21 = [coderCopy decodeObjectForKey:@"durableId"];
    durableId = v5->_durableId;
    v5->_durableId = v21;

    v5->_useScalarRange = [coderCopy decodeBoolForKey:@"useScalarRange"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  label = [(NWPVar *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  exportLabel = [(NWPVar *)self exportLabel];
  [coderCopy encodeObject:exportLabel forKey:@"exportLabel"];

  [coderCopy encodeInteger:-[NWPVar model](self forKey:{"model"), @"model"}];
  [coderCopy encodeInteger:-[NWPVar pullCount](self forKey:{"pullCount"), @"pullCount"}];
  hyperParams = [(NWPVar *)self hyperParams];
  [coderCopy encodeObject:hyperParams forKey:@"hyperParams"];

  allState = [(NWPVar *)self allState];
  [coderCopy encodeObject:allState forKey:@"allState"];

  referenceValues = [(NWPVar *)self referenceValues];
  [coderCopy encodeObject:referenceValues forKey:@"referenceValues"];

  firstValue = [(NWPVar *)self firstValue];
  [coderCopy encodeObject:firstValue forKey:@"firstValue"];

  expectingRewardOn = [(NWPVar *)self expectingRewardOn];
  [coderCopy encodeObject:expectingRewardOn forKey:@"expectingRewardOn"];

  [coderCopy encodeInt64:-[NWPVar logicalClock](self forKey:{"logicalClock"), @"logicalClock"}];
  durableId = [(NWPVar *)self durableId];
  [coderCopy encodeObject:durableId forKey:@"durableId"];

  [coderCopy encodeBool:-[NWPVar useScalarRange](self forKey:{"useScalarRange"), @"useScalarRange"}];
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
  allState = [(NWPVar *)self allState];
  v5 = [allState countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allState);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        allState2 = [(NWPVar *)self allState];
        v11 = [allState2 objectForKeyedSubscript:v9];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "armPullCount")}];
        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [allState countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end