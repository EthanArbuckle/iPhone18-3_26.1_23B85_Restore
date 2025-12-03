@interface TVQueueListLockupView
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handlePan:(id)pan;
- (void)handleTap:(id)tap;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20BD6EA80(contextCopy, coordinatorCopy);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_20B51C88C(0, &qword_27C764588);
  sub_20B9E0F28();
  v6 = sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  sub_20BD6EC54(v6, event);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  if ([tapCopy state] == 3 && swift_unknownObjectWeakLoadStrong())
  {
    sub_20B8E2580();
    swift_unknownObjectRelease();
  }
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_20BD6EFA0(panCopy);
}

@end