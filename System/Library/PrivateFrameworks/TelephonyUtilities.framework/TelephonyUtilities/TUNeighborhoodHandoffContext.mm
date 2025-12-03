@interface TUNeighborhoodHandoffContext
- (TUNeighborhoodHandoffContext)initWithCoder:(id)coder;
- (TUNeighborhoodHandoffContext)initWithHandoffType:(int64_t)type;
- (TUNeighborhoodHandoffContext)initWithPullContext:(int64_t)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNeighborhoodHandoffContext

- (TUNeighborhoodHandoffContext)initWithHandoffType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = TUNeighborhoodHandoffContext;
  result = [(TUNeighborhoodHandoffContext *)&v5 init];
  if (result)
  {
    result->_type = type;
    result->_pullContext = 0;
  }

  return result;
}

- (TUNeighborhoodHandoffContext)initWithPullContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = TUNeighborhoodHandoffContext;
  result = [(TUNeighborhoodHandoffContext *)&v5 init];
  if (result)
  {
    result->_type = 1;
    result->_pullContext = context;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  v7 = self->_type - 1;
  if (v7 > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E7425138[v7];
  }

  [v6 appendFormat:@" type=%@", v8];
  v9 = self->_pullContext - 1;
  if (v9 > 4)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_1E7425158[v9];
  }

  [v6 appendFormat:@" pullContext=%@", v10];
  [v6 appendString:@">"];
  v11 = [v6 copy];

  return v11;
}

- (TUNeighborhoodHandoffContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_type);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_pullContext);
  v8 = [coderCopy decodeIntegerForKey:v7];

  if (v6 == 1)
  {

    return [(TUNeighborhoodHandoffContext *)self initWithPullContext:v8];
  }

  else
  {

    return [(TUNeighborhoodHandoffContext *)self initWithHandoffType:v6];
  }
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  pullContext = self->_pullContext;
  v8 = NSStringFromSelector(sel_pullContext);
  [coderCopy encodeInteger:pullContext forKey:v8];
}

@end