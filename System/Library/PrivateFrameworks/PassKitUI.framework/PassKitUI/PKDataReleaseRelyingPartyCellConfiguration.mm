@interface PKDataReleaseRelyingPartyCellConfiguration
- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)init;
- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)initWithName:(id)a3 icon:(id)a4;
@end

@implementation PKDataReleaseRelyingPartyCellConfiguration

- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)initWithName:(id)a3 icon:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BE052434();
  v8 = (self + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_name);
  *v8 = v7;
  v8[1] = v9;
  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration_icon) = a4;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = a4;
  return [(PKDataReleaseRelyingPartyCellConfiguration *)&v12 init];
}

- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end