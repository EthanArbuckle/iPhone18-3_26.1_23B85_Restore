@interface NSMutableIndexSet(BRCZoneRowID)
- (uint64_t)addZoneRowID:()BRCZoneRowID;
- (uint64_t)removeZoneRowID:()BRCZoneRowID;
@end

@implementation NSMutableIndexSet(BRCZoneRowID)

- (uint64_t)addZoneRowID:()BRCZoneRowID
{
  unsignedLongValue = [a3 unsignedLongValue];

  return [self addIndex:unsignedLongValue];
}

- (uint64_t)removeZoneRowID:()BRCZoneRowID
{
  unsignedLongValue = [a3 unsignedLongValue];

  return [self removeIndex:unsignedLongValue];
}

@end