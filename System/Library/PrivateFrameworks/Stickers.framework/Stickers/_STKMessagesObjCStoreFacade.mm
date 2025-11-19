@interface _STKMessagesObjCStoreFacade
- (BOOL)donateStickerToRecentsWithIdentifier:(id)a3 representations:(id)a4 stickerEffectEnum:(int64_t)a5 externalURI:(id)a6 name:(id)a7 accessibilityName:(id)a8 metadata:(id)a9 attributionInfo:(id)a10 error:(id *)a11;
- (_STKMessagesObjCStoreFacade)init;
@end

@implementation _STKMessagesObjCStoreFacade

- (_STKMessagesObjCStoreFacade)init
{
  v3 = type metadata accessor for StickerStore.PersistenceType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8A23784();
  (*(*(v7 - 8) + 56))(v6, 1, 3, v7);
  v8 = type metadata accessor for StickerStore();
  swift_allocObject();
  v9 = StickerStore.init(persistence:)(v6);
  v10 = (self + OBJC_IVAR____STKMessagesObjCStoreFacade_store);
  v10[3] = v8;
  v10[4] = &protocol witness table for StickerStore;
  *v10 = v9;
  v11 = type metadata accessor for _STKMessagesObjCStoreFacade();
  v13.receiver = self;
  v13.super_class = v11;
  return [(_STKMessagesObjCStoreFacade *)&v13 init];
}

- (BOOL)donateStickerToRecentsWithIdentifier:(id)a3 representations:(id)a4 stickerEffectEnum:(int64_t)a5 externalURI:(id)a6 name:(id)a7 accessibilityName:(id)a8 metadata:(id)a9 attributionInfo:(id)a10 error:(id *)a11
{
  v15 = sub_1B8A23F24();
  v36 = v16;
  type metadata accessor for _STKStickerUIStickerRepresentation();
  v34 = sub_1B8A240F4();
  if (a6)
  {
    v17 = sub_1B8A23F24();
    v35 = v18;
    v19 = a9;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v32 = 0;
    v21 = a10;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  v35 = 0;
  v19 = a9;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_1B8A23F24();
  v32 = v20;
  v21 = a10;
  if (a8)
  {
LABEL_4:
    v22 = sub_1B8A23F24();
    a8 = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  v24 = v19;
  v30 = v21;
  v25 = self;
  if (v24)
  {
    v26 = sub_1B8A237C4();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  sub_1B89ED028(v15, v36, v34, a5, v17, v35, v31, v32, v22, a8, v26, v28, v21);

  sub_1B89B4A04(v26, v28);

  return 1;
}

@end