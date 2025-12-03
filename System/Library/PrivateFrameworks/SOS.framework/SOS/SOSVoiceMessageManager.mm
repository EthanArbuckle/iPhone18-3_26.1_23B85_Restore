@interface SOSVoiceMessageManager
+ (id)_messageStringKeyForMessageType:(int64_t)type;
- (SOSVoiceMessageManager)initWithMessageKey:(id)key;
- (SOSVoiceMessageManager)initWithMessageType:(int64_t)type;
- (SOSVoiceUtterer)voiceUtterer;
- (id)utterances;
- (void)_playUtterances:(id)utterances;
- (void)dealloc;
- (void)playMessage;
- (void)startMessagePlayback;
- (void)stopMessagePlayback;
@end

@implementation SOSVoiceMessageManager

- (SOSVoiceMessageManager)initWithMessageKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = SOSVoiceMessageManager;
  v6 = [(SOSVoiceMessageManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageKey, key);
  }

  return v7;
}

- (void)dealloc
{
  [(SOSVoiceMessageManager *)self stopMessagePlayback];
  v3.receiver = self;
  v3.super_class = SOSVoiceMessageManager;
  [(SOSVoiceMessageManager *)&v3 dealloc];
}

- (SOSVoiceMessageManager)initWithMessageType:(int64_t)type
{
  v4 = [objc_opt_class() _messageStringKeyForMessageType:type];
  v5 = [(SOSVoiceMessageManager *)self initWithMessageKey:v4];

  return v5;
}

- (void)startMessagePlayback
{
  if (+[SOSUtilities shouldSilenceSOSFlow])
  {
    v3 = sos_voice_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOS flow silenced so not playing voice message", v4, 2u);
    }
  }

  else
  {

    [(SOSVoiceMessageManager *)self playMessage];
  }
}

- (void)playMessage
{
  v3 = sos_voice_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "playMessage", v5, 2u);
  }

  utterances = [(SOSVoiceMessageManager *)self utterances];
  [(SOSVoiceMessageManager *)self _playUtterances:utterances];
}

- (void)_playUtterances:(id)utterances
{
  v10 = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  v5 = sos_voice_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = utterancesCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Playing utterances: %@", &v8, 0xCu);
  }

  voiceUtterer = [(SOSVoiceMessageManager *)self voiceUtterer];
  [voiceUtterer speakUtterances:utterancesCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMessagePlayback
{
  v3 = sos_voice_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "Stopping voice message...", v4, 2u);
  }

  [(SOSVoiceUtterer *)self->_voiceUtterer stopSpeaking];
}

- (SOSVoiceUtterer)voiceUtterer
{
  voiceUtterer = self->_voiceUtterer;
  if (!voiceUtterer)
  {
    v4 = objc_alloc_init(SOSVoiceUtterer);
    v5 = self->_voiceUtterer;
    self->_voiceUtterer = v4;

    voiceUtterer = self->_voiceUtterer;
  }

  return voiceUtterer;
}

+ (id)_messageStringKeyForMessageType:(int64_t)type
{
  if (type > 102)
  {
    if (type == 201)
    {
      return @"SOS_CHECKIN_SPEECH_KAPPA";
    }

    if (type == 103)
    {
      return @"SOS_VOICEMESSAGE_SPEECH_RELEASE_TO_CALL";
    }
  }

  else
  {
    if (type == 101)
    {
      return @"SOS_VOICEMESSAGE_SPEECH_CALL_BUFFER";
    }

    if (type == 102)
    {
      return @"SOS_VOICEMESSAGE_SPEECH_RELEASE_TO_CALL_INITIAL";
    }
  }

  v5 = sos_voice_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SOSVoiceMessageManager *)type _messageStringKeyForMessageType:v5];
  }

  return 0;
}

- (id)utterances
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [SOSVoiceUtterance alloc];
  messageKey = [(SOSVoiceMessageManager *)self messageKey];
  voiceLanguage = [(SOSVoiceMessageManager *)self voiceLanguage];
  v6 = [(SOSVoiceUtterance *)v3 initWithMessageKey:messageKey voiceLanguage:voiceLanguage];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)_messageStringKeyForMessageType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "_messageStringKeyForReason - Unexpected messageType: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end