@interface PLBackgroundAssetResourceUploader
+ (id)descriptionForTaskState:(int64_t)state;
- (BOOL)handleTaskCompletionWithResponse:(id)response jobUUID:(id)d error:(id)error;
- (BOOL)updateJobWithUUID:(id)d withState:(signed __int16)state inLibrary:(id)library;
- (OS_dispatch_queue)queue;
- (PLPhotoLibraryFactory)photoLibraryFactory;
- (id)fetchJobWithUUID:(id)d in:(id)in;
- (id)fetchPendingJobsForBundleID:(id)d in:(id)in;
- (id)makeLocallyAvailableWithResource:(id)resource jobUUID:(id)d bundleID:(id)iD library:(id)library completionHandler:(id)handler;
- (id)urlSessionForBundleID:(id)d;
- (void)networkStatusForBundleID:(id)d withLevel:(int64_t)level completionHandler:(id)handler;
- (void)uploadFileWithURL:(id)l jobUUID:(id)d bundleID:(id)iD request:(id)request;
- (void)verifyJobConsistencyWithCompletionHandler:(id)handler;
- (void)verifyJobsForBundleIDs:(id)ds completion:(id)completion;
- (void)verifyJobsForSession:(id)session bundleID:(id)d :(id)a5;
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

- (id)urlSessionForBundleID:(id)d
{
  v4 = sub_19C5C45DC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_19BF31C94(v4, v6);

  return v8;
}

- (id)makeLocallyAvailableWithResource:(id)resource jobUUID:(id)d bundleID:(id)iD library:(id)library completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = sub_19C5C45DC();
  v13 = v12;
  v14 = sub_19C5C45DC();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  resourceCopy = resource;
  libraryCopy = library;
  selfCopy = self;
  v21 = sub_19BF32708(resourceCopy, v11, v13, v14, v16, libraryCopy, sub_19BF3B288, v17);

  return v21;
}

- (void)uploadFileWithURL:(id)l jobUUID:(id)d bundleID:(id)iD request:(id)request
{
  selfCopy = self;
  v21 = sub_19C5C448C();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &selfCopy - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19C5C44DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &selfCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19C5C44CC();
  v13 = sub_19C5C45DC();
  v15 = v14;
  v16 = sub_19C5C45DC();
  v18 = v17;
  sub_19C5C447C();
  v19 = selfCopy;
  sub_19BF32F88(v12, v13, v15, v16, v18);

  (*(v6 + 8))(v8, v21);
  (*(v10 + 8))(v12, v9);
}

- (BOOL)handleTaskCompletionWithResponse:(id)response jobUUID:(id)d error:(id)error
{
  if (d)
  {
    v8 = sub_19C5C45DC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  responseCopy = response;
  errorCopy = error;
  selfCopy = self;
  v14 = sub_19BF33950(response, v8, v10, error);

  return v14 & 1;
}

- (void)verifyJobConsistencyWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_19BF3405C(selfCopy, v4);
  _Block_release(v4);
}

- (void)verifyJobsForBundleIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_19C5C466C();
  _Block_copy(v5);
  selfCopy = self;
  sub_19BF3494C(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)verifyJobsForSession:(id)session bundleID:(id)d :(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_19C5C45DC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  sessionCopy = session;
  selfCopy = self;
  sub_19BF35000(sessionCopy, v8, v10, sub_19BF39770, v11);
}

- (id)fetchJobWithUUID:(id)d in:(id)in
{
  v6 = sub_19C5C45DC();
  v8 = v7;
  inCopy = in;
  selfCopy = self;
  v11 = sub_19BF36AA0(v6, v8, inCopy);

  return v11;
}

- (id)fetchPendingJobsForBundleID:(id)d in:(id)in
{
  v6 = sub_19C5C45DC();
  v8 = v7;
  inCopy = in;
  selfCopy = self;
  v11 = sub_19BF36FFC(v6, v8, inCopy);

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

- (BOOL)updateJobWithUUID:(id)d withState:(signed __int16)state inLibrary:(id)library
{
  v8 = sub_19C5C45DC();
  v10 = v9;
  libraryCopy = library;
  selfCopy = self;
  LOBYTE(state) = sub_19BF3764C(v8, v10, state, libraryCopy);

  return state & 1;
}

- (void)networkStatusForBundleID:(id)d withLevel:(int64_t)level completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_19C5C45DC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_19BF37934(v8, v10, level, sub_19BF396E4, v11);
}

+ (id)descriptionForTaskState:(int64_t)state
{
  swift_getObjCClassMetadata();
  sub_19BF38B34(state);
  v4 = sub_19C5C45CC();

  return v4;
}

@end