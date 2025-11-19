@interface ExtragalacticPosterRenderer
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation ExtragalacticPosterRenderer

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10000CF0C(v6, a4);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v11 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_10000D13C(v11, a4);
  v10 = *(*(&v9->super.isa + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller) + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator);
  if ((sub_100013738() & 1) == 0)
  {
    sub_10000383C();
  }

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000D88C();
}

@end