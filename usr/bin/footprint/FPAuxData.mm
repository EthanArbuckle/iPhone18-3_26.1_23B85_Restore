@interface FPAuxData
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsFormattedValue;
- (FPAuxData)initWithValue:(int64_t)a3 shouldAggregate:(BOOL)a4;
- (const)formattedValue;
- (id)description;
@end

@implementation FPAuxData

- (FPAuxData)initWithValue:(int64_t)a3 shouldAggregate:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = FPAuxData;
  result = [(FPAuxData *)&v7 init];
  if (result)
  {
    result->_aggregate = a4;
    result->_value = a3;
  }

  return result;
}

- (id)description
{
  if ([(FPAuxData *)self supportsFormattedValue])
  {
    v3 = [NSString stringWithFormat:@"%s", [(FPAuxData *)self formattedValue]];
  }

  else
  {
    v4 = [NSNumber numberWithLongLong:[(FPAuxData *)self value]];
    v3 = [v4 stringValue];
  }

  return v3;
}

- (BOOL)supportsFormattedValue
{
  v2 = [(FPAuxData *)self formatter];
  v3 = v2 != 0;

  return v3;
}

- (const)formattedValue
{
  v3 = [(FPAuxData *)self formatter];
  v4 = v3[2](v3, [(FPAuxData *)self value]);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == v4[2];

  return v5;
}

@end