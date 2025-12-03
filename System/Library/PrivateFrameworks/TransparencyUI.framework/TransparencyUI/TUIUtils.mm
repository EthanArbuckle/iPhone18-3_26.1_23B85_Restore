@interface TUIUtils
+ (BOOL)_checkMismatchedAccountError:(id)error;
+ (BOOL)_checkNetworkError:(id)error;
+ (BOOL)isAuthError:(id)error;
+ (BOOL)isDateExpired:(id)expired;
+ (BOOL)isHSA2;
+ (BOOL)isMismatchedAccountError:(id)error;
+ (BOOL)isNetworkError:(id)error;
+ (BOOL)isTransparencyFeatureEnabled:(const char *)enabled;
+ (void)isHSA2;
@end

@implementation TUIUtils

+ (BOOL)isTransparencyFeatureEnabled:(const char *)enabled
{
  if (!enabled)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v4 = _os_feature_enabled_impl();
  if (!strcmp(enabled, ffKTReportToApple))
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isTransparencyFeatureEnabled:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
    {
      +[TUIUtils isTransparencyFeatureEnabled:];
    }

    goto LABEL_14;
  }

  if (v4)
  {
LABEL_14:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isTransparencyFeatureEnabled:];
  }

  v5 = os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    +[TUIUtils isTransparencyFeatureEnabled:];
LABEL_15:
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __41__TUIUtils_isTransparencyFeatureEnabled___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__TUIUtils_isTransparencyFeatureEnabled___block_invoke_46()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  v5 = [self _checkNetworkError:errorCopy];
  if (v5)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isNetworkError:];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
    {
      +[TUIUtils isNetworkError:];
    }
  }

  return v5;
}

uint64_t __27__TUIUtils_isNetworkError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isMismatchedAccountError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  domain = [errorCopy domain];
  if (![domain isEqual:*MEMORY[0x277D735D0]])
  {

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  code = [errorCopy code];

  if (code != -290 || ![self _checkMismatchedAccountError:errorCopy])
  {
    goto LABEL_11;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isMismatchedAccountError:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
  {
    +[TUIUtils isMismatchedAccountError:];
  }

  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t __37__TUIUtils_isMismatchedAccountError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isDateExpired:(id)expired
{
  v3 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  v5 = [v3 now];
  v6 = [expiredCopy earlierDate:v5];

  return v6 == expiredCopy;
}

+ (BOOL)isAuthError:(id)error
{
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x277D46258]];
  if ((v7 & 1) == 0)
  {
    domain2 = [errorCopy domain];
    if (([domain2 isEqualToString:*MEMORY[0x277D46260]] & 1) == 0)
    {

LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"statusCode"];
  integerValue = [v9 integerValue];

  if ((v7 & 1) == 0)
  {
  }

  if (integerValue != 401)
  {
    goto LABEL_13;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
  {
    +[TUIUtils isAuthError:];
  }

  v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_DEBUG))
  {
    [(TUIUtils *)v11 isAuthError:errorCopy, self];
  }

  v12 = 1;
LABEL_14:

  return v12;
}

