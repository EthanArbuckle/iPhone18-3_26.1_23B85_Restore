@interface _STKMessagesObjCStoreFacade
- (BOOL)donateStickerToRecentsWithIdentifier:(id)identifier representations:(id)representations stickerEffectEnum:(int64_t)enum externalURI:(id)i name:(id)name accessibilityName:(id)accessibilityName metadata:(id)metadata attributionInfo:(id)self0 error:(id *)self1;
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

- (BOOL)donateStickerToRecentsWithIdentifier:(id)identifier representations:(id)representations stickerEffectEnum:(int64_t)enum externalURI:(id)i name:(id)name accessibilityName:(id)accessibilityName metadata:(id)metadata attributionInfo:(id)self0 error:(id *)self1
{
  v15 = sub_1B8A23F24();
  v36 = v16;
  type metadata accessor for _STKStickerUIStickerRepresentation();
  v34 = sub_1B8A240F4();
  if (i)
  {
    v17 = sub_1B8A23F24();
    v35 = v18;
    metadataCopy2 = metadata;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v32 = 0;
    infoCopy2 = info;
    if (accessibilityName)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  v35 = 0;
  metadataCopy2 = metadata;
  if (!name)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_1B8A23F24();
  v32 = v20;
  infoCopy2 = info;
  if (accessibilityName)
  {
LABEL_4:
    v22 = sub_1B8A23F24();
    accessibilityName = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  v24 = metadataCopy2;
  v30 = infoCopy2;
  selfCopy = self;
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

  sub_1B89ED028(v15, v36, v34, enum, v17, v35, v31, v32, v22, accessibilityName, v26, v28, infoCopy2);

  sub_1B89B4A04(v26, v28);

  return 1;
}

@end