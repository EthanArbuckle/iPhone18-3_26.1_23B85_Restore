@interface TVTemplateFeaturesManager
- (TVTemplateFeaturesManagerDelegate)delegate;
- (id)_contextsForFeature:(id)a3;
- (id)currentContextForFeature:(id)a3;
- (int64_t)_rankForContext:(id)a3;
- (void)popContext:(id)a3 forFeature:(id)a4;
- (void)pushContext:(id)a3 forFeature:(id)a4;
@end

@implementation TVTemplateFeaturesManager

- (void)pushContext:(id)a3 forFeature:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_contextsByFeature)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    contextsByFeature = self->_contextsByFeature;
    self->_contextsByFeature = v8;
  }

  v10 = [(TVTemplateFeaturesManager *)self _contextsForFeature:v7];
  v11 = [_TVTemplateFeatureContextHandle handleWithContext:v6];
  [v11 setRank:{-[TVTemplateFeaturesManager _rankForContext:](self, "_rankForContext:", v6)}];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = [v10 count];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__TVTemplateFeaturesManager_pushContext_forFeature___block_invoke;
  v16[3] = &unk_279D71160;
  v12 = v11;
  v17 = v12;
  v18 = &v24;
  v19 = &v20;
  [v10 enumerateObjectsUsingBlock:v16];
  if (v25[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v21[3];
  }

  else
  {
    [v10 removeObjectAtIndex:?];
    v13 = v21[3];
    if (v25[3] < v13)
    {
      v21[3] = --v13;
    }
  }

  [v10 insertObject:v12 atIndex:v13];
  v14 = v21[3];
  if (v14 == [v10 count] - 1)
  {
    v15 = [(TVTemplateFeaturesManager *)self delegate];
    [v15 featuresManager:self currentContextDidChangeForFeature:v7];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __52__TVTemplateFeaturesManager_pushContext_forFeature___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  if ([v7 isEqual:v8])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  v9 = [*(a1 + 32) rank];
  v10 = [v8 rank];

  if (v9 < v10)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)popContext:(id)a3 forFeature:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(TVTemplateFeaturesManager *)self _contextsForFeature:v11];
  v8 = [_TVTemplateFeatureContextHandle handleWithContext:v6];

  v9 = [v7 indexOfObject:v8];
  [v7 removeObject:v8];
  if (v9 == [v7 count])
  {
    v10 = [(TVTemplateFeaturesManager *)self delegate];
    [v10 featuresManager:self currentContextDidChangeForFeature:v11];
  }
}

- (id)currentContextForFeature:(id)a3
{
  v3 = [(TVTemplateFeaturesManager *)self _contextsForFeature:a3];
  v4 = [v3 lastObject];
  v5 = [v4 context];

  return v5;
}

- (id)_contextsForFeature:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithCString:protocol_getName(a3) encoding:30];
  v5 = [(NSMutableDictionary *)self->_contextsByFeature objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(NSMutableDictionary *)self->_contextsByFeature setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (int64_t)_rankForContext:(id)a3
{
  v3 = [a3 tv_associatedIKViewElement];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = -1;
  do
  {
    ++v5;
    v6 = [v4 parent];

    v4 = v6;
  }

  while (v6);
  return v5;
}

- (TVTemplateFeaturesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end