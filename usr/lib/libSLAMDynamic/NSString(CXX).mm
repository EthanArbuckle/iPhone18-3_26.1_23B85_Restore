@interface NSString(CXX)
+ (uint64_t)stringWithCXXString:()CXX;
- (size_t)asCXXString;
@end

@implementation NSString(CXX)

+ (uint64_t)stringWithCXXString:()CXX
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  return [MEMORY[0x29EDBA0F8] stringWithCString:a3 encoding:1];
}

- (size_t)asCXXString
{
  uTF8String = [self UTF8String];
  result = strlen(uTF8String);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, uTF8String, result);
  }

  a2[v5] = 0;
  return result;
}

@end