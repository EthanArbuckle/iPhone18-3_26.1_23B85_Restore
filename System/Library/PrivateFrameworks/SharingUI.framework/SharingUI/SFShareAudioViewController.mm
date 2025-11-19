@interface SFShareAudioViewController
+ (id)instantiateViewController;
- (void)_reportCompletion:(id)a3 mediaRouteID:(id)a4;
- (void)_sessionProgressEvent:(int)a3 info:(id)a4;
- (void)_sessionStart;
- (void)_showBringClose;
- (void)_showConfirm:(id)a3;
- (void)_showConnecting:(id)a3;
- (void)_showError:(id)a3;
- (void)_showPairInstructions:(id)a3;
- (void)_transitionToViewController:(id)a3 animate:(BOOL)a4;
- (void)reportError:(id)a3;
- (void)reportUserCancelled;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Sharing"];
  v3 = [MEMORY[0x1E69DCFB8] storyboardWithName:@"ShareAudioGuest" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"Main"];
  [v4 setMainBundle:v2];
  [v4 setMainStoryboard:v3];
  [v4 setModalPresentationStyle:6];
  [v4 setModalTransitionStyle:2];
  v5 = [v4 view];
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    +[SFShareAudioViewController instantiateViewController];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController viewWillAppear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioViewController;
  [(SFShareAudioViewController *)&v5 viewWillAppear:v3];
  [(SFShareAudioViewController *)self _showBringClose];
  [(SFShareAudioViewController *)self _sessionStart];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController viewWillDisappear:];
  }

  v7.receiver = self;
  v7.super_class = SFShareAudioViewController;
  [(SFShareAudioViewController *)&v7 viewWillDisappear:v3];
  [(SFShareAudioSessionClient *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;

  v6 = NSErrorF();
  [(SFShareAudioViewController *)self _reportCompletion:v6 mediaRouteID:0];
}

- (void)_reportCompletion:(id)a3 mediaRouteID:(id)a4
{
  v11 = a3;
  v6 = a4;
  [(SFShareAudioSessionClient *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;

  v8 = _Block_copy(self->_completion);
  if (v8)
  {
    completion = self->_completion;
    self->_completion = 0;

    if (v6)
    {
      v10 = objc_alloc_init(SFSharedAudioDeviceInfo);
      [(SFSharedAudioDeviceInfo *)v10 setMediaRouteIdentifier:v6];
      v8[2](v8, v10, 0);
LABEL_4:

      goto LABEL_7;
    }

    if (!v11)
    {
      v10 = NSErrorF();
      (v8)[2](v8, 0, v10);
      goto LABEL_4;
    }

    (v8[2])(v8, 0);
  }

LABEL_7:
}

- (void)reportError:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (gLogCategory_SFShareAudioViewController <= 90 && (gLogCategory_SFShareAudioViewController != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5)))
  {
    [SFShareAudioViewController reportError:];
    v4 = v7;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    [(SFShareAudioViewController *)self _reportCompletion:v4 mediaRouteID:0];
    goto LABEL_8;
  }

  v6 = NSErrorF();
  [(SFShareAudioViewController *)self _reportCompletion:v6 mediaRouteID:0];

LABEL_8:
}

- (void)reportUserCancelled
{
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController reportUserCancelled];
  }

  v3 = NSErrorF();
  [(SFShareAudioViewController *)self _reportCompletion:v3 mediaRouteID:0];
}

- (void)_sessionStart
{
  v3 = objc_alloc_init(MEMORY[0x1E69CDEC0]);
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = v3;
  v5 = v3;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SFShareAudioViewController__sessionStart__block_invoke;
  v6[3] = &unk_1E7EE45F8;
  v6[4] = v5;
  v6[5] = self;
  [(SFShareAudioSessionClient *)v5 setProgressHandler:v6];
  [(SFShareAudioSessionClient *)v5 activate];
}

void *__43__SFShareAudioViewController__sessionStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[186])
  {
    return [result _sessionProgressEvent:a2 info:a3];
  }

  return result;
}

