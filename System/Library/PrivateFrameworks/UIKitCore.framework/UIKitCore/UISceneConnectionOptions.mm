@interface UISceneConnectionOptions
+ (id)bsActionForReducedLaunch:(BOOL)launch responder:(id)responder error:(id *)error;
- (BOOL)_reducedSceneLaunch;
- (CKShareMetadata)cloudKitShareMetadata;
- (FBSScene)_fbsScene;
- (FBSSceneSpecification)_specification;
- (NSSet)_assistantTasks;
- (NSSet)userActivities;
- (NSString)handoffUserActivityType;
- (NSString)sourceApplication;
- (UIApplicationShortcutItem)shortcutItem;
- (UNNotificationResponse)notificationResponse;
- (id)_initWithConnectionOptionsContext:(void *)context fbsScene:(void *)scene specification:;
- (id)_objectForConnectionValueKey:(id)key;
- (int64_t)_flagForConnectionValueKey:(id)key;
- (void)performPostConnectionCleanup;
@end

@implementation UISceneConnectionOptions

- (FBSScene)_fbsScene
{
  WeakRetained = objc_loadWeakRetained(&self->_fbsScene);

  return WeakRetained;
}

- (FBSSceneSpecification)_specification
{
  WeakRetained = objc_loadWeakRetained(&self->_specification);

  return WeakRetained;
}

- (NSSet)userActivities
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKey:@"_UISceneConnectionOptionsUserActivityDictionariesKey"];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) objectForKey:{@"_UISceneConnectionOptionsUserActivityKey", v12}];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)performPostConnectionCleanup
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(self + 32);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    v7 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (UIApplicationShortcutItem)shortcutItem
{
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKeyedSubscript:@"_UISceneConnectionOptionsShortcutItemKey"];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (NSString)sourceApplication
{
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKeyedSubscript:@"_UISceneConnectionOptionsSourceApplicationKey"];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (NSString)handoffUserActivityType
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSDictionary *)self->_launchOptionsDictionary objectForKey:@"_UISceneConnectionOptionsUserActivityDictionariesKey"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"_UISceneConnectionOptionsUserActivityKey", v12}];
        if (!v8)
        {
          v9 = [v7 objectForKey:@"_UISceneConnectionOptionsUserActivityTypeKey"];
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (UNNotificationResponse)notificationResponse
{
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKeyedSubscript:@"_UISceneConnectionOptionsNotificationResponsesKey"];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (CKShareMetadata)cloudKitShareMetadata
{
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKeyedSubscript:@"_UISceneConnectionOptionsCloudKitShareMetadataKey"];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (BOOL)_reducedSceneLaunch
{
  selfCopy = self;
  _fbScene = [(_UISceneHostingController *)selfCopy _fbScene];
  if (_fbScene)
  {
    v4 = _fbScene;
    v5 = sub_189149124();
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

+ (id)bsActionForReducedLaunch:(BOOL)launch responder:(id)responder error:(id *)error
{
  launchCopy = launch;
  responderCopy = responder;
  v7 = sub_188EBA4B0(launchCopy, 0, 0, &type metadata for _UIReducedLaunchSceneConnectionOptionDefinition, &qword_1EA93E2D0);
  v8 = [objc_allocWithZone(MEMORY[0x1E698E5F0]) initWithInfo:v7 responder:responderCopy];

  return v8;
}

- (id)_initWithConnectionOptionsContext:(void *)context fbsScene:(void *)scene specification:
{
  v7 = a2;
  contextCopy = context;
  sceneCopy = scene;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = UISceneConnectionOptions;
    self = objc_msgSendSuper2(&v15, sel_init);
    if (self)
    {
      launchOptionsDictionary = [v7 launchOptionsDictionary];
      v11 = self[1];
      self[1] = launchOptionsDictionary;

      if (v7)
      {
        objc_storeStrong(self + 4, v7[4]);
        objc_storeWeak(self + 2, contextCopy);
        objc_storeWeak(self + 3, sceneCopy);
        v12 = v7[5];
      }

      else
      {
        objc_storeStrong(self + 4, 0);
        objc_storeWeak(self + 2, contextCopy);
        objc_storeWeak(self + 3, sceneCopy);
        v12 = 0;
      }

      objc_storeStrong(self + 5, v12);
      if (v7)
      {
        v13 = v7[6];
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(self + 6, v13);
    }
  }

  return self;
}

- (NSSet)_assistantTasks
{
  v2 = [(NSDictionary *)self->_launchOptionsDictionary objectForKeyedSubscript:@"_UISceneConnectionOptionsAssistantTasksKey"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (int64_t)_flagForConnectionValueKey:(id)key
{
  keyCopy = key;
  if (self && (connectionValues = self->_connectionValues) != 0)
  {
    v6 = [(BSKeyedSettings *)connectionValues flagForKey:keyCopy];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)_objectForConnectionValueKey:(id)key
{
  if (self)
  {
    self = self->_connectionValues;
  }

  return [(UISceneConnectionOptions *)self objectForKey:key];
}

@end