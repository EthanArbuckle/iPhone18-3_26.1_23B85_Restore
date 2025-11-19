@interface UICellAccessoryReorder
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UICellAccessoryReorder)init;
- (UICellAccessoryReorder)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UICellAccessoryReorder

- (UICellAccessoryReorder)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryReorder;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setDisplayedState:1];
    v3->_showsVerticalSeparator = 1;
  }

  return v3;
}

- (UICellAccessoryReorder)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  v5 = [(UICellAccessory *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_showsVerticalSeparator = [v4 decodeBoolForKey:@"showsVerticalSeparator"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryReorder;
  v4 = a3;
  [(UICellAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_showsVerticalSeparator forKey:{@"showsVerticalSeparator", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryReorder;
  result = [(UICellAccessory *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 56) = self->_showsVerticalSeparator;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  if ([(UICellAccessory *)&v7 isEqual:v4])
  {
    v5 = self->_showsVerticalSeparator == v4[56];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  if ([(UICellAccessory *)&v7 _canDirectlyUpdateExistingAccessoryViewFrom:v4])
  {
    v5 = self->_showsVerticalSeparator == v4[56];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end