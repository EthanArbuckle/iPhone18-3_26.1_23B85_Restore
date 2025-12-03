@interface ToolbarPointerInteractionAssistant
- (_TtC5UIKit34ToolbarPointerInteractionAssistant)init;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
@end

@implementation ToolbarPointerInteractionAssistant

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_1890A5A78(interactionCopy, requestCopy);

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1890A5D38(interactionCopy, regionCopy);

  return v9;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1890A5E68(interactionCopy, regionCopy, animator);

  swift_unknownObjectRelease();
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1890A5FEC(regionCopy, animator);

  swift_unknownObjectRelease();
}

- (_TtC5UIKit34ToolbarPointerInteractionAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end