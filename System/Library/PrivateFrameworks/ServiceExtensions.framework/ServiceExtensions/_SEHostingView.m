@interface _SEHostingView
+ (Class)layerClass;
- (_SEHostingHandle)handle;
- (_SEHostingView)initWithCoder:(id)a3;
- (_SEHostingView)initWithFrame:(CGRect)a3;
- (void)setHandle:(id)a3;
@end

@implementation _SEHostingView

- (_SEHostingHandle)handle
{
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setHandle:(id)a3
{
  v5 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_26574CC6C();
}

+ (Class)layerClass
{
  sub_265747F2C(0, &qword_28001C430, 0x277CD9EE0);

  return swift_getObjCClassFromMetadata();
}

- (_SEHostingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView__visibility) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView_handle) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _SEHostingView();
  return [(_SEHostingView *)&v8 initWithFrame:x, y, width, height];
}

- (_SEHostingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView__visibility) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____SEHostingView_handle) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _SEHostingView();
  v4 = a3;
  v5 = [(_SEHostingView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end