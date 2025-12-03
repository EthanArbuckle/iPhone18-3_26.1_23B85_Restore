@interface BRCIntAndZoneJobIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIntAndZoneJobIdentifier:(id)identifier;
- (BRCIntAndZoneJobIdentifier)initWithIntID:(int64_t)d zoneRowID:(id)iD;
@end

@implementation BRCIntAndZoneJobIdentifier

- (BRCIntAndZoneJobIdentifier)initWithIntID:(int64_t)d zoneRowID:(id)iD
{
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = BRCIntAndZoneJobIdentifier;
  v8 = [(BRCIntAndZoneJobIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_intID = d;
    objc_storeStrong(&v8->_zoneRowID, iD);
    if (!iDCopy)
    {
      [BRCIntAndZoneJobIdentifier initWithIntID:zoneRowID:];
    }
  }

  return v9;
}

- (BOOL)isEqualToIntAndZoneJobIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && self->_intID == *(identifierCopy + 1))
  {
    v6 = [(BRCZoneRowID *)self->_zoneRowID br_isEqualToNumber:*(identifierCopy + 2)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCIntAndZoneJobIdentifier *)self isEqualToIntAndZoneJobIdentifier:equalCopy];
  }

  return v5;
}

@end