@interface SBContinuitySessionManagerExternalDependencyProvider
@end

@implementation SBContinuitySessionManagerExternalDependencyProvider

void __61___SBContinuitySessionManagerExternalDependencyProvider_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:7 andState:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void __80___SBContinuitySessionManagerExternalDependencyProvider__setResourceHintActive___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 24) updateState:*(a1 + 40)] & 1) == 0)
  {
    v2 = SBLogContinuitySession();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v3 = @"started";
      }

      else
      {
        v3 = @"ended";
      }

      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Updating resource hint for continuity session %{public}@ returned NO ?!?!?!", &v4, 0xCu);
    }
  }
}

void __80___SBContinuitySessionManagerExternalDependencyProvider__setRestrictionsActive___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v2 MCSetBoolRestriction:*MEMORY[0x277D25FF0] value:0];
    [v2 MCSetBoolRestriction:*MEMORY[0x277D25E60] value:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = 0;
  [v3 applyRestrictionDictionary:v2 clientType:@"com.apple.springboard" clientUUID:@"com.apple.springboard.continuityRestrictions" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80___SBContinuitySessionManagerExternalDependencyProvider__setRestrictionsActive___block_invoke_cold_1(v1);
    }
  }
}

void __80___SBContinuitySessionManagerExternalDependencyProvider__setRestrictionsActive___block_invoke_cold_1(_BYTE *a1)
{
  v1 = @"clearing";
  if (*a1)
  {
    v1 = @"applying";
  }

  LODWORD(v4) = 138543618;
  *(&v4 + 4) = v1;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v2, v3, "Error %{public}@ continuity restrictions: %{public}@", v4, DWORD2(v4));
}

@end