@interface PLBackgroundJobAssetResourceUploadJobWorker
+ (BOOL)isEnabledForBundle:(id)bundle;
- (BOOL)updateRunningProgress:(id)progress;
- (BOOL)verifyWorkerIsRunningWithNoProgressAndReturnError:(id *)error;
- (PLBackgroundJobAssetResourceUploadJobWorker)initWithLibraryBundle:(id)bundle uploader:(id)uploader;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)cancelProgress:(id)progress;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
- (void)transitionToCanceled;
@end

@implementation PLBackgroundJobAssetResourceUploadJobWorker

- (PLBackgroundJobAssetResourceUploadJobWorker)initWithLibraryBundle:(id)bundle uploader:(id)uploader
{
  bundleCopy = bundle;
  swift_unknownObjectRetain();
  return sub_19BF3BD14(bundleCopy, uploader);
}

+ (BOOL)isEnabledForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = static PLBackgroundJobAssetResourceUploadJobWorker.isEnabled(for:)(bundleCopy);

  return v4 & 1;
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  sub_19BF3B340(0, &qword_1EAFF3EF0);
  sub_19BF41C1C();
  v6 = sub_19C5C46BC();
  libraryCopy = library;
  selfCopy = self;
  v9 = PLBackgroundJobAssetResourceUploadJobWorker.workItemsNeedingProcessing(in:validCriterias:)(libraryCopy, v6);

  return v9;
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  libraryCopy = library;
  selfCopy = self;
  sub_19BF3D26C(item, libraryCopy, selfCopy, v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)stopWorkingOnItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  PLBackgroundJobAssetResourceUploadJobWorker.stopWorking(onItem:)(item);
  swift_unknownObjectRelease();
}

- (BOOL)verifyWorkerIsRunningWithNoProgressAndReturnError:(id *)error
{
  selfCopy = self;
  sub_19BF3F5E8();

  return 1;
}

- (BOOL)updateRunningProgress:(id)progress
{
  progressCopy = progress;
  progressCopy2 = progress;
  selfCopy = self;
  LOBYTE(progressCopy) = sub_19BF3F8E8(progressCopy);

  return progressCopy & 1;
}

- (void)transitionToCanceled
{
  selfCopy = self;
  sub_19BF3F9A8();
}

- (void)cancelProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  sub_19BF3FA78(progress);
}

@end