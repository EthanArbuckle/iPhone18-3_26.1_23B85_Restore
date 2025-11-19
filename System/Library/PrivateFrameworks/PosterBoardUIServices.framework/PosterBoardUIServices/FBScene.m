@interface FBScene
@end

@implementation FBScene

void __105__FBScene_PRUISAdditions__pruis_setupSceneForSnapshottingWithOptions_traitCollection_updater_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [v9 pui_setSnapshot:1];
  [v9 pui_setFloatingLayerSnapshot:*(a1 + 72)];
  [v9 pui_setContent:*(a1 + 48)];
  [v9 pr_setUnlockProgress:*(a1 + 56)];
  [v9 pui_setUserInterfaceStyle:*(a1 + 64)];
  [v9 pui_setShowsHeaderElements:*(a1 + 73)];
  [v9 pui_setShowsComplications:*(a1 + 74)];
  if ([v9 isUISubclass])
  {
    v6 = *(a1 + 32);
    v7 = v9;
    [v7 setAccessibilityContrast:{objc_msgSend(v6, "accessibilityContrast")}];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __85__FBScene_PRUISAdditions__pruis_restoreSceneAfterSnapshottingWithUpdater_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [v7 pui_setSnapshot:0];
  [v7 pui_setFloatingLayerSnapshot:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void __85__FBScene_PRUISAdditions__pruis_snapshotSceneWithOptions_traitCollection_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) pruis_snapshotContextConfiguredWithOptions:*(a1 + 48)];
    v3 = [*(a1 + 32) pruis_createSnapshotWithContext:v5];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) pruis_restoreSceneAfterSnapshottingWithUpdater:0 completion:0];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

uint64_t __54__FBScene_PRUISAdditions___layersToExcludeForOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 level];
  v5 = ((*(a1 + 32) & 0x38uLL) - 8) >> 3;
  v6 = 1;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v7 = MEMORY[0x1E69C5390];
LABEL_10:
          v6 = v4 != *v7;
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      v8 = MEMORY[0x1E69C5380];
    }

    else
    {
      v8 = MEMORY[0x1E69C53A0];
    }

LABEL_14:
    v6 = v4 == *v8;
    goto LABEL_18;
  }

  switch(v5)
  {
    case 3uLL:
      v8 = MEMORY[0x1E69C5390];
      goto LABEL_14;
    case 4uLL:
      v6 = v4 != *MEMORY[0x1E69C5378] && v4 != *MEMORY[0x1E69C5380];
      break;
    case 5uLL:
      v7 = MEMORY[0x1E69C53A0];
      goto LABEL_10;
  }

LABEL_18:
  v9 = [v3 type];

  return (v9 != 1) | !v6;
}

@end