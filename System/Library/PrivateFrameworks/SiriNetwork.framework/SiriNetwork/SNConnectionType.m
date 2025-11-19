@interface SNConnectionType
- (SNConnectionType)initWithTechnology:(int64_t)a3;
- (id)description;
@end

@implementation SNConnectionType

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(SNConnectionTypeInternal *)self->_underlyingConnectionType connectionTypeStringRawValue];
  v6 = [v3 initWithFormat:@"<%p %@: technology=%@>", self, v4, v5];

  return v6;
}

- (SNConnectionType)initWithTechnology:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SNConnectionType;
  v4 = [(SNConnectionType *)&v8 init];
  if (v4)
  {
    v5 = [[SNConnectionTypeInternal alloc] init:a3];
    underlyingConnectionType = v4->_underlyingConnectionType;
    v4->_underlyingConnectionType = v5;
  }

  return v4;
}

@end