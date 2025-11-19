@interface MCMotionTriggerExpression
+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 duration:(double)a5 andExpression:(id)a6;
- (MCMotionTriggerExpression)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCMotionTriggerExpression

+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 duration:(double)a5 andExpression:(id)a6
{
  v7 = [MCMotionTriggerExpression motionTriggerForTargetPlugObjectID:a3 withKey:a4 andDuration:a5];
  [v7 setExpression:a6];
  return v7;
}

- (MCMotionTriggerExpression)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCMotionTriggerExpression;
  v4 = [(MCMotionTrigger *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_expression = [a3 objectForKey:@"expression"];
    v4->_attributes = [a3 objectForKey:@"attributes"];
  }

  return v4;
}

- (void)demolish
{
  self->_expression = 0;

  self->_attributes = 0;
  v3.receiver = self;
  v3.super_class = MCMotionTriggerExpression;
  [(MCMotionTrigger *)&v3 demolish];
}

- (id)imprint
{
  v8.receiver = self;
  v8.super_class = MCMotionTriggerExpression;
  v3 = [(MCMotionTrigger *)&v8 imprint];
  v4 = v3;
  expression = self->_expression;
  if (expression)
  {
    [v3 setObject:expression forKey:@"expression"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [v4 setObject:attributes forKey:@"attributes"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCMotionTriggerExpression;
  [(MCMotionTrigger *)&v7 _copySelfToSnapshot:?];
  expression = self->_expression;
  if (expression)
  {
    *(a3 + 7) = [(NSString *)expression copy];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    *(a3 + 8) = [(NSDictionary *)attributes copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTriggerExpression;
  return [-[MCMotionTrigger description](&v3 "description")];
}

@end