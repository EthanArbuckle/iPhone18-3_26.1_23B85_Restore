void sub_100001380(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 remoteViewControllerProxy];
  [v4 remoteViewControllerDidUpdateVoiceShortcut:v3 error:0];
}

void sub_1000013E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000014B0;
    v6[3] = &unk_100008288;
    v8 = v4;
    v7 = v3;
    [v7 generateShortcutRepresentation:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void sub_1000014B0(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = [INVoiceShortcut alloc];
    v4 = [NSUUID alloc];
    v5 = [*(a1 + 32) workflowID];
    v6 = [v4 initWithUUIDString:v5];
    v7 = [*(a1 + 32) name];
    v8 = [v3 _initWithIdentifier:v6 invocationPhrase:v7 shortcut:v9];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100001708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 remoteViewControllerProxy];
  [v4 remoteViewControllerDidCreateVoiceShortcut:v3 error:0];
}

void sub_100001CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startAccessingAppBundle];
  v2 = [WFAddToSiriViewController alloc];
  v3 = *(a1 + 32);
  v4 = +[WFDatabase defaultDatabase];
  v5 = [v2 initWithWorkflow:v3 database:v4];

  [WeakRetained setupWithShortcutViewController:v5];
}

void sub_100001F64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startAccessingAppBundle];
  v3 = [WeakRetained _secureHostApplicationBundleIdentifier];
  if (v3)
  {
    v4 = [*(a1 + 32) shortcutWithActivityBundleIdentifier:v3];
    v5 = [v4 intent];
    [v5 _setLaunchId:v3];

    v15 = 0;
    v6 = [[WFWorkflow alloc] initWithShortcut:v4 error:&v15];
    v7 = v15;
    if (v6)
    {
      v8 = [WFAddToSiriViewController alloc];
      v9 = +[WFDatabase defaultDatabase];
      v10 = [v8 initWithWorkflow:v6 database:v9];

      [WeakRetained setupWithShortcutViewController:v10];
    }

    else
    {
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        *buf = 136315394;
        v18 = "[WFShortcutServiceViewController buildForAddingShortcut:]_block_invoke";
        v19 = 2114;
        v20 = v14;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Couldn't create shortcut from donation %{public}@", buf, 0x16u);
      }

      v10 = INIntentError();
      v13 = [WeakRetained remoteViewControllerProxy];
      [v13 remoteViewControllerDidCreateVoiceShortcut:0 error:v10];
    }
  }

  else
  {
    v4 = [UIAlertController alertControllerWithTitle:@"Missing application-identifier entitlement." message:@"Make sure to add the application-identifier to the entitlements of your app." preferredStyle:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002218;
    v16[3] = &unk_100008210;
    v16[4] = WeakRetained;
    v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v16];
    [v4 addAction:v11];

    [WeakRetained presentViewController:v4 animated:1 completion:0];
  }
}

void sub_100002218(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteViewControllerProxy];
  [v1 remoteViewControllerDidCancel];
}