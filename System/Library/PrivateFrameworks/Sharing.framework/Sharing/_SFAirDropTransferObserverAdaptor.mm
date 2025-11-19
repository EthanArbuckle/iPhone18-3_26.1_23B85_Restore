@interface _SFAirDropTransferObserverAdaptor
- (SFAirDropTransferObserverDelegate)delegate;
- (_TtC7Sharing33_SFAirDropTransferObserverAdaptor)init;
@end

@implementation _SFAirDropTransferObserverAdaptor

- (SFAirDropTransferObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Sharing33_SFAirDropTransferObserverAdaptor)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SFAirDropClient(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(self + OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_client) = SFAirDropClient.init(identifier:)(v7);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(_SFAirDropTransferObserverAdaptor *)&v12 init];
}

@end