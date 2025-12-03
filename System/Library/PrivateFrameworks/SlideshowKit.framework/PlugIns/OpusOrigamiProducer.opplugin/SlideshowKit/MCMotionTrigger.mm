@interface MCMotionTrigger
+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key andDuration:(double)duration;
- (MCMotionTrigger)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCMotionTrigger

+ (id)motionTriggerForTargetPlugObjectID:(id)d withKey:(id)key andDuration:(double)duration
{
  v8 = objc_alloc_init(self);
  [v8 setTargetObjectID:d];
  [v8 setKey:key];
  v8[4] = duration;

  return v8;
}

- (MCMotionTrigger)initWithImprint:(id)imprint
{
  v14.receiver = self;
  v14.super_class = MCMotionTrigger;
  v4 = [(MCAction *)&v14 initWithImprint:?];
  if (v4)
  {
    v4->_key = [imprint objectForKey:@"key"];
    v5 = [imprint objectForKey:@"duration"];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      [v5 doubleValue];
    }

    v4->_duration = v7;
    v8 = [imprint objectForKey:@"easeIn"];
    if (v8)
    {
      [v8 floatValue];
      v6 = v9;
    }

    v4->_easeIn = v6;
    v10 = [imprint objectForKey:@"easeOut"];
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
  imprint = [(MCAction *)&v9 imprint];
  v4 = imprint;
  key = self->_key;
  if (key)
  {
    [imprint setObject:key forKey:@"key"];
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

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCMotionTrigger;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  key = self->_key;
  if (key)
  {
    *(snapshot + 3) = [(NSString *)key copy];
  }

  *(snapshot + 4) = *&self->_duration;
  *(snapshot + 5) = *&self->_easeIn;
  *(snapshot + 6) = *&self->_easeOut;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCMotionTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end