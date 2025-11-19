@interface MockEmittableSiriAnalyticsMessageStream
- (void)emitMessage:(id)a3;
- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4;
- (void)enqueueLargeMessageObjectFromPath:(id)a3 assetIdentifier:(id)a4 messageMetadata:(id)a5 completion:(id)a6;
@end

@implementation MockEmittableSiriAnalyticsMessageStream

- (void)emitMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(v4);
}

- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  specialized MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:)(v5);
}

- (void)enqueueLargeMessageObjectFromPath:(id)a3 assetIdentifier:(id)a4 messageMetadata:(id)a5 completion:(id)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v14 - v10;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  outlined destroy of UUID?(v11);
}

@end