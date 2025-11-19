@interface UIViewDrawEventProducer
- (void)dealloc;
- (void)handlePan:(id)a3;
- (void)handleTap:(id)a3;
@end

@implementation UIViewDrawEventProducer

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit23UIViewDrawEventProducer_eventSubject);
  v5 = 1;
  v3 = self;

  sub_264B409B4();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for UIViewDrawEventProducer();
  [(UIViewDrawEventProducer *)&v4 dealloc];
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264AF4288(v4);
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264AF464C(v4);
}

@end