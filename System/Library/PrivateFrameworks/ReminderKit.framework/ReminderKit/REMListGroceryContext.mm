@interface REMListGroceryContext
- (BOOL)shouldCategorizeGroceryItems;
- (BOOL)shouldSuggestConversionToGroceryList;
- (NSString)groceryLocaleID;
- (REMListGroceryContext)initWithList:(id)list;
@end

@implementation REMListGroceryContext

- (BOOL)shouldCategorizeGroceryItems
{
  list = [(REMListGroceryContext *)self list];
  shouldCategorizeGroceryItems = [list shouldCategorizeGroceryItems];

  return shouldCategorizeGroceryItems;
}

- (REMListGroceryContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListGroceryContext;
  v6 = [(REMListGroceryContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (BOOL)shouldSuggestConversionToGroceryList
{
  list = [(REMListGroceryContext *)self list];
  shouldSuggestConversionToGroceryList = [list shouldSuggestConversionToGroceryList];

  return shouldSuggestConversionToGroceryList;
}

- (NSString)groceryLocaleID
{
  list = [(REMListGroceryContext *)self list];
  groceryLocaleID = [list groceryLocaleID];

  return groceryLocaleID;
}

@end