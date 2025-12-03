@interface SiriSharedUIReplayUtility
+ (NSString)replayOverridePathKey;
+ (_TtC12SiriSharedUI25SiriSharedUIReplayUtility)shared;
- (BOOL)hasContentAt:(CGPoint)at;
- (BOOL)isReplaying;
- (BOOL)isSiriDetached;
- (BOOL)shouldSkipAutoDismissal;
- (void)addReplayControlTo:(id)to;
- (void)received:(id)received;
- (void)registerWithReplayCallback:(id)callback;
- (void)removeReplayControl;
- (void)replayAllWithIntervalSeconds:(unint64_t)seconds recordingUrl:(id)url completion:(id)completion;
- (void)replayAtIndex:(int64_t)index recordingUrl:(id)url;
- (void)replayWithTestEnviormentData;
- (void)setIsReplaying:(BOOL)replaying;
- (void)setIsSiriDetached;
- (void)setIsSiriDetached:(BOOL)detached;
@end

@implementation SiriSharedUIReplayUtility

+ (_TtC12SiriSharedUI25SiriSharedUIReplayUtility)shared
{
  if (qword_280C15A08 != -1)
  {
    swift_once();
  }

  v3 = qword_280C15A10;

  return v3;
}

- (BOOL)shouldSkipAutoDismissal
{
  selfCopy = self;
  v3 = sub_21E3EE024();

  return v3 & 1;
}

+ (NSString)replayOverridePathKey
{
  v2 = sub_21E4DCF68();

  return v2;
}

- (BOOL)isReplaying
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsReplaying:(BOOL)replaying
{
  v5 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
  swift_beginAccess();
  *(&self->super.isa + v5) = replaying;
}

- (BOOL)isSiriDetached
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSiriDetached:(BOOL)detached
{
  v5 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  *(&self->super.isa + v5) = detached;
}

- (void)replayAllWithIntervalSeconds:(unint64_t)seconds recordingUrl:(id)url completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = _Block_copy(completion);
  if (url)
  {
    sub_21E4DB568();
    v13 = sub_21E4DB588();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_21E4DB588();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  _Block_copy(v12);
  selfCopy = self;
  sub_21E4AF664(v11);
  sub_21E4B1BD8(seconds, selfCopy, v12);
  _Block_release(v12);

  _Block_release(v12);
  sub_21E424BC0(v11, &qword_27CEC6700);
}

- (void)replayAtIndex:(int64_t)index recordingUrl:(id)url
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  if (url)
  {
    sub_21E4DB568();
    v10 = sub_21E4DB588();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_21E4DB588();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  selfCopy = self;
  sub_21E4AF664(v9);
  sub_21E4B012C(index);

  sub_21E424BC0(v9, &qword_27CEC6700);
}

- (void)addReplayControlTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_21E4AC924(toCopy);
}

- (void)removeReplayControl
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    view = [v3 view];
    if (view)
    {
      v5 = view;
      [view removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)received:(id)received
{
  receivedCopy = received;
  selfCopy = self;
  sub_21E4AD110(receivedCopy);
}

- (void)registerWithReplayCallback:(id)callback
{
  v4 = _Block_copy(callback);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  *v6 = sub_21E47C4D8;
  v6[1] = v5;
  selfCopy = self;

  sub_21E3F1EB0(v7);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
}

- (BOOL)hasContentAt:(CGPoint)at
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (v3)
  {
    y = at.y;
    x = at.x;
    selfCopy = self;
    v7 = v3;
    view = [v7 view];
    if (view)
    {
      v9 = view;
      [view frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v20.origin.x = v11;
      v20.origin.y = v13;
      v20.size.width = v15;
      v20.size.height = v17;
      v19.x = x;
      v19.y = y;
      LOBYTE(v9) = CGRectContainsPoint(v20, v19);

      LOBYTE(view) = v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LOBYTE(view) = 0;
  }

  return view;
}

- (void)setIsSiriDetached
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  *(&self->super.isa + v3) = 1;
}

- (void)replayWithTestEnviormentData
{
  selfCopy = self;
  sub_21E4AE3A4();
}

@end