@interface NSValue(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSValue(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  sizep[1] = *MEMORY[0x277D85DE8];
  sizep[0] = 0;
  NSGetSizeAndAlignment([a1 objCType], sizep, 0);
  v2 = sizep - ((sizep[0] + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sizep[0];
  bzero(v2, sizep[0]);
  [a1 getValue:v2 size:v3];
  result = REHashDataUInt64(v2, sizep[0]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end