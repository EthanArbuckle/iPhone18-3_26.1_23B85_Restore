@interface UICellAccessoryInsert
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryInsert)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICellAccessoryInsert

- (UICellAccessoryInsert)init
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryInsert;
  v2 = [(UICellAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICellAccessory *)v2 setDisplayedState:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = UICellAccessoryInsert;
  v4 = [(UICellAccessory *)&v8 copyWithZone:zone];
  if (v4)
  {
    v5 = [self->_actionHandler copy];
    v6 = v4[7];
    v4[7] = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UICellAccessoryInsert;
  if ([(UICellAccessory *)&v7 isEqual:equalCopy])
  {
    v5 = self->_actionHandler == equalCopy[7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from
{
  v4.receiver = self;
  v4.super_class = UICellAccessoryInsert;
  return [(UICellAccessory *)&v4 _canDirectlyUpdateExistingAccessoryViewFrom:from];
}

@end