@interface MCAnimationPathPhysics
- (MCAnimationPathPhysics)initWithImprint:(id)imprint;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
@end

@implementation MCAnimationPathPhysics

- (MCAnimationPathPhysics)initWithImprint:(id)imprint
{
  v9.receiver = self;
  v9.super_class = MCAnimationPathPhysics;
  v4 = [(MCAnimationPath *)&v9 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(imprint objectForKey:{@"staticFriction", "floatValue"}];
    v4->_staticFriction = v5;
    [objc_msgSend(imprint objectForKey:{@"kineticFriction", "floatValue"}];
    v4->_kineticFriction = v6;
    [objc_msgSend(imprint objectForKey:{@"skinFriction", "floatValue"}];
    v4->_skinFriction = v7;
  }

  return v4;
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCAnimationPathPhysics;
  imprint = [(MCAnimationPath *)&v5 imprint];
  if (self->_staticFriction != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"staticFriction"}];
  }

  if (self->_kineticFriction != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"kineticFriction"}];
  }

  if (self->_skinFriction != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"skinFriction"}];
  }

  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = MCAnimationPathPhysics;
  [(MCAnimationPath *)&v5 _copySelfToSnapshot:?];
  *(snapshot + 6) = LODWORD(self->_staticFriction);
  *(snapshot + 7) = LODWORD(self->_kineticFriction);
  *(snapshot + 8) = LODWORD(self->_skinFriction);
}

@end