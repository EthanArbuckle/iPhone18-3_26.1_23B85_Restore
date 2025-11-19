@interface _UICompositingEffectViewEntry
- (BOOL)isSameTypeOfEffect:(id)a3;
- (id)description;
- (void)addEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UICompositingEffectViewEntry

- (void)addEffectToView:(id)a3
{
  filterType = self->_filterType;
  v4 = [a3 layer];
  [v4 setCompositingFilter:filterType];
}

- (void)removeEffectFromView:(id)a3
{
  v3 = [a3 layer];
  [v3 setCompositingFilter:0];
}

- (BOOL)isSameTypeOfEffect:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UICompositingEffectViewEntry;
  if ([(_UIVisualEffectViewEntry *)&v9 isSameTypeOfEffect:v4])
  {
    filterType = self->_filterType;
    v6 = [v4 filterType];
    v7 = [(NSString *)filterType isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UICompositingEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" compositingMode=%@", self->_filterType];

  return v4;
}

@end