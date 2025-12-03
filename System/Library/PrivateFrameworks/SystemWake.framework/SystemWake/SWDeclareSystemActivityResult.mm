@interface SWDeclareSystemActivityResult
- (SWDeclareSystemActivityResult)initWithReturnValue:(int)value assertionID:(unsigned int)d systemState:(int)state;
- (id)description;
@end

@implementation SWDeclareSystemActivityResult

- (SWDeclareSystemActivityResult)initWithReturnValue:(int)value assertionID:(unsigned int)d systemState:(int)state
{
  v9.receiver = self;
  v9.super_class = SWDeclareSystemActivityResult;
  result = [(SWDeclareSystemActivityResult *)&v9 init];
  if (result)
  {
    result->_returnValue = value;
    result->_assertionID = d;
    result->_systemState = state;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_returnValue withName:@"returnValue"];
  v5 = [v3 appendInt:self->_assertionID withName:@"assertionID"];
  v6 = [v3 appendInt:self->_systemState withName:@"systemState"];
  build = [v3 build];

  return build;
}

@end