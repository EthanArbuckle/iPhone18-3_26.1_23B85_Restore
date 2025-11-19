@interface BRCIntAndZoneJobIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIntAndZoneJobIdentifier:(id)a3;
- (BRCIntAndZoneJobIdentifier)initWithIntID:(int64_t)a3 zoneRowID:(id)a4;
@end

@implementation BRCIntAndZoneJobIdentifier

- (BRCIntAndZoneJobIdentifier)initWithIntID:(int64_t)a3 zoneRowID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BRCIntAndZoneJobIdentifier;
  v8 = [(BRCIntAndZoneJobIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_intID = a3;
    objc_storeStrong(&v8->_zoneRowID, a4);
    if (!v7)
    {
      [BRCIntAndZoneJobIdentifier initWithIntID:zoneRowID:];
    }
  }

  return v9;
}

- (BOOL)isEqualToIntAndZoneJobIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_intID == *(v4 + 1))
  {
    v6 = [(BRCZoneRowID *)self->_zoneRowID br_isEqualToNumber:*(v4 + 2)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCIntAndZoneJobIdentifier *)self isEqualToIntAndZoneJobIdentifier:v4];
  }

  return v5;
}

@end