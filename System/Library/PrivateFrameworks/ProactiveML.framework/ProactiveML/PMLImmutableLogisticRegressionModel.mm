@interface PMLImmutableLogisticRegressionModel
- (PMLImmutableLogisticRegressionModel)initWithFloatsNoCopy:(const float *)copy count:(int)count intercept:(BOOL)intercept;
- (PMLImmutableLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)predict:(id)predict;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLImmutableLogisticRegressionModel

- (id)predict:(id)predict
{
  v18[2] = *MEMORY[0x277D85DE8];
  predictCopy = predict;
  v6 = predictCopy;
  if (self->_intercept)
  {
    vectorWithConstantColumn = [predictCopy vectorWithConstantColumn];

    v6 = vectorWithConstantColumn;
  }

  length = self->_length;
  if ([v6 length] != length)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLImmutableLogisticRegressionModel.m" lineNumber:71 description:{@"Invalid covariates, length: %tu but model weights length: %d", objc_msgSend(v6, "length"), self->_length}];
  }

  v9 = sparse_inner_product_dense_float([v6 numberOfNonZeroValues], objc_msgSend(v6, "sparseValues"), objc_msgSend(v6, "sparseIndices"), self->_weights, 1);
  v10 = 1.0 / (expf(-v9) + 1.0);
  v11 = v10;
  *&v10 = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v18[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v11];
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (PMLImmutableLogisticRegressionModel)initWithFloatsNoCopy:(const float *)copy count:(int)count intercept:(BOOL)intercept
{
  v9.receiver = self;
  v9.super_class = PMLImmutableLogisticRegressionModel;
  result = [(PMLImmutableLogisticRegressionModel *)&v9 init];
  if (result)
  {
    result->_weights = copy;
    result->_length = count;
    result->_intercept = intercept;
  }

  return result;
}

- (PMLImmutableLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v11 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
  bOOLValue = [v11 BOOLValue];

  v13 = [plistCopy objectForKeyedSubscript:@"WEIGHTS"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[PMLImmutableLogisticRegressionModel(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 203, "[__expr isKindOfClass:[NSNumber class]]");
  }

  v14 = [chunksCopy objectAtIndexedSubscript:{objc_msgSend(v13, "unsignedIntegerValue")}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[PMLImmutableLogisticRegressionModel(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 204, "[__expr isKindOfClass:[PMLDataChunkDenseFloatVector class]]");
  }

  v15 = [(PMLImmutableLogisticRegressionModel *)self initWithChunk:v14 intercept:bOOLValue];

  return v15;
}

- (id)toPlistWithChunks:(id)chunks
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"WEIGHTS";
  chunksCopy = chunks;
  toChunk = [(PMLImmutableLogisticRegressionModel *)self toChunk];
  v6 = internChunk(toChunk, chunksCopy);

  v11[1] = @"INTERCEPT";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PMLImmutableLogisticRegressionModel intercept](self, "intercept")}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end