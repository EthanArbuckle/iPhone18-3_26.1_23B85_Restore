@interface NSData(CXX)
- (uint64_t)asCXXVector;
@end

@implementation NSData(CXX)

- (uint64_t)asCXXVector
{
  bytes = [self bytes];
  bytes2 = [self bytes];
  v6 = bytes2 + [self length];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, bytes, v6, v6 - bytes);
}

@end