@interface UIEditMenuPresentationServer
@end

@implementation UIEditMenuPresentationServer

void __57___UIEditMenuPresentationServer_sharedPresentationServer__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4A0940;
  qword_1ED4A0940 = v0;
}

void __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_UIOMenuLeafPerformAction alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke_2;
  v9[3] = &unk_1E711FEA0;
  v10 = *(a1 + 40);
  v8 = [(_UIOMenuLeafPerformAction *)v7 initWithMenuElement:v6 pasteAuthenticationMesage:v5 responseHandler:v9];

  [*(a1 + 32) sendAction:v8];
}

void __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke_3;
  block[3] = &unk_1E70F0F78;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89___UIEditMenuPresentationServer__editMenuPresentation_preparedMenuForDisplay_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89___UIEditMenuPresentationServer__editMenuPresentation_preparedMenuForDisplay_completion___block_invoke_2;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __89___UIEditMenuPresentationServer__editMenuPresentation_preparedMenuForDisplay_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) preparedMenu];
  (*(v1 + 16))(v1, v2);
}

void __96___UIEditMenuPresentationServer__editMenuPresentation_willDismissMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendLifecycleEvent:3 forMenuWithIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) configurations];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) presentations];
  [v3 removeObjectForKey:*(a1 + 40)];

  v4 = [*(a1 + 32) connections];
  [v4 removeObjectForKey:*(a1 + 40)];
}

@end