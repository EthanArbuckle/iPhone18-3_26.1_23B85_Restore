@interface SFUCaptureCoordinator
- (BOOL)_isLoopingState:(id)a3 forDescription:(id)a4;
- (BOOL)_validateDescription:(id)a3 error:(id *)a4;
- (NSDictionary)loopStateSingleLoopDuration;
- (SFUCaptureCoordinator)init;
- (double)_sequenceExitTimeIntervalForDescription:(id)a3 fromState:(id)a4;
- (id)_captureOptionsForCaptureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5;
- (void)_captureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_captureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5 options:(id)a6 currentSequenceExitTime:(double)a7 sequenceExitTimeInterval:(double)a8 maxDuration:(double)a9 completion:(id)a10;
- (void)_captureFromState:(id)a3 toStates:(id)a4 forDescription:(id)a5 completion:(id)a6;
- (void)_captureWithStates:(id)a3 for:(id)a4 completion:(id)a5;
- (void)_secureFlipBookRecordingBeginCaptureFromState:(id)a3 toState:(id)a4 options:(id)a5;
- (void)_secureFlipBookRecordingEndCaptureFromState:(id)a3 toState:(id)a4;
- (void)createFlipBookFromDescription:(id)a3 resultHandler:(id)a4;
- (void)generateFlipBookFromDescription:(id)a3 resultHandler:(id)a4;
- (void)generateFlipBookFromDescription:(id)a3 userInfo:(id)a4 constraintBoundingBoxes:(id)a5 resultHandler:(id)a6;
- (void)generateFlipBookFromDescription:(id)a3 userInfo:(id)a4 options:(id)a5 constraintBoundingBoxes:(id)a6 resultHandler:(id)a7;
- (void)setLoopStateSingleLoopDuration:(id)a3;
@end

@implementation SFUCaptureCoordinator

- (SFUCaptureCoordinator)init
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = SFUCaptureCoordinator.init()();

  return v2;
}

- (void)generateFlipBookFromDescription:(id)a3 userInfo:(id)a4 options:(id)a5 constraintBoundingBoxes:(id)a6 resultHandler:(id)a7
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = _Block_copy(a7);
  if (a4)
  {
    a4 = sub_26C64D9A8();
  }

  if (a5)
  {
    type metadata accessor for CaptureCoordinatorOption(0);
    sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
    a5 = sub_26C64D9A8();
  }

  if (a6)
  {
    sub_26C6431E0(0, &qword_2804A7720);
    a6 = sub_26C64DA58();
  }

  swift_unknownObjectRetain();
  v14 = self;
  _Block_copy(v13);
  sub_26C649F1C(a3, a4, a5, a6, v14, v13);
  _Block_release(v13);
  _Block_release(v13);

  swift_unknownObjectRelease();
}

- (void)generateFlipBookFromDescription:(id)a3 userInfo:(id)a4 constraintBoundingBoxes:(id)a5 resultHandler:(id)a6
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = _Block_copy(a6);
  if (a4)
  {
    a4 = sub_26C64D9A8();
  }

  if (a5)
  {
    sub_26C6431E0(0, &qword_2804A7720);
    sub_26C64DA58();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  swift_unknownObjectRetain();
  v13 = self;
  sub_26C64AAA8(a3, a4, sub_26C64CFF8, v12);

  swift_unknownObjectRelease();
}

- (void)generateFlipBookFromDescription:(id)a3 resultHandler:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_26C64CDC8;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26C644614;
  v11[3] = &block_descriptor_107;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();
  v10 = self;

  [(SFUCaptureCoordinator *)v10 generateFlipBookFromDescription:a3 userInfo:0 options:0 constraintBoundingBoxes:0 resultHandler:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)createFlipBookFromDescription:(id)a3 resultHandler:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26C643260;
  *(v9 + 24) = v8;
  v12[4] = sub_26C64CFCC;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26C644614;
  v12[3] = &block_descriptor_101;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();
  v11 = self;

  [(SFUCaptureCoordinator *)v11 generateFlipBookFromDescription:a3 resultHandler:v10];
  swift_unknownObjectRelease();

  _Block_release(v10);
}

