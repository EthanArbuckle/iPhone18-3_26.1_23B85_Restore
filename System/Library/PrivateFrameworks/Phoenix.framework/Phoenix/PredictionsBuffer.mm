@interface PredictionsBuffer
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)bestPredictionUsingPolicyOption:(int)option;
- (PredictionsBuffer)initWithConfiguration:(id)configuration;
- (id)description;
- (id)logBuffer;
- (void)addPrediction:(id)prediction;
- (void)reset;
@end

@implementation PredictionsBuffer

- (PredictionsBuffer)initWithConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = PredictionsBuffer;
  selfCopy = [(PredictionsBuffer *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [v10 initWithCapacity:{objc_msgSend(location[0], "maxPredictionBufferSize")}];
    predictions = selfCopy->_predictions;
    selfCopy->_predictions = v4;
    MEMORY[0x277D82BD8](predictions);
    objc_storeStrong(&selfCopy->_configuration, location[0]);
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    counts = selfCopy->_counts;
    selfCopy->_counts = v6;
    MEMORY[0x277D82BD8](counts);
    [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
    [(NSMutableArray *)selfCopy->_counts setObject:&unk_287037BD0 atIndexedSubscript:1];
    [(NSMutableArray *)selfCopy->_counts setObject:&unk_287037BD0 atIndexedSubscript:2];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)reset
{
  [(NSMutableArray *)self->_predictions removeAllObjects];
  [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  [(NSMutableArray *)self->_counts setObject:&unk_287037BD0 atIndexedSubscript:1];
  [(NSMutableArray *)self->_counts setObject:&unk_287037BD0 atIndexedSubscript:2];
}

- (void)addPrediction:(id)prediction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prediction);
  v45 = [(NSMutableArray *)selfCopy->_predictions count];
  if (v45 >= [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration maxPredictionBufferSize])
  {
    v46 = [(NSMutableArray *)selfCopy->_predictions objectAtIndex:0];
    predictedClass = [v46 predictedClass];
    if (predictedClass)
    {
      if (predictedClass == 1)
      {
        [v46 maxConfidence];
        v39 = v7;
        [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
        v9 = v8;
        v3 = v39;
        if (v39 > v9)
        {
          v36 = MEMORY[0x277CCABB0];
          v38 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v39];
          v37 = [v36 numberWithUnsignedInteger:{objc_msgSend(v38, "unsignedIntegerValue") - 1}];
          [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v37);
          MEMORY[0x277D82BD8](v38);
        }
      }

      else if (predictedClass == 2)
      {
        [v46 maxConfidence];
        v35 = v10;
        [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
        v12 = v11;
        v3 = v35;
        if (v35 > v12)
        {
          v32 = MEMORY[0x277CCABB0];
          v34 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v35];
          v33 = [v32 numberWithUnsignedInteger:{objc_msgSend(v34, "unsignedIntegerValue") - 1}];
          [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v33);
          MEMORY[0x277D82BD8](v34);
        }
      }
    }

    else
    {
      [v46 maxConfidence];
      v43 = v4;
      [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
      v6 = v5;
      v3 = v43;
      if (v43 > v6)
      {
        v40 = MEMORY[0x277CCABB0];
        v42 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v43];
        v41 = [v40 numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue") - 1}];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
        MEMORY[0x277D82BD8](v41);
        MEMORY[0x277D82BD8](v42);
      }
    }

    [(NSMutableArray *)selfCopy->_predictions removeObjectAtIndex:0, v3];
    objc_storeStrong(&v46, 0);
  }

  [(NSMutableArray *)selfCopy->_predictions addObject:location[0]];
  predictedClass2 = [location[0] predictedClass];
  if (predictedClass2)
  {
    if (predictedClass2 == 1)
    {
      [location[0] maxConfidence];
      v26 = v15;
      [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
      if (v26 > v16)
      {
        v23 = MEMORY[0x277CCABB0];
        v25 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v26];
        v24 = [v23 numberWithUnsignedInteger:{objc_msgSend(v25, "unsignedIntegerValue") + 1}];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }
    }

    else if (predictedClass2 == 2)
    {
      [location[0] maxConfidence];
      v22 = v17;
      [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
      if (v22 > v18)
      {
        v19 = MEMORY[0x277CCABB0];
        v21 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v22];
        v20 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "unsignedIntegerValue") + 1}];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
      }
    }
  }

  else
  {
    [location[0] maxConfidence];
    v30 = v13;
    [(AXPhoenixClassifierConfiguration *)selfCopy->_configuration predictionConfidenceThreshold];
    if (v30 > v14)
    {
      v27 = MEMORY[0x277CCABB0];
      v29 = [(NSMutableArray *)selfCopy->_counts objectAtIndex:v30];
      v28 = [v27 numberWithUnsignedInteger:{objc_msgSend(v29, "unsignedIntegerValue") + 1}];
      [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
    }
  }

  objc_storeStrong(location, 0);
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)bestPredictionUsingPolicyOption:(int)option
{
  optionCopy = option;
  v12 = 0;
  v9 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v9 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v9);
  v11 = unsignedIntegerValue;
  if (optionCopy)
  {
    v7 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:1];
    unsignedIntegerValue2 = [v7 unsignedIntegerValue];
    MEMORY[0x277D82BD8](v7);
    if (unsignedIntegerValue2 > unsignedIntegerValue)
    {
      v11 = unsignedIntegerValue2;
      v12 = 1;
    }
  }

  if ((optionCopy & 2) != 0)
  {
    v5 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v5 unsignedIntegerValue];
    MEMORY[0x277D82BD8](v5);
    if (unsignedIntegerValue3 > v11)
    {
      v11 = unsignedIntegerValue3;
      v12 = 2;
    }
  }

  v3 = v12;
  v4 = v11;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)logBuffer
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  predictions = selfCopy->_predictions;
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [(NSMutableArray *)predictions enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __30__PredictionsBuffer_logBuffer__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v16[0] = @"noneScore";
  v6 = MEMORY[0x277CCABB0];
  [location[0] noneScore];
  v12 = [v6 numberWithDouble:?];
  v17[0] = v12;
  v16[1] = @"doubleTapScore";
  v7 = MEMORY[0x277CCABB0];
  [location[0] doubleTapScore];
  v11 = [v7 numberWithDouble:?];
  v17[1] = v11;
  v16[2] = @"tripleTapScore";
  v8 = MEMORY[0x277CCABB0];
  [location[0] tripleTapScore];
  v10 = [v8 numberWithDouble:?];
  v17[2] = v10;
  v16[3] = @"predictedClass";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "predictedClass")}];
  v17[3] = v9;
  v14[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  [a1[4] addObject:v14[0]];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  logBuffer = [(PredictionsBuffer *)self logBuffer];
  v4 = [logBuffer componentsJoinedByString:@":"];
  v6 = [v3 stringWithFormat:@"predictions[none, double, triple, class]: %@", v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](logBuffer);

  return v6;
}

@end