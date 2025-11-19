@interface PLBackgroundAssetResourceUploader
+ (id)descriptionForTaskState:(int64_t)a3;
- (BOOL)handleTaskCompletionWithResponse:(id)a3 jobUUID:(id)a4 error:(id)a5;
- (BOOL)updateJobWithUUID:(id)a3 withState:(signed __int16)a4 inLibrary:(id)a5;
- (OS_dispatch_queue)queue;
- (PLPhotoLibraryFactory)photoLibraryFactory;
- (id)fetchJobWithUUID:(id)a3 in:(id)a4;
- (id)fetchPendingJobsForBundleID:(id)a3 in:(id)a4;
- (id)makeLocallyAvailableWithResource:(id)a3 jobUUID:(id)a4 bundleID:(id)a5 library:(id)a6 completionHandler:(id)a7;
- (id)urlSessionForBundleID:(id)a3;
- (void)networkStatusForBundleID:(id)a3 withLevel:(int64_t)a4 completionHandler:(id)a5;
- (void)uploadFileWithURL:(id)a3 jobUUID:(id)a4 bundleID:(id)a5 request:(id)a6;
- (void)verifyJobConsistencyWithCompletionHandler:(id)a3;
- (void)verifyJobsForBundleIDs:(id)a3 completion:(id)a4;
- (void)verifyJobsForSession:(id)a3 bundleID:(id)a4 :(id)a5;
@end

@implementation PLBackgroundAssetResourceUploader

- (PLPhotoLibraryFactory)photoLibraryFactory
{
  v2 = sub_19BF3112C();

  return v2;
}

- (OS_dispatch_queue)queue
{
  v2 = sub_19BF31170();

  return v2;
}

- (id)urlSessionForBundleID:(id)a3
{
  v4 = sub_19C5C45DC();
  v6 = v5;
  v7 = self;
  v8 = sub_19BF31C94(v4, v6);

  return v8;
}

- (id)makeLocallyAvailableWithResource:(id)a3 jobUUID:(id)a4 bundleID:(id)a5 library:(id)a6 completionHandler:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_19C5C45DC();
  v13 = v12;
  v14 = sub_19C5C45DC();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = a3;
  v19 = a6;
  v20 = self;
  v21 = sub_19BF32708(v18, v11, v13, v14, v16, v19, sub_19BF3B288, v17);

  return v21;
}

- (void)uploadFileWithURL:(id)a3 jobUUID:(id)a4 bundleID:(id)a5 request:(id)a6
{
  v20 = self;
  v21 = sub_19C5C448C();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19C5C44DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19C5C44CC();
  v13 = sub_19C5C45DC();
  v15 = v14;
  v16 = sub_19C5C45DC();
  v18 = v17;
  sub_19C5C447C();
  v19 = v20;
  sub_19BF32F88(v12, v13, v15, v16, v18);

  (*(v6 + 8))(v8, v21);
  (*(v10 + 8))(v12, v9);
}

- (BOOL)handleTaskCompletionWithResponse:(id)a3 jobUUID:(id)a4 error:(id)a5
{
  if (a4)
  {
    v8 = sub_19C5C45DC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = sub_19BF33950(a3, v8, v10, a5);

  return v14 & 1;
}

- (void)verifyJobConsistencyWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_19BF3405C(v5, v4);
  _Block_release(v4);
}

- (void)verifyJobsForBundleIDs:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_19C5C466C();
  _Block_copy(v5);
  v7 = self;
  sub_19BF3494C(v6, v7, v5);
  _Block_release(v5);
}

- (void)verifyJobsForSession:(id)a3 bundleID:(id)a4 :(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_19C5C45DC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_19BF35000(v12, v8, v10, sub_19BF39770, v11);
}

- (id)fetchJobWithUUID:(id)a3 in:(id)a4
{
  v6 = sub_19C5C45DC();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_19BF36AA0(v6, v8, v9);

  return v11;
}

- (id)fetchPendingJobsForBundleID:(id)a3 in:(id)a4
{
  v6 = sub_19C5C45DC();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_19BF36FFC(v6, v8, v9);

  if (v11)
  {
    sub_19BF3B340(0, &qword_1EAFF3D28);
    v12 = sub_19C5C465C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateJobWithUUID:(id)a3 withState:(signed __int16)a4 inLibrary:(id)a5
{
  v8 = sub_19C5C45DC();
  v10 = v9;
  v11 = a5;
  v12 = self;
  LOBYTE(a4) = sub_19BF3764C(v8, v10, a4, v11);

  return a4 & 1;
}

- (void)networkStatusForBundleID:(id)a3 withLevel:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_19C5C45DC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_19BF37934(v8, v10, a4, sub_19BF396E4, v11);
}

+ (id)descriptionForTaskState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  sub_19BF38B34(a3);
  v4 = sub_19C5C45CC();

  return v4;
}

@end