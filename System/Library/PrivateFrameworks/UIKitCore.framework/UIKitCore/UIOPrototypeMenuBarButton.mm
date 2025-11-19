@interface UIOPrototypeMenuBarButton
@end

@implementation UIOPrototypeMenuBarButton

void __84___UIOPrototypeMenuBarButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84___UIOPrototypeMenuBarButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v6[3] = &unk_1E70F6A70;
  v7 = v3;
  v4 = v3;
  v5 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];
  [*(a1 + 32) fulfillWithConfiguration:v5];
}

id __84___UIOPrototypeMenuBarButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:256 children:*(a1 + 32)];
  if (([v1 _hasVisibleChildren] & 1) == 0)
  {
    v2 = [UIAction actionWithTitle:@"No Items" image:0 identifier:0 handler:&__block_literal_global_168];
    [v2 setAttributes:{objc_msgSend(v2, "attributes") | 1}];
    v6[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = [v1 menuByReplacingChildren:v3];

    v1 = v4;
  }

  return v1;
}

@end