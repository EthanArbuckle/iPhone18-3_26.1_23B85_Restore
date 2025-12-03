@interface SRUIFMarkerCapableSpeechSynthesizer
- (SRUIFMarkerCapableSpeechSynthesizer)init;
- (unsigned)audioSessionID;
- (void)cancel;
- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion;
- (void)enqueuePhaticWithCompletion:(id)completion;
- (void)enqueueSpeechSynthesisRequest:(id)request;
- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8;
- (void)isSynthesisQueueEmpty:(id)empty;
- (void)speechSynthesisDidFinish:(id)finish withIdentifier:(id)identifier;
- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty;
- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to;
- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion;
- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion;
@end

@implementation SRUIFMarkerCapableSpeechSynthesizer

- (unsigned)audioSessionID
{
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  audioSessionID = [(SRUIFSpeechSynthesizer *)synthesizer audioSessionID];

  return audioSessionID;
}

- (void)enqueueSpeechSynthesisRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  synthesizer = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy synthesizer];
  [(SRUIFSpeechSynthesizer *)synthesizer enqueueSpeechSynthesisRequest:requestCopy];
}

- (void)enqueuePhaticWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_2695602C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.enqueuePhatic(completion:)(v7, v6);
  sub_269525B8C(v7);
}

- (void)cancel
{
  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.cancel()();
}

- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = sub_26955FCEC;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.duckTTSVolume(to:rampTime:completion:)(v11, v10, to, time);
  sub_269525B8C(v11);
}

- (void)isSynthesisQueueEmpty:(id)empty
{
  v4 = _Block_copy(empty);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26955FCD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.isSynthesisQueueEmpty(_:)(v7, v6);
  sub_269525B8C(v7);
}

- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion
{
  v14 = _Block_copy(completion);
  if (identifier)
  {
    v15 = sub_269562BB0();
    identifier = v16;
    if (id)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!id)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_269562BB0();
  id = v18;
  if (v14)
  {
LABEL_4:
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v14 = sub_2695602C4;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  dataCopy = data;
  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.enqueue(_:identifier:sessionId:provisionally:eligibleAfterDuration:completion:)(data, duration, v15, identifier, v17, id, provisionally, v14, v19);
  sub_269525B8C(v14);
}

- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8
{
  v50 = _Block_copy(completion);
  if (text)
  {
    v56 = sub_269562BB0();
    v59 = v26;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v55 = 0;
    v58 = 0;
    if (id)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v56 = 0;
  v59 = 0;
  if (!identifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  v55 = sub_269562BB0();
  v58 = v27;
  if (id)
  {
LABEL_4:
    v53 = sub_269562BB0();
    v57 = v28;
    goto LABEL_8;
  }

LABEL_7:
  v53 = 0;
  v57 = 0;
LABEL_8:
  voiceCopy = voice;
  languageCopy = language;
  genderCopy = gender;
  styleCopy = style;
  preparationIdentifierCopy = preparationIdentifier;
  contextCopy = context;
  infoCopy = info;
  selfCopy = self;
  if (languageCopy)
  {
    v49 = sub_269562BB0();
    v52 = v35;

    if (genderCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v49 = 0;
    v52 = 0;
    if (genderCopy)
    {
LABEL_10:
      v48 = sub_269562BB0();
      v37 = v36;

      v38 = v50;
      if (styleCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  v48 = 0;
  v37 = 0;
  v38 = v50;
  if (styleCopy)
  {
LABEL_11:
    v39 = sub_269562BB0();
    v41 = v40;

    if (preparationIdentifierCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v39 = 0;
  v41 = 0;
  if (preparationIdentifierCopy)
  {
LABEL_12:
    v42 = sub_269562BB0();
    v44 = v43;

    if (v38)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  v42 = 0;
  v44 = 0;
  if (v38)
  {
LABEL_13:
    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    v38 = sub_26955FCCC;
    if (contextCopy)
    {
      goto LABEL_14;
    }

LABEL_21:
    v46 = 0;
    if (infoCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_20:
  v45 = 0;
  if (!contextCopy)
  {
    goto LABEL_21;
  }

LABEL_14:
  v46 = sub_269562B80();

  if (infoCopy)
  {
LABEL_15:
    v47 = sub_269562B80();

    goto LABEL_23;
  }

LABEL_22:
  v47 = 0;
LABEL_23:
  SRUIFMarkerCapableSpeechSynthesizer.enqueueText(_:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:completion:analyticsContext:speakableContextInfo:)(v56, v59, v55, v58, v53, v57, voiceCopy, v49, duration, v52, v48, v37, v39, v41, phonetic, provisionally, delayed, s, v42, v44, v38, v45, v46, v47);

  sub_269525B8C(v38);
}

- (void)speechSynthesisDidFinish:(id)finish withIdentifier:(id)identifier
{
  v7 = sub_269562B00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (identifier)
  {
    identifier = sub_269562BB0();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v18[0] = finish;
  selfCopy = self;
  queue = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy queue];
  sub_269562AF0();
  v16 = swift_allocObject();
  v17 = swift_unknownObjectWeakInit();
  MEMORY[0x28223BE20](v17);
  v18[-4] = v16;
  v18[-3] = finish;
  v18[-2] = identifier;
  v18[-1] = v13;
  sub_269562CE0();
  (*(v8 + 8))(v11, v7);
}

- (void)speechSynthesisDidStopSpeakingWithIdentifier:(id)identifier queueIsEmpty:(BOOL)empty
{
  if (identifier)
  {
    v6 = sub_269562BB0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v8;
  SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisDidStopSpeaking(withIdentifier:queueIsEmpty:)(v10, empty);
}

- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to
{
  selfCopy = self;
  delegate = [(SRUIFMarkerCapableSpeechSynthesizer *)selfCopy delegate];
  if (delegate)
  {
    *&v5 = to;
    [(SRUIFSpeechSynthesizerDelegate *)delegate speechSynthesisDidUpdatePowerLevelTo:v5];
    swift_unknownObjectRelease();
  }
}

- (void)speechSynthesisGetPreparedTextForIdentifier:(id)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (identifier)
  {
    v8 = sub_269562BB0();
    identifier = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_26955FCC4;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_26955E570(v8, identifier, v7, v10);
  sub_269525B8C(v7);
}

- (void)speechSynthesisRequestsForceAudioSessionActiveWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_26955FCA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SRUIFMarkerCapableSpeechSynthesizer.speechSynthesisRequestsForceAudioSessionActive(completion:)(v7, v6);
  sub_269525B8C(v7);
}

- (SRUIFMarkerCapableSpeechSynthesizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end