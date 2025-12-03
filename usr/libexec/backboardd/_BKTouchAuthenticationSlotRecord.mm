@interface _BKTouchAuthenticationSlotRecord
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _BKTouchAuthenticationSlotRecord

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (equal)
  {
    v5 = *(equal + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  slotID = [v6 slotID];
  v8 = slotID == [(BKSTouchAuthenticationSpecification *)self->_authenticationSpecification slotID];

  return v8;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithUnsignedInt:[(BKSTouchAuthenticationSpecification *)self->_authenticationSpecification slotID]];
  v3 = [v2 hash];

  return v3;
}

@end