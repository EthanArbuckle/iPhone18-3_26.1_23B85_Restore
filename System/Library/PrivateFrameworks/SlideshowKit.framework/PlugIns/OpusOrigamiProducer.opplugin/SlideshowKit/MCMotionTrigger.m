@interface MCMotionTrigger
+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 andDuration:(double)a5;
- (MCMotionTrigger)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCMotionTrigger

+ (id)motionTriggerForTargetPlugObjectID:(id)a3 withKey:(id)a4 andDuration:(double)a5
{
  v8 = objc_alloc_init(a1);
  [v8 setTargetObjectID:a3];
  [v8 setKey:a4];
  v8[4] = a5;

  return v8;
}

- (MCMotionTrigger)initWithImprint:(id)a3
{
  v14.receiver = self;
  v14.super_class = MCMotionTrigger;
  v4 = [(MCAction *)&v14 initWithImprint:?];
  if (v4)
  {
    v4->_key = [a3 objectForKey:@"key"];
    v5 = [a3 objectForKey:@"duration"];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      [v5 doubleValue];
    }

    v4->_duration = v7;
    v8 = [a3 objectForKey:@"easeIn"];
    if (v8)
    {
      [v8 floatValue];
      v6 = v9;
    }

    v4->_easeIn = v6;
    v10 = [a3 objectForKey:@"easeOut"];
    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
    }

    else
    {
      v12 = 1.0;
    }

    v4->_easeOut = v12;
  }

  return v4;
}

- (void)demolish
{
  self->_key = 0;
  v3.receiver = self;
  v3.super_class = MCMotionTrigger;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v9.receiver = self;
  v9.super_class = MCMotionTrigger;
  v3 = [(MCAction *)&v9 imprint];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if (self->_duration != 0.0)
  {
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duration"}];
  }

  easeIn = self->_easeIn;
  if (easeIn != 0.0)
  {
    *&easeIn = easeIn;
    [v4 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", easeIn), @"easeIn"}];
  }

  easeOut = self->_easeOut;
  if (easeOut != 1.0)
  {
    *&easeOut = easeOut;
    [v4 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", easeOut), @"easeOut"}];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCMotionTrigger;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  key = self->_key;
  if (key)
  {
    *(a3 + 3) = [(NSString *)key copy];
  }

  *(a3 + 4) = *&self->_duration;
  *(a3 + 5) = *&self->_easeIn;
  *(a3 + 6) = *&self->_easeOut;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end