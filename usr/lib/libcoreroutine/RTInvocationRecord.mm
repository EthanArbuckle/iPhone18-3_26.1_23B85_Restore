@interface RTInvocationRecord
- (RTInvocationRecord)initWithBlock:(id)block failureBlock:(id)failureBlock description:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
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

- (RTInvocationRecord)initWithBlock:(id)block failureBlock:(id)failureBlock description:(id)description
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = RTInvocationRecord;
  v11 = [(RTInvocationRecord *)&v19 init];
  if (v11)
  {
    v12 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v12;

    v14 = [failureBlockCopy copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v14;

    v16 = [descriptionCopy copy];
    invocationDescription = v11->_invocationDescription;
    v11->_invocationDescription = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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