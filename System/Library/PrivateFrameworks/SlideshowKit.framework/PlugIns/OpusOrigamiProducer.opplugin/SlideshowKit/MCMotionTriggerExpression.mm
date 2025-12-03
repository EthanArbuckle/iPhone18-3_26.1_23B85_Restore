@interface MCMotionTriggerExpression
+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key duration:(double)duration andExpression:(id)expression;
- (MCMotionTriggerExpression)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCMotionTriggerExpression

+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key duration:(double)duration andExpression:(id)expression
{
  v7 = [MCMotionTriggerExpression motionTriggerForTargetPlugObjectID:d withKey:key andDuration:duration];
  [v7 setExpression:expression];
  return v7;
}

- (MCMotionTriggerExpression)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCMotionTriggerExpression;
  v4 = [(MCMotionTrigger *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_expression = [imprint objectForKey:@"expression"];
    v4->_attributes = [imprint objectForKey:@"attributes"];
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
  imprint = [(MCMotionTrigger *)&v8 imprint];
  v4 = imprint;
  expression = self->_expression;
  if (expression)
  {
    [imprint setObject:expression forKey:@"expression"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    [v4 setObject:attributes forKey:@"attributes"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v7.receiver = self;
  v7.super_class = MCMotionTriggerExpression;
  [(MCMotionTrigger *)&v7 _copySelfToSnapshot:?];
  expression = self->_expression;
  if (expression)
  {
    *(snapshot + 7) = [(NSString *)expression copy];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    *(snapshot + 8) = [(NSDictionary *)attributes copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTriggerExpression;
  return [-[MCMotionTrigger description](&v3 "description")];
}

@end