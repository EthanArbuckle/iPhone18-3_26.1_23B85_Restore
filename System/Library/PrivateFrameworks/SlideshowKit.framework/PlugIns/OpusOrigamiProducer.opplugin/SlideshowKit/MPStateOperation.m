@interface MPStateOperation
+ (id)stateOperation;
- (MPStateOperation)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setOperation:(id)a3;
- (void)setStateKey:(id)a3;
@end

@implementation MPStateOperation

+ (id)stateOperation
{
  v2 = objc_alloc_init(MPStateOperation);

  return v2;
}

- (MPStateOperation)init
{
  v3.receiver = self;
  v3.super_class = MPStateOperation;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_operation = 0;
    result->_stateKey = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPStateOperation;
  [(MPAction *)&v3 dealloc];
}

- (void)setOperation:(id)a3
{
  operation = self->_operation;
  if (operation)
  {

    self->_operation = 0;
  }

  self->_operation = [a3 copy];
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setExpression:a3];
  }
}

- (void)setStateKey:(id)a3
{
  stateKey = self->_stateKey;
  if (stateKey)
  {

    self->_stateKey = 0;
  }

  self->_stateKey = [a3 copy];
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setStateKey:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPStateOperation;
  v4 = [(MPAction *)&v6 copyWithZone:a3];
  [v4 setOperation:self->_operation];
  [v4 setStateKey:self->_stateKey];
  return v4;
}

- (void)setAction:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPStateOperation;
  [(MPAction *)&v5 setAction:a3];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setExpression:self->_operation];
    [(MCAction *)self->super._action setStateKey:self->_stateKey];
  }
}

@end