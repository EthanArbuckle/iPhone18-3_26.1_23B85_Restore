@interface REMFamilyChecklistFamilyGroceryListEligibility
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistFamilyGroceryListEligibility)initWithCoder:(id)a3;
- (REMFamilyChecklistFamilyGroceryListEligibility)initWithIsEligible:(BOOL)a3 ineligibilityReasons:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistFamilyGroceryListEligibility

- (REMFamilyChecklistFamilyGroceryListEligibility)initWithIsEligible:(BOOL)a3 ineligibilityReasons:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = REMFamilyChecklistFamilyGroceryListEligibility;
  result = [(REMFamilyChecklistFamilyGroceryListEligibility *)&v7 init];
  if (result)
  {
    result->_isEligible = a3;
    result->_ineligibilityReasons = a4;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  if (([(REMFamilyChecklistFamilyGroceryListEligibility *)self ineligibilityReasons]& 4) != 0)
  {
    [v3 addObject:@".noActivePrimaryCloudKitAccount"];
  }

  if (([(REMFamilyChecklistFamilyGroceryListEligibility *)self ineligibilityReasons]& 0x10) != 0)
  {
    [v3 addObject:@".unsupportedLocale"];
  }

  if (([(REMFamilyChecklistFamilyGroceryListEligibility *)self ineligibilityReasons]& 0x100) != 0)
  {
    [v3 addObject:@".primaryCloudKitAccountNotMigrated"];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMFamilyChecklistFamilyGroceryListEligibility isEligible](self, "isEligible")}];
  v7 = [v4 stringWithFormat:@"<%@: %p isEligible: %@, ineligibilityReasons: %@>", v5, self, v6, v3];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[REMFamilyChecklistFamilyGroceryListEligibility isEligible](self, "isEligible"), v5 == [v4 isEligible]))
  {
    v7 = [(REMFamilyChecklistFamilyGroceryListEligibility *)self ineligibilityReasons];
    v6 = v7 == [v4 ineligibilityReasons];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[REMFamilyChecklistFamilyGroceryListEligibility isEligible](self, "isEligible")}];
  v4 = [v3 hash];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{-[REMFamilyChecklistFamilyGroceryListEligibility ineligibilityReasons](self, "ineligibilityReasons")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (REMFamilyChecklistFamilyGroceryListEligibility)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isEligible"];
  v6 = [v4 decodeIntegerForKey:@"ineligibilityReasons"];

  return [(REMFamilyChecklistFamilyGroceryListEligibility *)self initWithIsEligible:v5 ineligibilityReasons:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMFamilyChecklistFamilyGroceryListEligibility isEligible](self forKey:{"isEligible"), @"isEligible"}];
  [v4 encodeInteger:-[REMFamilyChecklistFamilyGroceryListEligibility ineligibilityReasons](self forKey:{"ineligibilityReasons"), @"ineligibilityReasons"}];
}

@end