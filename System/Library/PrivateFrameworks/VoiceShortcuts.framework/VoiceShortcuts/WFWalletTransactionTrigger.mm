@interface WFWalletTransactionTrigger
@end

@implementation WFWalletTransactionTrigger

void __101__WFWalletTransactionTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"transaction"];
  if (v3)
  {
    if (*(a1 + 65) == 1)
    {
      v4 = [*(a1 + 32) selectedMerchantTypes];
      v5 = MEMORY[0x277CCABB0];
      v6 = [v3 merchant];
      v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "merchantType")}];
      *(*(*(a1 + 48) + 8) + 24) = [v4 containsObject:v7];
    }

    if (*(a1 + 66) == 1)
    {
      v8 = [*(a1 + 32) selectedMerchants];
      v9 = [v3 merchant];
      *(*(*(a1 + 56) + 8) + 24) = [v8 containsObject:v9];
    }

    if (*(a1 + 64) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v10 = *(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      v10 = 0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10 & 1);
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[WFWalletTransactionTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Could not fetch transaction for wallet transaction event, ignoring merchant filtering.", &v14, 0xCu);
    }

    v12 = *(a1 + 64);
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dictionaryWithTransaction:a2 transactionEvent:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void __73__WFWalletTransactionTrigger_ContentInput__eventInfoForEvent_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) dictionaryWithTransaction:a2 transactionEvent:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

@end