@interface IdentityConfigurationInternal
- (_TtC19ProximityReaderCore29IdentityConfigurationInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityConfigurationInternal

- (_TtC19ProximityReaderCore29IdentityConfigurationInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier);
  v5 = *&self->readerIdentifier[OBJC_IVAR____TtC19ProximityReaderCore29IdentityConfigurationInternal_readerIdentifier];
  v6 = a3;
  v9 = self;
  v7 = sub_26121CC50();
  v8 = sub_26121CC50();
  [v6 encodeObject:v7 forKey:v8];
}

@end