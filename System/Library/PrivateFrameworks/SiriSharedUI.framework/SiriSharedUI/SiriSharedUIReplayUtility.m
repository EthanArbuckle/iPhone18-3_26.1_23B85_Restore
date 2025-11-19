@interface SiriSharedUIReplayUtility
+ (NSString)replayOverridePathKey;
+ (_TtC12SiriSharedUI25SiriSharedUIReplayUtility)shared;
- (BOOL)hasContentAt:(CGPoint)a3;
- (BOOL)isReplaying;
- (BOOL)isSiriDetached;
- (BOOL)shouldSkipAutoDismissal;
- (void)addReplayControlTo:(id)a3;
- (void)received:(id)a3;
- (void)registerWithReplayCallback:(id)a3;
- (void)removeReplayControl;
- (void)replayAllWithIntervalSeconds:(unint64_t)a3 recordingUrl:(id)a4 completion:(id)a5;
- (void)replayAtIndex:(int64_t)a3 recordingUrl:(id)a4;
- (void)replayWithTestEnviormentData;
- (void)setIsReplaying:(BOOL)a3;
- (void)setIsSiriDetached;
- (void)setIsSiriDetached:(BOOL)a3;
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
  v2 = self;
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

- (void)setIsReplaying:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isReplaying;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isSiriDetached
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSiriDetached:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)replayAllWithIntervalSeconds:(unint64_t)a3 recordingUrl:(id)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = _Block_copy(a5);
  if (a4)
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
  v15 = self;
  sub_21E4AF664(v11);
  sub_21E4B1BD8(a3, v15, v12);
  _Block_release(v12);

  _Block_release(v12);
  sub_21E424BC0(v11, &qword_27CEC6700);
}

- (void)replayAtIndex:(int64_t)a3 recordingUrl:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  if (a4)
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

  v12 = self;
  sub_21E4AF664(v9);
  sub_21E4B012C(a3);

  sub_21E424BC0(v9, &qword_27CEC6700);
}

- (void)addReplayControlTo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4AC924(v4);
}

- (void)removeReplayControl
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (v2)
  {
    v6 = self;
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)received:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4AD110(v4);
}

- (void)registerWithReplayCallback:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_storedCallback);
  *v6 = sub_21E47C4D8;
  v6[1] = v5;
  v8 = self;

  sub_21E3F1EB0(v7);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDF8();
}

- (BOOL)hasContentAt:(CGPoint)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_viewHostingController);
  if (v3)
  {
    y = a3.y;
    x = a3.x;
    v6 = self;
    v7 = v3;
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v8 frame];
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

      LOBYTE(v8) = v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)setIsSiriDetached
{
  v3 = OBJC_IVAR____TtC12SiriSharedUI25SiriSharedUIReplayUtility_isSiriDetached;
  swift_beginAccess();
  *(&self->super.isa + v3) = 1;
}

- (void)replayWithTestEnviormentData
{
  v2 = self;
  sub_21E4AE3A4();
}

@end