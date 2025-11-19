@interface GenerateQuestionsAction
@end

@implementation GenerateQuestionsAction

void ___GenerateQuestionsAction_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69BEB28]];
  *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
}

@end