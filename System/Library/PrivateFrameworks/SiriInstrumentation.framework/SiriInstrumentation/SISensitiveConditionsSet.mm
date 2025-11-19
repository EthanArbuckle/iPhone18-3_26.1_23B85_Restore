@interface SISensitiveConditionsSet
+ (id)fromDeviceSensitivityState:(int)a3;
- (BOOL)isEqual:(id)a3;
- (SISensitiveConditionsSet)initWithBitMask:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)differenceSetFrom:(id)a3;
- (id)intersectionSetWith:(id)a3;
- (id)unionSetWith:(id)a3;
@end

@implementation SISensitiveConditionsSet

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SISensitiveConditionsSet *)self isEqualToConditionsSet:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SISensitiveConditionsSet alloc];
  bitmask = self->_bitmask;

  return [(SISensitiveConditionsSet *)v4 initWithBitMask:bitmask];
}

- (id)intersectionSetWith:(id)a3
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:*(a3 + 1) & self->_bitmask];

  return v3;
}

- (id)differenceSetFrom:(id)a3
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:self->_bitmask & ~*(a3 + 1)];

  return v3;
}

- (id)unionSetWith:(id)a3
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:*(a3 + 1) | self->_bitmask];

  return v3;
}

- (SISensitiveConditionsSet)initWithBitMask:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SISensitiveConditionsSet;
  result = [(SISensitiveConditionsSet *)&v5 init];
  if (result)
  {
    result->_bitmask = a3;
  }

  return result;
}

+ (id)fromDeviceSensitivityState:(int)a3
{
  v3 = [[SISensitiveConditionsSet alloc] initWithBitMask:1 << a3];

  return v3;
}

@end