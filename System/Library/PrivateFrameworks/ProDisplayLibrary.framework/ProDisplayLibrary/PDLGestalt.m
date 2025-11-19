@interface PDLGestalt
+ (BOOL)isJ31x;
+ (BOOL)isJ41x;
+ (BOOL)isJ51x;
+ (BOOL)isJ61p;
@end

@implementation PDLGestalt

+ (BOOL)isJ31x
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 3251304171)
  {
    if (v3 == 3251304172)
    {
      return v2;
    }

    v4 = 4029332968;
  }

  else
  {
    if (v3 == 915676999)
    {
      return v2;
    }

    v4 = 1633140229;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

+ (BOOL)isJ41x
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 3920636090)
  {
    if (v3 == 3920636091)
    {
      return v2;
    }

    v4 = 4040621087;
  }

  else
  {
    if (v3 == 2176734770)
    {
      return v2;
    }

    v4 = 3076879258;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

+ (BOOL)isJ51x
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 <= 2810835467)
  {
    if (v3 == 177703170 || v3 == 1222411078)
    {
      return v2;
    }

    v4 = 2449989429;
  }

  else if (v3 > 3953618041)
  {
    if (v3 == 3953618042)
    {
      return v2;
    }

    v4 = 4075263308;
  }

  else
  {
    if (v3 == 2810835468)
    {
      return v2;
    }

    v4 = 3329122205;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

+ (BOOL)isJ61p
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 <= 1908187197)
  {
    if (v3 == 1067705145)
    {
      return v2;
    }

    v4 = 1306248679;
  }

  else
  {
    if (v3 == 1908187198 || v3 == 2704749890)
    {
      return v2;
    }

    v4 = 3925752252;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

@end