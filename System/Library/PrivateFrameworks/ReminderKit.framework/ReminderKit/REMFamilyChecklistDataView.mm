@interface REMFamilyChecklistDataView
- (REMFamilyChecklistDataView)initWithStore:(id)store;
- (id)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:(id)locale error:(id *)error;
- (id)fetchSharedGroceryListsWithCommonSharees:(id)sharees error:(id *)error;
@end

@implementation REMFamilyChecklistDataView

- (REMFamilyChecklistDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMFamilyChecklistDataView;
  v6 = [(REMFamilyChecklistDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchSharedGroceryListsWithCommonSharees:(id)sharees error:(id *)error
{
  shareesCopy = sharees;
  v7 = [[REMFamilyChecklistDataViewInvocation_fetchSharedGroceryLists alloc] initWithCommonSharees:shareesCopy];

  store = [(REMFamilyChecklistDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  sharedGroceryListsWithCommonSharees = [v11 sharedGroceryListsWithCommonSharees];

  return sharedGroceryListsWithCommonSharees;
}

- (id)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v7 = [REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility alloc];
  localeIdentifier = [localeCopy localeIdentifier];

  v9 = [(REMFamilyChecklistDataViewInvocation_fetchFamilyGroceryListEligibility *)v7 initWithLocaleIdentifier:localeIdentifier];
  store = [(REMFamilyChecklistDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  familyGroceryListEligibility = [v13 familyGroceryListEligibility];

  return familyGroceryListEligibility;
}

@end