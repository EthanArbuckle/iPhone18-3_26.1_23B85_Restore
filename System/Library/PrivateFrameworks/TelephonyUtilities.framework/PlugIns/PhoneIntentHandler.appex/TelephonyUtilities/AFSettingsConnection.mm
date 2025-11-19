@interface AFSettingsConnection
- (void)startAudioPlaybackOfURL:(id)a3 completion:(id)a4;
@end

@implementation AFSettingsConnection

- (void)startAudioPlaybackOfURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F5E4();
  }

  v9 = [v6 pathExtension];
  v10 = [UTType typeWithFilenameExtension:v9];
  v11 = [v10 conformsToType:UTTypeQuickTimeMovie];

  if (v11)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = [AFAudioPlaybackRequest alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A668;
  v16[3] = &unk_10004CD48;
  v17 = v6;
  v14 = v6;
  v15 = [v13 initWithBuilder:v16];
  [(AFSettingsConnection *)self startAudioPlaybackRequest:v15 options:v12 completion:v7];
}

@end