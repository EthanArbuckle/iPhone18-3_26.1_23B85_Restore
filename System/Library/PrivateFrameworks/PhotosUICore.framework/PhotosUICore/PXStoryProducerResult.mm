@interface PXStoryProducerResult
+ (PXStoryProducerResult)nullResult;
- (BOOL)isEqual:(id)equal;
- (PXStoryProducerResult)init;
- (PXStoryProducerResult)initWithObject:(id)object;
- (id)deliveredNowWithRequestTime:(double)time;
- (id)description;
- (id)error:(id)error;
- (id)fractionCompleted:(float)completed;
- (unint64_t)hash;
@end

@implementation PXStoryProducerResult

- (unint64_t)hash
{
  object = [(PXStoryProducerResult *)self object];
  v4 = [object hash];
  v5 = [(PXStoryProducerResult *)self flags]^ v4;
  error = [(PXStoryProducerResult *)self error];
  v7 = [error hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      object = [(PXStoryProducerResult *)self object];
      object2 = [(PXStoryProducerResult *)v5 object];
      if ((object == object2 || [object isEqual:object2]) && (v8 = -[PXStoryProducerResult flags](self, "flags"), v8 == -[PXStoryProducerResult flags](v5, "flags")))
      {
        error = [(PXStoryProducerResult *)self error];
        error2 = [(PXStoryProducerResult *)v5 error];
        if (error == error2 || [error isEqual:error2])
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
  flags = [(PXStoryProducerResult *)self flags];
  object = [(PXStoryProducerResult *)self object];
  error = [(PXStoryProducerResult *)self error];
  v8 = [v3 initWithFormat:@"<%@ %p; flags: 0x%lX; object: %@, error: %@>", v4, self, flags, object, error];

  return v8;
}

- (id)deliveredNowWithRequestTime:(double)time
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_productionDuration = v5 - time;
  return self;
}

- (id)error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = errorCopy;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Producer result error: %@ %@", &v8, 0x16u);
    }
  }

  return self;
}

- (id)fractionCompleted:(float)completed
{
  if (completed < 1.0)
  {
    self->_flags |= 1uLL;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  fractionCompleted = self->_fractionCompleted;
  self->_fractionCompleted = v4;

  return self;
}

- (PXStoryProducerResult)initWithObject:(id)object
{
  objectCopy = object;
  v6 = [(PXStoryProducerResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
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