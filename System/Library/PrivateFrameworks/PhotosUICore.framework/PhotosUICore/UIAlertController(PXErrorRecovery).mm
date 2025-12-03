@interface UIAlertController(PXErrorRecovery)
+ (id)px_alertControllerWithError:()PXErrorRecovery completionHandler:;
@end

@implementation UIAlertController(PXErrorRecovery)

+ (id)px_alertControllerWithError:()PXErrorRecovery completionHandler:
{
  v5 = a4;
  v6 = a3;
  localizedDescription = [v6 localizedDescription];
  localizedFailureReason = [v6 localizedFailureReason];
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:localizedDescription message:localizedFailureReason preferredStyle:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__UIAlertController_PXErrorRecovery__px_alertControllerWithError_completionHandler___block_invoke;
  v21[3] = &unk_1E773BFC8;
  v10 = v9;
  v22 = v10;
  v11 = PXErrorRecoveryEnumerateOptionsForError(v6, v5, v21);

  if ((v11 & 1) == 0)
  {
    v12 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
    v13 = MEMORY[0x1E69DC648];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __84__UIAlertController_PXErrorRecovery__px_alertControllerWithError_completionHandler___block_invoke_3;
    v19 = &unk_1E7748000;
    v20 = v5;
    v14 = [v13 actionWithTitle:v12 style:0 handler:&v16];
    [v10 addAction:{v14, v16, v17, v18, v19}];
    [v10 setPreferredAction:v14];
  }

  return v10;
}

@end