@interface TTCRVectorMultiTimestamp
- (TTCRVectorMultiTimestamp)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TTCRVectorMultiTimestamp

- (TTCRVectorMultiTimestamp)initWithCapacity:(unint64_t)a3
{
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  {
    v6 = objc_alloc_init(TTCRVectorTimestamp);
    [i addObject:v6];
  }

  v9.receiver = self;
  v9.super_class = TTCRVectorMultiTimestamp;
  v7 = [(TTVectorMultiTimestamp *)&v9 initWithTimestamps:i];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TTCRVectorMultiTimestamp);
  [(TTVectorMultiTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

@end