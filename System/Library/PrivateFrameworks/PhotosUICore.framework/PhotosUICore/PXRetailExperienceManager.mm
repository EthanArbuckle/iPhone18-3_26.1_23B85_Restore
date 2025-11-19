@interface PXRetailExperienceManager
+ (__CFData)generateSVGDataFromURL:(__CFURL *)a3;
- (void)dismissRetailExperienceView;
- (void)presentRetailExperienceView;
- (void)showRetailExperienceCard;
@end

@implementation PXRetailExperienceManager

+ (__CFData)generateSVGDataFromURL:(__CFURL *)a3
{
  v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v6 = getACCBakerDataVersion2SymbolLoc_ptr;
  v23 = getACCBakerDataVersion2SymbolLoc_ptr;
  if (!getACCBakerDataVersion2SymbolLoc_ptr)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getACCBakerDataVersion2SymbolLoc_block_invoke;
    v18 = &unk_1E774BD00;
    v19 = &v20;
    v7 = ACCBakerLibrary();
    v21[3] = dlsym(v7, "ACCBakerDataVersion2");
    getACCBakerDataVersion2SymbolLoc_ptr = *(v19[1] + 24);
    v6 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (v6)
  {
    v14 = *v6;
    v13 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v8 = getACCBakerCreateSymbolLoc_ptr;
    v23 = getACCBakerCreateSymbolLoc_ptr;
    if (!getACCBakerCreateSymbolLoc_ptr)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getACCBakerCreateSymbolLoc_block_invoke;
      v18 = &unk_1E774BD00;
      v19 = &v20;
      v9 = ACCBakerLibrary();
      v21[3] = dlsym(v9, "ACCBakerCreate");
      getACCBakerCreateSymbolLoc_ptr = *(v19[1] + 24);
      v8 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (v8)
    {
      return v8(a3, v5 == 2, &v14, &v13);
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDataRef softlink_ACCBakerCreate(CFURLRef _Nonnull, const size_t, ACCBakerDataVersion * _Nullable, CFErrorRef  _Nullable * _Nullable)"}];
    [v11 handleFailureInFunction:v12 file:@"PXRetailExperienceManager.m" lineNumber:26 description:{@"%s", dlerror(), v13}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ACCBakerDataVersion getACCBakerDataVersion2(void)"];
    [v11 handleFailureInFunction:v12 file:@"PXRetailExperienceManager.m" lineNumber:27 description:{@"%s", dlerror(), v13}];
  }

  __break(1u);
  return result;
}

- (void)dismissRetailExperienceView
{
  v2 = [(PXRetailExperienceManager *)self retailViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentRetailExperienceView
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PXRetailExperienceManager_presentRetailExperienceView__block_invoke;
  v6[3] = &unk_1E774C648;
  v6[4] = self;
  v3 = [_TtC12PhotosUICore27PXRetailExperienceInterface createRetailExperienceViewController:v6];
  [(PXRetailExperienceManager *)self setRetailViewController:v3];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 px_firstKeyWindow];
  [v5 pl_presentViewController:v3 animated:1];
}

- (void)showRetailExperienceCard
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PXRetailExperienceManager_showRetailExperienceCard__block_invoke;
  v3[3] = &unk_1E77417C8;
  v3[4] = self;
  v2 = [PXToast show:v3];
}

void __53__PXRetailExperienceManager_showRetailExperienceCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PXRetailExperienceCardView alloc];
  v5 = [(PXRetailExperienceCardView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = PXLocalizedStringFromTable(@"PXRetailExperienceCardTitle", @"PhotosUICore");
  [(PXRetailExperienceCardView *)v5 setTitle:v6];

  v7 = PXLocalizedStringFromTable(@"PXRetailExperienceCardMessage", @"PhotosUICore");
  [(PXRetailExperienceCardView *)v5 setMessage:v7];

  v8 = PXLocalizedStringFromTable(@"PXContinue", @"PhotosUICore");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PXRetailExperienceManager_showRetailExperienceCard__block_invoke_2;
  v9[3] = &unk_1E774C648;
  v9[4] = *(a1 + 32);
  [(PXRetailExperienceCardView *)v5 addActionWithTitle:v8 action:v9];

  [v3 setContentView:v5];
  [v3 setAutoDismissalDelay:180.0];
  [v3 setCanSwipeToDismiss:1];
  [v3 setBottomMargin:5.0];
}

@end