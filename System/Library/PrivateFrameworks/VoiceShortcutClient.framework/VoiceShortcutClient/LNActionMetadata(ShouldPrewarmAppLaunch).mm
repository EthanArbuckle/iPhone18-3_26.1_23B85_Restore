@interface LNActionMetadata(ShouldPrewarmAppLaunch)
- (uint64_t)wf_shouldPrewarmAppLaunchWithAction:()ShouldPrewarmAppLaunch;
@end

@implementation LNActionMetadata(ShouldPrewarmAppLaunch)

- (uint64_t)wf_shouldPrewarmAppLaunchWithAction:()ShouldPrewarmAppLaunch
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([a1 openAppWhenRun] & 1) == 0)
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s openAppWhenRun is false";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v5 = [v4 systemProtocols];
  v6 = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s Intent conforms to the camera capture protocol";
LABEL_10:
      _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (([a1 outputFlags] & 0x26) != 0)
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
      v9 = "%s Intent returns a snippet or dialog";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    v13 = [a1 parameters];
    v8 = [v13 if_objectsPassingTest:&__block_literal_global_11014];

    if ([v8 count]>= 2)
    {
      v25 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v35 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
        v26 = "%s App Shortcut with multiple required parameters with missing value";
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_11;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [a1 parameters];
  v14 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    v27 = *MEMORY[0x1E69AC598];
LABEL_18:
    v17 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v29 + 1) + 8 * v17);
      v19 = [v18 isOptional];
      if (v4 && (v19 & 1) == 0)
      {
        v20 = [v4 parameters];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __80__LNActionMetadata_ShouldPrewarmAppLaunch__wf_shouldPrewarmAppLaunchWithAction___block_invoke_50;
        v28[3] = &unk_1E7B01608;
        v28[4] = v18;
        v21 = [v20 if_firstObjectPassingTest:v28];
        v22 = [v21 value];

        if (!v22)
        {
          v23 = [v18 typeSpecificMetadata];
          v24 = [v23 objectForKeyedSubscript:v27];

          if (!v24)
          {
            v25 = getWFVoiceShortcutClientLogObject();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }

            *buf = 136315138;
            v35 = "[LNActionMetadata(ShouldPrewarmAppLaunch) wf_shouldPrewarmAppLaunchWithAction:]";
            v26 = "%s Required parameter is missing a value";
LABEL_34:
            _os_log_impl(&dword_1B1DE3000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
            goto LABEL_35;
          }
        }
      }

      if (v15 == ++v17)
      {
        v15 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v10 = 1;
        if (v15)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }
    }
  }

  v10 = 1;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end