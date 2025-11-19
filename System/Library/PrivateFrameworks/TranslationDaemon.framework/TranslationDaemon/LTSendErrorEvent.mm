@interface LTSendErrorEvent
@end

@implementation LTSendErrorEvent

id ___LTSendErrorEvent_block_invoke(uint64_t a1)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25[0] = v4;
  v24[0] = @"selector";
  v24[1] = @"code";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
  v25[1] = v5;
  v24[2] = @"domain";
  v6 = [*(a1 + 40) domain];
  v25[2] = v6;
  v24[3] = @"domain_code";
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 40) domain];
  v9 = [v7 stringWithFormat:@"%@_%zd", v8, objc_msgSend(*(a1 + 40), "code")];
  v25[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v11 = [v2 dictionaryWithDictionary:v10];

  v12 = [*(a1 + 40) userInfo];
  v13 = *MEMORY[0x277CCA7E8];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v14)
  {
    v15 = [*(a1 + 40) userInfo];
    v16 = [v15 objectForKeyedSubscript:v13];

    v17 = [v16 domain];
    [v11 setObject:v17 forKeyedSubscript:@"underlying_domain"];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "code")}];
    [v11 setObject:v18 forKeyedSubscript:@"underlying_code"];

    v19 = MEMORY[0x277CCACA8];
    v20 = [v16 domain];
    v21 = [v19 stringWithFormat:@"%@_%zd", v20, objc_msgSend(v16, "code")];
    [v11 setObject:v21 forKeyedSubscript:@"underlying_domain_code"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

@end