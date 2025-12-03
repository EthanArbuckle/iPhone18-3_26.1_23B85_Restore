@interface _UINavigationBarPlatterView
- (CGRect)bounds;
- (_UINavigationBarPlatterView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setBounds:(CGRect)bounds;
@end

@implementation _UINavigationBarPlatterView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UIView *)&v3 layoutSubviews];
  sub_189186E20();
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(UIView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(UIView *)&v15 bounds];
  v17.origin.x = v10;
  v17.origin.y = v11;
  v17.size.width = v12;
  v17.size.height = v13;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    v14.receiver = selfCopy;
    v14.super_class = ObjectType;
    [(UIView *)&v14 setBounds:x, y, width, height];
    sub_189186E20();
  }
}

- (_UINavigationBarPlatterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_189194524(interactionCopy, requestCopy);

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

@end