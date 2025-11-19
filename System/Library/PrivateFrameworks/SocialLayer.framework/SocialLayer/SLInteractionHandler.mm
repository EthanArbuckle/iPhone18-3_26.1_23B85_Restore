@interface SLInteractionHandler
- (SLInteractionHandler)initWithAppIdentifier:(id)a3;
- (id)applicationIdentifier;
- (id)fetchAttributionForAttributionIdentifier:(id)a3;
- (id)fetchInteractionsWithLimit:(unint64_t)a3 reason:(id)a4 variant:(id)a5 error:(id *)a6;
- (void)applicationIdentifier;
- (void)dealloc;
- (void)feedbackForHighlightIdentifier:(id)a3 withType:(unint64_t)a4 variant:(id)a5 completionBlock:(id)a6;
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

- (SLInteractionHandler)initWithAppIdentifier:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SLInteractionHandler;
  v6 = [(SLInteractionHandler *)&v12 init];
  if (v6)
  {
    if ([v5 length])
    {
      objc_storeStrong(&v6->_appIdentifier, a3);
    }

    if ((SLIsRunningInDaemon() & 1) != 0 || (SLIsRunningInSLTester() & 1) != 0 || (SLIsRunningInGelatoTester() & 1) != 0 || [v5 length])
    {
      v7 = SLDaemonLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(SLInteractionHandler *)v6 initWithAppIdentifier:v7];
      }
    }

    else
    {
      v9 = [(SLInteractionHandler *)v6 applicationIdentifier];
      v7 = v9;
      if (v9)
      {
        v10 = v9;
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

- (id)fetchInteractionsWithLimit:(unint64_t)a3 reason:(id)a4 variant:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    *buf = 134218242;
    v26 = a3;
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
  [v15 iterRankedHighlightsWithLimit:a3 client:v16 variant:v10 reason:v11 error:a6 block:v23];

  v18 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 count];
    *buf = 134217984;
    v26 = v19;
    _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_INFO, "Obtained %lu results from PersonalizationPortrait", buf, 0xCu);
  }

  if (![v17 count])
  {
    v20 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchInteractionsWithLimit:a6 reason:? variant:? error:?];
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

- (id)fetchAttributionForAttributionIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "Fetching Attribution info for Attribution with Identifier %@ ", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v14 = 0;
  v6 = [v5 attributionForIdentifier:v3 error:&v14];
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

- (void)feedbackForHighlightIdentifier:(id)a3 withType:(unint64_t)a4 variant:(id)a5 completionBlock:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    v18 = 138413058;
    v19 = v10;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = appIdentifier;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "Feedback for highlight with identifier %@ of type %lu for application identifier: %@ variant: %@", &v18, 0x2Au);
  }

  if (a4 - 1 > 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_23183D060[a4 - 1];
  }

  v16 = objc_opt_new();
  [v16 feedbackForHighlightIdentifier:v10 type:v15 client:self->_appIdentifier variant:v11 completion:v12];

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
  v2 = *a1;
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