uint64_t __24__TUIUtils_isAuthError___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_checkNetworkError:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x277D735F8]])
  {
    goto LABEL_15;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqual:*MEMORY[0x277CCA738]])
  {
LABEL_14:

LABEL_15:
LABEL_16:
    v11 = 1;
    goto LABEL_18;
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqual:*MEMORY[0x277CBACE8]])
  {
LABEL_13:

    goto LABEL_14;
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqual:*MEMORY[0x277D735F0]] && objc_msgSend(errorCopy, "code") == -343)
  {
LABEL_12:

    goto LABEL_13;
  }

  domain5 = [errorCopy domain];
  if ([domain5 isEqual:*MEMORY[0x277D735E8]] && objc_msgSend(errorCopy, "code") == -41)
  {
LABEL_11:

    goto LABEL_12;
  }

  domain6 = [errorCopy domain];
  if ([domain6 isEqual:*MEMORY[0x277D735E0]])
  {

    goto LABEL_11;
  }

  domain7 = [errorCopy domain];
  v35 = [domain7 isEqualToString:*MEMORY[0x277D46258]];
  if ((v35 & 1) == 0)
  {
    domain8 = [errorCopy domain];
    if (![domain8 isEqualToString:*MEMORY[0x277D46260]])
    {
      v34 = 0;
      goto LABEL_29;
    }

    v32 = domain8;
  }

  userInfo = [errorCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:@"statusCode"];
  if ([v16 integerValue] < 500)
  {

    if (v35)
    {

      goto LABEL_31;
    }

    v34 = 0;
    domain8 = v32;
    goto LABEL_29;
  }

  userInfo2 = [errorCopy userInfo];
  [userInfo2 objectForKeyedSubscript:@"statusCode"];
  v17 = v31 = domain7;
  v34 = [v17 integerValue] < 600;

  domain7 = v31;
  domain8 = v32;
  if ((v35 & 1) == 0)
  {
LABEL_29:
  }

  if (v34)
  {
    goto LABEL_16;
  }

LABEL_31:
  domain9 = [errorCopy domain];
  v19 = [domain9 isEqual:*MEMORY[0x277D735D8]];

  if (v19)
  {
    goto LABEL_16;
  }

  userInfo3 = [errorCopy userInfo];
  v21 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([self _checkNetworkError:v21])
  {
    v11 = 1;
  }

  else
  {
    userInfo4 = [errorCopy userInfo];
    v23 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CCA578]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v37;
        while (2)
        {
          v28 = 0;
          v29 = v21;
          do
          {
            if (*v37 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v21 = *(*(&v36 + 1) + 8 * v28);

            if ([self _checkNetworkError:v21])
            {
              v11 = 1;
              goto LABEL_46;
            }

            ++v28;
            v29 = v21;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v21 = 0;
      v11 = 0;
LABEL_46:
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)_checkMismatchedAccountError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_24;
  }

  domain = [errorCopy domain];
  if ([domain isEqual:@"IDSKeyTransparencyVerifierErrorDomain"])
  {
    code = [errorCopy code];

    if (code == -8003)
    {
      v7 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([self _checkMismatchedAccountError:v9])
  {
    v7 = 1;
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA578]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        while (2)
        {
          v16 = 0;
          v17 = v9;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v9 = *(*(&v20 + 1) + 8 * v16);

            if ([self _checkMismatchedAccountError:{v9, v20}])
            {
              v7 = 1;
              goto LABEL_21;
            }

            ++v16;
            v17 = v9;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
      v7 = 0;
LABEL_21:
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isHSA2
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];
  v10 = 0;
  v5 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:primaryAccountAltDSID error:&v10];
  v6 = v10;

  if (v5)
  {
    mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
    v8 = [mEMORY[0x277CF0130]2 securityLevelForAccount:v5] == 4;
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_11 != -1)
    {
      +[TUIUtils isHSA2];
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11, OS_LOG_TYPE_ERROR))
    {
      +[TUIUtils isHSA2];
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __18__TUIUtils_isHSA2__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_11 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

+ (void)isTransparencyFeatureEnabled:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isTransparencyFeatureEnabled:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isNetworkError:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s YES: error = %{public}@ on %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isMismatchedAccountError:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_26F50B000, v0, v1, "%s YES: error = %{public}@ on %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isAuthError:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 domain];
  v7 = [a2 code];
  v8 = [a2 localizedDescription];
  v10 = 136316162;
  v11 = "+[TUIUtils isAuthError:]";
  v12 = 2114;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  v18 = 2114;
  v19 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s YES: domain = %{public}@, code = %ld, description = %{public}@ on %{public}@", &v10, 0x34u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)isHSA2
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end