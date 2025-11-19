@interface NSData
@end

@implementation NSData

uint64_t __35__NSData_VFAdditions__vf_md5Digest__block_invoke(uint64_t result, char *data, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      if (v4 >= 0xFFFFFFFF)
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v4;
      }

      result = CC_MD5_Update(*(v6 + 32), data, v7);
      data += v7;
      v4 -= v7;
    }

    while (v4);
  }

  return result;
}

@end