@interface PXCompositeEditorialLayoutSpec
+ (PXCompositeEditorialLayoutSpec)defaultSpec;
- (PXCompositeEditorialLayoutSpec)init;
- (id)_init;
- (void)prepareBuiltinSpec;
@end

@implementation PXCompositeEditorialLayoutSpec

- (void)prepareBuiltinSpec
{
  v51 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0x7FFFFFFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0x7FFFFFFFLL;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v2 = [MEMORY[0x1E696AAE8] px_bundle];
  v23 = [v2 URLForResource:@"PXCompositeEditorialLayoutTemplate" withExtension:@"json"];

  [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v23];
  v19 = v37 = 0;
  v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  v20 = 0;
  if (v20)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v21 objectForKeyedSubscript:@"templates"];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52__PXCompositeEditorialLayoutSpec_prepareBuiltinSpec__block_invoke;
    v32[3] = &unk_1E7745F48;
    v6 = v4;
    v33 = v6;
    v34 = &v46;
    v35 = &v42;
    v36 = &v38;
    [v5 enumerateObjectsUsingBlock:v32];
    [v21 objectForKeyedSubscript:@"preferredTemplates"];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v50 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [MEMORY[0x1E695DF70] array];
          v13 = [v7 objectForKeyedSubscript:v11];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __52__PXCompositeEditorialLayoutSpec_prepareBuiltinSpec__block_invoke_2;
          v25[3] = &unk_1E7745F70;
          v14 = v6;
          v26 = v14;
          v15 = v12;
          v27 = v15;
          [v13 enumerateObjectsUsingBlock:v25];

          v16 = [v14 objectForKeyedSubscript:v11];
          [v24 setObject:v15 forKey:v16];
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v50 count:16];
      }

      while (v8);
    }

    v3 = [v6 allValues];
  }

  templates = self->_templates;
  self->_templates = v3;
  v18 = v3;

  self->_minNumberOfColumns = v47[3];
  self->_minNumberOfRects = v43[3];
  self->_maxNumberOfRects = v39[3];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
}

void __52__PXCompositeEditorialLayoutSpec_prepareBuiltinSpec__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v14 = [[PXCompositeEditorialLayoutTemplate alloc] initWithDescriptorDictionary:v3];

  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCompositeEditorialLayoutTemplate identifier](v14, "identifier")}];
  [v4 setObject:v14 forKeyedSubscript:v5];

  v6 = *(*(a1[5] + 8) + 24);
  v7 = [(PXCompositeEditorialLayoutTemplate *)v14 numberOfColumns];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  *(*(a1[5] + 8) + 24) = v8;
  v9 = [(PXCompositeEditorialLayoutTemplate *)v14 numberOfRects];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 24);
  if (v11 >= v9)
  {
    v11 = v9;
  }

  *(v10 + 24) = v11;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 24);
  if (v13 <= v9)
  {
    v13 = v9;
  }

  *(v12 + 24) = v13;
}

void __52__PXCompositeEditorialLayoutSpec_prepareBuiltinSpec__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = PXCompositeEditorialLayoutSpec;
  v2 = [(PXCompositeEditorialLayoutSpec *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXCompositeEditorialLayoutSpec *)v2 prepareBuiltinSpec];
  }

  return v3;
}

- (PXCompositeEditorialLayoutSpec)init
{
  v6.receiver = self;
  v6.super_class = PXCompositeEditorialLayoutSpec;
  result = [(PXCompositeEditorialLayoutSpec *)&v6 init];
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:v4 file:@"PXCompositeEditorialLayoutSpec.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXCompositeEditorialLayoutSpec init]"}];

    abort();
  }

  return result;
}

+ (PXCompositeEditorialLayoutSpec)defaultSpec
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXCompositeEditorialLayoutSpec_defaultSpec__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultSpec_onceToken != -1)
  {
    dispatch_once(&defaultSpec_onceToken, block);
  }

  v2 = defaultSpec_defaultSpec;

  return v2;
}

void __45__PXCompositeEditorialLayoutSpec_defaultSpec__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = defaultSpec_defaultSpec;
  defaultSpec_defaultSpec = v1;
}

@end