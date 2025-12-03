@interface UIViewDrawEventProducer
- (void)dealloc;
- (void)handlePan:(id)pan;
- (void)handleTap:(id)tap;
@end

@implementation UIViewDrawEventProducer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
  v5 = 1;
  selfCopy = self;

  sub_264B409B4();

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for UIViewDrawEventProducer();
  [(UIViewDrawEventProducer *)&v4 dealloc];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_264AF4288(tapCopy);
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_264AF464C(panCopy);
}

@end