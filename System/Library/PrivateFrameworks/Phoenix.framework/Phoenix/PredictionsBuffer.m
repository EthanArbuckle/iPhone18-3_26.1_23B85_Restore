@interface PredictionsBuffer
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)bestPredictionUsingPolicyOption:(int)a3;
- (PredictionsBuffer)initWithConfiguration:(id)a3;
- (id)description;
- (id)logBuffer;
- (void)addPrediction:(id)a3;
- (void)reset;
@end

@implementation PredictionsBuffer

- (PredictionsBuffer)initWithConfiguration:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = PredictionsBuffer;
  v13 = [(PredictionsBuffer *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [v10 initWithCapacity:{objc_msgSend(location[0], "maxPredictionBufferSize")}];
    predictions = v13->_predictions;
    v13->_predictions = v4;
    MEMORY[0x277D82BD8](predictions);
    objc_storeStrong(&v13->_configuration, location[0]);
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    counts = v13->_counts;
    v13->_counts = v6;
    MEMORY[0x277D82BD8](counts);
    [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
    [(NSMutableArray *)v13->_counts setObject:&unk_287037BD0 atIndexedSubscript:1];
    [(NSMutableArray *)v13->_counts setObject:&unk_287037BD0 atIndexedSubscript:2];
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (void)reset
{
  [(NSMutableArray *)self->_predictions removeAllObjects];
  [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  [(NSMutableArray *)self->_counts setObject:&unk_287037BD0 atIndexedSubscript:1];
  [(NSMutableArray *)self->_counts setObject:&unk_287037BD0 atIndexedSubscript:2];
}

- (void)addPrediction:(id)a3
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = [(NSMutableArray *)v48->_predictions count];
  if (v45 >= [(AXPhoenixClassifierConfiguration *)v48->_configuration maxPredictionBufferSize])
  {
    v46 = [(NSMutableArray *)v48->_predictions objectAtIndex:0];
    v44 = [v46 predictedClass];
    if (v44)
    {
      if (v44 == 1)
      {
        [v46 maxConfidence];
        v39 = v7;
        [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
        v9 = v8;
        v3 = v39;
        if (v39 > v9)
        {
          v36 = MEMORY[0x277CCABB0];
          v38 = [(NSMutableArray *)v48->_counts objectAtIndex:v39];
          v37 = [v36 numberWithUnsignedInteger:{objc_msgSend(v38, "unsignedIntegerValue") - 1}];
          [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
          MEMORY[0x277D82BD8](v37);
          MEMORY[0x277D82BD8](v38);
        }
      }

      else if (v44 == 2)
      {
        [v46 maxConfidence];
        v35 = v10;
        [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
        v12 = v11;
        v3 = v35;
        if (v35 > v12)
        {
          v32 = MEMORY[0x277CCABB0];
          v34 = [(NSMutableArray *)v48->_counts objectAtIndex:v35];
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
      [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
      v6 = v5;
      v3 = v43;
      if (v43 > v6)
      {
        v40 = MEMORY[0x277CCABB0];
        v42 = [(NSMutableArray *)v48->_counts objectAtIndex:v43];
        v41 = [v40 numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue") - 1}];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
        MEMORY[0x277D82BD8](v41);
        MEMORY[0x277D82BD8](v42);
      }
    }

    [(NSMutableArray *)v48->_predictions removeObjectAtIndex:0, v3];
    objc_storeStrong(&v46, 0);
  }

  [(NSMutableArray *)v48->_predictions addObject:location[0]];
  v31 = [location[0] predictedClass];
  if (v31)
  {
    if (v31 == 1)
    {
      [location[0] maxConfidence];
      v26 = v15;
      [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
      if (v26 > v16)
      {
        v23 = MEMORY[0x277CCABB0];
        v25 = [(NSMutableArray *)v48->_counts objectAtIndex:v26];
        v24 = [v23 numberWithUnsignedInteger:{objc_msgSend(v25, "unsignedIntegerValue") + 1}];
        [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }
    }

    else if (v31 == 2)
    {
      [location[0] maxConfidence];
      v22 = v17;
      [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
      if (v22 > v18)
      {
        v19 = MEMORY[0x277CCABB0];
        v21 = [(NSMutableArray *)v48->_counts objectAtIndex:v22];
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
    [(AXPhoenixClassifierConfiguration *)v48->_configuration predictionConfidenceThreshold];
    if (v30 > v14)
    {
      v27 = MEMORY[0x277CCABB0];
      v29 = [(NSMutableArray *)v48->_counts objectAtIndex:v30];
      v28 = [v27 numberWithUnsignedInteger:{objc_msgSend(v29, "unsignedIntegerValue") + 1}];
      [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
    }
  }

  objc_storeStrong(location, 0);
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)bestPredictionUsingPolicyOption:(int)a3
{
  v13 = a3;
  v12 = 0;
  v9 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:0];
  v10 = [v9 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v9);
  v11 = v10;
  if (v13)
  {
    v7 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:1];
    v8 = [v7 unsignedIntegerValue];
    MEMORY[0x277D82BD8](v7);
    if (v8 > v10)
    {
      v11 = v8;
      v12 = 1;
    }
  }

  if ((v13 & 2) != 0)
  {
    v5 = [(NSMutableArray *)self->_counts objectAtIndexedSubscript:2];
    v6 = [v5 unsignedIntegerValue];
    MEMORY[0x277D82BD8](v5);
    if (v6 > v11)
    {
      v11 = v6;
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
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  predictions = v7->_predictions;
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
  v5 = [(PredictionsBuffer *)self logBuffer];
  v4 = [v5 componentsJoinedByString:@":"];
  v6 = [v3 stringWithFormat:@"predictions[none, double, triple, class]: %@", v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

@end