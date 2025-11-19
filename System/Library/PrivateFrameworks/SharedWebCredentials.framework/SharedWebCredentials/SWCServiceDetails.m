@interface SWCServiceDetails
@end

@implementation SWCServiceDetails

void __69___SWCServiceDetails_SWCServiceApproval__setUserApprovalState_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 8) = *(*(a1 + 32) + 8) & 0xFFFC | *(a1 + 56) & 3;
  }
}

void __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[_SWCDomain alloc] initWithString:v7];
  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __72___SWCServiceDetails_Synchronization__synchronizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __72___SWCServiceDetails_Synchronization__synchronizeWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __59___SWCServiceDetails_DeveloperMode__isDeveloperModeEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
    v3 = v4;
  }
}

void __79___SWCServiceDetails_DeveloperMode__setDeveloperModeEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __110___SWCServiceDetails_Private___serviceDetailsWithServiceSpecifier_URLComponents_limit_callerAuditToken_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

@end