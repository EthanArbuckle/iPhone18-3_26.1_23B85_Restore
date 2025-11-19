@interface PXSettingsIndexEntry
@end

@implementation PXSettingsIndexEntry

uint64_t __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) selectRowAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v2 tableView:v4 didSelectRowAtIndexPath:v3];
}

void __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E774C250;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundColor];
  v3 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_5;
  v8[3] = &unk_1E774C648;
  v9 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_6;
  v5[3] = &unk_1E7749628;
  v6 = *(a1 + 32);
  v7 = v2;
  v4 = v2;
  [v3 animateWithDuration:v8 animations:v5 completion:0.2];
}

void __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] lightGrayColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

void __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_7;
  v3[3] = &unk_1E774C620;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v3 animations:0.2];
}

uint64_t __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _revealInTopOfSettingsController:*(result + 40) drillIn:*(result + 56) withCompletionHandler:*(result + 48)];
  }

  return result;
}

uint64_t __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _revealInTopOfSettingsController:*(a1 + 40) drillIn:*(a1 + 56) withCompletionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

@end