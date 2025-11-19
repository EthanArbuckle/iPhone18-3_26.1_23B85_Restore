@interface TVAppDocumentRequestController
@end

@implementation TVAppDocumentRequestController

void __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) templateViewController];
  v4 = [v3 view];
  [v4 setAlpha:v2];

  v5 = [*(a1 + 32) swipeUpMessageView];
  [v5 setAlpha:v2];

  v6 = [*(a1 + 32) mediaController];
  v7 = [v6 mediaInfo];
  v8 = [v7 intent];

  if (v8)
  {
    v9 = [*(a1 + 32) templateViewController];
    v10 = [v9 view];
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v21.a = *MEMORY[0x277CBF2C0];
    v19 = *&v21.a;
    *&v21.c = v18;
    *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
    v17 = *&v21.tx;
    [v10 setTransform:&v21];

    v11 = [*(a1 + 32) swipeUpMessageView];
    v12 = v11;
    *&v21.a = v19;
    *&v21.c = v18;
    *&v21.tx = v17;
    v13 = &v21;
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
    if (*(a1 + 40) == 1)
    {
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v21.a = *MEMORY[0x277CBF2C0];
      *&v21.c = v14;
      *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v21, 1.1, 1.1);
    }

    v15 = [*(a1 + 32) templateViewController];
    v16 = [v15 view];
    v20 = v21;
    [v16 setTransform:&v20];

    v11 = [*(a1 + 32) swipeUpMessageView];
    v12 = v11;
    v20 = v21;
    v13 = &v20;
  }

  [v11 setTransform:v13];
}

uint64_t __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) templateViewController];
  v4 = [v3 view];
  [v4 setAlpha:v2];

  v5 = [*(a1 + 32) swipeUpMessageView];
  [v5 setAlpha:v2];

  v6 = [*(a1 + 32) mediaController];
  v7 = [v6 mediaInfo];
  v8 = [v7 intent];

  if (v8)
  {
    v9 = [*(a1 + 32) templateViewController];
    v10 = [v9 view];
    v21 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    v22 = *&v24.a;
    *&v24.c = v21;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    v20 = *&v24.tx;
    [v10 setTransform:&v24];

    v11 = [*(a1 + 32) swipeUpMessageView];
    v12 = v11;
    *&v24.a = v22;
    *&v24.c = v21;
    *&v24.tx = v20;
    v13 = &v24;
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
    if (*(a1 + 48) == 1)
    {
      CGAffineTransformMakeScale(&v24, 1.1, 1.1);
    }

    else
    {
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v24.a = *MEMORY[0x277CBF2C0];
      *&v24.c = v14;
      *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    v15 = [*(a1 + 32) templateViewController];
    v16 = [v15 view];
    v23 = v24;
    [v16 setTransform:&v23];

    v11 = [*(a1 + 32) swipeUpMessageView];
    v12 = v11;
    v23 = v24;
    v13 = &v23;
  }

  [v11 setTransform:v13];

  [*(a1 + 32) _updateShowcaseFactor];
  v17 = *(a1 + 32);
  if (v17[1107] == 1)
  {
    v18 = [v17 appDelegate];
    [v18 appDocumentController:*(a1 + 32) didHideUI:*(a1 + 48)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) _hostingFocusEnvironment];
  [v3 setNeedsFocusUpdate];
}

@end