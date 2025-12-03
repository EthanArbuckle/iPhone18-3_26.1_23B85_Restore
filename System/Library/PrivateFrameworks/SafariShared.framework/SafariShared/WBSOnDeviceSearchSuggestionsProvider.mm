@interface WBSOnDeviceSearchSuggestionsProvider
- (BOOL)_findRootNodeForPrefix:(id)prefix rootNode:(_WBSSearchSuggestionCandidate *)node;
- (WBSOnDeviceSearchSuggestionsProvider)init;
- (WBSOnDeviceSearchSuggestionsProviderDelegate)delegate;
- (id)_loadModel;
- (void)_doSearch:(id)search atRootNode:(_WBSSearchSuggestionCandidate *)node;
- (void)reloadModel;
- (void)setQueryString:(id)string;
@end

@implementation WBSOnDeviceSearchSuggestionsProvider

- (WBSOnDeviceSearchSuggestionsProvider)init
{
  v9.receiver = self;
  v9.super_class = WBSOnDeviceSearchSuggestionsProvider;
  v2 = [(WBSOnDeviceSearchSuggestionsProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(WBSOnDeviceSearchSuggestionsProvider *)v2 reloadModel];
    v3->_maximumNumberOfSuggestions = 5;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.Shared.%@.%p", objc_opt_class(), v3];
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v5;

    v3->_prefixLock._os_unfair_lock_opaque = 0;
    v7 = v3;
  }

  return v3;
}

- (id)_loadModel
{
  v2 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 fileURLForModelWithLocaleIfDownloaded:currentLocale];
  path = [v4 path];

  if (path)
  {
    v6 = [[WBSOnDeviceSearchSuggestionsModel alloc] initWithModelFileAtPath:path];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reloadModel
{
  _loadModel = [(WBSOnDeviceSearchSuggestionsProvider *)self _loadModel];
  searchModel = self->_searchModel;
  self->_searchModel = _loadModel;
}

- (void)setQueryString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_prefixLock);
  if ([(NSString *)self->_currentPrefix isEqualToString:stringCopy])
  {
    os_unfair_lock_unlock(&self->_prefixLock);
  }

  else
  {
    objc_storeStrong(&self->_currentPrefix, string);
    completionQueue = self->_completionQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke;
    v7[3] = &unk_1E7FB7F10;
    v7[4] = self;
    v8 = stringCopy;
    dispatch_async(completionQueue, v7);
    os_unfair_lock_unlock(&self->_prefixLock);
  }
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 32) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if ([v2 isEqualToString:*(a1 + 40)] && objc_msgSend(v2, "length"))
  {
    v8 = 0x200000000;
    v9 = 0;
    v10 = &stru_1F3A5E418;
    if ([*(a1 + 32) _findRootNodeForPrefix:*(a1 + 40) rootNode:&v8])
    {
      [*(a1 + 32) _doSearch:*(a1 + 40) atRootNode:&v8];
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_3;
      v6[3] = &unk_1E7FB7F10;
      v5 = *(a1 + 40);
      v6[4] = *(a1 + 32);
      v7 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v6);
    }

    v4 = v10;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_2;
    block[3] = &unk_1E7FB7F10;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v4 = v12;
  }
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:*(a1 + 32) didFinishWithSuggestions:MEMORY[0x1E695E0F0] forQueryString:*(a1 + 40)];
}

void __55__WBSOnDeviceSearchSuggestionsProvider_setQueryString___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:*(a1 + 32) didFinishWithSuggestions:MEMORY[0x1E695E0F0] forQueryString:*(a1 + 40)];
}

