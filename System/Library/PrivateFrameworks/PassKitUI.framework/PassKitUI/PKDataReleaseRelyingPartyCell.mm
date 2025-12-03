@interface PKDataReleaseRelyingPartyCell
- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithFrame:(CGRect)frame;
- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)configuration;
- (void)setConfiguration:(id)configuration;
@end

@implementation PKDataReleaseRelyingPartyCell

- (_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1BD308A68(configuration);
}

- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(PKDataReleaseRelyingPartyCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI29PKDataReleaseRelyingPartyCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI29PKDataReleaseRelyingPartyCell_configuration) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(PKDataReleaseRelyingPartyCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end