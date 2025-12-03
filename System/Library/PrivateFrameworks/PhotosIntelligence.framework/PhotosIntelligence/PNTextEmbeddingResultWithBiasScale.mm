@interface PNTextEmbeddingResultWithBiasScale
- (PNTextEmbeddingResultWithBiasScale)initWithEmbedding:(id)embedding calibrationVersion:(id)version bias:(id)bias scale:(id)scale;
- (id)calibratedScoreForImageSearchWithBaseScore:(id)score;
@end

@implementation PNTextEmbeddingResultWithBiasScale

- (id)calibratedScoreForImageSearchWithBaseScore:(id)score
{
  [score doubleValue];
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

- (PNTextEmbeddingResultWithBiasScale)initWithEmbedding:(id)embedding calibrationVersion:(id)version bias:(id)bias scale:(id)scale
{
  embeddingCopy = embedding;
  versionCopy = version;
  biasCopy = bias;
  scaleCopy = scale;
  v18.receiver = self;
  v18.super_class = PNTextEmbeddingResultWithBiasScale;
  v15 = [(PNTextEmbeddingResultWithBiasScale *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_embedding, embedding);
    objc_storeStrong(&v16->_calibrationVersion, version);
    objc_storeStrong(&v16->_bias, bias);
    objc_storeStrong(&v16->_scale, scale);
  }

  return v16;
}

@end