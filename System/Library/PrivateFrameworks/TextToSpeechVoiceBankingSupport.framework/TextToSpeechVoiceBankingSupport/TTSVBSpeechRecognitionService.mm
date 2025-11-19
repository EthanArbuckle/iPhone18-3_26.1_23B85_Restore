@interface TTSVBSpeechRecognitionService
- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4;
@end

@implementation TTSVBSpeechRecognitionService

- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_2331CD674;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2331221F8;
  v13[3] = &block_descriptor_84_1;
  v9 = _Block_copy(v13);
  v10 = a3;
  v11 = a4;
  v12 = self;

  [v7 afterDelay:v9 processBlock:1.0];
  _Block_release(v9);
}

- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2331CB984(v6, v7);
}

- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_2331CC124(v6, a4);
}

@end