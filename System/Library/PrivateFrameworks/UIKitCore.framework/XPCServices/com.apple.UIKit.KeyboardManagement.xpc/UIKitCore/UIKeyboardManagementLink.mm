@interface UIKeyboardManagementLink
- (NSString)description;
- (_UIKeyboardArbiter)owner;
- (void)connectWithQueue:(id)queue;
- (void)createSceneWithCompletion:(id)completion;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)updateSceneSettings;
- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
- (void)workspace:(id)workspace didReceiveActions:(id)actions;
- (void)workspace:(id)workspace willDestroyScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
@end

@implementation UIKeyboardManagementLink

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UIKeyboardManagementLink;
  v3 = [(UIKeyboardManagementLink *)&v6 description];
  v4 = [NSString stringWithFormat:@"<%@ workspace = %@; scene = %@>", v3, self->_workspace, self->_scene];;

  return v4;
}

- (void)connectWithQueue:(id)queue
{
  queueCopy = queue;
  v7 = [FBSWorkspaceInitializationOptions optionsWithDelegate:self];
  [v7 setCallOutQueue:queueCopy];

  v5 = FBSWorkspaceInitialize();
  workspace = self->_workspace;
  self->_workspace = v5;
}

- (void)createSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(FBSMutableSceneClientSettings);
  owner = [(UIKeyboardManagementLink *)self owner];
  [owner updateSceneClientSettings:v5];

  v7 = objc_alloc_init(FBSWorkspaceSceneRequestOptions);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v8 = qword_100008738;
  v25 = qword_100008738;
  if (!qword_100008738)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100001930;
    v20 = &unk_100004220;
    v21 = &v22;
    v9 = sub_100001980();
    v23[3] = dlsym(v9, "_UIKeyboardArbiter_SceneIdentifier");
    qword_100008738 = *(v21[1] + 24);
    v8 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v8)
  {
    [v7 setIdentifier:*v8];
    [v7 setInitialClientSettings:v5];
    [v7 setKeyboardScene:1];
    v10 = +[FBSServiceFacilityClient defaultShellEndpoint];
    workspace = self->_workspace;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000010D8;
    v15[3] = &unk_1000041D0;
    v16 = completionCopy;
    v12 = completionCopy;
    [(FBSWorkspace *)workspace requestSceneFromEndpoint:v10 withOptions:v7 completion:v15];
  }

  else
  {
    v13 = +[NSAssertionHandler currentHandler];
    v14 = [NSString stringWithUTF8String:"NSString *get_UIKeyboardArbiter_SceneIdentifier(void)"];
    [v13 handleFailureInFunction:v14 file:@"_UIKeyboardManagement.m" lineNumber:17 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)updateSceneSettings
{
  scene = self->_scene;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000116C;
  v3[3] = &unk_1000041F8;
  v3[4] = self;
  [(FBSScene *)scene updateClientSettingsWithBlock:v3];
}

- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  v12 = sub_100001384();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[UIKeyboardManagementLink workspace:didCreateScene:withTransitionContext:completion:]";
    v18 = 2112;
    v19 = sceneCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  if (self->_scene)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIKeyboardManagement.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"_scene == nil"}];
  }

  objc_storeStrong(&self->_scene, scene);
  [(FBSScene *)self->_scene setDelegate:self];
  if (completionCopy)
  {
    v13 = objc_alloc_init(FBSWorkspaceCreateSceneResponse);
    completionCopy[2](completionCopy, v13);
  }

  owner = [(UIKeyboardManagementLink *)self owner];
  [owner activateClients];
}

- (void)workspace:(id)workspace willDestroyScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  v10 = sub_100001384();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[UIKeyboardManagementLink workspace:willDestroyScene:withTransitionContext:completion:]";
    v16 = 2112;
    v17 = sceneCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", &v14, 0x16u);
  }

  scene = self->_scene;
  self->_scene = 0;

  owner = [(UIKeyboardManagementLink *)self owner];
  [owner attemptConnection];

  if (completionCopy)
  {
    v13 = objc_alloc_init(FBSWorkspaceDestroySceneResponse);
    completionCopy[2](completionCopy, v13);
  }
}

- (void)workspace:(id)workspace didReceiveActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100001384();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[UIKeyboardManagementLink workspace:didReceiveActions:]";
    v8 = 2112;
    v9 = actionsCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }
}

- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  diffCopy = diff;
  completionCopy = completion;
  v9 = sub_100001384();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "[UIKeyboardManagementLink scene:didUpdateWithDiff:transitionContext:completion:]";
    v13 = 2112;
    v14 = diffCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s %@", &v11, 0x16u);
  }

  if (completionCopy)
  {
    v10 = objc_alloc_init(FBSWorkspaceSceneUpdateResponse);
    completionCopy[2](completionCopy, v10);
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100001384();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[UIKeyboardManagementLink scene:didReceiveActions:]";
    v8 = 2112;
    v9 = actionsCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }
}

- (_UIKeyboardArbiter)owner
{
  WeakRetained = objc_loadWeakRetained(&self->owner);

  return WeakRetained;
}

@end