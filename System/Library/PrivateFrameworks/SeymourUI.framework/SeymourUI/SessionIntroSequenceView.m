@interface SessionIntroSequenceView
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC9SeymourUI24SessionIntroSequenceView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didTouchDownPlayIcon:(id)a3;
- (void)didTouchUpInsidePlayIcon:(id)a3;
- (void)didTouchUpOutsidePlayIcon:(id)a3;
- (void)handlePlayPauseGesture;
@end

@implementation SessionIntroSequenceView

- (CGRect)frame
{
  sub_20BB99C70(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_20BB99C70(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)handlePlayPauseGesture
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
}

- (void)didTouchDownPlayIcon:(id)a3
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = 0x3FD851EB851EB852;
  v8[4] = sub_20BB9B6E8;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_25_0;
  v6 = _Block_copy(v8);
  v7 = self;

  [v4 animateWithDuration:v6 animations:0.2];

  _Block_release(v6);
}

- (void)didTouchUpInsidePlayIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BB9B49C();
}

- (void)didTouchUpOutsidePlayIcon:(id)a3
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v8[4] = sub_20BB9B120;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B7B548C;
  v8[3] = &block_descriptor_93;
  v6 = _Block_copy(v8);
  v7 = self;

  [v4 animateWithDuration:v6 animations:0.2];

  _Block_release(v6);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  ObjectType = swift_getObjectType();
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView);
  v10 = a4;
  v11 = self;
  [v9 frame];
  v17.x = x;
  v17.y = y;
  if (CGRectContainsPoint(v18, v17))
  {
    v15.receiver = v11;
    v15.super_class = ObjectType;
    v12 = [(SessionIntroSequenceView *)&v15 hitTest:v10 withEvent:x, y];

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (_TtC9SeymourUI24SessionIntroSequenceView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end