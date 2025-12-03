@interface MTCoreDataKeyRequestStorage
- (BOOL)keyExistsInStorageFor:(int64_t)for;
- (BOOL)saveKeyDataFor:(id)for;
- (MTCoreDataKeyRequestStorage)init;
- (id)retrieveKeyDataFor:(id)for;
- (void)markOfflineKeyFor:(int64_t)for pendingDeletion:(BOOL)deletion;
- (void)removeAllKeyDataWithCompletion:(id)completion;
- (void)removeKeyDataFor:(id)for;
- (void)removeKeyDataForStoreTrackID:(int64_t)d;
- (void)saveKeyDataWithKeyIdentifier:(id)identifier storeTrackID:(int64_t)d keyData:(id)data renewalDate:(id)date dsid:(int64_t)dsid responseQueue:(id)queue completion:(id)completion;
@end

@implementation MTCoreDataKeyRequestStorage

- (MTCoreDataKeyRequestStorage)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return [(MTCoreDataKeyRequestStorage *)&v3 init];
}

- (BOOL)saveKeyDataFor:(id)for
{
  forCopy = for;
  forCopy2 = for;
  selfCopy = self;
  LOBYTE(forCopy) = sub_1D8FF34C8(forCopy);

  return forCopy & 1;
}

- (void)saveKeyDataWithKeyIdentifier:(id)identifier storeTrackID:(int64_t)d keyData:(id)data renewalDate:(id)date dsid:(int64_t)dsid responseQueue:(id)queue completion:(id)completion
{
  dCopy = d;
  dsidCopy = dsid;
  v13 = sub_1D9176E3C();
  v31 = *(v13 - 8);
  v32 = v13;
  v14 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &dCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  v18 = sub_1D917820C();
  v20 = v19;
  dataCopy = data;
  dateCopy = date;
  queueCopy = queue;
  selfCopy = self;
  v25 = sub_1D9176C8C();
  v27 = v26;

  sub_1D9176DFC();
  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  sub_1D8FF3F9C(v18, v20, dCopy, v25, v27, v16, dsidCopy, queueCopy, sub_1D8FF7E60, v28);

  sub_1D8D7567C(v25, v27);

  (*(v31 + 8))(v16, v32);
}

- (void)removeKeyDataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1D8FF47A4(for);
}

- (void)removeKeyDataForStoreTrackID:(int64_t)d
{
  selfCopy = self;
  sub_1D8FF4C38(d);
}

- (void)removeAllKeyDataWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D8FF7AC4(sub_1D8D998AC, v5);
}

- (id)retrieveKeyDataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1D8FF5368(for);
  v8 = v7;

  return v8;
}

- (BOOL)keyExistsInStorageFor:(int64_t)for
{
  selfCopy = self;
  LOBYTE(for) = sub_1D8FF5EA0(for);

  return for & 1;
}

- (void)markOfflineKeyFor:(int64_t)for pendingDeletion:(BOOL)deletion
{
  selfCopy = self;
  sub_1D8FF6090(for, deletion);
}

@end