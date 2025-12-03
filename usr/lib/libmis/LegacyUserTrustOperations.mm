@interface LegacyUserTrustOperations
- (_TtC3mis25LegacyUserTrustOperations)init;
- (id)getAuxiliarySignatureWithTeamId:(id)id;
- (id)getUserTrustedUUIDsAndReturnError:(id *)error;
@end

@implementation LegacyUserTrustOperations

- (id)getAuxiliarySignatureWithTeamId:(id)id
{
  v4 = sub_1B9DD2998();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B9DB3FFC(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1B9DD2778();
    sub_1B9D9D520(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (id)getUserTrustedUUIDsAndReturnError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC3mis25LegacyUserTrustOperations_utdb);
  selfCopy = self;
  sub_1B9DA77D0();

  v5 = sub_1B9DD2A68();

  return v5;
}

- (_TtC3mis25LegacyUserTrustOperations)init
{
  v3 = OBJC_IVAR____TtC3mis25LegacyUserTrustOperations_utdb;
  type metadata accessor for LegacyUserTrustDB();
  sub_1B9DA4680(1);
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LegacyUserTrustOperations();
  return [(LegacyUserTrustOperations *)&v6 init];
}

@end