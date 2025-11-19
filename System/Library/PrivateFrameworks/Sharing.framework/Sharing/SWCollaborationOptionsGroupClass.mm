@interface SWCollaborationOptionsGroupClass
@end

@implementation SWCollaborationOptionsGroupClass

Class __get_SWCollaborationOptionsGroupClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharedWithYouCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E788A990;
    v6 = 0;
    SharedWithYouCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SharedWithYouCoreLibraryCore_frameworkLibrary)
  {
    __get_SWCollaborationOptionsGroupClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_SWCollaborationOptionsGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SWCollaborationOptionsGroupClass_block_invoke_cold_1();
  }

  get_SWCollaborationOptionsGroupClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __get_SWCollaborationOptionsGroupClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharedWithYouCoreLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E78901F0;
    v6 = 0;
    SharedWithYouCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_1)
  {
    __get_SWCollaborationOptionsGroupClass_block_invoke_cold_2_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_SWCollaborationOptionsGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SWCollaborationOptionsGroupClass_block_invoke_cold_1_0();
  }

  get_SWCollaborationOptionsGroupClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __get_SWCollaborationOptionsGroupClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationOptionsGroupClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:27 description:{@"Unable to find class %s", "_SWCollaborationOptionsGroup"}];

  __break(1u);
}

void __get_SWCollaborationOptionsGroupClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingMailRequest.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __get_SWCollaborationOptionsGroupClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_SWCollaborationOptionsGroupClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:28 description:{@"Unable to find class %s", "_SWCollaborationOptionsGroup"}];

  __break(1u);
}

void __get_SWCollaborationOptionsGroupClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharedWithYouCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFCollaborationCloudSharingRequest.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

@end