@interface REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithRequiringOneOrMoreIncompleteReminders:(BOOL)reminders;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders

- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithRequiringOneOrMoreIncompleteReminders:(BOOL)reminders
{
  v5.receiver = self;
  v5.super_class = REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_requiringOneOrMoreIncompleteReminders = reminders;
  }

  return result;
}

- (REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"requiringOneOrMoreIncompleteReminders"];

  return [(REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders *)self initWithRequiringOneOrMoreIncompleteReminders:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders requiringOneOrMoreIncompleteReminders](self forKey:{"requiringOneOrMoreIncompleteReminders"), @"requiringOneOrMoreIncompleteReminders"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requiringOneOrMoreIncompleteReminders = [(REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders *)self requiringOneOrMoreIncompleteReminders];
    v6 = requiringOneOrMoreIncompleteReminders ^ [equalCopy requiringOneOrMoreIncompleteReminders] ^ 1;
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