- (BOOL)_validateDescription:(id)a3 error:(id *)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v6 = self;
  sub_26C64ADCC(a3);

  swift_unknownObjectRelease();
  return 1;
}

- (NSDictionary)loopStateSingleLoopDuration
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_26C64D998();

  return v2;
}

- (void)setLoopStateSingleLoopDuration:(id)a3
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(self + OBJC_IVAR___SFUCaptureCoordinator_loopStateSingleLoopDuration) = sub_26C64D9A8();
}

- (void)_captureWithStates:(id)a3 for:(id)a4 completion:(id)a5
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = _Block_copy(a5);
  v9 = sub_26C64DA58();
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v10 = self;
  sub_26C64B0B8(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)a3 toStates:(id)a4 forDescription:(id)a5 completion:(id)a6
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = _Block_copy(a6);
  v10 = sub_26C64D9F8();
  v12 = v11;
  v13 = sub_26C64DA58();
  _Block_copy(v9);
  swift_unknownObjectRetain();
  v14 = self;
  sub_26C64B860(v10, v12, v13, a5, v14, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5 options:(id)a6 currentSequenceExitTime:(double)a7 sequenceExitTimeInterval:(double)a8 maxDuration:(double)a9 completion:(id)a10
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = _Block_copy(a10);
  v17 = sub_26C64D9F8();
  v19 = v18;
  v20 = sub_26C64D9F8();
  v22 = v21;
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v23 = sub_26C64D9A8();
  _Block_copy(v16);
  swift_unknownObjectRetain();
  v24 = self;
  sub_26C64BFA8(v17, v19, v20, v22, a5, v23, v24, v16, a7, a8, a9);
  _Block_release(v16);
  _Block_release(v16);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5 options:(id)a6 completion:(id)a7
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(a7);
  v11 = sub_26C64D9F8();
  v13 = v12;
  v14 = sub_26C64D9F8();
  v16 = v15;
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v17 = sub_26C64D9A8();
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  swift_unknownObjectRetain();
  v19 = self;
  sub_26C646510(v11, v13, v14, v16, a5, v17, sub_26C64C9AC, v18);

  swift_unknownObjectRelease();
}

- (void)_secureFlipBookRecordingBeginCaptureFromState:(id)a3 toState:(id)a4 options:(id)a5
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_26C64D9F8();
  v8 = v7;
  v9 = sub_26C64D9F8();
  v11 = v10;
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v12 = sub_26C64D9A8();
  v13 = self;
  sub_26C646AE4(v6, v8, v9, v11, v12);
}

- (void)_secureFlipBookRecordingEndCaptureFromState:(id)a3 toState:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_26C64D9F8();
  v7 = v6;
  v8 = sub_26C64D9F8();
  v10 = v9;
  v11 = self;
  sub_26C646FA4(v5, v7, v8, v10);
}

- (id)_captureOptionsForCaptureFromState:(id)a3 toState:(id)a4 forDescription:(id)a5
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_26C64D9F8();
  v9 = v8;
  v10 = sub_26C64D9F8();
  v12 = v11;
  swift_unknownObjectRetain();
  v13 = self;
  sub_26C64C270(v7, v9, v10, v12, a5);
  swift_unknownObjectRelease();

  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v14 = sub_26C64D998();

  return v14;
}

- (double)_sequenceExitTimeIntervalForDescription:(id)a3 fromState:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_26C64D9F8();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  sub_26C6475F4(a3, v6, v8);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

- (BOOL)_isLoopingState:(id)a3 forDescription:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_26C64D9F8();
  v7 = v6;
  v8 = [swift_unknownObjectRetain() allowedNextStatesForState_];
  v9 = sub_26C64DA58();

  v13[0] = v5;
  v13[1] = v7;
  MEMORY[0x28223BE20](v10);
  v12[2] = v13;
  LOBYTE(v8) = sub_26C64974C(sub_26C64AC30, v12, v9);

  swift_unknownObjectRelease();
  return v8 & 1;
}

@end