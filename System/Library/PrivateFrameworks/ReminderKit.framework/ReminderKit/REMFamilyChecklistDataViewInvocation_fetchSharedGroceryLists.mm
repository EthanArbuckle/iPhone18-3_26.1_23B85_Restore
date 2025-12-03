@interface REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists
- (BOOL)isEqual:(id)equal;
- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCoder:(id)coder;
- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCommonSharees:(id)sharees;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists

- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCommonSharees:(id)sharees
{
  shareesCopy = sharees;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commonSharees, sharees);
  }

  return v7;
}

- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"commonSharees"];

  if (v8)
  {
    self = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self initWithCommonSharees:v8];
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
  commonSharees = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
  [coderCopy encodeObject:commonSharees forKey:@"commonSharees"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    commonSharees = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
    commonSharees2 = [equalCopy commonSharees];
    if (commonSharees == commonSharees2)
    {
      v9 = 1;
    }

    else
    {
      commonSharees3 = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
      commonSharees4 = [equalCopy commonSharees];
      v9 = [commonSharees3 isEqual:commonSharees4];
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
  v3.receiver = self;
  v3.super_class = REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end