@interface NSData(CXX)
- (uint64_t)asCXXVector;
@end

@implementation NSData(CXX)

- (uint64_t)asCXXVector
{
  v4 = [a1 bytes];
  v5 = [a1 bytes];
  v6 = v5 + [a1 length];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, v4, v6, v6 - v4);
}

@end