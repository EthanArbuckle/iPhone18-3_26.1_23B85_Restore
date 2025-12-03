@interface BRCItemDBRowIDAndZoneJobIdentifier
- (BRCItemDBRowIDAndZoneJobIdentifier)initWithItemDBRowID:(int64_t)d zoneRowID:(id)iD;
@end

@implementation BRCItemDBRowIDAndZoneJobIdentifier

- (BRCItemDBRowIDAndZoneJobIdentifier)initWithItemDBRowID:(int64_t)d zoneRowID:(id)iD
{
  v5.receiver = self;
  v5.super_class = BRCItemDBRowIDAndZoneJobIdentifier;
  return [(BRCIntAndZoneJobIdentifier *)&v5 initWithIntID:d zoneRowID:iD];
}

@end