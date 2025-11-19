@interface StubAssetHandle
- (FCAssetDataProvider)dataProvider;
- (NSString)uniqueKey;
- (_TtC10StocksCore15StubAssetHandle)init;
@end

@implementation StubAssetHandle

- (NSString)uniqueKey
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC10StocksCore15StubAssetHandle_identifier);
  v3 = *(&self->super._dataProvider + OBJC_IVAR____TtC10StocksCore15StubAssetHandle_identifier);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (_TtC10StocksCore15StubAssetHandle)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (self + OBJC_IVAR____TtC10StocksCore15StubAssetHandle_identifier);
  sub_1DACB6D04();
  v10 = sub_1DACB7CE4();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(StubAssetHandle *)&v14 init];
}

- (FCAssetDataProvider)dataProvider
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC10StocksCore15StubAssetHandle_identifier);
  v2 = *(&self->super._dataProvider + OBJC_IVAR____TtC10StocksCore15StubAssetHandle_identifier);
  type metadata accessor for StubAssetHandle.StubAssetDataProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC57A0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = 1;
  sub_1DACB71E4();

  return v4;
}

@end