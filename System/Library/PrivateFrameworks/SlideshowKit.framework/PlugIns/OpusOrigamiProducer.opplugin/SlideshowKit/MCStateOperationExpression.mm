@interface MCStateOperationExpression
+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andExpression:(id)expression;
- (MCStateOperationExpression)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCStateOperationExpression

+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andExpression:(id)expression
{
  v6 = [MCStateOperationExpression stateOperationForTargetPlugObjectID:d withStateKey:key];
  v6[4] = [expression copy];
  return v6;
}

- (MCStateOperationExpression)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCStateOperationExpression;
  v4 = [(MCStateOperation *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_expression = [imprint objectForKey:@"expression"];
  }

  return v4;
}

- (void)demolish
{
  self->_expression = 0;
  v3.receiver = self;
  v3.super_class = MCStateOperationExpression;
  [(MCStateOperation *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCStateOperationExpression;
  imprint = [(MCStateOperation *)&v7 imprint];
  v4 = imprint;
  expression = self->_expression;
  if (expression)
  {
    [imprint setObject:expression forKey:@"expression"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCStateOperationExpression;
  [(MCStateOperation *)&v6 _copySelfToSnapshot:?];
  expression = self->_expression;
  if (expression)
  {
    *(snapshot + 4) = [(NSString *)expression copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperationExpression;
  return [-[MCStateOperation description](&v3 "description")];
}

@end