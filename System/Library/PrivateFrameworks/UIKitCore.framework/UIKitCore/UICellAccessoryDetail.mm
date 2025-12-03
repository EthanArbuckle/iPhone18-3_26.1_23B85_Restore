@interface UICellAccessoryDetail
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICellAccessoryDetail

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = UICellAccessoryDetail;
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
  v7.super_class = UICellAccessoryDetail;
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
  v4.super_class = UICellAccessoryDetail;
  return [(UICellAccessory *)&v4 _canDirectlyUpdateExistingAccessoryViewFrom:from];
}

@end