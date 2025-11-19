@interface NEFNVHash
+ (unsigned)hash:(id)a3;
+ (unsigned)hashWithString:(const char *)a3;
@end

@implementation NEFNVHash

+ (unsigned)hash:(id)a3
{
  v3 = [a3 UTF8String];

  return [NEFNVHash hashWithString:v3];
}

+ (unsigned)hashWithString:(const char *)a3
{
  result = -2128831035;
  v4 = *a3;
  if (*a3)
  {
    v5 = a3 + 1;
    do
    {
      result = 16777619 * (result ^ v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  return result;
}

@end