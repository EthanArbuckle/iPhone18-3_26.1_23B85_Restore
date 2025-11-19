@interface WBSPasswordImportCSVCredentialExtractor
+ (id)credentialExtractionErrorForErrorCode:(int64_t)a3;
- (BOOL)looksLikePasswordsCSVFile;
- (WBSPasswordImportCSVCredentialExtractor)initWithURLforCSVFile:(id)a3;
- (id)_initWithCSVContents:(id)a3;
- (id)extractCredentialsWithError:(id *)a3;
@end

@implementation WBSPasswordImportCSVCredentialExtractor

- (WBSPasswordImportCSVCredentialExtractor)initWithURLforCSVFile:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [MEMORY[0x1E695DEC8] arrayWithContentsOfDelimitedURL:v4 options:2 delimiter:44 error:&v16];
  v6 = v16;
  if (!v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordImportCSVCredentialExtractor *)v7 initWithURLforCSVFile:v6];
    }
  }

  v15 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithContentsOfDelimitedURL:v4 options:3 delimiter:44 error:&v15];
  v9 = v15;

  if (!v8)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordImportCSVCredentialExtractor *)v10 initWithURLforCSVFile:v9];
    }
  }

  v11 = [v8 count];
  if (v11 <= [v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  v13 = [(WBSPasswordImportCSVCredentialExtractor *)self _initWithCSVContents:v12];

  return v13;
}

+ (id)credentialExtractionErrorForErrorCode:(int64_t)a3
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SafariShared.WBSCredentialExtractionErrorDomain" code:a3 userInfo:{0, v3}];
  }

  return v5;
}

- (BOOL)looksLikePasswordsCSVFile
{
  if (![(NSArray *)self->_csvContents count])
  {
    return 0;
  }

  csvHeaderChecker = self->_csvHeaderChecker;
  v4 = [(NSArray *)self->_csvContents objectAtIndexedSubscript:0];
  v5 = [(WBSPasswordImportCSVHeaderChecker *)csvHeaderChecker columnIndicesForHeaderFields:v4];

  v6 = [v5 urlIndex] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "usernameIndex") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "passwordIndex") != 0x7FFFFFFFFFFFFFFFLL;
  return v6;
}

- (id)extractCredentialsWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
    p_csvContents = &self->_csvContents;
    if (![(NSArray *)self->_csvContents count])
    {
      [objc_opt_class() credentialExtractionErrorForErrorCode:3];
      *a3 = v6 = 0;
      goto LABEL_12;
    }

LABEL_5:
    csvHeaderChecker = self->_csvHeaderChecker;
    v8 = [(NSArray *)self->_csvContents objectAtIndexedSubscript:0];
    v9 = [(WBSPasswordImportCSVHeaderChecker *)csvHeaderChecker columnIndicesForHeaderFields:v8];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](*p_csvContents, "count") - 1}];
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, -[NSArray count](*p_csvContents, "count") - 1}];
      v12 = *p_csvContents;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__WBSPasswordImportCSVCredentialExtractor_extractCredentialsWithError___block_invoke;
      v16[3] = &unk_1E7FC9250;
      v17 = v9;
      v13 = v10;
      v18 = v13;
      [(NSArray *)v12 enumerateObjectsAtIndexes:v11 options:0 usingBlock:v16];
      v14 = v18;
      v6 = v13;
    }

    else if (a3)
    {
      [objc_opt_class() credentialExtractionErrorForErrorCode:2];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_12;
  }

  p_csvContents = &self->_csvContents;
  if ([(NSArray *)self->_csvContents count])
  {
    goto LABEL_5;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

void __71__WBSPasswordImportCSVCredentialExtractor_extractCredentialsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) usernameIndex];
  if (v6 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "usernameIndex")}];
  }

  v8 = [*(a1 + 32) passwordIndex];
  if (v8 >= [v5 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "passwordIndex")}];
  }

  v10 = [*(a1 + 32) urlIndex];
  if (v10 >= [v5 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "urlIndex")}];
  }

  v12 = [*(a1 + 32) otpAuthURLIndex];
  if (v12 >= [v5 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "otpAuthURLIndex")}];
  }

  v14 = [*(a1 + 32) notesEntryIndex];
  if (v14 >= [v5 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "notesEntryIndex")}];
  }

  v16 = [*(a1 + 32) titleIndex];
  if (v16 >= [v5 count])
  {
    v17 = 0;
  }

  else
  {
    v17 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "titleIndex")}];
  }

  v18 = [v11 componentsSeparatedByString:{@", "}];
  v69 = [v18 count];
  v57 = v5;
  v58 = v11;
  if ([v18 count] >= 2)
  {
    v65 = a3;
    v67 = v13;
    v63 = v7;
    v19 = MEMORY[0x1E695DFF8];
    v20 = [v18 firstObject];
    v21 = [v19 safari_URLWithUserTypedString:v20];
    v22 = [v21 scheme];
    v23 = [v22 length];

    if (v69 < 2)
    {
      v7 = v63;
      v13 = v67;
    }

    else
    {
      v59 = v17;
      obj = v23;
      v24 = 1;
      while (1)
      {
        v25 = MEMORY[0x1E695DFF8];
        v26 = [v18 objectAtIndexedSubscript:v24];
        v27 = [v25 safari_URLWithUserTypedString:v26];
        v28 = [v27 scheme];
        v29 = [v28 length];

        if (!v29)
        {
          break;
        }

        if (v69 == ++v24)
        {
          v7 = v63;
          v13 = v67;
          v17 = v59;
          goto LABEL_28;
        }
      }

      v7 = v63;
      v13 = v67;
      v17 = v59;
      if (obj)
      {
        v76[0] = v11;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];

        v18 = v30;
      }
    }

