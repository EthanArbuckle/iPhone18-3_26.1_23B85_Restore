@interface _UICellAccessoryConfigurationInsert
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UICellAccessoryConfigurationInsert

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UICellAccessoryConfigurationInsert;
  v4 = [(_UICellAccessoryConfiguration *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [self->_actionHandler copy];
    v6 = v4[4];
    v4[4] = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationInsert;
  if ([(_UICellAccessoryConfiguration *)&v7 isEqual:v4])
  {
    v5 = self->_actionHandler == v4[4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end