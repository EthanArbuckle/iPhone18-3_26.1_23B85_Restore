@interface SCUIScreenTimePasscodeController
+ (id)_isScreenTimePasscodeSet:(id *)a3;
+ (void)_checkScreenTimePasscodeFromViewController:(id)a3 completionHandler:(id)a4;
+ (void)askUserForScreenTimePasscodeFrom:(UIViewController *)a3 interventionType:(int64_t)a4 completionHandler:(id)a5;
+ (void)askUserForScreenTimePasscodeFrom:(UIViewController *)a3 model:(SCUIInterventionScreenModel *)a4 completionHandler:(id)a5;
@end

@implementation SCUIScreenTimePasscodeController

+ (id)_isScreenTimePasscodeSet:(id *)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E69CA9A8] settingEnabled];

  return [v3 numberWithBool:v4];
}

+ (void)_checkScreenTimePasscodeFromViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v8 = getSTCommunicationClientClass_softClass;
  v19 = getSTCommunicationClientClass_softClass;
  if (!getSTCommunicationClientClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getSTCommunicationClientClass_block_invoke;
    v15[3] = &unk_1E7FF2370;
    v15[4] = &v16;
    __getSTCommunicationClientClass_block_invoke(v15);
    v8 = v17[3];
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);
  v10 = objc_alloc_init(v8);
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__SCUIScreenTimePasscodeController__checkScreenTimePasscodeFromViewController_completionHandler___block_invoke;
    v12[3] = &unk_1E7FF23D0;
    v13 = v7;
    v14 = a1;
    [v10 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v12];
    v11 = v13;
  }

  else
  {
    v11 = [a1 screenTimeUnavailable];
    (*(v7 + 2))(v7, v11);
  }
}

void __97__SCUIScreenTimePasscodeController__checkScreenTimePasscodeFromViewController_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqual:@"STErrorDomain"])
    {
      v8 = [v6 code];

      if (v8 == 51)
      {
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) cancellationError];
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (!v12 || ([v12 authenticated] & 1) != 0)
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) wrongPasscodeError];
LABEL_10:
  v11 = v10;
  (*(v9 + 16))(v9, v10);

LABEL_11:
}

+ (void)askUserForScreenTimePasscodeFrom:(UIViewController *)a3 model:(SCUIInterventionScreenModel *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
  v15 = sub_1BC75BE10();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BC764998;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BC7649A0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  sub_1BC6AD080(0, 0, v12, &unk_1BC7649A8, v17);
}

+ (void)askUserForScreenTimePasscodeFrom:(UIViewController *)a3 interventionType:(int64_t)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
  v15 = sub_1BC75BE10();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BC764950;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BC764960;
  v17[5] = v16;
  v18 = a3;
  sub_1BC6AD080(0, 0, v12, &unk_1BC764970, v17);
}

@end