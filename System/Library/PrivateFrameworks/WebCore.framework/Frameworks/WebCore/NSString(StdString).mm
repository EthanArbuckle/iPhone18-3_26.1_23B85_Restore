@interface NSString(StdString)
+ (id)rtcStringForStdString:()StdString;
+ (void)rtcStdStringForString:()StdString;
@end

@implementation NSString(StdString)

+ (void)rtcStdStringForString:()StdString
{
  v7 = a1;
  v3 = [v7 dataUsingEncoding:4];
  v4 = [v3 bytes];
  v5 = [v3 length];
  if (!v4 && v5)
  {
    goto LABEL_15;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  a2[23] = v5;
  v6 = &a2[v5];
  if (a2 <= v4 && v6 > v4)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v5)
    {
      memmove(a2, v4, v5);
    }

    *v6 = 0;
  }
}

+ (id)rtcStringForStdString:()StdString
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = [v4 initWithBytes:v6 length:v7 encoding:4];

  return v8;
}

@end