@interface RELemmaEnumerator
- (BOOL)enumerateLemmasInString:(id)string withBlock:(id)block;
- (RELemmaEnumerator)init;
- (uint64_t)init;
@end

@implementation RELemmaEnumerator

- (RELemmaEnumerator)init
{
  v25[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = RELemmaEnumerator;
  v2 = [(RELemmaEnumerator *)&v15 init];
  if (v2 && NaturalLanguageLibraryCore())
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v3 = getNLTagSchemeLanguageSymbolLoc_ptr;
    v24 = getNLTagSchemeLanguageSymbolLoc_ptr;
    if (!getNLTagSchemeLanguageSymbolLoc_ptr)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getNLTagSchemeLanguageSymbolLoc_block_invoke;
      v19 = &unk_2785F9BC0;
      v20 = &v21;
      v4 = NaturalLanguageLibrary();
      v5 = dlsym(v4, "NLTagSchemeLanguage");
      *(v20[1] + 24) = v5;
      getNLTagSchemeLanguageSymbolLoc_ptr = *(v20[1] + 24);
      v3 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v3)
    {
      [RELemmaEnumerator init];
      __break(1u);
    }

    v25[0] = *v3;
    v6 = v25[0];
    v7 = getNLTagSchemeLemma();
    v25[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v9 = getNLTaggerClass_softClass;
    v24 = getNLTaggerClass_softClass;
    if (!getNLTaggerClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getNLTaggerClass_block_invoke;
      v19 = &unk_2785F9BC0;
      v20 = &v21;
      __getNLTaggerClass_block_invoke(&v16);
      v9 = v22[3];
    }

    v10 = v9;
    _Block_object_dispose(&v21, 8);
    v11 = [[v9 alloc] initWithTagSchemes:v8];
    tagger = v2->_tagger;
    v2->_tagger = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)enumerateLemmasInString:(id)string withBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  if (blockCopy)
  {
    tagger = self->_tagger;
    if (tagger)
    {
      [(NLTagger *)tagger setString:stringCopy];
      dominantLanguage = [(NLTagger *)self->_tagger dominantLanguage];
      v10 = dominantLanguage;
      if (dominantLanguage && ([dominantLanguage isEqualToString:@"und"] & 1) == 0)
      {
        v12 = self->_tagger;
        v13 = [stringCopy length];
        v14 = getNLTagSchemeLemma();
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__RELemmaEnumerator_enumerateLemmasInString_withBlock___block_invoke;
        v16[3] = &unk_2785F9B80;
        v17 = stringCopy;
        v18 = blockCopy;
        [(NLTagger *)v12 enumerateTagsInRange:0 unit:v13 scheme:0 options:v14 usingBlock:14, v16];

        v11 = 1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void __55__RELemmaEnumerator_enumerateLemmasInString_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v10 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [*(a1 + 32) substringWithRange:{a3, a4}];
  }

  v9 = v8;
  (*(*(a1 + 40) + 16))();
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return __getNLTaggerClass_block_invoke_cold_1(v0);
}

@end