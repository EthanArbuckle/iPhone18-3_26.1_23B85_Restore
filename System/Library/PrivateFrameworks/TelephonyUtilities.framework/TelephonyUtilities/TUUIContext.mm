@interface TUUIContext
- (TUUIContext)initWithCoder:(id)coder;
- (TUUIContext)initWithState:(unint64_t)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUUIContext

- (TUUIContext)initWithState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = TUUIContext;
  result = [(TUUIContext *)&v5 init];
  if (result)
  {
    result->_inCallUIState = state;
  }

  return result;
}

- (TUUIContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUUIContext *)self init];
  if (v5)
  {
    -[TUUIContext setInCallUIState:](v5, "setInCallUIState:", [coderCopy decodeIntegerForKey:@"inCallUIState"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[TUUIContext inCallUIState](self forKey:{"inCallUIState"), @"inCallUIState"}];
}

@end