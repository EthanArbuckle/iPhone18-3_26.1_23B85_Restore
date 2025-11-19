@interface AddParticipantsToLibraryScope
@end

@implementation AddParticipantsToLibraryScope

void ___AddParticipantsToLibraryScope_block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___AddParticipantsToLibraryScope_block_invoke_2;
  v10[3] = &unk_1E7744F28;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v10];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = ___AddParticipantsToLibraryScope_block_invoke_3;
  v8 = &unk_1E7744F28;
  v3 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:&v5];
  v4 = [MEMORY[0x1E69788A8] changeRequestForLibraryScope:{*(a1 + 56), v5, v6, v7, v8}];
  [v4 addParticipants:*(a1 + 40)];
}

void ___AddParticipantsToLibraryScope_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) librarySpecificFetchOptions];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

void ___AddParticipantsToLibraryScope_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E6978AC8] creationRequestForShareParticipantWithEmailAddress:a2 permission:3];
  v3 = *(a1 + 32);
  v4 = [v5 placeholderForCreatedShareParticipant];
  [v3 addObject:v4];
}

void ___AddParticipantsToLibraryScope_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E6978AC8] creationRequestForShareParticipantWithPhoneNumber:a2 permission:3];
  v3 = *(a1 + 32);
  v4 = [v5 placeholderForCreatedShareParticipant];
  [v3 addObject:v4];
}

@end