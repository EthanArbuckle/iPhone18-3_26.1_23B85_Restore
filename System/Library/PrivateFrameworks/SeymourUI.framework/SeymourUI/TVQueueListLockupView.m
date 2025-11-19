@interface TVQueueListLockupView
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handlePan:(id)a3;
- (void)handleTap:(id)a3;
- (void)prepareForReuse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TVQueueListLockupView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVQueueListLockupView();
  v2 = v3.receiver;
  [(TVFocusableCollectionViewCell *)&v3 prepareForReuse];
  sub_20BD6E8C0();
  sub_20BD6EE20();
  [v2 setNeedsFocusUpdate];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20BD6EA80(v6, v7);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v6 = sub_20C13CF74();
  v7 = a4;
  v8 = self;
  sub_20BD6EC54(v6, a4);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3 && swift_unknownObjectWeakLoadStrong())
  {
    sub_20B8E2580();
    swift_unknownObjectRelease();
  }
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BD6EFA0(v4);
}

@end