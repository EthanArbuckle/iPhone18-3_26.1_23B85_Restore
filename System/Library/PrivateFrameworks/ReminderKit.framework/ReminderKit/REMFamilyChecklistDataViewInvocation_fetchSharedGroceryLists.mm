@interface REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCoder:(id)a3;
- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCommonSharees:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists

- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCommonSharees:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commonSharees, a3);
  }

  return v7;
}

- (REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"commonSharees"];

  if (v8)
  {
    self = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self initWithCommonSharees:v8];
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
  v5 = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
  [v4 encodeObject:v5 forKey:@"commonSharees"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
    v6 = [v4 commonSharees];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists *)self commonSharees];
      v8 = [v4 commonSharees];
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
  v3.receiver = self;
  v3.super_class = REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists;
  return [(REMStoreInvocationValueStorage *)&v3 hash];
}

@end