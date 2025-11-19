@interface MCStateOperationExpression
+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4 andExpression:(id)a5;
- (MCStateOperationExpression)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCStateOperationExpression

+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4 andExpression:(id)a5
{
  v6 = [MCStateOperationExpression stateOperationForTargetPlugObjectID:a3 withStateKey:a4];
  v6[4] = [a5 copy];
  return v6;
}

- (MCStateOperationExpression)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCStateOperationExpression;
  v4 = [(MCStateOperation *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_expression = [a3 objectForKey:@"expression"];
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
  v3 = [(MCStateOperation *)&v7 imprint];
  v4 = v3;
  expression = self->_expression;
  if (expression)
  {
    [v3 setObject:expression forKey:@"expression"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCStateOperationExpression;
  [(MCStateOperation *)&v6 _copySelfToSnapshot:?];
  expression = self->_expression;
  if (expression)
  {
    *(a3 + 4) = [(NSString *)expression copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperationExpression;
  return [-[MCStateOperation description](&v3 "description")];
}

@end