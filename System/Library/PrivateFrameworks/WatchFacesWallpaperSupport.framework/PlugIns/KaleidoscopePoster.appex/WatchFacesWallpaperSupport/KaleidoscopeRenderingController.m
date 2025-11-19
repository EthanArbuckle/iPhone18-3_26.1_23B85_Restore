@interface KaleidoscopeRenderingController
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation KaleidoscopeRenderingController

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10001DF34(v6, a4);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_10001E8B4(v7);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EA0C();
}

@end