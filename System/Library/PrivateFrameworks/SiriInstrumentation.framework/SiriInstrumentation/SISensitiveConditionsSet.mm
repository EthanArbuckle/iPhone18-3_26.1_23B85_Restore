@interface SISensitiveConditionsSet
+ (id)fromDeviceSensitivityState:(int)state;
- (BOOL)isEqual:(id)equal;
- (SISensitiveConditionsSet)initWithBitMask:(unint64_t)mask;
- (id)copyWithZone:(_NSZone *)zone;
- (id)differenceSetFrom:(id)from;
- (id)intersectionSetWith:(id)with;
- (id)unionSetWith:(id)with;
@end

@implementation SISensitiveConditionsSet

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SISensitiveConditionsSet *)self isEqualToConditionsSet:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SISensitiveConditionsSet alloc];
  bitmask = self->_bitmask;

  return [(SISensitiveConditionsSet *)v4 initWithBitMask:bitmask];
}

- (id)intersectionSetWith:(id)with
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:*(with + 1) & self->_bitmask];

  return v3;
}

- (id)differenceSetFrom:(id)from
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:self->_bitmask & ~*(from + 1)];

  return v3;
}

- (id)unionSetWith:(id)with
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:*(with + 1) | self->_bitmask];

  return v3;
}

- (SISensitiveConditionsSet)initWithBitMask:(unint64_t)mask
{
  v5.receiver = self;
  v5.super_class = SISensitiveConditionsSet;
  result = [(SISensitiveConditionsSet *)&v5 init];
  if (result)
  {
    result->_bitmask = mask;
  }

  return result;
}

+ (id)fromDeviceSensitivityState:(int)state
{
  state = [[SISensitiveConditionsSet alloc] initWithBitMask:1 << state];

  return state;
}

@end