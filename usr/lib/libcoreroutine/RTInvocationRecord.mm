@interface RTInvocationRecord
- (RTInvocationRecord)initWithBlock:(id)a3 failureBlock:(id)a4 description:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)invoke;
- (void)invokeFailure;
@end

@implementation RTInvocationRecord

- (void)invoke
{
  block = self->_block;
  if (block)
  {
    block[2]();
  }
}

- (RTInvocationRecord)initWithBlock:(id)a3 failureBlock:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = RTInvocationRecord;
  v11 = [(RTInvocationRecord *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    block = v11->_block;
    v11->_block = v12;

    v14 = [v9 copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v14;

    v16 = [v10 copy];
    invocationDescription = v11->_invocationDescription;
    v11->_invocationDescription = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  block = self->_block;
  failureBlock = self->_failureBlock;
  invocationDescription = self->_invocationDescription;

  return [v4 initWithBlock:block failureBlock:failureBlock description:invocationDescription];
}

- (void)invokeFailure
{
  failureBlock = self->_failureBlock;
  if (failureBlock)
  {
    failureBlock[2]();
  }
}

@end