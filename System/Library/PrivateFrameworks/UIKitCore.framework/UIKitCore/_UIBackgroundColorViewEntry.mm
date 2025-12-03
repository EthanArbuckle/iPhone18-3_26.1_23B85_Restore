@interface _UIBackgroundColorViewEntry
- (id)description;
- (void)applyIdentityEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UIBackgroundColorViewEntry

- (void)applyIdentityEffectToView:(id)view
{
  viewCopy = view;
  _nilBackgroundColor = [viewCopy _nilBackgroundColor];
  [viewCopy setBackgroundColor:_nilBackgroundColor];
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  _nilBackgroundColor = [viewCopy _nilBackgroundColor];
  [viewCopy setBackgroundColor:_nilBackgroundColor];
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