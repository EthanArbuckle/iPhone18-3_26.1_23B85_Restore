@interface _UICellAccessoryConfigurationDelete
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UICellAccessoryConfigurationDelete

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UICellAccessoryConfigurationDelete;
  v4 = [(_UICellAccessoryConfiguration *)&v8 copyWithZone:zone];
  if (v4)
  {
    v5 = [self->_actionHandler copy];
    v6 = v4[4];
    v4[4] = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationDelete;
  if ([(_UICellAccessoryConfiguration *)&v7 isEqual:equalCopy])
  {
    v5 = self->_actionHandler == equalCopy[4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end