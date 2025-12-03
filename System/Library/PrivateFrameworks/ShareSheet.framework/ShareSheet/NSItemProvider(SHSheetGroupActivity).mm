@interface NSItemProvider(SHSheetGroupActivity)
- (void)loadGroupActivityMetadataWithCompletion:()SHSheetGroupActivity;
@end

@implementation NSItemProvider(SHSheetGroupActivity)

- (void)loadGroupActivityMetadataWithCompletion:()SHSheetGroupActivity
{
  v4 = a3;
  v5 = +[SHSheetGroupActivity groupActivityType];
  v6 = [self hasItemConformingToTypeIdentifier:v5];

  if (v6)
  {
    v7 = +[SHSheetGroupActivity groupActivityType];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__NSItemProvider_SHSheetGroupActivity__loadGroupActivityMetadataWithCompletion___block_invoke;
    v8[3] = &unk_1E71FA4C0;
    v9 = v4;
    [self loadItemForTypeIdentifier:v7 options:0 completionHandler:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

@end