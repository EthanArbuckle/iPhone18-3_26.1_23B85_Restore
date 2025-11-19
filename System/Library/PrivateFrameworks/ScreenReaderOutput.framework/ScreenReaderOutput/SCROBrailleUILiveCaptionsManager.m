@interface SCROBrailleUILiveCaptionsManager
- (BOOL)isSourceAudio;
- (SCROBrailleUILiveCaptionsManager)init;
- (SCROBrailleUILiveCaptionsManager)initWithClient:(id)a3;
- (void)dealloc;
- (void)setIsSourceAudio:(BOOL)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation SCROBrailleUILiveCaptionsManager

- (SCROBrailleUILiveCaptionsManager)initWithClient:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_sourceType) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio) = 0;
  *(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_client) = a3;
  v4.receiver = self;
  v4.super_class = SCROBrailleUILiveCaptionsManager;
  swift_unknownObjectRetain();
  return [(SCROBrailleUILiveCaptionsManager *)&v4 init];
}

- (BOOL)isSourceAudio
{
  v3 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSourceAudio:(BOOL)a3
{
  v5 = OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isSourceAudio;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  if (*(&self->super.isa + OBJC_IVAR___SCROBrailleUILiveCaptionsManager_isTranscribing) == 1)
  {
    v6 = self;
    [(SCROBrailleUILiveCaptionsManager *)v6 stop];
    [(SCROBrailleUILiveCaptionsManager *)v6 startWithCompletionHandler:0];
  }
}

- (void)dealloc
{
  v2 = self;
  v3 = *sub_26496AB68();
  v4 = v2;
  v5 = v3;
  sub_26496C184(v4);

  v6.receiver = v4;
  v6.super_class = SCROBrailleUILiveCaptionsManager;
  [(SCROBrailleUILiveCaptionsManager *)&v6 dealloc];
}

- (void)startWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF86DD0, &qword_26498CEE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a3);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = self;
  v13 = sub_2649828E4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26498CEF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26498CF00;
  v15[5] = v14;
  v16 = self;
  sub_264978F68(0, 0, v10, &unk_26498CF10, v15);
}

- (void)stop
{
  v2 = self;
  SCROBrailleUILiveCaptionsManager.stop()();
}

- (SCROBrailleUILiveCaptionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end