@interface UIPointerHoverStyleDriver
- (_TtC5UIKit25UIPointerHoverStyleDriver)init;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation UIPointerHoverStyleDriver

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1891C493C();

  return v9;
}

- (_TtC5UIKit25UIPointerHoverStyleDriver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end