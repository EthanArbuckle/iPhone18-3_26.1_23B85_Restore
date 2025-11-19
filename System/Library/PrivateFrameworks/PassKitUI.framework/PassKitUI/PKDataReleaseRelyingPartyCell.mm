@interface PKDataReleaseRelyingPartyCell
- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithFrame:(CGRect)a3;
- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)configuration;
- (void)setConfiguration:(id)a3;
@end

@implementation PKDataReleaseRelyingPartyCell

- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1BD308A68(a3);
}

- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(PKDataReleaseRelyingPartyCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(PKDataReleaseRelyingPartyCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end