LABEL_28:
    a3 = v65;
  }

  v68 = [v18 safari_containsObjectPassingTest:&__block_literal_global_87];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obja = v18;
  v70 = [obja countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (!v70)
  {
    goto LABEL_57;
  }

  v64 = a3 + 1;
  v66 = *v72;
  v60 = v17;
  do
  {
    v31 = 0;
    do
    {
      if (*v72 != v66)
      {
        objc_enumerationMutation(obja);
      }

      if (!v68)
      {
        goto LABEL_37;
      }

      v32 = *(*(&v71 + 1) + 8 * v31);
      v33 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:v32];
      if ([v33 safari_hasScheme:@"app"])
      {

LABEL_37:
        v33 = 0;
        goto LABEL_38;
      }

      v48 = [v33 scheme];

      if (v48)
      {
        v49 = [v33 host];
        v50 = [v49 safari_highLevelDomainForPasswordManager];

        if (!v50)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v51 = MEMORY[0x1E695DFF8];
        v52 = [@"https://" stringByAppendingString:v32];
        v53 = [v51 safari_URLWithUserTypedString:v52];

        v54 = [v53 host];
        v55 = [v54 safari_highLevelDomainForPasswordManager];

        v33 = v53;
        if (!v55)
        {
          goto LABEL_49;
        }
      }

LABEL_38:
      if ([v13 length])
      {
        v34 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v13];
        v35 = v34;
        if (!v34 || ([v34 scheme], v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
        {
          v37 = [objc_alloc(MEMORY[0x1E69C8A60]) initWithBase32EncodedKey:v13];
          v38 = v37;
          if (v37)
          {
            [v37 exportableURL];
            v39 = v15;
            v40 = v13;
            v41 = v9;
            v42 = v7;
            v44 = v43 = a1;

            v35 = v44;
            a1 = v43;
            v7 = v42;
            v9 = v41;
            v13 = v40;
            v15 = v39;
            v17 = v60;
          }
        }
      }

      else
      {
        v35 = 0;
      }

      v45 = [WBSPasswordImportedCredential alloc];
      if ([v15 length])
      {
        v46 = v15;
      }

      else
      {
        v46 = 0;
      }

      v47 = [(WBSPasswordImportedCredential *)v45 initWithUser:v7 password:v9 url:v33 otpAuthURL:v35 title:v17 notesEntry:v46 lineNumberFromSourceFile:v64];
      [*(a1 + 40) addObject:v47];

LABEL_49:
      ++v31;
    }

    while (v70 != v31);
    v56 = [obja countByEnumeratingWithState:&v71 objects:v75 count:16];
    v70 = v56;
  }

  while (v56);
LABEL_57:
}

- (id)_initWithCSVContents:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WBSPasswordImportCSVCredentialExtractor;
  v6 = [(WBSPasswordImportCSVCredentialExtractor *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(WBSPasswordImportCSVHeaderChecker);
    csvHeaderChecker = v6->_csvHeaderChecker;
    v6->_csvHeaderChecker = v7;

    objc_storeStrong(&v6->_csvContents, a3);
    v9 = v6;
  }

  return v6;
}

- (void)initWithURLforCSVFile:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Extraction from CSV with CHCSVParserOptionsSanitizesFields failed: %@", v7, v8, v9, v10, 2u);
}

- (void)initWithURLforCSVFile:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Extraction from CSV with (CHCSVParserOptionsSanitizesFields | CHCSVParserOptionsRecognizesBackslashesAsEscapes) failed: %@", v7, v8, v9, v10, 2u);
}

@end