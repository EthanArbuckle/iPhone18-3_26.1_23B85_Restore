@interface PlayVoicemailIntentHandler
- (BOOL)isRestrictedMessage:(id)message;
- (PlayVoicemailIntentHandler)init;
- (PlayVoicemailIntentHandler)initWithAudioPlaybackService:(id)service voicemailManager:(id)manager callCenter:(id)center;
- (void)_playVoicemail:(id)voicemail completion:(id)completion;
- (void)endPlayback;
- (void)handlePlayVoicemail:(id)voicemail completion:(id)completion;
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

- (PlayVoicemailIntentHandler)initWithAudioPlaybackService:(id)service voicemailManager:(id)manager callCenter:(id)center
{
  serviceCopy = service;
  managerCopy = manager;
  centerCopy = center;
  v15.receiver = self;
  v15.super_class = PlayVoicemailIntentHandler;
  v12 = [(PlayVoicemailIntentHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioPlaybackService, service);
    objc_storeStrong(&v13->_voicemailManager, manager);
    objc_storeStrong(&v13->_callCenter, center);
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

- (void)handlePlayVoicemail:(id)voicemail completion:(id)completion
{
  voicemailCopy = voicemail;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[PlayVoicemailIntentHandler handlePlayVoicemail:completion:]";
    v16 = 2112;
    v17 = voicemailCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s handlePlayVoicemail: %@", buf, 0x16u);
  }

  voicemailManager = self->_voicemailManager;
  callRecordIdentifier = [voicemailCopy callRecordIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AA40;
  v12[3] = &unk_10004CD98;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(IntentHandlerVoicemailDataSource *)voicemailManager fetchVoicemailWithIdentifier:callRecordIdentifier completion:v12];
}

- (BOOL)isRestrictedMessage:(id)message
{
  messageCopy = message;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    senderDestinationID2 = [messageCopy senderDestinationID];
  }

  else
  {
    senderDestinationID2 = TUCallFilterUnknownCallerAddress;
  }

  v7 = senderDestinationID2;

  objc_initWeak(&location, self);
  queue = [(TUCallCenter *)self->_callCenter queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AF24;
  v11[3] = &unk_10004CDC0;
  v12 = v7;
  v13 = &v16;
  v9 = v7;
  objc_copyWeak(&v14, &location);
  dispatch_sync(queue, v11);

  LOBYTE(queue) = *(v17 + 24);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return queue;
}

- (void)_playVoicemail:(id)voicemail completion:(id)completion
{
  voicemailCopy = voicemail;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[PlayVoicemailIntentHandler _playVoicemail:completion:]";
    v18 = 2112;
    v19 = voicemailCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Attempting to play voicemail: %@", buf, 0x16u);
  }

  audioPlaybackService = self->_audioPlaybackService;
  dataURL = [voicemailCopy dataURL];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B14C;
  v13[3] = &unk_10004CDE8;
  v14 = voicemailCopy;
  v15 = completionCopy;
  v13[4] = self;
  v11 = voicemailCopy;
  v12 = completionCopy;
  [(SiriAudioPlaybackService *)audioPlaybackService startAudioPlaybackOfURL:dataURL completion:v13];
}

@end