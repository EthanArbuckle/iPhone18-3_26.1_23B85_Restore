@interface BRCItemDBRowIDAndZoneJobIdentifier
- (BRCItemDBRowIDAndZoneJobIdentifier)initWithItemDBRowID:(int64_t)a3 zoneRowID:(id)a4;
@end

@implementation BRCItemDBRowIDAndZoneJobIdentifier

- (BRCItemDBRowIDAndZoneJobIdentifier)initWithItemDBRowID:(int64_t)a3 zoneRowID:(id)a4
{
  v5.receiver = self;
  v5.super_class = BRCItemDBRowIDAndZoneJobIdentifier;
  return [(BRCIntAndZoneJobIdentifier *)&v5 initWithIntID:a3 zoneRowID:a4];
}

@end