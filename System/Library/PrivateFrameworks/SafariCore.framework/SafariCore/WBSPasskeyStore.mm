@interface WBSPasskeyStore
- (_TtC10SafariCore15WBSPasskeyStore)init;
- (id)initForTesting:(BOOL)testing queue:(id)queue;
- (void)test_copyPasskeyWithCredentialID:(NSData *)d toGroup:(NSString *)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler;
- (void)test_createLegacyCredentialWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle completionHandler:(id)handler;
- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler;
- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0;
@end

@implementation WBSPasskeyStore

- (id)initForTesting:(BOOL)testing queue:(id)queue
{
  self->isForTesting[0] = testing;
  *&self->executorQueue[7] = queue;
  queueCopy = queue;
  *&self->unownedExecutor[7] = sub_1B8566268();
  *&self->unownedExecutor[15] = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for WBSPasskeyStore();
  v7 = [(WBSPasskeyStore *)&v9 init];

  return v7;
}

- (_TtC10SafariCore15WBSPasskeyStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = name;
  *(v21 + 24) = displayName;
  *(v21 + 32) = party;
  *(v21 + 40) = handle;
  *(v21 + 48) = d;
  *(v21 + 56) = deleted;
  *(v21 + 64) = v20;
  *(v21 + 72) = self;
  v22 = sub_1B8566108();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574B20;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1B8574B28;
  v24[5] = v23;
  nameCopy = name;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;
  dCopy = d;

  sub_1B8534B98(0, 0, v19, &unk_1B8574B30, v24);
}

- (void)test_createPasskeyWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle groupID:(NSString *)d inRecentlyDeleted:(BOOL)deleted unsafeAllowRealKeychainAccess:(BOOL)access completionHandler:(id)self0
{
  HIDWORD(v30) = deleted;
  nameCopy = name;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = name;
  *(v21 + 24) = displayName;
  *(v21 + 32) = party;
  *(v21 + 40) = handle;
  *(v21 + 48) = d;
  *(v21 + 56) = BYTE4(v30);
  *(v21 + 57) = access;
  *(v21 + 64) = v20;
  *(v21 + 72) = self;
  v22 = sub_1B8566108();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B8574B00;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1B8574B08;
  v24[5] = v23;
  v25 = nameCopy;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;
  dCopy = d;

  sub_1B8534B98(0, 0, v19, &unk_1B8574B10, v24);
}

- (void)test_createLegacyCredentialWithName:(NSString *)name displayName:(NSString *)displayName relyingParty:(NSString *)party userHandle:(NSData *)handle completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = name;
  v18[3] = displayName;
  v18[4] = party;
  v18[5] = handle;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_1B8566108();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B8574AE0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1B8574AE8;
  v21[5] = v20;
  nameCopy = name;
  displayNameCopy = displayName;
  partyCopy = party;
  handleCopy = handle;

  sub_1B8534B98(0, 0, v16, &unk_1B8574AF0, v21);
}

- (void)test_copyPasskeyWithCredentialID:(NSData *)d toGroup:(NSString *)group inRecentlyDeleted:(BOOL)deleted completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = d;
  *(v16 + 24) = group;
  *(v16 + 32) = deleted;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_1B8566108();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B8574A98;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B8574428;
  v19[5] = v18;
  dCopy = d;
  groupCopy = group;

  sub_1B8534B98(0, 0, v14, &unk_1B8574430, v19);
}

@end