- (void)_sessionProgressEvent:(int)a3 info:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v13 = v6;
  if (gLogCategory_SFShareAudioViewController <= 30)
  {
    if (gLogCategory_SFShareAudioViewController != -1 || (v7 = _LogCategory_Initialize(), v6 = v13, v7))
    {
      [SFShareAudioViewController _sessionProgressEvent:info:];
      v6 = v13;
    }
  }

  if (v4 > 119)
  {
    if ((v4 - 200) <= 0x14 && ((1 << (v4 + 56)) & 0x100401) != 0 || (v4 - 300) <= 0x14 && ((1 << (v4 - 44)) & 0x100401) != 0)
    {
      [(SFShareAudioViewController *)self _showConnecting:v13];
      [(SFShareAudioConnectingViewController *)self->_vcConnecting sessionProgressEvent:v4 info:v13];
    }

    else
    {
      if (v4 != 120)
      {
        goto LABEL_23;
      }

      [(SFShareAudioViewController *)self _showPairInstructions:v13];
    }

    goto LABEL_22;
  }

  if (v4 == 40)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v9 = self;
    v10 = 0;
    v11 = v8;
    goto LABEL_19;
  }

  if (v4 == 50)
  {
    CFErrorGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v12 = [v8 code] - 299008;
    v9 = self;
    v10 = v8;
    if (v12 != 2023)
    {
      [(SFShareAudioViewController *)self _showError:v8];
      goto LABEL_21;
    }

    v11 = 0;
LABEL_19:
    [(SFShareAudioViewController *)v9 _reportCompletion:v10 mediaRouteID:v11];
LABEL_21:

    goto LABEL_22;
  }

  v6 = v13;
  if (v4 != 100)
  {
    goto LABEL_23;
  }

  [(SFShareAudioViewController *)self _showConfirm:v13];
LABEL_22:
  v6 = v13;
LABEL_23:
}

- (void)_showBringClose
{
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController _showBringClose];
  }

  v3 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"BringClose"];
  [v3 setMainController:self];
  [(SFShareAudioViewController *)self _transitionToViewController:v3 animate:0];
}

- (void)_showError:(id)a3
{
  v5 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController _showError:];
  }

  v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Error"];
  [v4 setMainController:self];
  [v4 setError:v5];
  [(SFShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showConfirm:(id)a3
{
  v5 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController _showConfirm:];
  }

  v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Confirm"];
  [v4 setMainController:self];
  [v4 setProductID:CFDictionaryGetInt64Ranged()];
  [v4 setColorCode:CFDictionaryGetInt64Ranged()];
  [(SFShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showPairInstructions:(id)a3
{
  v5 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioViewController _showPairInstructions:];
  }

  v4 = objc_alloc_init(SFShareAudioHoldButtonViewController);
  [(SFShareAudioBaseViewController *)v4 setMainController:self];
  [(SFShareAudioHoldButtonViewController *)v4 setProductID:CFDictionaryGetInt64Ranged()];
  [(SFShareAudioHoldButtonViewController *)v4 setColorCode:CFDictionaryGetInt64Ranged()];
  [(SFShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showConnecting:(id)a3
{
  v5 = a3;
  v4 = self->_vcConnecting;
  if (!v4)
  {
    v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Connecting"];
    [(SFShareAudioBaseViewController *)v4 setMainController:self];
    objc_storeStrong(&self->_vcConnecting, v4);
  }

  [(SFShareAudioConnectingViewController *)v4 setProductID:CFDictionaryGetInt64Ranged()];
  [(SFShareAudioConnectingViewController *)v4 setColorCode:CFDictionaryGetInt64Ranged()];
  [(SFShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_transitionToViewController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x1E6979538] animation];
    [v6 setDuration:0.5];
    [v6 setType:*MEMORY[0x1E697A030]];
    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v6 setTimingFunction:v7];

    v8 = [(SFShareAudioViewController *)self view];
    v9 = [v8 layer];
    [v9 addAnimation:v6 forKey:0];

    v10 = [v15 view];
    v11 = [v10 layer];
    [v11 addAnimation:v6 forKey:0];
  }

  v12 = [(SFShareAudioViewController *)self viewControllers];
  v13 = [v12 containsObject:v15];

  if (v13)
  {
    v14 = [(SFShareAudioViewController *)self popToViewController:v15 animated:0];
  }

  else
  {
    [(SFShareAudioViewController *)self pushViewController:v15 animated:0];
  }
}

@end