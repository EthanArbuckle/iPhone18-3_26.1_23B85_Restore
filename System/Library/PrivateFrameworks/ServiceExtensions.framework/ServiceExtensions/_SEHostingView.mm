@interface _SEHostingView
+ (Class)layerClass;
- (_SEHostingHandle)handle;
- (_SEHostingView)initWithCoder:(id)coder;
- (_SEHostingView)initWithFrame:(CGRect)frame;
- (void)setHandle:(id)handle;
@end

@implementation _SEHostingView

- (_SEHostingHandle)handle
{
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setHandle:(id)handle
{
  v5 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = handle;
  handleCopy = handle;
  selfCopy = self;

  sub_26574CC6C();
}

+ (Class)layerClass
{
  sub_265747F2C(0, &qword_28001C430, 0x277CD9EE0);

  return swift_getObjCClassFromMetadata();
}

- (_SEHostingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView__visibility) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView_handle) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _SEHostingView();
  return [(_SEHostingView *)&v8 initWithFrame:x, y, width, height];
}

- (_SEHostingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView__visibility) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView_handle) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _SEHostingView();
  coderCopy = coder;
  v5 = [(_SEHostingView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end