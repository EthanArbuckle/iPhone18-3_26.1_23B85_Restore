@interface PCRasterBin
- (PCRasterBin)init;
- (id)description;
- (void)addProbability:(double)probability forLoiID:(id)d withSources:(id)sources;
- (void)addTransports:(id)transports;
@end

@implementation PCRasterBin

- (PCRasterBin)init
{
  v10.receiver = self;
  v10.super_class = PCRasterBin;
  v2 = [(PCRasterBin *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    loiProbs = v2->_loiProbs;
    v2->_loiProbs = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    loiSources = v2->_loiSources;
    v2->_loiSources = dictionary2;

    array = [MEMORY[0x1E695DF70] array];
    predictedTransports = v2->_predictedTransports;
    v2->_predictedTransports = array;
  }

  return v2;
}

- (void)addProbability:(double)probability forLoiID:(id)d withSources:(id)sources
{
  dCopy = d;
  sourcesCopy = sources;
  loiProbs = [(PCRasterBin *)self loiProbs];
  v10 = [loiProbs objectForKeyedSubscript:dCopy];
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

  probability = [v14 numberWithDouble:v16 + probability];
  loiProbs2 = [(PCRasterBin *)self loiProbs];
  [loiProbs2 setObject:probability forKeyedSubscript:dCopy];

  loiSources = [(PCRasterBin *)self loiSources];
  v20 = [loiSources objectForKeyedSubscript:dCopy];

  if (!v20)
  {
    v20 = [MEMORY[0x1E695DFA8] set];
    loiSources2 = [(PCRasterBin *)self loiSources];
    [loiSources2 setObject:v20 forKeyedSubscript:dCopy];
  }

  [v20 addObjectsFromArray:sourcesCopy];
}

- (void)addTransports:(id)transports
{
  transportsCopy = transports;
  if ([transportsCopy count])
  {
    predictedTransports = [(PCRasterBin *)self predictedTransports];

    if (!predictedTransports)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(PCRasterBin *)self setPredictedTransports:array];
    }

    predictedTransports2 = [(PCRasterBin *)self predictedTransports];
    [predictedTransports2 addObjectsFromArray:transportsCopy];
  }
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@\n", v5];

  [(PCRasterBin *)self binStart];
  v7 = v6;
  [(PCRasterBin *)self binEnd];
  [string appendFormat:@"binStart: %.2f, binEnd: %.2f\n", v7, v8];
  [string appendString:@"LOI Probs:\n"];
  loiProbs = [(PCRasterBin *)self loiProbs];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __26__PCRasterBin_description__block_invoke;
  v15[3] = &unk_1E83B8958;
  v16 = string;
  v10 = string;
  [loiProbs enumerateKeysAndObjectsUsingBlock:v15];

  loiSources = [(PCRasterBin *)self loiSources];
  [v10 appendFormat:@"LOI Sources: %lu \n", objc_msgSend(loiSources, "count")];

  predictedTransports = [(PCRasterBin *)self predictedTransports];
  [v10 appendFormat:@"predictedTransports: %lu", objc_msgSend(predictedTransports, "count")];

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