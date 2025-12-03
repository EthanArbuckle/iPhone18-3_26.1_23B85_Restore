@interface SRUIFSpeechSynthesisRequest
- (SRUIFSpeechSynthesisRequest)initWithAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration canUseServerTTS:(BOOL)s completion:(id)completion;
- (SRUIFSpeechSynthesisRequest)initWithText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender voiceName:(id)name provisional:(BOOL)self0 eligibleAfterDuration:(double)self1 delayed:(BOOL)self2 preparationIdentifier:(id)self3 completion:(id)self4 analyticsContext:(id)self5 speakableContextInfo:(id)self6 canUseServerTTS:(BOOL)self7;
- (SRUIFSpeechSynthesisRequest)initWithText:(id)text identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender voiceName:(id)name canUseServerTTS:(BOOL)s completion:(id)self0;
@end

@implementation SRUIFSpeechSynthesisRequest

- (SRUIFSpeechSynthesisRequest)initWithText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender voiceName:(id)name provisional:(BOOL)self0 eligibleAfterDuration:(double)self1 delayed:(BOOL)self2 preparationIdentifier:(id)self3 completion:(id)self4 analyticsContext:(id)self5 speakableContextInfo:(id)self6 canUseServerTTS:(BOOL)self7
{
  textCopy = text;
  dataCopy = data;
  identifierCopy = identifier;
  idCopy = id;
  languageCopy = language;
  genderCopy = gender;
  nameCopy = name;
  preparationIdentifierCopy = preparationIdentifier;
  completionCopy = completion;
  contextCopy = context;
  infoCopy = info;
  v59.receiver = self;
  v59.super_class = SRUIFSpeechSynthesisRequest;
  v30 = [(SRUIFSpeechSynthesisRequest *)&v59 init];
  if (v30)
  {
    v31 = [textCopy copy];
    text = v30->_text;
    v30->_text = v31;

    v33 = [identifierCopy copy];
    identifier = v30->_identifier;
    v30->_identifier = v33;

    v35 = [idCopy copy];
    sessionId = v30->_sessionId;
    v30->_sessionId = v35;

    v30->_provisional = provisional;
    v30->_delayed = delayed;
    v30->_canUseServerTTS = s;
    v37 = _Block_copy(completionCopy);
    completion = v30->_completion;
    v30->_completion = v37;

    v39 = [contextCopy copy];
    analyticsContext = v30->_analyticsContext;
    v30->_analyticsContext = v39;

    v41 = [infoCopy copy];
    speakableContextInfo = v30->_speakableContextInfo;
    v30->_speakableContextInfo = v41;

    v43 = [languageCopy copy];
    language = v30->_language;
    v30->_language = v43;

    v45 = [genderCopy copy];
    gender = v30->_gender;
    v30->_gender = v45;

    v47 = [nameCopy copy];
    voiceName = v30->_voiceName;
    v30->_voiceName = v47;

    v49 = [dataCopy copy];
    audioData = v30->_audioData;
    v30->_audioData = v49;

    v30->_eligibleAfterDuration = duration != 0.0;
    objc_storeStrong(&v30->_preparationIdentifier, preparationIdentifier);
    v51 = _Block_copy(completionCopy);
    v52 = v30->_completion;
    v30->_completion = v51;
  }

  return v30;
}

- (SRUIFSpeechSynthesisRequest)initWithText:(id)text identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender voiceName:(id)name canUseServerTTS:(BOOL)s completion:(id)self0
{
  LOBYTE(v12) = s;
  LOWORD(v11) = 0;
  return [(SRUIFSpeechSynthesisRequest *)self initWithText:text audioData:0 identifier:identifier sessionId:id language:language gender:gender voiceName:0.0 provisional:name eligibleAfterDuration:v11 delayed:0 preparationIdentifier:completion completion:0 analyticsContext:0 speakableContextInfo:v12 canUseServerTTS:?];
}

- (SRUIFSpeechSynthesisRequest)initWithAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration canUseServerTTS:(BOOL)s completion:(id)completion
{
  LOBYTE(v11) = s;
  LOWORD(v10) = provisionally;
  return [(SRUIFSpeechSynthesisRequest *)self initWithText:0 audioData:data identifier:identifier sessionId:id language:0 gender:0 voiceName:duration provisional:0 eligibleAfterDuration:v10 delayed:0 preparationIdentifier:completion completion:0 analyticsContext:0 speakableContextInfo:v11 canUseServerTTS:?];
}

@end