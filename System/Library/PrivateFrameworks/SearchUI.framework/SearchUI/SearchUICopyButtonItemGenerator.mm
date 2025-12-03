@interface SearchUICopyButtonItemGenerator
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
@end

@implementation SearchUICopyButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v10[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  itemCopy = item;
  v8 = [[SearchUICopyButtonItem alloc] initWithSFButtonItem:itemCopy];

  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  (*(completion + 2))(completionCopy, v9, 1);
}

@end