- (BOOL)_findRootNodeForPrefix:(id)prefix rootNode:(_WBSSearchSuggestionCandidate *)node
{
  prefixCopy = prefix;
LABEL_2:
  v7 = [node->var3 length];
  if (v7 >= [prefixCopy length])
  {
    v12 = [node->var3 length];
    v13 = v12 >= [prefixCopy length];
  }

  else
  {
    searchModel = self->_searchModel;
    if (searchModel)
    {
      [(WBSOnDeviceSearchSuggestionsModel *)searchModel readTreeNodeWithCandidate:node];
      v9 = v15;
      v10 = v16;
      while (v9 != v10)
      {
        if ([*(v9 + 16) length] && ((objc_msgSend(prefixCopy, "hasPrefix:", *(v9 + 16)) & 1) != 0 || objc_msgSend(*(v9 + 16), "hasPrefix:", prefixCopy)))
        {
          if (*(v9 + 8) != 1 || (v11 = [*(v9 + 16) length], v11 >= objc_msgSend(prefixCopy, "length")))
          {
            objc_storeStrong(&node->var3, *(v9 + 16));
            node->var2 = *(v9 + 8);
            node->var1 = *(v9 + 4);
            v18 = &v15;
            std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v18);
            goto LABEL_2;
          }
        }

        v9 += 24;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v18 = &v15;
    std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v18);
    v13 = 0;
  }

  return v13;
}

- (void)_doSearch:(id)search atRootNode:(_WBSSearchSuggestionCandidate *)node
{
  searchCopy = search;
  v64 = 0;
  v65 = &v64;
  v66 = 0x6012000000;
  v67 = __Block_byref_object_copy__30;
  v68 = __Block_byref_object_dispose__30;
  v69 = "";
  memset(v70, 0, sizeof(v70));
  v57 = 0;
  v58 = &v57;
  v59 = 0x6012000000;
  v60 = __Block_byref_object_copy__30;
  v61 = __Block_byref_object_dispose__30;
  v62 = "";
  memset(v63, 0, sizeof(v63));
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke;
  v56[3] = &unk_1E7FC8990;
  v56[4] = &v64;
  v56[5] = &v57;
  v6 = MEMORY[0x1BFB13CE0](v56);
  v53 = *&node->var0;
  var2 = node->var2;
  v55 = node->var3;
  (v6)[2](v6, &v53);
  v7 = v58;
  for (i = v58[5].i64[1]; i; i = v58[5].i64[1])
  {
    v9 = *(v7[7] + 8 * ((i + v7[10] - 1) / 0xAAuLL)) + 24 * ((i + v7[10] - 1) % 0xAAuLL);
    v10 = *(v9 + 8);
    v50 = *v9;
    v51 = v10;
    v52 = *(v9 + 16);
    std::deque<_WBSSearchSuggestionCandidate>::pop_back(v7 + 6);
    searchModel = self->_searchModel;
    if (searchModel)
    {
      [(WBSOnDeviceSearchSuggestionsModel *)searchModel readTreeNodeWithCandidate:&v50];
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
    }

    std::deque<_WBSSearchSuggestionCandidate>::deque(v44, v65[3].i64);
    std::deque<_WBSSearchSuggestionCandidate>::deque(&v40, v58[3].i64);
    if (v46)
    {
      v12 = *(*(v44[1] + 8 * (v45 / 0xAA)) + 24 * (v45 % 0xAA));
    }

    else
    {
      v12 = -1;
    }

    if (v43 && *(*(v41 + 8 * (v42 / 0xAA)) + 24 * (v42 % 0xAA)) < v12)
    {
      v12 = *(*(v41 + 8 * (v42 / 0xAA)) + 24 * (v42 % 0xAA));
    }

    std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](&v40);
    std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v44);
    v14 = v47;
    v13 = v48;
    while (v14 != v13)
    {
      if (*v14 > v12 || (v15 = v65, v16 = v65[5].i64[1], v17 = v58, v18 = v58[5].i64[1], v19 = v18 + v16, maximumNumberOfSuggestions = self->_maximumNumberOfSuggestions, v18 + v16 < maximumNumberOfSuggestions))
      {
        v21 = *v14;
        v38 = *(v14 + 8);
        v37 = v21;
        v39 = v14[2];
        (v6)[2](v6, &v37);
        v15 = v65;
        v16 = v65[5].i64[1];
        v17 = v58;
        v18 = v58[5].i64[1];
        maximumNumberOfSuggestions = self->_maximumNumberOfSuggestions;
        v19 = v18 + v16;
      }

      if (v19 > maximumNumberOfSuggestions)
      {
        v22 = v17 + 3;
        if (v16 && (!v18 || *(*(v15[3].i64[1] + 8 * (v15[5].i64[0] / 0xAAuLL)) + 24 * (v15[5].i64[0] % 0xAAuLL)) <= *(*(v17[3].i64[1] + 8 * (v17[5].i64[0] / 0xAAuLL)) + 24 * (v17[5].i64[0] % 0xAAuLL))))
        {
          v22 = v15 + 3;
        }

        std::deque<_WBSSearchSuggestionCandidate>::pop_front(v22);
        v15 = v65;
      }

      std::deque<_WBSSearchSuggestionCandidate>::deque(v34, v15[3].i64);
      std::deque<_WBSSearchSuggestionCandidate>::deque(&v30, v58[3].i64);
      if (v36)
      {
        v12 = *(*(v34[1] + 8 * (v35 / 0xAA)) + 24 * (v35 % 0xAA));
      }

      else
      {
        v12 = -1;
      }

      if (v33)
      {
        if (*(*(v31 + 8 * (v32 / 0xAA)) + 24 * (v32 % 0xAA)) < v12)
        {
          v12 = *(*(v31 + 8 * (v32 / 0xAA)) + 24 * (v32 % 0xAA));
        }
      }

      std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](&v30);
      std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v34);
      v14 += 3;
    }

    v71 = &v47;
    std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](&v71);

    v7 = v58;
  }

  array = [MEMORY[0x1E695DF70] array];
  while (v65[5].i64[1])
  {
    [array addObject:*(*(v65[3].i64[1] + 8 * (v65[5].i64[0] / 0xAAuLL)) + 24 * (v65[5].i64[0] % 0xAAuLL) + 16)];
    std::deque<_WBSSearchSuggestionCandidate>::pop_front(v65 + 3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke_3;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v28 = array;
  v29 = searchCopy;
  v24 = array;
  v25 = searchCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v57, 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v63);
  _Block_object_dispose(&v64, 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](v70);
}

