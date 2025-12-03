@interface MockEmittableSiriAnalyticsMessageStream
- (void)emitMessage:(id)message;
- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp;
- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier messageMetadata:(id)metadata completion:(id)completion;
@end

@implementation MockEmittableSiriAnalyticsMessageStream

- (void)emitMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(messageCopy);
}

- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp
{
  messageCopy = message;
  selfCopy = self;
  specialized MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:)(messageCopy);
}

- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier messageMetadata:(id)metadata completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v14 - v10;
  if (identifier)
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