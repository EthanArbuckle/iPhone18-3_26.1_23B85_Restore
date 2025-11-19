@interface PMLLexicon
+ (BOOL)serializeLexiconToFile:(id)a3 tokenToWordIDDict:(id)a4;
- (PMLLexicon)init;
- (PMLLexicon)initWithPath:(id)a3;
- (unint64_t)getTotalEntries;
- (unint64_t)getWordIDforToken:(id)a3;
@end

@implementation PMLLexicon

- (unint64_t)getTotalEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lexicon = self->_lexicon;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PMLLexicon_getTotalEntries__block_invoke;
  v5[3] = &unk_279AC0758;
  v5[4] = &v6;
  [(_PASCFBurstTrie *)lexicon runBlockWithTrie:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__PMLLexicon_getTotalEntries__block_invoke(uint64_t a1)
{
  result = CFBurstTrieGetCount();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)getWordIDforToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_PASCFBurstTrie *)self->_lexicon payloadForString:v4];
  if (v5 == -1)
  {
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_debug_impl(&dword_260D68000, v7, OS_LOG_TYPE_DEBUG, "Returning 0 for word id since token is not in lexicon: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PMLLexicon)initWithPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PMLLexicon.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v6 fileExistsAtPath:v5] & 1) == 0)
  {

    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 attributesOfItemAtPath:v5 error:0];
  v9 = [v8 fileSize];

  if (!v9)
  {
LABEL_9:
    v14 = PML_LogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_260D68000, v14, OS_LOG_TYPE_DEFAULT, "Falling back to default system lexicon since lexicon at following path is invalid in existence: %@", buf, 0xCu);
    }

    v13 = [(PMLLexicon *)self init];
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = PMLLexicon;
  v10 = [(PMLLexicon *)&v20 init];
  if (!v10 || (v11 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v5], lexicon = v10->_lexicon, v10->_lexicon = v11, lexicon, v10->_lexicon))
  {
    v13 = v10;
LABEL_12:
    v10 = v13;
    v15 = v13;
    goto LABEL_13;
  }

  v18 = PML_LogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Returning nil for PMLLexicon since unable to initialize lexicon", buf, 2u);
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (PMLLexicon)init
{
  v9.receiver = self;
  v9.super_class = PMLLexicon;
  v2 = [(PMLLexicon *)&v9 init];
  if (v2 && (v3 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:&stru_28734BC68], lexicon = v2->_lexicon, v2->_lexicon = v3, lexicon, !v2->_lexicon))
  {
    v6 = PML_LogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Returning nil for PMLLexicon since unable to initialize lexicon", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

+ (BOOL)serializeLexiconToFile:(id)a3 tokenToWordIDDict:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = CFBurstTrieCreate();
  v17[3] = v7;
  if (v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__PMLLexicon_serializeLexiconToFile_tokenToWordIDDict___block_invoke;
    v11[3] = &unk_279AC0780;
    v11[4] = &v12;
    v11[5] = &v16;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v8 = v17[3];
    if (*(v13 + 24) == 1)
    {
      CFBurstTrieRelease();
      v9 = 0;
    }

    else
    {
      v9 = CFBurstTrieSerialize() != 0;
      if (v17[3])
      {
        CFBurstTrieRelease();
      }
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __55__PMLLexicon_serializeLexiconToFile_tokenToWordIDDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  if ([v7 intValue] <= 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
    [v9 length];
    [v7 unsignedIntegerValue];
    CFBurstTrieAdd();
  }
}

@end