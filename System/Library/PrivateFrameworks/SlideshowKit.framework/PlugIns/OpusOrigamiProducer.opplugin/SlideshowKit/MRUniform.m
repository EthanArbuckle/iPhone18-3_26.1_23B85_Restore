@interface MRUniform
+ ($428C0FB8A9BF713540BE3970CA928F37)poolInfo;
- (MRUniform)initWithFloat:(double)a3;
- (MRUniform)initWithI:(int64_t)a3;
- (MRUniform)initWithMat4:(float)a3[16];
- (MRUniform)initWithMat4ForMat3:(float)a3[16];
- (MRUniform)initWithVec2:(double)a3 :(double)a4;
- (MRUniform)initWithVec3:(double)a3 :(double)a4 :(double)a5;
- (MRUniform)initWithVec4:(double)a3 :(double)a4 :(double)a5 :(double)a6;
@end

@implementation MRUniform

- (MRUniform)initWithFloat:(double)a3
{
  v6.receiver = self;
  v6.super_class = MRUniform;
  result = [(MRUniform *)&v6 init];
  if (result)
  {
    v5 = a3;
    result->m[0] = v5;
    result->length = 1;
  }

  return result;
}

- (MRUniform)initWithVec2:(double)a3 :(double)a4
{
  v9.receiver = self;
  v9.super_class = MRUniform;
  result = [(MRUniform *)&v9 init];
  if (result)
  {
    v7 = a3;
    v8 = a4;
    result->m[0] = v7;
    result->m[1] = v8;
    result->length = 2;
  }

  return result;
}

- (MRUniform)initWithVec3:(double)a3 :(double)a4 :(double)a5
{
  v12.receiver = self;
  v12.super_class = MRUniform;
  result = [(MRUniform *)&v12 init];
  if (result)
  {
    v9 = a3;
    v10 = a4;
    result->m[0] = v9;
    result->m[1] = v10;
    v11 = a5;
    result->m[2] = v11;
    result->length = 3;
  }

  return result;
}

- (MRUniform)initWithVec4:(double)a3 :(double)a4 :(double)a5 :(double)a6
{
  v15.receiver = self;
  v15.super_class = MRUniform;
  result = [(MRUniform *)&v15 init];
  if (result)
  {
    v11 = a3;
    v12 = a4;
    result->m[0] = v11;
    result->m[1] = v12;
    v13 = a5;
    v14 = a6;
    result->m[2] = v13;
    result->m[3] = v14;
    result->length = 4;
  }

  return result;
}

- (MRUniform)initWithI:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MRUniform;
  result = [(MRUniform *)&v5 init];
  if (result)
  {
    result->i = a3;
    result->length = 0;
  }

  return result;
}

- (MRUniform)initWithMat4ForMat3:(float)a3[16]
{
  v5.receiver = self;
  v5.super_class = MRUniform;
  result = [(MRUniform *)&v5 init];
  if (result)
  {
    result->m[0] = *a3;
    result->m[1] = a3[1];
    result->m[2] = a3[2];
    result->m[3] = a3[4];
    result->m[4] = a3[5];
    result->m[5] = a3[6];
    result->m[6] = a3[8];
    result->m[7] = a3[9];
    result->m[8] = a3[10];
    result->length = 9;
  }

  return result;
}

- (MRUniform)initWithMat4:(float)a3[16]
{
  v8.receiver = self;
  v8.super_class = MRUniform;
  result = [(MRUniform *)&v8 init];
  if (result)
  {
    v5 = *(a3 + 3);
    v7 = *a3;
    v6 = *(a3 + 1);
    *&result->m[8] = *(a3 + 2);
    *&result->m[12] = v5;
    *result->m = v7;
    *&result->m[4] = v6;
    result->length = 16;
  }

  return result;
}

+ ($428C0FB8A9BF713540BE3970CA928F37)poolInfo
{
  result = &unk_1EF380;
  byte_1EF398 = 1;
  return result;
}

@end