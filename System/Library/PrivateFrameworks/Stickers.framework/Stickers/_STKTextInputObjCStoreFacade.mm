@interface _STKTextInputObjCStoreFacade
- (BOOL)touchStickerWithIdentifier:(id)identifier error:(id *)error;
- (_STKTextInputObjCStoreFacade)init;
- (id)representationsForStickersWithIdentifiers:(id)identifiers roles:(id)roles error:(id *)error;
- (id)stickersWithIdentifiers:(id)identifiers roles:(id)roles error:(id *)error;
@end

@implementation _STKTextInputObjCStoreFacade

- (_STKTextInputObjCStoreFacade)init
{
  v3 = type metadata accessor for StickerStore.PersistenceType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A23BB4();
  v7 = sub_1B8A23784();
  (*(*(v7 - 8) + 56))(v6, 1, 3, v7);
  v8 = type metadata accessor for StickerStore();
  swift_allocObject();
  v9 = StickerStore.init(persistence:)(v6);
  v10 = (self + OBJC_IVAR____STKTextInputObjCStoreFacade_store);
  v10[3] = v8;
  v10[4] = &protocol witness table for StickerStore;
  *v10 = v9;
  v11 = type metadata accessor for _STKTextInputObjCStoreFacade(0);
  v13.receiver = self;
  v13.super_class = v11;
  return [(_STKTextInputObjCStoreFacade *)&v13 init];
}

- (id)stickersWithIdentifiers:(id)identifiers roles:(id)roles error:(id *)error
{
  sub_1B8A23904();
  v7 = sub_1B8A240F4();
  if (roles)
  {
    v8 = sub_1B8A240F4();
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_1B89C540C(v7, v8);

  type metadata accessor for _STKSticker(0);
  v10 = sub_1B8A240E4();

  return v10;
}

- (id)representationsForStickersWithIdentifiers:(id)identifiers roles:(id)roles error:(id *)error
{
  sub_1B8A23904();
  v7 = sub_1B8A240F4();
  if (roles)
  {
    v8 = sub_1B8A240F4();
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  v10 = sub_1B89C540C(v7, v8);
  sub_1B89C6640(v10);

  v14 = sub_1B89C9F68(v11, sub_1B8A10828, sub_1B89CA380);
  sub_1B89CC7CC(&v14, v7, sub_1B89F6814, type metadata accessor for _STKStickerRepresentation, sub_1B89CBDE4, sub_1B89CC538);

  swift_bridgeObjectRelease_n();

  type metadata accessor for _STKStickerRepresentation(0);
  v12 = sub_1B8A240E4();

  return v12;
}

- (BOOL)touchStickerWithIdentifier:(id)identifier error:(id *)error
{
  errorCopy = error;
  v5 = sub_1B8A23904();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &errorCopy - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A238D4();
  v10 = *&self->store[OBJC_IVAR____STKTextInputObjCStoreFacade_store + 16];
  v11 = *&self->store[OBJC_IVAR____STKTextInputObjCStoreFacade_store + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR____STKTextInputObjCStoreFacade_store), v10);
  v12 = *(v11 + 72);
  selfCopy = self;
  v12(v9, v10, v11);

  (*(v6 + 8))(v9, v5);
  return 1;
}

@end