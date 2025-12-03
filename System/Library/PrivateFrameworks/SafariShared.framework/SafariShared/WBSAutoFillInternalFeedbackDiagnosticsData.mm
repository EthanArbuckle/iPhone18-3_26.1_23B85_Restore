@interface WBSAutoFillInternalFeedbackDiagnosticsData
- (WBSAutoFillInternalFeedbackDiagnosticsData)init;
- (id)writeTemporaryFileWithFormMetadata;
- (void)writeTemporaryFileWithFormMetadata;
@end

@implementation WBSAutoFillInternalFeedbackDiagnosticsData

- (WBSAutoFillInternalFeedbackDiagnosticsData)init
{
  v8.receiver = self;
  v8.super_class = WBSAutoFillInternalFeedbackDiagnosticsData;
  v2 = [(WBSAutoFillInternalFeedbackDiagnosticsData *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    safari_filenameFormattedString = [v3 safari_filenameFormattedString];
    creationDateString = v2->_creationDateString;
    v2->_creationDateString = safari_filenameFormattedString;

    v6 = v2;
  }

  return v2;
}

- (id)writeTemporaryFileWithFormMetadata
{
  v58 = *MEMORY[0x1E69E9840];
  formMetadata = [(WBSAutoFillInternalFeedbackDiagnosticsData *)self formMetadata];

  if (formMetadata)
  {
    v4 = [(NSSet *)self->_sensitiveValuesForRedaction mutableCopy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] set];
    }

    v8 = v6;

    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v50 = 0u;
    selfCopy = self;
    obj = self->_formMetadata;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          controls = [v13 controls];
          v15 = [controls countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v47;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v47 != v17)
                {
                  objc_enumerationMutation(controls);
                }

                v19 = *(*(&v46 + 1) + 8 * j);
                value = [v19 value];

                if (value)
                {
                  value2 = [v19 value];
                  [v8 addObject:value2];
                }
              }

              v16 = [controls countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v16);
          }
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v10);
    }

    formMetadata2 = [(WBSAutoFillInternalFeedbackDiagnosticsData *)selfCopy formMetadata];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __80__WBSAutoFillInternalFeedbackDiagnosticsData_writeTemporaryFileWithFormMetadata__block_invoke;
    v44[3] = &unk_1E7FB6A58;
    v23 = v8;
    v45 = v23;
    v24 = [formMetadata2 safari_mapObjectsUsingBlock:v44];

    v43 = 0;
    v25 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v24 options:1 error:&v43];
    v26 = v43;
    if (v25)
    {
      v27 = MEMORY[0x1E695DFF8];
      v28 = NSTemporaryDirectory();
      v29 = MEMORY[0x1E696AEC0];
      host = [(NSURL *)selfCopy->_url host];
      v31 = [v29 stringWithFormat:@"form-metadata-%@-%@.json", host, selfCopy->_creationDateString];
      v32 = [v28 stringByAppendingPathComponent:v31];
      v33 = [v27 fileURLWithPath:v32 isDirectory:0];

      v42 = v26;
      LOBYTE(v28) = [v25 writeToURL:v33 options:0 error:&v42];
      v34 = v42;

      if (v28)
      {
        v7 = v33;
      }

      else
      {
        v36 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          safari_privacyPreservingDescription = [v34 safari_privacyPreservingDescription];
          *buf = 138543362;
          v55 = safari_privacyPreservingDescription;
          _os_log_impl(&dword_1BB6F3000, v37, OS_LOG_TYPE_DEFAULT, "Encountered error writing temporary file with form metadata: %{public}@", buf, 0xCu);
        }

        v7 = 0;
      }
    }

    else
    {
      v35 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(WBSAutoFillInternalFeedbackDiagnosticsData *)v35 writeTemporaryFileWithFormMetadata];
      }

      v7 = 0;
      v34 = v26;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __80__WBSAutoFillInternalFeedbackDiagnosticsData_writeTemporaryFileWithFormMetadata__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 dictionaryRepresentationRedactingSensitiveValues:1 withKnownSensitiveValues:v2];
  v5 = [v4 mutableCopy];

  v6 = [v3 type];
  v7 = WBSStringFromAutoFillFormType(v6);
  [v5 setObject:v7 forKeyedSubscript:@"AutoFillFormType"];

  return v5;
}

- (void)writeTemporaryFileWithFormMetadata
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1BB6F3000, selfCopy, OS_LOG_TYPE_ERROR, "Encountered error generating JSON data with form metadata: %{public}@", &v5, 0xCu);
}

@end