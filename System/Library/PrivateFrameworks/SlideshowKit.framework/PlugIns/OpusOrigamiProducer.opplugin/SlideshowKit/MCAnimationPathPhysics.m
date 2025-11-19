@interface MCAnimationPathPhysics
- (MCAnimationPathPhysics)initWithImprint:(id)a3;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
@end

@implementation MCAnimationPathPhysics

- (MCAnimationPathPhysics)initWithImprint:(id)a3
{
  v9.receiver = self;
  v9.super_class = MCAnimationPathPhysics;
  v4 = [(MCAnimationPath *)&v9 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(a3 objectForKey:{@"staticFriction", "floatValue"}];
    v4->_staticFriction = v5;
    [objc_msgSend(a3 objectForKey:{@"kineticFriction", "floatValue"}];
    v4->_kineticFriction = v6;
    [objc_msgSend(a3 objectForKey:{@"skinFriction", "floatValue"}];
    v4->_skinFriction = v7;
  }

  return v4;
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCAnimationPathPhysics;
  v3 = [(MCAnimationPath *)&v5 imprint];
  if (self->_staticFriction != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"staticFriction"}];
  }

  if (self->_kineticFriction != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"kineticFriction"}];
  }

  if (self->_skinFriction != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"skinFriction"}];
  }

  return v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v5.receiver = self;
  v5.super_class = MCAnimationPathPhysics;
  [(MCAnimationPath *)&v5 _copySelfToSnapshot:?];
  *(a3 + 6) = LODWORD(self->_staticFriction);
  *(a3 + 7) = LODWORD(self->_kineticFriction);
  *(a3 + 8) = LODWORD(self->_skinFriction);
}

@end