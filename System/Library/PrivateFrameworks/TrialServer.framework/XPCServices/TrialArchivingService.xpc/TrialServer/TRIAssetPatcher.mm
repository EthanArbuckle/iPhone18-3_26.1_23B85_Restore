@interface TRIAssetPatcher
- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)filename toSrcDir:(id)dir writingToEmptyDestDir:(id)destDir postPatchCompression:(id)compression error:(id *)error;
- (TRIAssetPatcher)initWithShouldDefer:(id)defer;
@end

@implementation TRIAssetPatcher

- (TRIAssetPatcher)initWithShouldDefer:(id)defer
{
  deferCopy = defer;
  v9.receiver = self;
  v9.super_class = TRIAssetPatcher;
  v5 = [(TRIAssetPatcher *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(deferCopy);
    shouldDefer = v5->_shouldDefer;
    v5->_shouldDefer = v6;
  }

  return v5;
}

- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)filename toSrcDir:(id)dir writingToEmptyDestDir:(id)destDir postPatchCompression:(id)compression error:(id *)error
{
  destDirCopy = destDir;
  dirCopy = dir;
  filenameCopy = filename;
  notify_post("com.apple.trial.TrialArchivingService.test.beginPatch");
  [dirCopy fileSystemRepresentation];

  [destDirCopy fileSystemRepresentation];
  [filenameCopy fileSystemRepresentation];

  ParallelCompressionEnterThreadErrorContext();
  v15 = DirectoryPatch();
  ParallelCompressionLeaveThreadErrorContext();
  if (error && v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *error;
    *error = v16;
LABEL_7:

    goto LABEL_8;
  }

  v17 = v15 == 0;
  if (!v15 && compression.var0 == 1)
  {
    notify_post("com.apple.trial.TrialArchivingService.test.beginCompress");
    v18 = objc_opt_new();
    v17 = [v18 inPlaceCompressDirectory:destDirCopy shouldDefer:self->_shouldDefer];
    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

@end