void __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = 40;
  if (*(a2 + 8))
  {
    v3 = 32;
  }

  v4 = *(*(a1 + v3) + 8);
  v5 = v4[5].i64[1];
  if (v5 && (v6 = *a2, v7 = v4[5].u64[0], v8 = v4[3].i64[1], *a2 <= *(*(v8 + 8 * ((v5 + v7 - 1) / 0xAA)) + 24 * ((v5 + v7 - 1) % 0xAA))))
  {
    v9 = (v8 + 8 * (v7 / 0xAA));
    v10 = v4[4].i64[0];
    if (v10 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = *v9 + 24 * (v7 % 0xAA);
    }

    v12 = v7 + v5;
    v13 = v12 / 0xAA;
    v14 = v12 % 0xAA;
LABEL_10:
    v15 = v11;
    while (1)
    {
      v16 = v10 == v8 ? 0 : *(v8 + 8 * v13) + 24 * v14;
      if (v15 == v16 || v6 <= *v15)
      {
        break;
      }

      v15 += 6;
      v11 += 24;
      if (*v9 + 4080 == v11)
      {
        v17 = v9[1];
        ++v9;
        v11 = v17;
        goto LABEL_10;
      }
    }

    std::deque<_WBSSearchSuggestionCandidate>::insert(v4 + 3, v9, v11, a2);
  }

  else
  {
    std::deque<_WBSSearchSuggestionCandidate>::push_back(v4[3].i64, a2);
  }

  v18 = *(a2 + 16);
}

void __61__WBSOnDeviceSearchSuggestionsProvider__doSearch_atRootNode___block_invoke_3(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained onDeviceSearchSuggestionProvider:a1[4] didFinishWithSuggestions:a1[5] forQueryString:a1[6]];
}

- (WBSOnDeviceSearchSuggestionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end