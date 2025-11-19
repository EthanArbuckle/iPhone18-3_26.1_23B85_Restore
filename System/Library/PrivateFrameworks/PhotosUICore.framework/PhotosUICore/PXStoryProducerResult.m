@interface PXStoryProducerResult
+ (PXStoryProducerResult)nullResult;
- (BOOL)isEqual:(id)a3;
- (PXStoryProducerResult)init;
- (PXStoryProducerResult)initWithObject:(id)a3;
- (id)deliveredNowWithRequestTime:(double)a3;
- (id)description;
- (id)error:(id)a3;
- (id)fractionCompleted:(float)a3;
- (unint64_t)hash;
@end

@implementation PXStoryProducerResult

- (unint64_t)hash
{
  v3 = [(PXStoryProducerResult *)self object];
  v4 = [v3 hash];
  v5 = [(PXStoryProducerResult *)self flags]^ v4;
  v6 = [(PXStoryProducerResult *)self error];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryProducerResult *)self object];
      v7 = [(PXStoryProducerResult *)v5 object];
      if ((v6 == v7 || [v6 isEqual:v7]) && (v8 = -[PXStoryProducerResult flags](self, "flags"), v8 == -[PXStoryProducerResult flags](v5, "flags")))
      {
        v9 = [(PXStoryProducerResult *)self error];
        v10 = [(PXStoryProducerResult *)v5 error];
        if (v9 == v10 || [v9 isEqual:v10])
        {
          [(PXStoryProducerResult *)self productionDuration];
          v12 = v11;
          [(PXStoryProducerResult *)v5 productionDuration];
          v14 = v12 == v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXStoryProducerResult *)self flags];
  v6 = [(PXStoryProducerResult *)self object];
  v7 = [(PXStoryProducerResult *)self error];
  v8 = [v3 initWithFormat:@"<%@ %p; flags: 0x%lX; object: %@, error: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (id)deliveredNowWithRequestTime:(double)a3
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_productionDuration = v5 - a3;
  return self;
}

- (id)error:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_error != v5)
  {
    objc_storeStrong(&self->_error, a3);
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Producer result error: %@ %@", &v8, 0x16u);
    }
  }

  return self;
}

- (id)fractionCompleted:(float)a3
{
  if (a3 < 1.0)
  {
    self->_flags |= 1uLL;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  fractionCompleted = self->_fractionCompleted;
  self->_fractionCompleted = v4;

  return self;
}

- (PXStoryProducerResult)initWithObject:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryProducerResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

- (PXStoryProducerResult)init
{
  v3.receiver = self;
  v3.super_class = PXStoryProducerResult;
  result = [(PXStoryProducerResult *)&v3 init];
  if (result)
  {
    result->_productionDuration = NAN;
  }

  return result;
}

+ (PXStoryProducerResult)nullResult
{
  v2 = objc_alloc_init(PXStoryProducerResult);

  return v2;
}

@end