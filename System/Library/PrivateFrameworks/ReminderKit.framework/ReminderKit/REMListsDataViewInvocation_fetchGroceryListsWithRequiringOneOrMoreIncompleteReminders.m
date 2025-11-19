@interface REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders
- (BOOL)isEqual:(id)a3;
- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithCoder:(id)a3;
- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithRequiringOneOrMoreIncompleteReminders:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders

- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithRequiringOneOrMoreIncompleteReminders:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_requiringOneOrMoreIncompleteReminders = a3;
  }

  return result;
}

- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"requiringOneOrMoreIncompleteReminders"];

  return [(REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders *)self initWithRequiringOneOrMoreIncompleteReminders:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders requiringOneOrMoreIncompleteReminders](self forKey:{"requiringOneOrMoreIncompleteReminders"), @"requiringOneOrMoreIncompleteReminders"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders *)self requiringOneOrMoreIncompleteReminders];
    v6 = v5 ^ [v4 requiringOneOrMoreIncompleteReminders] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders;
  v3 = [(REMStoreInvocationValueStorage *)&v5 hash];
  return v3 + [(REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders *)self requiringOneOrMoreIncompleteReminders];
}

@end