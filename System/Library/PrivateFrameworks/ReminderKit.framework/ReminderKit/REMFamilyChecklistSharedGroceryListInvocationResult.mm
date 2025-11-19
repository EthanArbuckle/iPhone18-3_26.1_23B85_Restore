@interface REMFamilyChecklistSharedGroceryListInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithCoder:(id)a3;
- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithSharedGroceryLists:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistSharedGroceryListInvocationResult

- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithSharedGroceryLists:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistSharedGroceryListInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedGroceryListsWithCommonSharees, a3);
  }

  return v7;
}

- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"sharedGroceryListsWithCommonSharees"];

  if (v8)
  {
    self = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self initWithSharedGroceryLists:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
  [v4 encodeObject:v5 forKey:@"sharedGroceryListsWithCommonSharees"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
    v6 = [v4 sharedGroceryListsWithCommonSharees];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
      v8 = [v4 sharedGroceryListsWithCommonSharees];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
  v3 = [v2 hash];

  return v3;
}

@end