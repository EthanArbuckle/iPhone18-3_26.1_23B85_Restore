@interface HKSPRelationshipChange
- (BOOL)isAdd;
- (BOOL)isRemove;
- (BOOL)isUpdate;
- (id)deepCopy;
@end

@implementation HKSPRelationshipChange

- (BOOL)isAdd
{
  changedValue = [(HKSPChange *)self changedValue];
  if (changedValue)
  {
    originalValue = [(HKSPChange *)self originalValue];
    v5 = originalValue == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isUpdate
{
  changedValue = [(HKSPChange *)self changedValue];
  if (changedValue)
  {
    originalValue = [(HKSPChange *)self originalValue];
    v5 = originalValue != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRemove
{
  changedValue = [(HKSPChange *)self changedValue];
  if (changedValue)
  {
    v4 = 0;
  }

  else
  {
    originalValue = [(HKSPChange *)self originalValue];
    v4 = originalValue != 0;
  }

  return v4;
}

- (id)deepCopy
{
  v3 = objc_alloc(objc_opt_class());
  property = [(HKSPChange *)self property];
  v5 = [property copy];
  changedValue = [(HKSPChange *)self changedValue];
  v7 = [changedValue mutableCopy];
  originalValue = [(HKSPChange *)self originalValue];
  v9 = [originalValue copyWithZone:0];
  v10 = [v3 initWithProperty:v5 changedValue:v7 originalValue:v9];

  return v10;
}

@end