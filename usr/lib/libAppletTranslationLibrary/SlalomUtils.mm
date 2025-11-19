@interface SlalomUtils
+ (unint64_t)readBitsValueFromBuffer:(char *)a3 bitPosition:(int)a4 length:(int)a5;
+ (unint64_t)readNumberFromBytes:(char *)a3 numberOfBytes:(int)a4;
@end

@implementation SlalomUtils

+ (unint64_t)readNumberFromBytes:(char *)a3 numberOfBytes:(int)a4
{
  if (a4 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *a3++;
    result = v5 | (result << 8);
    --a4;
  }

  while (a4);
  return result;
}

+ (unint64_t)readBitsValueFromBuffer:(char *)a3 bitPosition:(int)a4 length:(int)a5
{
  if (a5 > 64)
  {
    return 0;
  }

  v7 = a4 + a5 - 1;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 7;
  }

  v9 = a4 + a5 + 6;
  if (v7 >= 0)
  {
    v9 = a4 + a5 - 1;
  }

  v10 = v9 >> 3;
  v11 = (v9 & 0xF8) - v7 + 7;
  v12 = ldexp(1.0, a5) - 1;
  return ([SlalomUtils readNumberFromBytes:&a3[v8 >> 3] numberOfBytes:(v10 - (v8 >> 3) + 1)]>> v11) & v12;
}

@end