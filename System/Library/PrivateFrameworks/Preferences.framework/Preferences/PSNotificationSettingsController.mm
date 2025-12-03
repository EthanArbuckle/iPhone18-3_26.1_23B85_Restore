@interface PSNotificationSettingsController
+ (id)sharedInstance;
- (PSNotificationSettingsController)init;
- (id)allSectionInfoIdentifiers;
- (void)dealloc;
@end

@implementation PSNotificationSettingsController

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[PSNotificationSettingsController sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

void __50__PSNotificationSettingsController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSNotificationSettingsController);
  v1 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v0;
}

- (PSNotificationSettingsController)init
{
  v10.receiver = self;
  v10.super_class = PSNotificationSettingsController;
  v2 = [(PSNotificationSettingsController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.preferences.BBSettingsGateway", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = getBBSettingsGatewayClass_softClass;
    v15 = getBBSettingsGatewayClass_softClass;
    if (!getBBSettingsGatewayClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getBBSettingsGatewayClass_block_invoke;
      v11[3] = &unk_1E71DBC78;
      v11[4] = &v12;
      __getBBSettingsGatewayClass_block_invoke(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = [[v5 alloc] initWithQueue:v2->_queue];
    gateway = v2->_gateway;
    v2->_gateway = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self->_gateway invalidate];
  v3.receiver = self;
  v3.super_class = PSNotificationSettingsController;
  [(PSNotificationSettingsController *)&v3 dealloc];
}

- (id)allSectionInfoIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  allSectionInfo = [(BBSettingsGateway *)self->_gateway allSectionInfo];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allSectionInfo countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allSectionInfo);
        }

        sectionID = [*(*(&v11 + 1) + 8 * i) sectionID];
        [v3 addObject:sectionID];
      }

      v6 = [allSectionInfo countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end