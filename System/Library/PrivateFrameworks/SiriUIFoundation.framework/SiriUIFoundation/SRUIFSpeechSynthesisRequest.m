@interface SRUIFSpeechSynthesisRequest
- (SRUIFSpeechSynthesisRequest)initWithAudioData:(id)a3 identifier:(id)a4 sessionId:(id)a5 provisionally:(BOOL)a6 eligibleAfterDuration:(double)a7 canUseServerTTS:(BOOL)a8 completion:(id)a9;
- (SRUIFSpeechSynthesisRequest)initWithText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 language:(id)a7 gender:(id)a8 voiceName:(id)a9 provisional:(BOOL)a10 eligibleAfterDuration:(double)a11 delayed:(BOOL)a12 preparationIdentifier:(id)a13 completion:(id)a14 analyticsContext:(id)a15 speakableContextInfo:(id)a16 canUseServerTTS:(BOOL)a17;
- (SRUIFSpeechSynthesisRequest)initWithText:(id)a3 identifier:(id)a4 sessionId:(id)a5 language:(id)a6 gender:(id)a7 voiceName:(id)a8 canUseServerTTS:(BOOL)a9 completion:(id)a10;
@end

@implementation SRUIFSpeechSynthesisRequest

- (SRUIFSpeechSynthesisRequest)initWithText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 language:(id)a7 gender:(id)a8 voiceName:(id)a9 provisional:(BOOL)a10 eligibleAfterDuration:(double)a11 delayed:(BOOL)a12 preparationIdentifier:(id)a13 completion:(id)a14 analyticsContext:(id)a15 speakableContextInfo:(id)a16 canUseServerTTS:(BOOL)a17
{
  v58 = a3;
  v57 = a4;
  v56 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v55 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v59.receiver = self;
  v59.super_class = SRUIFSpeechSynthesisRequest;
  v30 = [(SRUIFSpeechSynthesisRequest *)&v59 init];
  if (v30)
  {
    v31 = [v58 copy];
    text = v30->_text;
    v30->_text = v31;

    v33 = [v56 copy];
    identifier = v30->_identifier;
    v30->_identifier = v33;

    v35 = [v23 copy];
    sessionId = v30->_sessionId;
    v30->_sessionId = v35;

    v30->_provisional = a10;
    v30->_delayed = a12;
    v30->_canUseServerTTS = a17;
    v37 = _Block_copy(v27);
    completion = v30->_completion;
    v30->_completion = v37;

    v39 = [v28 copy];
    analyticsContext = v30->_analyticsContext;
    v30->_analyticsContext = v39;

    v41 = [v29 copy];
    speakableContextInfo = v30->_speakableContextInfo;
    v30->_speakableContextInfo = v41;

    v43 = [v24 copy];
    language = v30->_language;
    v30->_language = v43;

    v45 = [v25 copy];
    gender = v30->_gender;
    v30->_gender = v45;

    v47 = [v26 copy];
    voiceName = v30->_voiceName;
    v30->_voiceName = v47;

    v49 = [v57 copy];
    audioData = v30->_audioData;
    v30->_audioData = v49;

    v30->_eligibleAfterDuration = a11 != 0.0;
    objc_storeStrong(&v30->_preparationIdentifier, a13);
    v51 = _Block_copy(v27);
    v52 = v30->_completion;
    v30->_completion = v51;
  }

  return v30;
}

- (SRUIFSpeechSynthesisRequest)initWithText:(id)a3 identifier:(id)a4 sessionId:(id)a5 language:(id)a6 gender:(id)a7 voiceName:(id)a8 canUseServerTTS:(BOOL)a9 completion:(id)a10
{
  LOBYTE(v12) = a9;
  LOWORD(v11) = 0;
  return [(SRUIFSpeechSynthesisRequest *)self initWithText:a3 audioData:0 identifier:a4 sessionId:a5 language:a6 gender:a7 voiceName:0.0 provisional:a8 eligibleAfterDuration:v11 delayed:0 preparationIdentifier:a10 completion:0 analyticsContext:0 speakableContextInfo:v12 canUseServerTTS:?];
}

- (SRUIFSpeechSynthesisRequest)initWithAudioData:(id)a3 identifier:(id)a4 sessionId:(id)a5 provisionally:(BOOL)a6 eligibleAfterDuration:(double)a7 canUseServerTTS:(BOOL)a8 completion:(id)a9
{
  LOBYTE(v11) = a8;
  LOWORD(v10) = a6;
  return [(SRUIFSpeechSynthesisRequest *)self initWithText:0 audioData:a3 identifier:a4 sessionId:a5 language:0 gender:0 voiceName:a7 provisional:0 eligibleAfterDuration:v10 delayed:0 preparationIdentifier:a9 completion:0 analyticsContext:0 speakableContextInfo:v11 canUseServerTTS:?];
}

@end