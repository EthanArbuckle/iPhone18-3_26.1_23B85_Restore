@interface ConsiderateVolumeContext
- (_TtC26RelevanceServicesCompanion24ConsiderateVolumeContext)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ConsiderateVolumeContext

- (_TtC26RelevanceServicesCompanion24ConsiderateVolumeContext)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_audioCategory) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_timeoutInterval) = 0x3FC999999999999ALL;
  *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleStrategy) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_throttleInterval) = 0x3FF0000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion24ConsiderateVolumeContext_userInfo) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ConsiderateVolumeContext *)&v5 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ConsiderateVolumeContext.encode(with:)(coderCopy);
}

@end