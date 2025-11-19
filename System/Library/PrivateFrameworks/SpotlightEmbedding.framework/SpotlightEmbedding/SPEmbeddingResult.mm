@interface SPEmbeddingResult
+ (id)log;
- (SPEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5 scale:(float)a6 bias:(float)a7;
- (id)description;
- (unint64_t)elementCount;
@end

@implementation SPEmbeddingResult

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__SPEmbeddingResult_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __24__SPEmbeddingResult_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log_2;
  log_log_2 = v2;
}

- (SPEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5 scale:(float)a6 bias:(float)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = SPEmbeddingResult;
  v14 = [(SPEmbeddingResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_version = a3;
    objc_storeStrong(&v14->_embeddingData, a4);
    v15->_elementType = a5;
    v15->_scale = a6;
    v15->_bias = a7;
  }

  return v15;
}

- (unint64_t)elementCount
{
  v9 = *MEMORY[0x277D85DE8];
  elementType = self->_elementType;
  if (elementType == 2)
  {
    result = [(NSData *)self->_embeddingData length]>> 2;
  }

  else if (elementType == 1)
  {
    result = [(NSData *)self->_embeddingData length]>> 1;
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = self->_elementType;
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_26B793000, v5, OS_LOG_TYPE_ERROR, "Embedding has unknown element type (%d); cannot derive count", v8, 8u);
    }

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"elementType: %d, ", self->_elementType];
  [v3 appendFormat:@"elementCount: %d, ", -[SPEmbeddingResult elementCount](self, "elementCount")];
  [v3 appendFormat:@"embeddingData: %@>", self->_embeddingData];

  return v3;
}

@end