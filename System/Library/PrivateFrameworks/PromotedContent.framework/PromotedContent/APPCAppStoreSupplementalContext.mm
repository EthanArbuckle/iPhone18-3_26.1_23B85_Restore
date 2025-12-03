@interface APPCAppStoreSupplementalContext
- (APPCAppStoreSupplementalContext)init;
- (NSDate)requestTime;
- (NSDictionary)appMetadataFields;
- (NSDictionary)dictionaryRepresentation;
- (NSString)adamId;
- (id)copyWithZone:(void *)zone;
- (void)setAdamId:(id)id;
- (void)setAppMetadataFields:(id)fields;
- (void)setRequestTime:(id)time;
@end

@implementation APPCAppStoreSupplementalContext

- (NSString)adamId
{
  v2 = (self + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1C1B94D78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAdamId:(id)id
{
  if (id)
  {
    v4 = sub_1C1B94D88();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)appMetadataFields
{
  v3 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_1C1B94CA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAppMetadataFields:(id)fields
{
  if (fields)
  {
    v4 = sub_1C1B94CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSDate)requestTime
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(self + v7, v6, &qword_1EBF07F50, &qword_1C1B9A590);
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C1B94538();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setRequestTime:(id)time
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (time)
  {
    sub_1C1B94558();
    v9 = sub_1C1B94588();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C1B94588();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  selfCopy = self;
  sub_1C1AABE90(v8, self + v11);
  swift_endAccess();
}

- (NSDictionary)dictionaryRepresentation
{
  selfCopy = self;
  sub_1C1AD6D7C();

  sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
  v3 = sub_1C1B94CA8();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C1AD7498(v6);

  sub_1C1AAABE0(v6, v6[3]);
  v4 = sub_1C1B95878();
  sub_1C1AA86F8(v6);
  return v4;
}

- (APPCAppStoreSupplementalContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end