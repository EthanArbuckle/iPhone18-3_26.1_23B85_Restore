@interface CRCVNLPTransientResult
- (char)initWithActivationMatrix:(void *)a3 decodingLocale:(__int128 *)a4 activationsBuffer:;
- (double)modernizedActivationMatrix;
- (id).cxx_construct;
@end

@implementation CRCVNLPTransientResult

- (char)initWithActivationMatrix:(void *)a3 decodingLocale:(__int128 *)a4 activationsBuffer:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = v7;
    v10 = v8;
    v21.receiver = a1;
    v21.super_class = CRCVNLPTransientResult;
    v11 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v11;
    if (v11)
    {
      [v11 setActivationMatrix:v9];
      [a1 setDecodingLocale:v10];

      v12 = *a4;
      v13 = a4[1];
      *(a1 + 40) = a4[2];
      *(a1 + 24) = v13;
      *(a1 + 8) = v12;
      v14 = a4[3];
      v15 = a4[4];
      v16 = a4[5];
      *(a1 + 104) = a4[6];
      *(a1 + 88) = v16;
      *(a1 + 72) = v15;
      *(a1 + 56) = v14;
      v17 = a4[7];
      v18 = a4[8];
      v19 = a4[9];
      *(a1 + 21) = *(a4 + 20);
      *(a1 + 152) = v19;
      *(a1 + 136) = v18;
      *(a1 + 120) = v17;
    }

    else
    {
    }
  }

  return a1;
}

- (double)modernizedActivationMatrix
{
  if (a2)
  {
    v10 = [a2 activationMatrix];
    v4 = [v10 timestepCount];
    v5 = [a2 activationMatrix];
    v6 = [v5 observationCount];
    v7 = *(a2 + 8);
    if (*(a2 + 344) == 1)
    {
      v8 = *(a2 + 176);
    }

    else
    {
      v8 = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
  }

  else
  {
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
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