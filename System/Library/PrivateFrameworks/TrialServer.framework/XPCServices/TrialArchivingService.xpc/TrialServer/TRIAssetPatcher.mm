@interface TRIAssetPatcher
- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)a3 toSrcDir:(id)a4 writingToEmptyDestDir:(id)a5 postPatchCompression:(id)a6 error:(id *)a7;
- (TRIAssetPatcher)initWithShouldDefer:(id)a3;
@end

@implementation TRIAssetPatcher

- (TRIAssetPatcher)initWithShouldDefer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIAssetPatcher;
  v5 = [(TRIAssetPatcher *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    shouldDefer = v5->_shouldDefer;
    v5->_shouldDefer = v6;
  }

  return v5;
}

- ($A5A652246548B43F8BC05201A1C72A70)applyPatchWithFilename:(id)a3 toSrcDir:(id)a4 writingToEmptyDestDir:(id)a5 postPatchCompression:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  notify_post("com.apple.trial.TrialArchivingService.test.beginPatch");
  [v13 fileSystemRepresentation];

  [v12 fileSystemRepresentation];
  [v14 fileSystemRepresentation];

  ParallelCompressionEnterThreadErrorContext();
  v15 = DirectoryPatch();
  ParallelCompressionLeaveThreadErrorContext();
  if (a7 && v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *a7;
    *a7 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v17 = v15 == 0;
  if (!v15 && a6.var0 == 1)
  {
    notify_post("com.apple.trial.TrialArchivingService.test.beginCompress");
    v18 = objc_opt_new();
    v17 = [v18 inPlaceCompressDirectory:v12 shouldDefer:self->_shouldDefer];
    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

@end