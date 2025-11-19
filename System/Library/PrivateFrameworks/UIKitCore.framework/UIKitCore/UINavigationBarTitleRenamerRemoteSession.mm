@interface UINavigationBarTitleRenamerRemoteSession
@end

@implementation UINavigationBarTitleRenamerRemoteSession

void __70___UINavigationBarTitleRenamerRemoteSession__updateSessionWithAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 cancelSessionAndNotify:0];
  }
}

void __106___UINavigationBarTitleRenamerRemoteSession__attemptLocalRenameForFileURL_proposedName_completionHandler___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = qword_1ED49A380;
  v20 = qword_1ED49A380;
  if (!qword_1ED49A380)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getDOCFileRenamingSupportClass_block_invoke;
    v16[3] = &unk_1E70F2F20;
    v16[4] = &v17;
    __getDOCFileRenamingSupportClass_block_invoke(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = 0;
  v6 = [v2 fallbackRename:v4 toProposedName:v5 error:&v15];
  v7 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106___UINavigationBarTitleRenamerRemoteSession__attemptLocalRenameForFileURL_proposedName_completionHandler___block_invoke_2;
  block[3] = &unk_1E70FD548;
  v8 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84___UINavigationBarTitleRenamerRemoteSession__client_fileRenameDidFail_proposedName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) attachedRenamer];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v9)
  {
    [v6 _session:v8 fileRenameDidEnd:v9];
  }

  else
  {
    [v6 _session:v8 fileRenameDidFail:v5];
  }
}

void __93___UINavigationBarTitleRenamerRemoteSession__server_willBeginRenamingWithText_selectedRange___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 text];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 selectedRange];
  v9 = v8;

  v10 = *(a1[6] + 8);
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = a1[4];

  dispatch_group_leave(v11);
}

void __87___UINavigationBarTitleRenamerRemoteSession__server_textFieldShouldEndEditingWithText___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 shouldEndEditing];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __84___UINavigationBarTitleRenamerRemoteSession__server_textFieldDidEndEditingWithText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v8)
  {
    [WeakRetained fileRenameDidEnd:?];
  }

  else
  {
    [WeakRetained fileRenameDidFail:v5 proposedName:*(a1 + 32)];
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) stopAccessingSecurityScopedResource];
  }
}

@end