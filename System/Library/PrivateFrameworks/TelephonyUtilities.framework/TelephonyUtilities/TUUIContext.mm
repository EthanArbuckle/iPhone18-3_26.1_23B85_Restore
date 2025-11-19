@interface TUUIContext
- (TUUIContext)initWithCoder:(id)a3;
- (TUUIContext)initWithState:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUUIContext

- (TUUIContext)initWithState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TUUIContext;
  result = [(TUUIContext *)&v5 init];
  if (result)
  {
    result->_inCallUIState = a3;
  }

  return result;
}

- (TUUIContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUUIContext *)self init];
  if (v5)
  {
    -[TUUIContext setInCallUIState:](v5, "setInCallUIState:", [v4 decodeIntegerForKey:@"inCallUIState"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[TUUIContext inCallUIState](self forKey:{"inCallUIState"), @"inCallUIState"}];
}

@end