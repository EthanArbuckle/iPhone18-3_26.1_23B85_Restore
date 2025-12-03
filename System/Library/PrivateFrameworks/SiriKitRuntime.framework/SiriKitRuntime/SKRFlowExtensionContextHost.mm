@interface SKRFlowExtensionContextHost
- (SKRFlowExtensionContextHost)init;
- (SKRFlowExtensionContextHost)initWithInputItems:(id)items contextUUID:(id)d;
- (SKRFlowExtensionContextHost)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
@end

@implementation SKRFlowExtensionContextHost

- (SKRFlowExtensionContextHost)init
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [(SKRFlowExtensionContextHost *)self initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v4;
}

- (SKRFlowExtensionContextHost)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  endpointCopy = endpoint;
  specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(v11, endpoint, v10);
  v16 = v15;

  return v16;
}

- (SKRFlowExtensionContextHost)initWithInputItems:(id)items contextUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    v11 = 0;
    v10 = (*(v9 - 8) + 56);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = (*(v9 - 8) + 56);
    v11 = 1;
  }

  (*v10)(v8, v11, 1, v9);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end