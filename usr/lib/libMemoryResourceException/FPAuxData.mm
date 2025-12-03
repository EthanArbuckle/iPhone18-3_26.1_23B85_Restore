@interface FPAuxData
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsFormattedValue;
- (FPAuxData)initWithValue:(int64_t)value shouldAggregate:(BOOL)aggregate;
- (const)formattedValue;
- (id)description;
@end

@implementation FPAuxData

- (FPAuxData)initWithValue:(int64_t)value shouldAggregate:(BOOL)aggregate
{
  v7.receiver = self;
  v7.super_class = FPAuxData;
  result = [(FPAuxData *)&v7 init];
  if (result)
  {
    result->_aggregate = aggregate;
    result->_value = value;
  }

  return result;
}

- (id)description
{
  if ([(FPAuxData *)self supportsFormattedValue])
  {
    stringValue = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", -[FPAuxData formattedValue](self, "formattedValue")];
  }

  else
  {
    v4 = [MEMORY[0x29EDBA070] numberWithLongLong:{-[FPAuxData value](self, "value")}];
    stringValue = [v4 stringValue];
  }

  return stringValue;
}

- (BOOL)supportsFormattedValue
{
  formatter = [(FPAuxData *)self formatter];
  v3 = formatter != 0;

  return v3;
}

- (const)formattedValue
{
  formatter = [(FPAuxData *)self formatter];
  v4 = formatter[2](formatter, [(FPAuxData *)self value]);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy[2];

  return v5;
}

@end