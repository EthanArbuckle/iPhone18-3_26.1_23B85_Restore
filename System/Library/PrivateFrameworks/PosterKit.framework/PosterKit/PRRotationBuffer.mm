@interface PRRotationBuffer
- (PRRotationBuffer)init;
- (__n128)readLatestRotation;
- (__n128)writeRotation:(uint64_t)a3;
@end

@implementation PRRotationBuffer

- (PRRotationBuffer)init
{
  v3.receiver = self;
  v3.super_class = PRRotationBuffer;
  result = [(PRRotationBuffer *)&v3 init];
  if (result)
  {
    *result->_anon_10 = SPRotation3DIdentity;
    *&result->_anon_10[16] = unk_1A8BF7B10;
    *&result->_anon_10[32] = SPRotation3DIdentity;
    *&result->_anon_10[48] = unk_1A8BF7B10;
    result->_activeIndex = 0;
  }

  return result;
}

- (__n128)writeRotation:(uint64_t)a3
{
  v3 = atomic_load((a1 + 80));
  v4 = 1 - v3;
  result = *a3;
  v6 = *(a3 + 16);
  v7 = a1 + 32 * v4;
  *(v7 + 16) = *a3;
  *(v7 + 32) = v6;
  atomic_store(v4, (a1 + 80));
  return result;
}

- (__n128)readLatestRotation
{
  v2 = atomic_load((a1 + 80));
  v3 = a1 + 32 * v2;
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

@end