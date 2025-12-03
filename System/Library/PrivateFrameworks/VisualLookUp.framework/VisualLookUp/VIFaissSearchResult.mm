@interface VIFaissSearchResult
- (NSArray)embedding;
- (NSArray)residual;
- (VIFaissSearchResult)initWithIdentifier:(int64_t)identifier distance:(float)distance embedding:(id)embedding residual:(id)residual;
- (float)distance;
- (id)description;
@end

@implementation VIFaissSearchResult

- (VIFaissSearchResult)initWithIdentifier:(int64_t)identifier distance:(float)distance embedding:(id)embedding residual:(id)residual
{
  embeddingCopy = embedding;
  residualCopy = residual;
  v20.receiver = self;
  v20.super_class = VIFaissSearchResult;
  v12 = [(VIFaissSearchResult *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_identifier = identifier;
    v12->_distance = distance;
    v14 = [embeddingCopy copy];
    embedding = v13->_embedding;
    v13->_embedding = v14;

    v16 = [residualCopy copy];
    residual = v13->_residual;
    v13->_residual = v16;

    v18 = v13;
  }

  return v13;
}

- (id)description
{
  if ([(VIFaissSearchResult *)self isValid])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_identifier];
    v4 = [v3 description];

    *&v5 = self->_distance;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    v7 = [v6 description];

    embedding = self->_embedding;
    if (embedding)
    {
      v9 = _descriptionForFloatArray(embedding);
    }

    else
    {
      v9 = @"nil";
    }

    residual = self->_residual;
    if (residual)
    {
      v10 = _descriptionForFloatArray(residual);
    }

    else
    {
      v10 = @"nil";
    }
  }

  else
  {
    v4 = @"INVALID";
    v10 = @"nil";
    v9 = @"nil";
    v7 = @"INVALID";
  }

  v12 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = VIFaissSearchResult;
  v13 = [(VIFaissSearchResult *)&v16 description];
  v14 = [v12 stringWithFormat:@"%@: {identifier: %@, distance: %@, embedding: %@, residual: %@}", v13, v4, v7, v9, v10];

  return v14;
}

- (float)distance
{
  if ([(VIFaissSearchResult *)self isValid])
  {
    return self->_distance;
  }

  else
  {
    return NAN;
  }
}

- (NSArray)embedding
{
  if ([(VIFaissSearchResult *)self isValid])
  {
    embedding = self->_embedding;
  }

  else
  {
    embedding = 0;
  }

  return embedding;
}

- (NSArray)residual
{
  if ([(VIFaissSearchResult *)self isValid])
  {
    residual = self->_residual;
  }

  else
  {
    residual = 0;
  }

  return residual;
}

@end