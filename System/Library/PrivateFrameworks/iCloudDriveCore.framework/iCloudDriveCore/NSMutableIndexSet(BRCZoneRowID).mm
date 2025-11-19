@interface NSMutableIndexSet(BRCZoneRowID)
- (uint64_t)addZoneRowID:()BRCZoneRowID;
- (uint64_t)removeZoneRowID:()BRCZoneRowID;
@end

@implementation NSMutableIndexSet(BRCZoneRowID)

- (uint64_t)addZoneRowID:()BRCZoneRowID
{
  v4 = [a3 unsignedLongValue];

  return [a1 addIndex:v4];
}

- (uint64_t)removeZoneRowID:()BRCZoneRowID
{
  v4 = [a3 unsignedLongValue];

  return [a1 removeIndex:v4];
}

@end