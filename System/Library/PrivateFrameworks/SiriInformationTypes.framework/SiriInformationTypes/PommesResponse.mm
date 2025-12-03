@interface PommesResponse
- (NSString)description;
- (_TtC21SiriInformationSearch14PommesResponse)init;
- (_TtC21SiriInformationSearch14PommesResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesResponse

- (_TtC21SiriInformationSearch14PommesResponse)initWithCoder:(id)coder
{
  v5 = type metadata accessor for PommesResponse.Builder(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v11);
  coderCopy = coder;
  closure #1 in PommesResponse.init(coder:)(v11, coderCopy);
  outlined init with copy of PommesResponse.Builder(v11, v9);
  v14 = (*(ObjectType + 360))(v9);

  outlined destroy of PommesResponse.Builder(v11, type metadata accessor for PommesResponse.Builder);
  v15 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v16 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesResponse.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = PommesResponse.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E1299430](v3, v5);

  return v6;
}

- (_TtC21SiriInformationSearch14PommesResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end