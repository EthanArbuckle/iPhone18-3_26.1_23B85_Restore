@interface _SBKeyboardServiceSceneResolver
- (id)sceneForSceneIdentityToken:(id)token inProcess:(int)process;
@end

@implementation _SBKeyboardServiceSceneResolver

- (id)sceneForSceneIdentityToken:(id)token inProcess:(int)process
{
  tokenCopy = token;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v21 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:tokenCopy];

  v8 = v17[5];
  if (!v8)
  {
    systemUIScenesCoordinator = self->_systemUIScenesCoordinator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72___SBKeyboardServiceSceneResolver_sceneForSceneIdentityToken_inProcess___block_invoke;
    v12[3] = &unk_2783A8F28;
    processCopy = process;
    v13 = tokenCopy;
    v14 = &v16;
    [(SBSystemUIScenesCoordinator *)systemUIScenesCoordinator enumerateScenesWithBlock:v12];

    v8 = v17[5];
  }

  v10 = v8;
  _Block_object_dispose(&v16, 8);

  return v10;
}

@end