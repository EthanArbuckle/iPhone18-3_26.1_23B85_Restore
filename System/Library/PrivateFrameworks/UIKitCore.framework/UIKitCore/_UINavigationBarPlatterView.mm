@interface _UINavigationBarPlatterView
- (CGRect)bounds;
- (_UINavigationBarPlatterView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setBounds:(CGRect)a3;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v9 = self;
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
    v14.receiver = v9;
    v14.super_class = ObjectType;
    [(UIView *)&v14 setBounds:x, y, width, height];
    sub_189186E20();
  }
}

- (_UINavigationBarPlatterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_189194524(v8, v9);

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1890A5D38(v6, v7);

  return v9;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1890A5E68(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1890A5FEC(v9, a5);

  swift_unknownObjectRelease();
}

@end