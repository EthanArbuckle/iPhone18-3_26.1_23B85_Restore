@interface CreateOrPublishLibraryScope
@end

@implementation CreateOrPublishLibraryScope

void ___CreateOrPublishLibraryScope_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___CreateOrPublishLibraryScope_block_invoke_2;
    v7[3] = &unk_1E7749B98;
    v6 = v3;
    v8 = v6;
    [v5 performChanges:v7];
    _FinishAssistantForSharedLibrary(v6, *(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

@end