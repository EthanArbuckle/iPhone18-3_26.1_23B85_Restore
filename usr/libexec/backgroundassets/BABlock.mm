@interface BABlock
- (BABlock)initWithToken:(id)token block:(id)block;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation BABlock

- (BABlock)initWithToken:(id)token block:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = BABlock;
  v9 = [(BABlock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, token);
    v11 = objc_retainBlock(blockCopy);
    block = v10->_block;
    v10->_block = v11;

    fireByTimer = v10->_fireByTimer;
    v10->_fireByTimer = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ([(BABlock *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    token = [(BABlock *)v5 token];
    token2 = [(BABlock *)self token];
    v8 = [token isEqual:token2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  token = [(BABlock *)self token];
  v3 = [token hash];

  return v3;
}

@end