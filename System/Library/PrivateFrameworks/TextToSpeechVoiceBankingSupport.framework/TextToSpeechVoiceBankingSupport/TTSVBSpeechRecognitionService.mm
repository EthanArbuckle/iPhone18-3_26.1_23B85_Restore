@interface TTSVBSpeechRecognitionService
- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition;
- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully;
- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription;
@end

@implementation TTSVBSpeechRecognitionService

- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription
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
  taskCopy = task;
  transcriptionCopy = transcription;
  selfCopy = self;

  [v7 afterDelay:v9 processBlock:1.0];
  _Block_release(v9);
}

- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition
{
  taskCopy = task;
  recognitionCopy = recognition;
  selfCopy = self;
  sub_2331CB984(taskCopy, recognitionCopy);
}

- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully
{
  taskCopy = task;
  selfCopy = self;
  sub_2331CC124(taskCopy, successfully);
}

@end