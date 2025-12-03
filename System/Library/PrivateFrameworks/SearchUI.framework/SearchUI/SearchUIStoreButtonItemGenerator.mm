@interface SearchUIStoreButtonItemGenerator
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
@end

@implementation SearchUIStoreButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v12[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  delegate = [(SearchUIButtonItemGenerator *)self delegate];
  if ([delegate deviceIsAuthenticated])
  {
    v9 = [[SearchUIButtonItem alloc] initWithSFButtonItem:itemCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_new();
  [(SearchUIButtonItem *)v9 setCommand:v10];

  if (v9)
  {
    v12[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    completionCopy[2](completionCopy, v11, 1);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 1);
  }
}

@end