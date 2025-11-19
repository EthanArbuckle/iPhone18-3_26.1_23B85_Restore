@interface WCRCipherMLClient
+ (id)categoryForCategoryLetter:(id)a3;
+ (id)categoryForString:(id)a3 withError:(id *)a4;
+ (void)activateCipherML;
@end

@implementation WCRCipherMLClient

+ (id)categoryForCategoryLetter:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"v"])
  {
    v4 = &unk_2882740D8;
  }

  else if ([v3 isEqualToString:@"|"])
  {
    v4 = &unk_2882740F0;
  }

  else if ([v3 isEqualToString:@"g"])
  {
    v4 = &unk_288274108;
  }

  else if ([v3 isEqualToString:@"w"])
  {
    v4 = &unk_288274120;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)categoryForString:(id)a3 withError:(id *)a4
{
  v5 = MEMORY[0x277CFA5A0];
  v6 = a3;
  v7 = [[v5 alloc] initWithUseCase:@"webContentRestrictions"];
  v8 = [objc_alloc(MEMORY[0x277CFA5A8]) initWithClientConfig:v7];
  v16 = 0;
  v9 = [v8 dataByStringKeyword:v6 error:&v16];

  v10 = v16;
  v11 = v10;
  if (v9)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    v13 = [objc_opt_class() categoryForCategoryLetter:v12];
  }

  else if (a4)
  {
    v14 = v10;
    v13 = 0;
    *a4 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)activateCipherML
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting CipherML status..."];
  [WCRLogging log:v2 withType:0];

  v3 = [objc_alloc(MEMORY[0x277CFA5A0]) initWithUseCase:@"webContentRestrictions"];
  v4 = MEMORY[0x277CFA5C8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WCRCipherMLClient_activateCipherML__block_invoke;
  v6[3] = &unk_279E7F418;
  v7 = 0;
  v8 = v3;
  v5 = v3;
  [v4 requestStatusForClientConfig:v5 options:0 completionHandler:v6];
}

void __37__WCRCipherMLClient_activateCipherML__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = [v11 status];
    v7 = "needs activation";
    if (v6 == 6)
    {
      v7 = "doesn't need activation";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"CipherML status: %s", v7];
    [WCRLogging log:v8 withType:0];

    if (v6 != 6)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activating CipherML..."];
      [WCRLogging log:v9 withType:0];

      [MEMORY[0x277CFA5C8] requestStatusForClientConfig:*(a1 + 40) options:11 completionHandler:&__block_literal_global_1];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get CipherML status: %@", *(a1 + 32)];
    [WCRLogging log:v10 withType:1];
  }
}

uint64_t __37__WCRCipherMLClient_activateCipherML__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = [a2 status];
  v5 = "inactive";
  if (v4 == 6)
  {
    v5 = "active";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"CipherML activation response: %s", v5];
  [WCRLogging log:v6 withType:0];

  if (v9)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"CipherML activation error: %@", v9];
    [WCRLogging log:v7 withType:1];
  }

  return MEMORY[0x2821F96F8]();
}

@end