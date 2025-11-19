@interface _UIFloatingBarContainerProvider
+ (id)makeView;
- (_UIFloatingBarContainerProvider)init;
@end

@implementation _UIFloatingBarContainerProvider

+ (id)makeView
{
  type metadata accessor for FloatingBarContainerView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  return v2;
}

- (_UIFloatingBarContainerProvider)init
{
  v3.receiver = self;
  v3.super_class = _UIFloatingBarContainerProvider;
  return [(_UIFloatingBarContainerProvider *)&v3 init];
}

@end