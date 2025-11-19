@interface PNTextEmbeddingResultWithBiasScale
- (PNTextEmbeddingResultWithBiasScale)initWithEmbedding:(id)a3 calibrationVersion:(id)a4 bias:(id)a5 scale:(id)a6;
- (id)calibratedScoreForImageSearchWithBaseScore:(id)a3;
@end

@implementation PNTextEmbeddingResultWithBiasScale

- (id)calibratedScoreForImageSearchWithBaseScore:(id)a3
{
  [a3 doubleValue];
  v5 = v4;
  v6 = log(v4);
  v7 = v6 - log(1.0 - v5);
  [(NSNumber *)self->_bias doubleValue];
  v9 = v7 - v8;
  [(NSNumber *)self->_scale doubleValue];
  v11 = v9 / v10;
  v12 = MEMORY[0x1E696AD98];

  return [v12 numberWithDouble:v11];
}

- (PNTextEmbeddingResultWithBiasScale)initWithEmbedding:(id)a3 calibrationVersion:(id)a4 bias:(id)a5 scale:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PNTextEmbeddingResultWithBiasScale;
  v15 = [(PNTextEmbeddingResultWithBiasScale *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_embedding, a3);
    objc_storeStrong(&v16->_calibrationVersion, a4);
    objc_storeStrong(&v16->_bias, a5);
    objc_storeStrong(&v16->_scale, a6);
  }

  return v16;
}

@end