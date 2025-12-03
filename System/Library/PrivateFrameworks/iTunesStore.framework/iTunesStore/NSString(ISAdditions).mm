@interface NSString(ISAdditions)
- (uint64_t)copyUTF8StringOfLength:()ISAdditions;
@end

@implementation NSString(ISAdditions)

- (uint64_t)copyUTF8StringOfLength:()ISAdditions
{
  v5 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v10 = 0;
  v7 = [self getBytes:v5 maxLength:a3 usedLength:&v10 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(self, "length"), 0}];
  v8 = 0;
  if (v7)
  {
    v6[v10] = 0;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
  }

  free(v6);
  return v8;
}

@end