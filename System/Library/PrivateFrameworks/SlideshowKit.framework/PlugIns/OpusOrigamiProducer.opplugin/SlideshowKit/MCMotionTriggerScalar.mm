@interface MCMotionTriggerScalar
+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 duration:(double)a5 andValue:(double)a6;
- (MCMotionTriggerScalar)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
@end

@implementation MCMotionTriggerScalar

+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 duration:(double)a5 andValue:(double)a6
{
  result = [MCMotionTriggerScalar motionTriggerForTargetPlugObjectID:a3 withKey:a4 andDuration:a5];
  *(result + 7) = a6;
  return result;
}

- (MCMotionTriggerScalar)initWithImprint:(id)a3
{
  v9.receiver = self;
  v9.super_class = MCMotionTriggerScalar;
  v4 = [(MCMotionTrigger *)&v9 initWithImprint:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"value"];
    if (v5)
    {
      [v5 floatValue];
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }

    v4->_value = v7;
  }

  return v4;
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCMotionTriggerScalar;
  v3 = [(MCMotionTrigger *)&v6 imprint];
  value = self->_value;
  if (value != 0.0)
  {
    *&value = value;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", value), @"value"}];
  }

  return v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v5.receiver = self;
  v5.super_class = MCMotionTriggerScalar;
  [(MCMotionTrigger *)&v5 _copySelfToSnapshot:?];
  *(a3 + 7) = *&self->_value;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTriggerScalar;
  return [-[MCMotionTrigger description](&v3 "description")];
}

@end