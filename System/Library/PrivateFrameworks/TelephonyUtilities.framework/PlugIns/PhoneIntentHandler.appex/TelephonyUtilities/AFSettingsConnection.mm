@interface AFSettingsConnection
- (void)startAudioPlaybackOfURL:(id)l completion:(id)completion;
@end

@implementation AFSettingsConnection

- (void)startAudioPlaybackOfURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F5E4();
  }

  pathExtension = [lCopy pathExtension];
  v10 = [UTType typeWithFilenameExtension:pathExtension];
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
  v17 = lCopy;
  v14 = lCopy;
  v15 = [v13 initWithBuilder:v16];
  [(AFSettingsConnection *)self startAudioPlaybackRequest:v15 options:v12 completion:completionCopy];
}

@end