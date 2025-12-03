@interface CRCVNLPTransientResult
- (char)initWithActivationMatrix:(void *)matrix decodingLocale:(__int128 *)locale activationsBuffer:;
- (double)modernizedActivationMatrix;
- (id).cxx_construct;
@end

@implementation CRCVNLPTransientResult

- (char)initWithActivationMatrix:(void *)matrix decodingLocale:(__int128 *)locale activationsBuffer:
{
  v7 = a2;
  matrixCopy = matrix;
  if (self)
  {
    v9 = v7;
    v10 = matrixCopy;
    v21.receiver = self;
    v21.super_class = CRCVNLPTransientResult;
    v11 = objc_msgSendSuper2(&v21, sel_init);
    self = v11;
    if (v11)
    {
      [v11 setActivationMatrix:v9];
      [self setDecodingLocale:v10];

      v12 = *locale;
      v13 = locale[1];
      *(self + 40) = locale[2];
      *(self + 24) = v13;
      *(self + 8) = v12;
      v14 = locale[3];
      v15 = locale[4];
      v16 = locale[5];
      *(self + 104) = locale[6];
      *(self + 88) = v16;
      *(self + 72) = v15;
      *(self + 56) = v14;
      v17 = locale[7];
      v18 = locale[8];
      v19 = locale[9];
      *(self + 21) = *(locale + 20);
      *(self + 152) = v19;
      *(self + 136) = v18;
      *(self + 120) = v17;
    }

    else
    {
    }
  }

  return self;
}

- (double)modernizedActivationMatrix
{
  if (a2)
  {
    activationMatrix = [a2 activationMatrix];
    timestepCount = [activationMatrix timestepCount];
    activationMatrix2 = [a2 activationMatrix];
    observationCount = [activationMatrix2 observationCount];
    v7 = *(a2 + 8);
    if (*(a2 + 344) == 1)
    {
      v8 = *(a2 + 176);
    }

    else
    {
      v8 = 0;
    }

    *self = timestepCount;
    *(self + 8) = observationCount;
    *(self + 16) = 0u;
    *(self + 32) = 0u;
    *(self + 48) = 0u;
    *(self + 64) = v7;
    *(self + 72) = v8;
  }

  else
  {
    result = 0.0;
    *(self + 48) = 0u;
    *(self + 64) = 0u;
    *(self + 16) = 0u;
    *(self + 32) = 0u;
    *self = 0u;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 176) = 0;
  *(self + 344) = 0;
  return self;
}

@end