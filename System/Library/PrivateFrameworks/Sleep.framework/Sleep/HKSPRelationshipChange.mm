@interface HKSPRelationshipChange
- (BOOL)isAdd;
- (BOOL)isRemove;
- (BOOL)isUpdate;
- (id)deepCopy;
@end

@implementation HKSPRelationshipChange

- (BOOL)isAdd
{
  v3 = [(HKSPChange *)self changedValue];
  if (v3)
  {
    v4 = [(HKSPChange *)self originalValue];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isUpdate
{
  v3 = [(HKSPChange *)self changedValue];
  if (v3)
  {
    v4 = [(HKSPChange *)self originalValue];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRemove
{
  v3 = [(HKSPChange *)self changedValue];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HKSPChange *)self originalValue];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)deepCopy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(HKSPChange *)self property];
  v5 = [v4 copy];
  v6 = [(HKSPChange *)self changedValue];
  v7 = [v6 mutableCopy];
  v8 = [(HKSPChange *)self originalValue];
  v9 = [v8 copyWithZone:0];
  v10 = [v3 initWithProperty:v5 changedValue:v7 originalValue:v9];

  return v10;
}

@end