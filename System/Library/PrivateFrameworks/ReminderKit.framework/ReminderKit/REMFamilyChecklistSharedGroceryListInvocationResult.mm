@interface REMFamilyChecklistSharedGroceryListInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithCoder:(id)coder;
- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithSharedGroceryLists:(id)lists;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFamilyChecklistSharedGroceryListInvocationResult

- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithSharedGroceryLists:(id)lists
{
  listsCopy = lists;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistSharedGroceryListInvocationResult;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedGroceryListsWithCommonSharees, lists);
  }

  return v7;
}

- (REMFamilyChecklistSharedGroceryListInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sharedGroceryListsWithCommonSharees"];

  if (v8)
  {
    self = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self initWithSharedGroceryLists:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharedGroceryListsWithCommonSharees = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
  [coderCopy encodeObject:sharedGroceryListsWithCommonSharees forKey:@"sharedGroceryListsWithCommonSharees"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sharedGroceryListsWithCommonSharees = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
    sharedGroceryListsWithCommonSharees2 = [equalCopy sharedGroceryListsWithCommonSharees];
    if (sharedGroceryListsWithCommonSharees == sharedGroceryListsWithCommonSharees2)
    {
      v9 = 1;
    }

    else
    {
      sharedGroceryListsWithCommonSharees3 = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
      sharedGroceryListsWithCommonSharees4 = [equalCopy sharedGroceryListsWithCommonSharees];
      v9 = [sharedGroceryListsWithCommonSharees3 isEqual:sharedGroceryListsWithCommonSharees4];
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
  sharedGroceryListsWithCommonSharees = [(REMFamilyChecklistSharedGroceryListInvocationResult *)self sharedGroceryListsWithCommonSharees];
  v3 = [sharedGroceryListsWithCommonSharees hash];

  return v3;
}

@end