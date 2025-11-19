@interface SWDeclareSystemActivityResult
- (SWDeclareSystemActivityResult)initWithReturnValue:(int)a3 assertionID:(unsigned int)a4 systemState:(int)a5;
- (id)description;
@end

@implementation SWDeclareSystemActivityResult

- (SWDeclareSystemActivityResult)initWithReturnValue:(int)a3 assertionID:(unsigned int)a4 systemState:(int)a5
{
  v9.receiver = self;
  v9.super_class = SWDeclareSystemActivityResult;
  result = [(SWDeclareSystemActivityResult *)&v9 init];
  if (result)
  {
    result->_returnValue = a3;
    result->_assertionID = a4;
    result->_systemState = a5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_returnValue withName:@"returnValue"];
  v5 = [v3 appendInt:self->_assertionID withName:@"assertionID"];
  v6 = [v3 appendInt:self->_systemState withName:@"systemState"];
  v7 = [v3 build];

  return v7;
}

@end