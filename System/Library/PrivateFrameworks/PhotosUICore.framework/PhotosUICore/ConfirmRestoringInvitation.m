@interface ConfirmRestoringInvitation
@end

@implementation ConfirmRestoringInvitation

void ___ConfirmRestoringInvitation_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_RestoreInvitationAlert_Title");
  [v3 setTitle:v4];

  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_RestoreInvitationAlert_Message");
  [v3 setMessage:v5];

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_RestoreInvitationAlertConfirmationButton_Title");
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ConfirmRestoringInvitation_block_invoke_2;
  v10[3] = &unk_1E774C250;
  v11 = *(a1 + 32);
  [v3 addActionWithTitle:v6 style:0 action:v10];

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationAlert_Cancel");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ConfirmRestoringInvitation_block_invoke_3;
  v8[3] = &unk_1E774C250;
  v9 = *(a1 + 32);
  [v3 addActionWithTitle:v7 style:1 action:v8];
}

uint64_t ___ConfirmRestoringInvitation_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void ___ConfirmRestoringInvitation_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Restore Declined Shared Library Invitation");
    (*(v1 + 16))(v1, 0, v2);
  }
}

@end