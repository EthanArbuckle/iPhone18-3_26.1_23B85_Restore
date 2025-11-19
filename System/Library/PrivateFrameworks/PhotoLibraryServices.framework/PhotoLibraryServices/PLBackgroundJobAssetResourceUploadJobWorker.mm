@interface PLBackgroundJobAssetResourceUploadJobWorker
+ (BOOL)isEnabledForBundle:(id)a3;
- (BOOL)updateRunningProgress:(id)a3;
- (BOOL)verifyWorkerIsRunningWithNoProgressAndReturnError:(id *)a3;
- (PLBackgroundJobAssetResourceUploadJobWorker)initWithLibraryBundle:(id)a3 uploader:(id)a4;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)cancelProgress:(id)a3;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
- (void)transitionToCanceled;
@end

@implementation PLBackgroundJobAssetResourceUploadJobWorker

- (PLBackgroundJobAssetResourceUploadJobWorker)initWithLibraryBundle:(id)a3 uploader:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_19BF3BD14(v5, a4);
}

+ (BOOL)isEnabledForBundle:(id)a3
{
  v3 = a3;
  v4 = static PLBackgroundJobAssetResourceUploadJobWorker.isEnabled(for:)(v3);

  return v4 & 1;
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  sub_19BF3B340(0, &qword_1EAFF3EF0);
  sub_19BF41C1C();
  v6 = sub_19C5C46BC();
  v7 = a3;
  v8 = self;
  v9 = PLBackgroundJobAssetResourceUploadJobWorker.workItemsNeedingProcessing(in:validCriterias:)(v7, v6);

  return v9;
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  sub_19BF3D26C(a3, v9, v10, v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)stopWorkingOnItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  PLBackgroundJobAssetResourceUploadJobWorker.stopWorking(onItem:)(a3);
  swift_unknownObjectRelease();
}

- (BOOL)verifyWorkerIsRunningWithNoProgressAndReturnError:(id *)a3
{
  v3 = self;
  sub_19BF3F5E8();

  return 1;
}

- (BOOL)updateRunningProgress:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_19BF3F8E8(v3);

  return v3 & 1;
}

- (void)transitionToCanceled
{
  v2 = self;
  sub_19BF3F9A8();
}

- (void)cancelProgress:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_19BF3FA78(a3);
}

@end