@interface PCRasterBin
- (PCRasterBin)init;
- (id)description;
- (void)addProbability:(double)a3 forLoiID:(id)a4 withSources:(id)a5;
- (void)addTransports:(id)a3;
@end

@implementation PCRasterBin

- (PCRasterBin)init
{
  v10.receiver = self;
  v10.super_class = PCRasterBin;
  v2 = [(PCRasterBin *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    loiProbs = v2->_loiProbs;
    v2->_loiProbs = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    loiSources = v2->_loiSources;
    v2->_loiSources = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    predictedTransports = v2->_predictedTransports;
    v2->_predictedTransports = v7;
  }

  return v2;
}

- (void)addProbability:(double)a3 forLoiID:(id)a4 withSources:(id)a5
{
  v22 = a4;
  v8 = a5;
  v9 = [(PCRasterBin *)self loiProbs];
  v10 = [v9 objectForKeyedSubscript:v22];
  v11 = v10;
  v12 = &unk_1F4BDDF98;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x1E696AD98];
  [v13 doubleValue];
  v16 = v15;

  v17 = [v14 numberWithDouble:v16 + a3];
  v18 = [(PCRasterBin *)self loiProbs];
  [v18 setObject:v17 forKeyedSubscript:v22];

  v19 = [(PCRasterBin *)self loiSources];
  v20 = [v19 objectForKeyedSubscript:v22];

  if (!v20)
  {
    v20 = [MEMORY[0x1E695DFA8] set];
    v21 = [(PCRasterBin *)self loiSources];
    [v21 setObject:v20 forKeyedSubscript:v22];
  }

  [v20 addObjectsFromArray:v8];
}

- (void)addTransports:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(PCRasterBin *)self predictedTransports];

    if (!v4)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      [(PCRasterBin *)self setPredictedTransports:v5];
    }

    v6 = [(PCRasterBin *)self predictedTransports];
    [v6 addObjectsFromArray:v7];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@\n", v5];

  [(PCRasterBin *)self binStart];
  v7 = v6;
  [(PCRasterBin *)self binEnd];
  [v3 appendFormat:@"binStart: %.2f, binEnd: %.2f\n", v7, v8];
  [v3 appendString:@"LOI Probs:\n"];
  v9 = [(PCRasterBin *)self loiProbs];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __26__PCRasterBin_description__block_invoke;
  v15[3] = &unk_1E83B8958;
  v16 = v3;
  v10 = v3;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];

  v11 = [(PCRasterBin *)self loiSources];
  [v10 appendFormat:@"LOI Sources: %lu \n", objc_msgSend(v11, "count")];

  v12 = [(PCRasterBin *)self predictedTransports];
  [v10 appendFormat:@"predictedTransports: %lu", objc_msgSend(v12, "count")];

  v13 = [v10 copy];

  return v13;
}

void __26__PCRasterBin_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [PCAlgorithmsCommonUtils uuidStringFromData:a2];
  [v4 appendFormat:@"%@:%@\n", v6, v5];
}

@end