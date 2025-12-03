@interface PXPhotoKitSocialGroupActionManager
- (BOOL)canPerformActionType:(id)type;
- (BOOL)isDestructiveActionType:(id)type;
- (PXPhotoKitSocialGroupActionManager)init;
- (PXPhotoKitSocialGroupActionManager)initWithSocialGroups:(id)groups photoLibrary:(id)library;
- (id)actionPerformerForActionType:(id)type;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)actionTypeForGenericType:(id)type;
- (id)contextMenuElementsWithHandler:(id)handler;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)systemImageNameForActionType:(id)type;
@end

@implementation PXPhotoKitSocialGroupActionManager

- (PXPhotoKitSocialGroupActionManager)initWithSocialGroups:(id)groups photoLibrary:(id)library
{
  ObjectType = swift_getObjectType();
  sub_1A3C52C70(0, &qword_1EB126C28);
  *(&self->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups) = sub_1A524CA34();
  *(&self->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_photoLibrary) = library;
  v9.receiver = self;
  v9.super_class = ObjectType;
  libraryCopy = library;
  return [(PXPhotoKitSocialGroupActionManager *)&v9 init];
}

- (id)actionTypeForGenericType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  if (v4 == sub_1A524C674() && v6 == v7)
  {
    typeCopy = type;
  }

  else
  {
    v9 = sub_1A524EAB4();
    typeCopy2 = type;

    if ((v9 & 1) == 0)
    {

      v11 = 0;
      goto LABEL_9;
    }
  }

  v11 = sub_1A524C634();
LABEL_9:

  return v11;
}

- (id)actionPerformerForActionType:(id)type
{
  sub_1A524C674();
  selfCopy = self;
  sub_1A4680B60();
}

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  v5 = sub_1A524C674();
  v7 = v6;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v8 = sub_1A524C3E4();
  selfCopy = self;
  v10 = sub_1A4681620(v5, v7, v8);

  return v10;
}

- (BOOL)canPerformActionType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A4682C14(v4, v6);
  v10 = v9;

  v11 = *(&selfCopy->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups);
  if (v11 >> 62)
  {
    v12 = sub_1A524E2B4();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1A59097F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v12;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
LABEL_9:
  v15 = (*(v10 + 8))(v14, v8, v10);

  LOBYTE(v12) = v15 & 1;
  return v12;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  v5 = sub_1A524C674();
  v7 = v6;
  selfCopy = self;
  v9 = sub_1A4682C14(v5, v7);
  v11 = v10;

  v12 = *(&selfCopy->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups);
  if (v12 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1A59097F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;
LABEL_9:
  (*(v11 + 16))(v15, v9, v11);

  v16 = sub_1A524C634();

  return v16;
}

- (id)systemImageNameForActionType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A4682C14(v4, v6);
  v10 = v9;

  v11 = *(&selfCopy->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups);
  if (v11 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1A59097F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
LABEL_9:
  (*(v10 + 24))(v14, v8, v10);

  v15 = sub_1A524C634();

  return v15;
}

- (BOOL)isDestructiveActionType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A4682C14(v4, v6);
  v10 = v9;

  v11 = *(&selfCopy->super.super.isa + OBJC_IVAR___PXPhotoKitSocialGroupActionManager_socialGroups);
  if (v11 >> 62)
  {
    v12 = sub_1A524E2B4();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1A59097F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v12;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
LABEL_9:
  v15 = (*(v10 + 32))(v14, v8, v10);

  LOBYTE(v12) = v15 & 1;
  return v12;
}

- (id)contextMenuElementsWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A46821A8(sub_1A4682F58, v5);
}

- (PXPhotoKitSocialGroupActionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end