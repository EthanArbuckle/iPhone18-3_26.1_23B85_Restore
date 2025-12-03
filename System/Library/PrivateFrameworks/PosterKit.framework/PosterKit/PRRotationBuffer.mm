@interface PRRotationBuffer
- (PRRotationBuffer)init;
- (__n128)readLatestRotation;
- (__n128)writeRotation:(uint64_t)rotation;
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

- (__n128)writeRotation:(uint64_t)rotation
{
  v3 = atomic_load((self + 80));
  v4 = 1 - v3;
  result = *rotation;
  v6 = *(rotation + 16);
  v7 = self + 32 * v4;
  *(v7 + 16) = *rotation;
  *(v7 + 32) = v6;
  atomic_store(v4, (self + 80));
  return result;
}

- (__n128)readLatestRotation
{
  v2 = atomic_load((self + 80));
  v3 = self + 32 * v2;
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

@end