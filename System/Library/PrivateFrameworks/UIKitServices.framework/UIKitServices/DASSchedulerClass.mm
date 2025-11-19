@interface DASSchedulerClass
@end

@implementation DASSchedulerClass

Class __get_DASSchedulerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51BF20)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DuetActivitySchedulerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7459168;
    v8 = 0;
    qword_1ED51BF20 = _sl_dlopen();
  }

  if (!qword_1ED51BF20)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DuetActivitySchedulerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISApplicationStateService.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_DASSchedulerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISApplicationStateService.m" lineNumber:31 description:{@"Unable to find class %s", "_DASScheduler"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED51BF18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end