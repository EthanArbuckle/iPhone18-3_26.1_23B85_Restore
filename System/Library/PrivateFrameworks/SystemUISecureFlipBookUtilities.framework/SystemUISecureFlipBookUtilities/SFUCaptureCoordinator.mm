@interface SFUCaptureCoordinator
- (BOOL)_isLoopingState:(id)state forDescription:(id)description;
- (BOOL)_validateDescription:(id)description error:(id *)error;
- (NSDictionary)loopStateSingleLoopDuration;
- (SFUCaptureCoordinator)init;
- (double)_sequenceExitTimeIntervalForDescription:(id)description fromState:(id)state;
- (id)_captureOptionsForCaptureFromState:(id)state toState:(id)toState forDescription:(id)description;
- (void)_captureFromState:(id)state toState:(id)toState forDescription:(id)description options:(id)options completion:(id)completion;
- (void)_captureFromState:(id)state toState:(id)toState forDescription:(id)description options:(id)options currentSequenceExitTime:(double)time sequenceExitTimeInterval:(double)interval maxDuration:(double)duration completion:(id)self0;
- (void)_captureFromState:(id)state toStates:(id)states forDescription:(id)description completion:(id)completion;
- (void)_captureWithStates:(id)states for:(id)for completion:(id)completion;
- (void)_secureFlipBookRecordingBeginCaptureFromState:(id)state toState:(id)toState options:(id)options;
- (void)_secureFlipBookRecordingEndCaptureFromState:(id)state toState:(id)toState;
- (void)createFlipBookFromDescription:(id)description resultHandler:(id)handler;
- (void)generateFlipBookFromDescription:(id)description resultHandler:(id)handler;
- (void)generateFlipBookFromDescription:(id)description userInfo:(id)info constraintBoundingBoxes:(id)boxes resultHandler:(id)handler;
- (void)generateFlipBookFromDescription:(id)description userInfo:(id)info options:(id)options constraintBoundingBoxes:(id)boxes resultHandler:(id)handler;
- (void)setLoopStateSingleLoopDuration:(id)duration;
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

- (void)generateFlipBookFromDescription:(id)description userInfo:(id)info options:(id)options constraintBoundingBoxes:(id)boxes resultHandler:(id)handler
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = _Block_copy(handler);
  if (info)
  {
    info = sub_26C64D9A8();
  }

  if (options)
  {
    type metadata accessor for CaptureCoordinatorOption(0);
    sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
    options = sub_26C64D9A8();
  }

  if (boxes)
  {
    sub_26C6431E0(0, &qword_2804A7720);
    boxes = sub_26C64DA58();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  _Block_copy(v13);
  sub_26C649F1C(description, info, options, boxes, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  swift_unknownObjectRelease();
}

- (void)generateFlipBookFromDescription:(id)description userInfo:(id)info constraintBoundingBoxes:(id)boxes resultHandler:(id)handler
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = _Block_copy(handler);
  if (info)
  {
    info = sub_26C64D9A8();
  }

  if (boxes)
  {
    sub_26C6431E0(0, &qword_2804A7720);
    sub_26C64DA58();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C64AAA8(description, info, sub_26C64CFF8, v12);

  swift_unknownObjectRelease();
}

- (void)generateFlipBookFromDescription:(id)description resultHandler:(id)handler
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(handler);
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
  selfCopy = self;

  [(SFUCaptureCoordinator *)selfCopy generateFlipBookFromDescription:description userInfo:0 options:0 constraintBoundingBoxes:0 resultHandler:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)createFlipBookFromDescription:(id)description resultHandler:(id)handler
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(handler);
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
  selfCopy = self;

  [(SFUCaptureCoordinator *)selfCopy generateFlipBookFromDescription:description resultHandler:v10];
  swift_unknownObjectRelease();

  _Block_release(v10);
}

- (BOOL)_validateDescription:(id)description error:(id *)error
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C64ADCC(description);

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

- (void)setLoopStateSingleLoopDuration:(id)duration
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

- (void)_captureWithStates:(id)states for:(id)for completion:(id)completion
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = _Block_copy(completion);
  v9 = sub_26C64DA58();
  _Block_copy(v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C64B0B8(v9, for, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)state toStates:(id)states forDescription:(id)description completion:(id)completion
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = _Block_copy(completion);
  v10 = sub_26C64D9F8();
  v12 = v11;
  v13 = sub_26C64DA58();
  _Block_copy(v9);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C64B860(v10, v12, v13, description, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)state toState:(id)toState forDescription:(id)description options:(id)options currentSequenceExitTime:(double)time sequenceExitTimeInterval:(double)interval maxDuration:(double)duration completion:(id)self0
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = _Block_copy(completion);
  v17 = sub_26C64D9F8();
  v19 = v18;
  v20 = sub_26C64D9F8();
  v22 = v21;
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v23 = sub_26C64D9A8();
  _Block_copy(v16);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26C64BFA8(v17, v19, v20, v22, description, v23, selfCopy, v16, time, interval, duration);
  _Block_release(v16);
  _Block_release(v16);

  swift_unknownObjectRelease();
}

- (void)_captureFromState:(id)state toState:(id)toState forDescription:(id)description options:(id)options completion:(id)completion
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(completion);
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
  selfCopy = self;
  sub_26C646510(v11, v13, v14, v16, description, v17, sub_26C64C9AC, v18);

  swift_unknownObjectRelease();
}

- (void)_secureFlipBookRecordingBeginCaptureFromState:(id)state toState:(id)toState options:(id)options
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
  selfCopy = self;
  sub_26C646AE4(v6, v8, v9, v11, v12);
}

- (void)_secureFlipBookRecordingEndCaptureFromState:(id)state toState:(id)toState
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
  selfCopy = self;
  sub_26C646FA4(v5, v7, v8, v10);
}

- (id)_captureOptionsForCaptureFromState:(id)state toState:(id)toState forDescription:(id)description
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
  selfCopy = self;
  sub_26C64C270(v7, v9, v10, v12, description);
  swift_unknownObjectRelease();

  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v14 = sub_26C64D998();

  return v14;
}

- (double)_sequenceExitTimeIntervalForDescription:(id)description fromState:(id)state
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
  selfCopy = self;
  sub_26C6475F4(description, v6, v8);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

- (BOOL)_isLoopingState:(id)state forDescription:(id)description
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
  allowedNextStatesForState_ = [swift_unknownObjectRetain() allowedNextStatesForState_];
  v9 = sub_26C64DA58();

  v13[0] = v5;
  v13[1] = v7;
  MEMORY[0x28223BE20](v10);
  v12[2] = v13;
  LOBYTE(allowedNextStatesForState_) = sub_26C64974C(sub_26C64AC30, v12, v9);

  swift_unknownObjectRelease();
  return allowedNextStatesForState_ & 1;
}

@end