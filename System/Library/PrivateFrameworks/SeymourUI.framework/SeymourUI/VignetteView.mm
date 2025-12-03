@interface VignetteView
+ (Class)layerClass;
- (_TtC9SeymourUI12VignetteView)initWithCoder:(id)coder;
- (_TtC9SeymourUI12VignetteView)initWithFrame:(CGRect)frame;
@end

@implementation VignetteView

+ (Class)layerClass
{
  sub_20B51C88C(0, &qword_27C762D80);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9SeymourUI12VignetteView)initWithCoder:(id)coder
{
  v4 = objc_opt_self();
  coderCopy = coder;
  blackColor = [v4 blackColor];
  v7 = objc_allocWithZone(type metadata accessor for VignetteView());
  v8 = sub_20B64C3B4(3, blackColor);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC9SeymourUI12VignetteView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end