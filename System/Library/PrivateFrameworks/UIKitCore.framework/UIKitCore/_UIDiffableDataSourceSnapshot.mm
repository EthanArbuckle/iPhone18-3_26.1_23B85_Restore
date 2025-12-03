@interface _UIDiffableDataSourceSnapshot
- (id)dsImpl;
@end

@implementation _UIDiffableDataSourceSnapshot

- (id)dsImpl
{
  v4.receiver = self;
  v4.super_class = _UIDiffableDataSourceSnapshot;
  _impl = [(_UIDiffableDataSource *)&v4 _impl];

  return _impl;
}

@end