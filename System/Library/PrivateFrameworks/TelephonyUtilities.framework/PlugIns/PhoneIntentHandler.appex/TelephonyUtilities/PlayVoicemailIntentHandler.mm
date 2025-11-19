@interface PlayVoicemailIntentHandler
- (BOOL)isRestrictedMessage:(id)a3;
- (PlayVoicemailIntentHandler)init;
- (PlayVoicemailIntentHandler)initWithAudioPlaybackService:(id)a3 voicemailManager:(id)a4 callCenter:(id)a5;
- (void)_playVoicemail:(id)a3 completion:(id)a4;
- (void)endPlayback;
- (void)handlePlayVoicemail:(id)a3 completion:(id)a4;
@end

@implementation PlayVoicemailIntentHandler

- (PlayVoicemailIntentHandler)init
{
  v3 = objc_alloc_init(AFSettingsConnection);
  v4 = +[IntentHandlerMessageStore sharedInstance];
  v5 = +[TUCallCenter sharedInstance];
  v6 = [(PlayVoicemailIntentHandler *)self initWithAudioPlaybackService:v3 voicemailManager:v4 callCenter:v5];

  return v6;
}

- (PlayVoicemailIntentHandler)initWithAudioPlaybackService:(id)a3 voicemailManager:(id)a4 callCenter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PlayVoicemailIntentHandler;
  v12 = [(PlayVoicemailIntentHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioPlaybackService, a3);
    objc_storeStrong(&v13->_voicemailManager, a4);
    objc_storeStrong(&v13->_callCenter, a5);
  }

  return v13;
}

- (void)endPlayback
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[PlayVoicemailIntentHandler endPlayback]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Observed playback ended, e.g. user dismissed siri", &v3, 0xCu);
  }
}

- (void)handlePlayVoicemail:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s handlePlayVoicemail: %@", buf, 0x16u);
  }

  voicemailManager = self->_voicemailManager;
  v10 = [v6 callRecordIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AA40;
  v12[3] = &unk_10004CD98;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(IntentHandlerVoicemailDataSource *)voicemailManager fetchVoicemailWithIdentifier:v10 completion:v12];
}

- (BOOL)isRestrictedMessage:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v4 senderDestinationID];
  if ([v5 length])
  {
    v6 = [v4 senderDestinationID];
  }

  else
  {
    v6 = TUCallFilterUnknownCallerAddress;
  }

  v7 = v6;

  objc_initWeak(&location, self);
  v8 = [(TUCallCenter *)self->_callCenter queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AF24;
  v11[3] = &unk_10004CDC0;
  v12 = v7;
  v13 = &v16;
  v9 = v7;
  objc_copyWeak(&v14, &location);
  dispatch_sync(v8, v11);

  LOBYTE(v8) = *(v17 + 24);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (void)_playVoicemail:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[PlayVoicemailIntentHandler _playVoicemail:completion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Attempting to play voicemail: %@", buf, 0x16u);
  }

  audioPlaybackService = self->_audioPlaybackService;
  v10 = [v6 dataURL];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B14C;
  v13[3] = &unk_10004CDE8;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v11 = v6;
  v12 = v7;
  [(SiriAudioPlaybackService *)audioPlaybackService startAudioPlaybackOfURL:v10 completion:v13];
}

@end