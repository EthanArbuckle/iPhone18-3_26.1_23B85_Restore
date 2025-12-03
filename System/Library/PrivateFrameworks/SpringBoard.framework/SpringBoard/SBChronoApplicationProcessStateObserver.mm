@interface SBChronoApplicationProcessStateObserver
+ (SBChronoApplicationProcessStateObserver)sharedInstance;
- (BOOL)_shouldInformChronoForApplication:(id)application;
- (SBChronoApplicationProcessStateObserver)init;
- (void)_queue_handleApplicationProcessStateDidChangeIfNecessary:(id)necessary;
- (void)applicationProcessStateDidChange:(id)change;
@end

@implementation SBChronoApplicationProcessStateObserver

+ (SBChronoApplicationProcessStateObserver)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[SBChronoApplicationProcessStateObserver sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

void __57__SBChronoApplicationProcessStateObserver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBChronoApplicationProcessStateObserver);
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;
}

- (SBChronoApplicationProcessStateObserver)init
{
  v21.receiver = self;
  v21.super_class = SBChronoApplicationProcessStateObserver;
  v2 = [(SBChronoApplicationProcessStateObserver *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CFA3C0]);
    visible = [MEMORY[0x277CFA390] visible];
    visible2 = [MEMORY[0x277CFA218] visible];
    v6 = [v3 initWithWidgetsPredicate:visible controlsPredicate:visible2];

    v7 = [objc_alloc(MEMORY[0x277CFA3B8]) initWithOptions:v6];
    extensionProvider = v2->_extensionProvider;
    v2->_extensionProvider = v7;

    v9 = objc_alloc_init(MEMORY[0x277CFA280]);
    service = v2->_service;
    v2->_service = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_DEFAULT, 0);

    v13 = dispatch_queue_create("com.apple.chronoservices.SBChronoApplicationProcessStateObserver", v12);
    queue = v2->_queue;
    v2->_queue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.chronoservices.SBChronoApplicationProcessStateObserver-init", v16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBChronoApplicationProcessStateObserver_init__block_invoke;
    block[3] = &unk_2783A8C18;
    v20 = v2;
    dispatch_async(v17, block);
  }

  return v2;
}

- (void)applicationProcessStateDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SBChronoApplicationProcessStateObserver_applicationProcessStateDidChange___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_handleApplicationProcessStateDidChangeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  object = [necessaryCopy object];
  userInfo = [necessaryCopy userInfo];

  v6 = [userInfo objectForKey:@"previousProcessState"];

  isForeground = [v6 isForeground];
  processState = [object processState];
  isForeground2 = [processState isForeground];

  if (isForeground2 && (isForeground & 1) == 0 && [(SBChronoApplicationProcessStateObserver *)self _shouldInformChronoForApplication:object])
  {
    service = self->_service;
    bundleIdentifier = [object bundleIdentifier];
    [(CHSInteractionEventService *)service applicationEnteredForegroundWithBundleID:bundleIdentifier];
  }
}

- (BOOL)_shouldInformChronoForApplication:(id)application
{
  applicationCopy = application;
  v5 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  if (v7)
  {
    applicationExtensionRecords = [v7 applicationExtensionRecords];
    v9 = [applicationExtensionRecords bs_filter:&__block_literal_global_11_1];

    if ([v9 count])
    {
      extensionProvider = self->_extensionProvider;
      bundleIdentifier2 = [applicationCopy bundleIdentifier];
      v12 = [(CHSWidgetExtensionProvider *)extensionProvider widgetExtensionContainerForContainerBundleIdentifier:bundleIdentifier2];

      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      localExtensions = [v12 localExtensions];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __77__SBChronoApplicationProcessStateObserver__shouldInformChronoForApplication___block_invoke_2;
      v16[3] = &unk_2783B0CB0;
      v16[4] = &v17;
      [localExtensions enumerateObjectsUsingBlock:v16];

      v14 = *(v18 + 24) ^ 1;
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t __77__SBChronoApplicationProcessStateObserver__shouldInformChronoForApplication___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionPointRecord];
  v3 = [v2 identifier];
  v4 = CHSIsWidgetExtensionPoint();

  return v4;
}

void __77__SBChronoApplicationProcessStateObserver__shouldInformChronoForApplication___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 orderedDescriptors];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [v9 orderedControlDescriptors];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

@end