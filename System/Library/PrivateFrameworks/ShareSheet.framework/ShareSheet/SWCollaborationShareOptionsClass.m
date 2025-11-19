@interface SWCollaborationShareOptionsClass
@end

@implementation SWCollaborationShareOptionsClass

Class __get_SWCollaborationShareOptionsClass_block_invoke(uint64_t a1)
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
    v5 = xmmword_1E71F94A8;
    v6 = 0;
    SharedWithYouCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SharedWithYouCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SWCollaborationShareOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_SWCollaborationShareOptionsClass_block_invoke_cold_1();
  }

  get_SWCollaborationShareOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end