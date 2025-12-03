@interface MTPropertyChangeQueryObserver
- (NSArray)propertyKeys;
- (id)_frc;
- (void)setPropertyKeys:(id)keys;
@end

@implementation MTPropertyChangeQueryObserver

- (id)_frc
{
  v4.receiver = self;
  v4.super_class = MTPropertyChangeQueryObserver;
  _frc = [(MTBaseQueryObserver *)&v4 _frc];

  return _frc;
}

- (void)setPropertyKeys:(id)keys
{
  keysCopy = keys;
  _frc = [(MTPropertyChangeQueryObserver *)self _frc];
  [_frc setPropertyKeys:keysCopy];
}

- (NSArray)propertyKeys
{
  _frc = [(MTPropertyChangeQueryObserver *)self _frc];
  propertyKeys = [_frc propertyKeys];

  return propertyKeys;
}

@end