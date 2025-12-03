@interface UICellAccessoryReorder
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryReorder)init;
- (UICellAccessoryReorder)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (UICellAccessoryReorder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  v5 = [(UICellAccessory *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_showsVerticalSeparator = [coderCopy decodeBoolForKey:@"showsVerticalSeparator"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryReorder;
  coderCopy = coder;
  [(UICellAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_showsVerticalSeparator forKey:{@"showsVerticalSeparator", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryReorder;
  result = [(UICellAccessory *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 56) = self->_showsVerticalSeparator;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  if ([(UICellAccessory *)&v7 isEqual:equalCopy])
  {
    v5 = self->_showsVerticalSeparator == equalCopy[56];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from
{
  fromCopy = from;
  v7.receiver = self;
  v7.super_class = UICellAccessoryReorder;
  if ([(UICellAccessory *)&v7 _canDirectlyUpdateExistingAccessoryViewFrom:fromCopy])
  {
    v5 = self->_showsVerticalSeparator == fromCopy[56];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end