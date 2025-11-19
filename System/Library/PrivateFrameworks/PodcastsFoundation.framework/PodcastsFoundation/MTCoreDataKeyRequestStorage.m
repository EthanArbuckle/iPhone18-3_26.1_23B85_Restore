@interface MTCoreDataKeyRequestStorage
- (BOOL)keyExistsInStorageFor:(int64_t)a3;
- (BOOL)saveKeyDataFor:(id)a3;
- (MTCoreDataKeyRequestStorage)init;
- (id)retrieveKeyDataFor:(id)a3;
- (void)markOfflineKeyFor:(int64_t)a3 pendingDeletion:(BOOL)a4;
- (void)removeAllKeyDataWithCompletion:(id)a3;
- (void)removeKeyDataFor:(id)a3;
- (void)removeKeyDataForStoreTrackID:(int64_t)a3;
- (void)saveKeyDataWithKeyIdentifier:(id)a3 storeTrackID:(int64_t)a4 keyData:(id)a5 renewalDate:(id)a6 dsid:(int64_t)a7 responseQueue:(id)a8 completion:(id)a9;
@end

@implementation MTCoreDataKeyRequestStorage

- (MTCoreDataKeyRequestStorage)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return [(MTCoreDataKeyRequestStorage *)&v3 init];
}

- (BOOL)saveKeyDataFor:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_1D8FF34C8(v3);

  return v3 & 1;
}

- (void)saveKeyDataWithKeyIdentifier:(id)a3 storeTrackID:(int64_t)a4 keyData:(id)a5 renewalDate:(id)a6 dsid:(int64_t)a7 responseQueue:(id)a8 completion:(id)a9
{
  v29 = a4;
  v30 = a7;
  v13 = sub_1D9176E3C();
  v31 = *(v13 - 8);
  v32 = v13;
  v14 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a9);
  v18 = sub_1D917820C();
  v20 = v19;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  v24 = self;
  v25 = sub_1D9176C8C();
  v27 = v26;

  sub_1D9176DFC();
  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  sub_1D8FF3F9C(v18, v20, v29, v25, v27, v16, v30, v23, sub_1D8FF7E60, v28);

  sub_1D8D7567C(v25, v27);

  (*(v31 + 8))(v16, v32);
}

- (void)removeKeyDataFor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D8FF47A4(a3);
}

- (void)removeKeyDataForStoreTrackID:(int64_t)a3
{
  v4 = self;
  sub_1D8FF4C38(a3);
}

- (void)removeAllKeyDataWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D8FF7AC4(sub_1D8D998AC, v5);
}

- (id)retrieveKeyDataFor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D8FF5368(a3);
  v8 = v7;

  return v8;
}

- (BOOL)keyExistsInStorageFor:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1D8FF5EA0(a3);

  return a3 & 1;
}

- (void)markOfflineKeyFor:(int64_t)a3 pendingDeletion:(BOOL)a4
{
  v6 = self;
  sub_1D8FF6090(a3, a4);
}

@end