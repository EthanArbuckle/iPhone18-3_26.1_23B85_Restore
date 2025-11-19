@interface UICellAccessoryDelete
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UICellAccessoryDelete)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UICellAccessoryDelete

- (UICellAccessoryDelete)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryDelete;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setDisplayedState:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = UICellAccessoryDelete;
  v4 = [(UICellAccessory *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [self->_actionHandler copy];
    v6 = v4[7];
    v4[7] = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICellAccessoryDelete;
  if ([(UICellAccessory *)&v7 isEqual:v4])
  {
    v5 = self->_actionHandler == v4[7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICellAccessoryDelete;
  return [(UICellAccessory *)&v4 _canDirectlyUpdateExistingAccessoryViewFrom:a3];
}

@end