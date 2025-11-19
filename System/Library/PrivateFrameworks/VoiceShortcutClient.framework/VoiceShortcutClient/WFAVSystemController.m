@interface WFAVSystemController
- (BOOL)silentModeActive;
- (BOOL)toggleSilentModeWithReason:(id)a3 client:(int64_t)a4;
- (id)avSystemController;
@end

@implementation WFAVSystemController

- (BOOL)toggleSilentModeWithReason:(id)a3 client:(int64_t)a4
{
  v6 = a3;
  LOBYTE(a4) = [(WFAVSystemController *)self setSilentMode:[(WFAVSystemController *)self silentModeActive]^ 1 reason:v6 client:a4];

  return a4;
}

- (BOOL)silentModeActive
{
  v2 = [(WFAVSystemController *)self avSystemController];
  v3 = [v2 getSilentMode];

  return v3;
}

- (id)avSystemController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAVSystemControllerClass_softClass;
  v10 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAVSystemControllerClass_block_invoke;
    v6[3] = &unk_1E7B02C60;
    v6[4] = &v7;
    __getAVSystemControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 sharedAVSystemController];

  return v4;
}

@end