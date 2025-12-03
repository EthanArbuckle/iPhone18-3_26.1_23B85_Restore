@interface RDSpeechSynthesis
+ (id)sharedManager;
- (RDSpeechSynthesis)init;
- (void)_waitAndFinishSpeaking;
- (void)speakString:(id)string toURL:(id)l withLanguageCode:(id)code withCallback:(RDSpeechSynthesisCallback *)callback;
@end

@implementation RDSpeechSynthesis

+ (id)sharedManager
{
  if (qword_10010E430 != -1)
  {
    sub_1000C8DC4();
  }

  v3 = qword_10010E438;

  return v3;
}

- (RDSpeechSynthesis)init
{
  v6.receiver = self;
  v6.super_class = RDSpeechSynthesis;
  v2 = [(RDSpeechSynthesis *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVSpeechSynthesizer);
    m_synth = v2->_m_synth;
    v2->_m_synth = v3;

    [(AVSpeechSynthesizer *)v2->_m_synth setDelegate:v2];
  }

  return v2;
}

- (void)speakString:(id)string toURL:(id)l withLanguageCode:(id)code withCallback:(RDSpeechSynthesisCallback *)callback
{
  lCopy = l;
  codeCopy = code;
  self->m_callback = *callback;
  v12 = [AVSpeechUtterance speechUtteranceWithString:string];
  v13 = [AVSpeechSynthesisVoice voiceWithLanguage:codeCopy];
  [v12 setVoice:v13];
  LODWORD(v14) = 0.5;
  [v12 setRate:v14];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100007234;
  v28 = sub_100007244;
  v29 = 0;
  m_synth = self->_m_synth;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000724C;
  v21 = &unk_1000FE080;
  v23 = &v24;
  v16 = lCopy;
  v22 = v16;
  [(AVSpeechSynthesizer *)m_synth writeUtterance:v12 toBufferCallback:&v18];
  [(RDSpeechSynthesis *)self _waitAndFinishSpeaking:v18];
  v17 = v25[5];
  v25[5] = 0;

  _Block_object_dispose(&v24, 8);
}

- (void)_waitAndFinishSpeaking
{
  usleep(0x7A120u);
  if ([(AVSpeechSynthesizer *)self->_m_synth isSpeaking])
  {
    do
    {
      usleep(0x186A0u);
    }

    while ([(AVSpeechSynthesizer *)self->_m_synth isSpeaking]);
  }

  ctx = self->m_callback.ctx;
  DidFinishSpeaking = self->m_callback.DidFinishSpeaking;

  DidFinishSpeaking(ctx);
}

@end