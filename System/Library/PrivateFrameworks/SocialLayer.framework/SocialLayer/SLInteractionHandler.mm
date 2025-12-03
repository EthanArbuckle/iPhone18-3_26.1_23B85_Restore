@interface SLInteractionHandler
- (SLInteractionHandler)initWithAppIdentifier:(id)identifier;
- (id)applicationIdentifier;
- (id)fetchAttributionForAttributionIdentifier:(id)identifier;
- (id)fetchInteractionsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant error:(id *)error;
- (void)applicationIdentifier;
- (void)dealloc;
- (void)feedbackForHighlightIdentifier:(id)identifier withType:(unint64_t)type variant:(id)variant completionBlock:(id)block;
@end

@implementation SLInteractionHandler

- (id)applicationIdentifier
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", &error);
    if (v4 || (v4 = SecTaskCopyValueForEntitlement(v3, @"com.apple.application-identifier", &error)) != 0)
    {
      v5 = v4;
    }

    else
    {
      v7 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SLInteractionHandler *)&error applicationIdentifier];
      }

      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SLInteractionHandler)initWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SLInteractionHandler;
  v6 = [(SLInteractionHandler *)&v12 init];
  if (v6)
  {
    if ([identifierCopy length])
    {
      objc_storeStrong(&v6->_appIdentifier, identifier);
    }

    if ((SLIsRunningInDaemon() & 1) != 0 || (SLIsRunningInSLTester() & 1) != 0 || (SLIsRunningInGelatoTester() & 1) != 0 || [identifierCopy length])
    {
      v7 = SLDaemonLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SLInteractionHandler *)v6 initWithAppIdentifier:v7];
      }
    }

    else
    {
      applicationIdentifier = [(SLInteractionHandler *)v6 applicationIdentifier];
      v7 = applicationIdentifier;
      if (applicationIdentifier)
      {
        v10 = applicationIdentifier;
        appIdentifier = v6->_appIdentifier;
        v6->_appIdentifier = v10;
      }

      else
      {
        appIdentifier = SLFrameworkLogHandle();
        if (os_log_type_enabled(appIdentifier, OS_LOG_TYPE_ERROR))
        {
          [SLInteractionHandler initWithAppIdentifier:?];
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SLInteractionHandler;
  [(SLInteractionHandler *)&v2 dealloc];
}

- (id)fetchInteractionsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  variantCopy = variant;
  reasonCopy = reason;
  v12 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    *buf = 134218242;
    limitCopy = limit;
    v27 = 2112;
    v28 = appIdentifier;
    _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_INFO, "Fetching %lu interactions for application Identifier: %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  if (self->_appIdentifier)
  {
    v16 = self->_appIdentifier;
  }

  else
  {
    v16 = &stru_28468DAB8;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke;
  v23[3] = &unk_278927448;
  v17 = v14;
  v24 = v17;
  [v15 iterRankedHighlightsWithLimit:limit client:v16 variant:variantCopy reason:reasonCopy error:error block:v23];

  v18 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 count];
    *buf = 134217984;
    limitCopy = v19;
    _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_INFO, "Obtained %lu results from PersonalizationPortrait", buf, 0xCu);
  }

  if (![v17 count])
  {
    v20 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchInteractionsWithLimit:error reason:? variant:? error:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Ppsocialcollab.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v4 = [[SLCollaborationHighlight alloc] initWithPortraitCollaborationHighlight:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_2(v5);
      }

LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v4 = [[SLHighlight alloc] initWithPortraitHighlight:v3 error:&v7];
    v5 = v7;
    if (!v4)
    {
      v6 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_1(v5);
      }

      goto LABEL_9;
    }
  }

  [*(a1 + 32) addObject:v4];
LABEL_10:
}

- (id)fetchAttributionForAttributionIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "Fetching Attribution info for Attribution with Identifier %@ ", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v14 = 0;
  v6 = [v5 attributionForIdentifier:identifierCopy error:&v14];
  v7 = v14;
  if (v6)
  {
    v13 = v7;
    v8 = [[SLAttribution alloc] initWithPortraitAttribution:v6 error:&v13];
    v9 = v13;

    if (v8)
    {
      goto LABEL_11;
    }

    v10 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchAttributionForAttributionIdentifier:v9];
    }

    v7 = v9;
  }

  else
  {
    v10 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchAttributionForAttributionIdentifier:v7];
    }
  }

  v8 = 0;
  v9 = v7;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)feedbackForHighlightIdentifier:(id)identifier withType:(unint64_t)type variant:(id)variant completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  variantCopy = variant;
  blockCopy = block;
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    v18 = 138413058;
    v19 = identifierCopy;
    v20 = 2048;
    typeCopy = type;
    v22 = 2112;
    v23 = appIdentifier;
    v24 = 2112;
    v25 = variantCopy;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "Feedback for highlight with identifier %@ of type %lu for application identifier: %@ variant: %@", &v18, 0x2Au);
  }

  if (type - 1 > 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_23183D060[type - 1];
  }

  v16 = objc_opt_new();
  [v16 feedbackForHighlightIdentifier:identifierCopy type:v15 client:self->_appIdentifier variant:variantCopy completion:blockCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "SLInteractionHandler init from daemon with app ID: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)applicationIdentifier
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLInteractionHandler failed to generate an application identifier. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchInteractionsWithLimit:(id *)a1 reason:variant:error:.cold.1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttributionForAttributionIdentifier:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 localizedDescription];
  v9 = [a1 localizedFailureReason];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttributionForAttributionIdentifier:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end