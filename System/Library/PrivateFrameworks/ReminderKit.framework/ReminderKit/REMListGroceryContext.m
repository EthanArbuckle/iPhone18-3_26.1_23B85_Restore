@interface REMListGroceryContext
- (BOOL)shouldCategorizeGroceryItems;
- (BOOL)shouldSuggestConversionToGroceryList;
- (NSString)groceryLocaleID;
- (REMListGroceryContext)initWithList:(id)a3;
@end

@implementation REMListGroceryContext

- (BOOL)shouldCategorizeGroceryItems
{
  v2 = [(REMListGroceryContext *)self list];
  v3 = [v2 shouldCategorizeGroceryItems];

  return v3;
}

- (REMListGroceryContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListGroceryContext;
  v6 = [(REMListGroceryContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (BOOL)shouldSuggestConversionToGroceryList
{
  v2 = [(REMListGroceryContext *)self list];
  v3 = [v2 shouldSuggestConversionToGroceryList];

  return v3;
}

- (NSString)groceryLocaleID
{
  v2 = [(REMListGroceryContext *)self list];
  v3 = [v2 groceryLocaleID];

  return v3;
}

@end