@interface WBSPasskeyStore
- (_TtC10SafariCore15WBSPasskeyStore)init;
- (id)initForTesting:(BOOL)a3 queue:(id)a4;
- (void)test_copyPasskeyWithCredentialID:(NSData *)a3 toGroup:(NSString *)a4 inRecentlyDeleted:(BOOL)a5 completionHandler:(id)a6;
- (void)test_createLegacyCredentialWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 completionHandler:(id)a7;
- (void)test_createPasskeyWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 groupID:(NSString *)a7 inRecentlyDeleted:(BOOL)a8 completionHandler:(id)a9;
- (void)test_createPasskeyWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 groupID:(NSString *)a7 inRecentlyDeleted:(BOOL)a8 unsafeAllowRealKeychainAccess:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation WBSPasskeyStore

- (id)initForTesting:(BOOL)a3 queue:(id)a4
{
  self->isForTesting[0] = a3;
  *&self->executorQueue[7] = a4;
  v5 = a4;
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

- (void)test_createPasskeyWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 groupID:(NSString *)a7 inRecentlyDeleted:(BOOL)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
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
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;

  sub_1B8534B98(0, 0, v19, &unk_1B8574B30, v24);
}

- (void)test_createPasskeyWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 groupID:(NSString *)a7 inRecentlyDeleted:(BOOL)a8 unsafeAllowRealKeychainAccess:(BOOL)a9 completionHandler:(id)a10
{
  HIDWORD(v30) = a8;
  v31 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = BYTE4(v30);
  *(v21 + 57) = a9;
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
  v25 = v31;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;

  sub_1B8534B98(0, 0, v19, &unk_1B8574B10, v24);
}

- (void)test_createLegacyCredentialWithName:(NSString *)a3 displayName:(NSString *)a4 relyingParty:(NSString *)a5 userHandle:(NSData *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
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
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;

  sub_1B8534B98(0, 0, v16, &unk_1B8574AF0, v21);
}

- (void)test_copyPasskeyWithCredentialID:(NSData *)a3 toGroup:(NSString *)a4 inRecentlyDeleted:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
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
  v20 = a3;
  v21 = a4;

  sub_1B8534B98(0, 0, v14, &unk_1B8574430, v19);
}

@end