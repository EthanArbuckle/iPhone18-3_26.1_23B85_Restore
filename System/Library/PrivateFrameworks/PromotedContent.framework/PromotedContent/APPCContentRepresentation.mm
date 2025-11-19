@interface APPCContentRepresentation
- (APPCContentRepresentation)init;
- (CGSize)adSize;
- (NSString)identifier;
- (NSUUID)id;
@end

@implementation APPCContentRepresentation

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___APPCContentRepresentation_identifier);
  v3 = *(self + OBJC_IVAR___APPCContentRepresentation_identifier + 8);

  v4 = sub_1C1B94D78();

  return v4;
}

- (NSUUID)id
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___APPCContentRepresentation_id, v3);
  v8 = sub_1C1B945B8();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (CGSize)adSize
{
  v2 = *(self + OBJC_IVAR___APPCContentRepresentation_adSize);
  v3 = *(self + OBJC_IVAR___APPCContentRepresentation_adSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (APPCContentRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end