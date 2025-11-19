@interface _UIBackgroundColorViewEntry
- (id)description;
- (void)applyIdentityEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UIBackgroundColorViewEntry

- (void)applyIdentityEffectToView:(id)a3
{
  v3 = a3;
  v4 = [v3 _nilBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)removeEffectFromView:(id)a3
{
  v3 = a3;
  v4 = [v3 _nilBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIBackgroundColorViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" color=%@", self->_color];

  return v4;
}

@end