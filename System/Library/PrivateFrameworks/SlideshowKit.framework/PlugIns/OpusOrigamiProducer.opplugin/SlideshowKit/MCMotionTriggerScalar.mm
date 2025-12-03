@interface MCMotionTriggerScalar
+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key duration:(double)duration andValue:(double)value;
- (MCMotionTriggerScalar)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
@end

@implementation MCMotionTriggerScalar

+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key duration:(double)duration andValue:(double)value
{
  result = [MCMotionTriggerScalar motionTriggerForTargetPlugObjectID:d withKey:key andDuration:duration];
  *(result + 7) = value;
  return result;
}

- (MCMotionTriggerScalar)initWithImprint:(id)imprint
{
  v9.receiver = self;
  v9.super_class = MCMotionTriggerScalar;
  v4 = [(MCMotionTrigger *)&v9 initWithImprint:?];
  if (v4)
  {
    v5 = [imprint objectForKey:@"value"];
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
  imprint = [(MCMotionTrigger *)&v6 imprint];
  value = self->_value;
  if (value != 0.0)
  {
    *&value = value;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", value), @"value"}];
  }

  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = MCMotionTriggerScalar;
  [(MCMotionTrigger *)&v5 _copySelfToSnapshot:?];
  *(snapshot + 7) = *&self->_value;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTriggerScalar;
  return [-[MCMotionTrigger description](&v3 "description")];
}

@end