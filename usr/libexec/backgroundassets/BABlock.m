@interface BABlock
- (BABlock)initWithToken:(id)a3 block:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation BABlock

- (BABlock)initWithToken:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BABlock;
  v9 = [(BABlock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, a3);
    v11 = objc_retainBlock(v8);
    block = v10->_block;
    v10->_block = v11;

    fireByTimer = v10->_fireByTimer;
    v10->_fireByTimer = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ([(BABlock *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(BABlock *)v5 token];
    v7 = [(BABlock *)self token];
    v8 = [v6 isEqual:v7];
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
  v2 = [(BABlock *)self token];
  v3 = [v2 hash];

  return v3;
}

@end