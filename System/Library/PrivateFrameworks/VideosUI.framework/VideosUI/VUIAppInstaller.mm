@interface VUIAppInstaller
+ (id)defaultAppInstaller;
- (VUIAppInstaller)init;
- (void)installAppForInstallable:(id)installable sceneIdentifier:(id)identifier offer:(id)offer progressHandler:(id)handler completion:(id)completion;
@end

@implementation VUIAppInstaller

+ (id)defaultAppInstaller
{
  if (defaultAppInstaller___once != -1)
  {
    +[VUIAppInstaller defaultAppInstaller];
  }

  v3 = defaultAppInstaller___defaultAppInstaller;

  return v3;
}

void __38__VUIAppInstaller_defaultAppInstaller__block_invoke()
{
  v0 = objc_alloc_init(VUIAppInstaller);
  v1 = defaultAppInstaller___defaultAppInstaller;
  defaultAppInstaller___defaultAppInstaller = v0;
}

- (VUIAppInstaller)init
{
  v8.receiver = self;
  v8.super_class = VUIAppInstaller;
  v2 = [(VUIAppInstaller *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.VideosUI.VUIAppInstaller", 0);
    installQueue = v2->_installQueue;
    v2->_installQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    installSessions = v2->_installSessions;
    v2->_installSessions = v5;
  }

  return v2;
}

- (void)installAppForInstallable:(id)installable sceneIdentifier:(id)identifier offer:(id)offer progressHandler:(id)handler completion:(id)completion
{
  installableCopy = installable;
  identifierCopy = identifier;
  offerCopy = offer;
  handlerCopy = handler;
  completionCopy = completion;
  if (installableCopy)
  {
    installQueue = self->_installQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke;
    v18[3] = &unk_1E872EE88;
    v19 = installableCopy;
    v20 = offerCopy;
    v21 = identifierCopy;
    selfCopy = self;
    v23 = handlerCopy;
    v24 = completionCopy;
    dispatch_async(installQueue, v18);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"installable must be non-nil"];
  }
}

void __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [[_VUIAppInstallSession alloc] initWithInstallable:*(a1 + 32) offer:*(a1 + 40) sceneIdentifier:*(a1 + 48)];
  [*(*(a1 + 56) + 16) addObject:v2];
  NSLog(&cfstr_Vuiappinstalle_0.isa, v2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_2;
  v9[3] = &unk_1E872EE38;
  v10 = v2;
  v11 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_4;
  v5[3] = &unk_1E872EE60;
  v3 = *(a1 + 56);
  v6 = v10;
  v7 = v3;
  v8 = *(a1 + 72);
  v4 = v10;
  [(_VUIAppInstallSession *)v4 beginInstallationWithProgressHandler:v9 completion:v5];
}

void __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_2(uint64_t a1, double a2)
{
  NSLog(&cfstr_Vuiappinstalle_1.isa, *&a2, *(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_3;
    block[3] = &unk_1E872E230;
    v7 = v4;
    v8 = a2;
    dispatch_async(v5, block);
  }
}

void __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Vuiappinstalle_2.isa, a1[4]);
  [*(a1[5] + 16) removeObject:a1[4]];
  v4 = a1[6];
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__VUIAppInstaller_installAppForInstallable_sceneIdentifier_offer_progressHandler_completion___block_invoke_5;
    block[3] = &unk_1E872DC10;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

@end