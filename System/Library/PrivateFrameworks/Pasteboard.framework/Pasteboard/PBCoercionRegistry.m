@interface PBCoercionRegistry
+ (id)archivedDataFromObject:(id)a3 requestedType:(id)a4 outError:(id *)a5;
+ (id)defaultRegistry;
+ (id)objectFromArchivedData:(id)a3 URL:(id)a4 requestedClass:(Class)a5 typeIdentifier:(id)a6 outError:(id *)a7;
- (BOOL)canCoerceFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4;
- (BOOL)canCoerceObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4;
- (BOOL)canCoerceObjectOfClass:(Class)a3 toRepresentationConformingToType:(id)a4;
- (PBCoercionRegistry)init;
- (id)_availableClassesToCoerceFromClass:(Class)a3;
- (id)_member_acceptableRepresentationTypesForCreatingObjectOfClass:(Class)a3;
- (id)_member_availableClassesToCoerceToFromClass:(Class)a3;
- (id)_member_availableDirectRepresentationTypesForClass:(Class)a3;
- (id)_member_exporterFromClass:(Class)a3 toType:(id)a4;
- (id)_newObjectOfClass:(Class)a3 fromData:(id)a4 URL:(id)a5 ofType:(id)a6 outError:(id *)a7;
- (id)acceptableRepresentationTypesForCreatingObjectOfClass:(Class)a3;
- (id)availableRepresentationTypesForClass:(Class)a3;
- (id)loadCoercionOfRepresentation:(id)a3 fromType:(id)a4 toType:(id)a5 usingCoercion:(id)a6 completionBlock:(id)a7;
- (void)_member_enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)a3 usingBlock:(id)a4;
- (void)_member_registerCoercionFromObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5;
- (void)_member_registerCoercionFromObjectOfClass:(Class)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5;
- (void)_member_registerCoercionFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5;
- (void)_member_registerCoercionFromRepresentationConformingToType:(id)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5;
- (void)enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)a3 usingBlock:(id)a4;
- (void)loadRepresentationOfObject:(id)a3 asType:(id)a4 completionBlock:(id)a5;
- (void)registerCoercionFromObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5;
- (void)registerCoercionFromObjectOfClass:(Class)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5;
- (void)registerCoercionFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5;
- (void)registerCoercionFromRepresentationConformingToType:(id)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5;
@end

@implementation PBCoercionRegistry

+ (id)defaultRegistry
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __37__PBCoercionRegistry_defaultRegistry__block_invoke;
  v8 = &unk_279A072F0;
  v9 = &v11;
  v10 = a1;
  if (qword_280AEA938 != -1)
  {
    dispatch_once(&qword_280AEA938, &v5);
  }

  if (*(v12 + 24) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [_MergedGlobals_7 uikit_registerExtraCoercions];
    }

    else
    {
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      [v2 postNotificationName:@"PBDefaultCoercionRegistryDidInstantiateNotification" object:_MergedGlobals_7];
    }
  }

  v3 = _MergedGlobals_7;
  _Block_object_dispose(&v11, 8);

  return v3;
}

void __37__PBCoercionRegistry_defaultRegistry__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 40));
  v3 = _MergedGlobals_7;
  _MergedGlobals_7 = v2;

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = _MergedGlobals_7;
  v5 = objc_opt_class();
  v6 = *MEMORY[0x277CE1EB0];
  v7 = [*MEMORY[0x277CE1EB0] identifier];
  [v4 registerCoercionFromObjectOfClass:v5 toRepresentationOfType:v7 coercionBlock:&__block_literal_global_8];

  v8 = _MergedGlobals_7;
  v9 = [v6 identifier];
  [v8 registerCoercionFromRepresentationConformingToType:v9 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_3];

  v10 = _MergedGlobals_7;
  v11 = [*MEMORY[0x277CE1EA8] identifier];
  [v10 registerCoercionFromRepresentationConformingToType:v11 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_6];

  v12 = _MergedGlobals_7;
  v13 = [*MEMORY[0x277CE1E20] identifier];
  [v12 registerCoercionFromRepresentationConformingToType:v13 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_8];

  v14 = _MergedGlobals_7;
  v15 = [*MEMORY[0x277CE1E88] identifier];
  [v14 registerCoercionFromRepresentationConformingToType:v15 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_10_0];

  v16 = _MergedGlobals_7;
  v17 = *MEMORY[0x277CE1E90];
  v18 = [*MEMORY[0x277CE1E90] identifier];
  [v16 registerCoercionFromRepresentationConformingToType:v18 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_12];

  v19 = _MergedGlobals_7;
  v20 = objc_opt_class();
  [v19 registerCoercionFromObjectOfClass:v20 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_16];
  v21 = _MergedGlobals_7;
  v22 = objc_opt_class();
  v23 = [v17 identifier];
  [v21 registerCoercionFromObjectOfClass:v22 toRepresentationOfType:v23 coercionBlock:&__block_literal_global_18];

  v24 = _MergedGlobals_7;
  v25 = [v17 identifier];
  [v24 registerCoercionFromRepresentationConformingToType:v25 toObjectOfClass:objc_opt_class() coercionBlock:&__block_literal_global_23];
}

void __37__PBCoercionRegistry_defaultRegistry__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void, void))
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  (a4)[2](v6, v7, 0, 0);
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_3(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  }

  else if (a6)
  {
    PBCannotInstantiateObjectOfClassError(a2, v10, 0);
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_4(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:10];
  }

  else if (a6)
  {
    PBCannotInstantiateObjectOfClassError(a2, v10, 0);
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_5(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  }

  else if (a6)
  {
    PBCannotInstantiateObjectOfClassError(a2, v10, 0);
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_6(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  }

  else if (a6)
  {
    PBCannotInstantiateObjectOfClassError(a2, v10, 0);
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_7(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v14 = PBURLFromURLArchive(v11);
    v15 = [v14 absoluteString];

    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  if (!v15)
  {
    *a6 = PBCannotInstantiateObjectOfClassError(a2, v10, 0);
  }

LABEL_10:

  return v15;
}

void __37__PBCoercionRegistry_defaultRegistry__block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 baseURL];
  if (v7)
  {
    v8 = [v6 relativeString];

    v14[0] = v8;
    v9 = [v7 absoluteString];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v8 = [v6 absoluteString];

    v13[0] = v8;
    v13[1] = &stru_286FD7D38;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:0];
  if (v5)
  {
    (*(v5 + 2))(v5, v11, 0, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __37__PBCoercionRegistry_defaultRegistry__block_invoke_10(uint64_t a1, objc_class *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (!v11 || (PBURLFromURLArchive(v11), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (*a6)
    {
      PBCannotInstantiateObjectOfClassError(a2, v10, 0);
      *a6 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (PBCoercionRegistry)init
{
  v14.receiver = self;
  v14.super_class = PBCoercionRegistry;
  v2 = [(PBCoercionRegistry *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.pasteboard.PBCoercionRegistry-member-queue", 0);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    member_exporterByClass = v2->_member_exporterByClass;
    v2->_member_exporterByClass = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    member_importerByClass = v2->_member_importerByClass;
    v2->_member_importerByClass = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    member_classCoercionByClass = v2->_member_classCoercionByClass;
    v2->_member_classCoercionByClass = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    member_representationCoercions = v2->_member_representationCoercions;
    v2->_member_representationCoercions = v11;
  }

  return v2;
}

- (void)_member_registerCoercionFromObjectOfClass:(Class)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = NSStringFromClass(a3);
  v10 = [(PBCoercionRegistry *)self member_exporterByClass];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v11 = [[PBObjectToRepresentationCoercion alloc] initWithClass:a3];
    v12 = [(PBCoercionRegistry *)self member_exporterByClass];
    [v12 setObject:v11 forKeyedSubscript:v9];
  }

  [(PBObjectToRepresentationCoercion *)v11 addCoercionToType:v13 block:v8];
}

- (void)registerCoercionFromObjectOfClass:(Class)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PBCoercionRegistry *)self memberQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__PBCoercionRegistry_registerCoercionFromObjectOfClass_toRepresentationOfType_coercionBlock___block_invoke;
  v13[3] = &unk_279A07318;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (void)_member_registerCoercionFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = NSStringFromClass(a4);
  v10 = [(PBCoercionRegistry *)self member_importerByClass];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v11 = [[PBRepresentationToObjectCoercion alloc] initWithClass:a4];
    v12 = [(PBCoercionRegistry *)self member_importerByClass];
    [v12 setObject:v11 forKeyedSubscript:v9];
  }

  [(PBRepresentationToObjectCoercion *)v11 addCoercionFromType:v13 block:v8];
}

- (void)registerCoercionFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PBCoercionRegistry *)self memberQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__PBCoercionRegistry_registerCoercionFromRepresentationConformingToType_toObjectOfClass_coercionBlock___block_invoke;
  v13[3] = &unk_279A07340;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (void)_member_registerCoercionFromObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5
{
  v12 = a5;
  v8 = NSStringFromClass(a3);
  v9 = [(PBCoercionRegistry *)self member_classCoercionByClass];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10)
  {
    v10 = [[PBObjectToObjectCoercion alloc] initWithClass:a3];
    v11 = [(PBCoercionRegistry *)self member_classCoercionByClass];
    [v11 setObject:v10 forKeyedSubscript:v8];
  }

  [(PBObjectToObjectCoercion *)v10 addCoercionToClass:a4 block:v12];
}

- (void)registerCoercionFromObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4 coercionBlock:(id)a5
{
  v8 = a5;
  v9 = [(PBCoercionRegistry *)self memberQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PBCoercionRegistry_registerCoercionFromObjectOfClass_toObjectOfClass_coercionBlock___block_invoke;
  v11[3] = &unk_279A07368;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(v9, v11);
}

- (id)_member_availableDirectRepresentationTypesForClass:(Class)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PBCoercionRegistry *)self member_exporterByClass];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(objc_class *)a3 isSubclassOfClass:NSClassFromString(v11)])
        {
          v12 = [(PBCoercionRegistry *)self member_exporterByClass];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 availableExportTypes];

          if (v14)
          {
            [v5 addObjectsFromArray:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)registerCoercionFromRepresentationConformingToType:(id)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PBCoercionRegistry *)self memberQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__PBCoercionRegistry_registerCoercionFromRepresentationConformingToType_toRepresentationOfType_coercionBlock___block_invoke;
  v15[3] = &unk_279A07050;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

- (void)_member_registerCoercionFromRepresentationConformingToType:(id)a3 toRepresentationOfType:(id)a4 coercionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PBCoercionRegistry *)self member_representationCoercions];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __118__PBCoercionRegistry__member_registerCoercionFromRepresentationConformingToType_toRepresentationOfType_coercionBlock___block_invoke;
  v22 = &unk_279A07390;
  v12 = v8;
  v23 = v12;
  v13 = v9;
  v24 = v13;
  v14 = [v11 indexOfObjectPassingTest:&v19];

  v15 = [PBRepresentationToRepresentationCoercion alloc];
  v16 = [(PBRepresentationToRepresentationCoercion *)v15 initWithSourceType:v12 destinationType:v13 conversionBlock:v10, v19, v20, v21, v22];

  v17 = [(PBCoercionRegistry *)self member_representationCoercions];
  v18 = v17;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v17 addObject:v16];
  }

  else
  {
    [v17 replaceObjectAtIndex:v14 withObject:v16];
  }
}

uint64_t __118__PBCoercionRegistry__member_registerCoercionFromRepresentationConformingToType_toRepresentationOfType_coercionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceType];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 destinationType];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)availableRepresentationTypesForClass:(Class)a3
{
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v6 = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PBCoercionRegistry_availableRepresentationTypesForClass___block_invoke;
  block[3] = &unk_279A073B8;
  v11 = v5;
  v12 = self;
  v13 = a3;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = [v7 array];

  return v8;
}

void __59__PBCoercionRegistry_availableRepresentationTypesForClass___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _member_availableDirectRepresentationTypesForClass:*(a1 + 48)];
  [v2 addObjectsFromArray:v3];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(a1 + 40) member_classCoercionByClass];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      v19 = v5;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        if ([*(a1 + 48) isSubclassOfClass:NSClassFromString(v8)])
        {
          v9 = [*(a1 + 40) member_classCoercionByClass];
          v10 = [v9 objectForKeyedSubscript:v8];

          v11 = [v10 availableClasses];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(a1 + 32);
                v17 = [*(a1 + 40) _member_availableDirectRepresentationTypesForClass:NSClassFromString(*(*(&v21 + 1) + 8 * i))];
                [v16 addObjectsFromArray:v17];
              }

              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v13);
          }

          v5 = v19;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_member_acceptableRepresentationTypesForCreatingObjectOfClass:(Class)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PBCoercionRegistry *)self member_importerByClass];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(objc_class *)a3 isSubclassOfClass:NSClassFromString(v11)])
        {
          v12 = [(PBCoercionRegistry *)self member_importerByClass];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 availableImportTypes];

          if (v14)
          {
            [v5 addObjectsFromArray:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 array];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)acceptableRepresentationTypesForCreatingObjectOfClass:(Class)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v5 = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PBCoercionRegistry_acceptableRepresentationTypesForCreatingObjectOfClass___block_invoke;
  block[3] = &unk_279A073E0;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __76__PBCoercionRegistry_acceptableRepresentationTypesForCreatingObjectOfClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _member_acceptableRepresentationTypesForCreatingObjectOfClass:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canCoerceFromRepresentationConformingToType:(id)a3 toObjectOfClass:(Class)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(PBCoercionRegistry *)self memberQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__PBCoercionRegistry_canCoerceFromRepresentationConformingToType_toObjectOfClass___block_invoke;
  v10[3] = &unk_279A07408;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void __82__PBCoercionRegistry_canCoerceFromRepresentationConformingToType_toObjectOfClass___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) member_importerByClass];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([NSClassFromString(v7) isSubclassOfClass:*(a1 + 56)])
        {
          v8 = [*(a1 + 32) member_importerByClass];
          v9 = [v8 objectForKeyedSubscript:v7];

          if ([v9 canCoerceFromType:*(a1 + 40)])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;

            goto LABEL_14;
          }
        }

        if (*(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)canCoerceObjectOfClass:(Class)a3 toRepresentationConformingToType:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [(PBCoercionRegistry *)self memberQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__PBCoercionRegistry_canCoerceObjectOfClass_toRepresentationConformingToType___block_invoke;
  v10[3] = &unk_279A07408;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a3;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

void __78__PBCoercionRegistry_canCoerceObjectOfClass_toRepresentationConformingToType___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) member_exporterByClass];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([*(a1 + 56) isSubclassOfClass:NSClassFromString(v7)])
        {
          v8 = [*(a1 + 32) member_exporterByClass];
          v9 = [v8 objectForKeyedSubscript:v7];

          if ([v9 canCoerceToType:*(a1 + 40)])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;

            goto LABEL_14;
          }
        }

        if (*(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)canCoerceObjectOfClass:(Class)a3 toObjectOfClass:(Class)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = [(PBCoercionRegistry *)self memberQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__PBCoercionRegistry_canCoerceObjectOfClass_toObjectOfClass___block_invoke;
  v9[3] = &unk_279A07430;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v7, v9);

  LOBYTE(a4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return a4;
}

void __61__PBCoercionRegistry_canCoerceObjectOfClass_toObjectOfClass___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) member_classCoercionByClass];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([*(a1 + 48) isSubclassOfClass:NSClassFromString(v7)])
        {
          v8 = [*(a1 + 32) member_classCoercionByClass];
          v9 = [v8 objectForKeyedSubscript:v7];

          if ([v9 canCoerceToObjectOfClass:*(a1 + 56)])
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;

            goto LABEL_14;
          }
        }

        if (*(*(*(a1 + 40) + 8) + 24))
        {
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_newObjectOfClass:(Class)a3 fromData:(id)a4 URL:(id)a5 ofType:(id)a6 outError:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v15 = [(PBCoercionRegistry *)self memberQueue];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __69__PBCoercionRegistry__newObjectOfClass_fromData_URL_ofType_outError___block_invoke;
  v23 = &unk_279A07408;
  v24 = self;
  v27 = a3;
  v16 = v14;
  v25 = v16;
  v26 = &v28;
  dispatch_sync(v15, &v20);

  v17 = v29[5];
  if (v17)
  {
    v18 = [v17 createObjectFromRepresentationConformingToType:v16 data:v12 URL:v13 outError:{a7, v20, v21, v22, v23, v24}];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v28, 8);
  return v18;
}

void __69__PBCoercionRegistry__newObjectOfClass_fromData_URL_ofType_outError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) member_importerByClass];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([NSClassFromString(v7) isSubclassOfClass:*(a1 + 56)])
        {
          v8 = [*(a1 + 32) member_importerByClass];
          v9 = [v8 objectForKeyedSubscript:v7];

          if ([v9 canCoerceFromType:*(a1 + 40)])
          {
            v10 = *(*(a1 + 48) + 8);
            v11 = *(v10 + 40);
            *(v10 + 40) = v9;

            goto LABEL_13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_member_exporterFromClass:(Class)a3 toType:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(PBCoercionRegistry *)self member_exporterByClass];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([(objc_class *)a3 isSubclassOfClass:NSClassFromString(v12)])
        {
          v13 = [(PBCoercionRegistry *)self member_exporterByClass];
          v14 = [v13 objectForKeyedSubscript:v12];

          if ([v14 canCoerceToType:v6])
          {
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)loadRepresentationOfObject:(id)a3 asType:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke;
  v29[3] = &unk_279A07458;
  v11 = v9;
  v30 = v11;
  v12 = v8;
  v31 = v12;
  v13 = v10;
  v32 = v13;
  v14 = MEMORY[0x25F8AC430](v29);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__47;
  v27 = __Block_byref_object_dispose__48;
  v28 = 0;
  v15 = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_49;
  block[3] = &unk_279A074D0;
  block[4] = self;
  v16 = v12;
  v20 = v16;
  v17 = v11;
  v21 = v17;
  v22 = &v23;
  dispatch_sync(v15, block);

  v18 = v24[5];
  if (v18)
  {
    (*(v18 + 16))(v18, v14);
  }

  else
  {
    v14[2](v14, 0, 0, 0);
  }

  _Block_object_dispose(&v23, 8);
}

void __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 || !(v7 | v8))
  {
    v11 = [v9 domain];
    v12 = [v11 isEqualToString:@"PBErrorDomain"];

    if ((v12 & 1) == 0)
    {
      v14 = a1[4];
      v13 = a1[5];
      v15 = objc_opt_class();
      v16 = PBCannotCreateRepresentationError(v14, v15, v10);

      v10 = v16;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = a1[6];
  if (v17)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_2;
    v18[3] = &unk_279A06DF8;
    v22 = v17;
    v19 = v7;
    v20 = v8;
    v21 = v10;
    PBDispatchAsyncCallback(v18);
  }
}

void __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_49(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 _member_exporterFromClass:objc_opt_class() toType:*(a1 + 48)];
  v5 = v4;
  if (v4)
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_2_50;
    v48[3] = &unk_279A07480;
    v49 = v4;
    v50 = *(a1 + 48);
    v51 = *(a1 + 40);
    v6 = MEMORY[0x25F8AC430](v48);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v31 = v5;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [*(a1 + 32) member_classCoercionByClass];
  v9 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
LABEL_5:
    v12 = 0;
    v32 = v10;
    while (1)
    {
      if (*v45 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v44 + 1) + 8 * v12);
      v14 = *(a1 + 40);
      NSClassFromString(v13);
      if (objc_opt_isKindOfClass())
      {
        v15 = [*(a1 + 32) member_classCoercionByClass];
        v16 = [v15 objectForKeyedSubscript:v13];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v17 = [v16 availableClasses];
        v18 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v41;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v41 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = NSClassFromString(*(*(&v40 + 1) + 8 * i));
              v23 = [*(a1 + 32) _member_exporterFromClass:v22 toType:*(a1 + 48)];
              if (v23)
              {
                v24 = v23;
                v34[0] = MEMORY[0x277D85DD0];
                v34[1] = 3221225472;
                v34[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_5;
                v34[3] = &unk_279A074A8;
                v35 = v16;
                v25 = *(a1 + 40);
                v39 = v22;
                v36 = v25;
                v37 = v24;
                v38 = *(a1 + 48);
                v26 = v24;
                v27 = MEMORY[0x25F8AC430](v34);
                v28 = *(*(a1 + 56) + 8);
                v29 = *(v28 + 40);
                *(v28 + 40) = v27;

                goto LABEL_19;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        v10 = v32;
      }

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        break;
      }

      if (++v12 == v10)
      {
        v10 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_2_50(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_3;
  v8[3] = &unk_279A06AD8;
  v9 = v3;
  v7 = v3;
  [v4 createRepresentationOfType:v5 fromObject:v6 completionBlock:v8];
}

void __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_4;
    v11[3] = &unk_279A06DF8;
    v15 = v10;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    PBDispatchAsyncCallback(v11);
  }
}

void __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v9 = 0;
  v6 = a2;
  v7 = [v3 coerceObject:v4 toObjectOfClass:v5 outError:&v9];
  v8 = v9;
  if (v7)
  {
    [*(a1 + 48) createRepresentationOfType:*(a1 + 56) fromObject:v7 completionBlock:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0, v8);
  }
}

- (id)_member_availableClassesToCoerceToFromClass:(Class)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v18 = [MEMORY[0x277CBEB40] orderedSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [(PBCoercionRegistry *)self member_classCoercionByClass];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          if ([(objc_class *)a3 isSubclassOfClass:NSClassFromString(v10)])
          {
            v12 = [(PBCoercionRegistry *)self member_classCoercionByClass];
            v13 = [v12 objectForKeyedSubscript:v10];

            v14 = [v13 availableClasses];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __66__PBCoercionRegistry__member_availableClassesToCoerceToFromClass___block_invoke;
            v19[3] = &unk_279A074F8;
            v20 = v18;
            [v14 enumerateObjectsUsingBlock:v19];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v15 = [v18 array];
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

Class __66__PBCoercionRegistry__member_availableClassesToCoerceToFromClass___block_invoke(uint64_t a1, NSString *aClassName)
{
  result = NSClassFromString(aClassName);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return [v5 addObject:v4];
  }

  return result;
}

- (id)loadCoercionOfRepresentation:(id)a3 fromType:(id)a4 toType:(id)a5 usingCoercion:(id)a6 completionBlock:(id)a7
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  if (v12)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__PBCoercionRegistry_loadCoercionOfRepresentation_fromType_toType_usingCoercion_completionBlock___block_invoke;
    v17[3] = &unk_279A07520;
    v18 = v12;
    v19 = v11;
    v20 = v13;
    v14 = [a3 loadWithCompletionHandler:v17];
  }

  else
  {
    v15 = PBCannotLoadRepresentationError(a4, 0);
    (*(v13 + 2))(v13, 0, v15);

    v14 = 0;
  }

  return v14;
}

void __97__PBCoercionRegistry_loadCoercionOfRepresentation_fromType_toType_usingCoercion_completionBlock___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!(v19 | v9) || v10)
  {
    (*(a1[6] + 16))();
    goto LABEL_8;
  }

  if (v9)
  {
    v12 = [v9 url];
    v13 = [v12 startAccessingSecurityScopedResource];

    v14 = a1[4];
    v15 = [v9 url];
    [v14 coerceRepresentationData:v19 representationURL:v15 toRepresentationOfType:a1[5] completionBlock:a1[6]];

    if (v13)
    {
      v16 = [v9 url];
      [v16 stopAccessingSecurityScopedResource];

      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_9:
      v11[2](v11);
      goto LABEL_10;
    }

LABEL_8:
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = a1[4];
  v18 = [0 url];
  [v17 coerceRepresentationData:v19 representationURL:v18 toRepresentationOfType:a1[5] completionBlock:a1[6]];

  if (v11)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PBCoercionRegistry_Private__enumerateAvailableCoercionLoaderBlocksForRepresentation_usingBlock___block_invoke;
  block[3] = &unk_279A07548;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)_member_enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)a3 usingBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 typeIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self;
  obj = [(PBCoercionRegistry *)self member_representationCoercions];
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 sourceType];
        v15 = [v13 destinationType];
        if (UTTypeConformsTo(v8, v14))
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __106__PBCoercionRegistry_Private___member_enumerateAvailableCoercionLoaderBlocksForRepresentation_usingBlock___block_invoke;
          v19[3] = &unk_279A07570;
          v19[4] = v18;
          v20 = v6;
          v21 = v14;
          v22 = v15;
          v23 = v13;
          v7[2](v7, v22, v19);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_availableClassesToCoerceFromClass:(Class)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v5 = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PBCoercionRegistry_Private___availableClassesToCoerceFromClass___block_invoke;
  block[3] = &unk_279A073E0;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __66__PBCoercionRegistry_Private___availableClassesToCoerceFromClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _member_availableClassesToCoerceToFromClass:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)archivedDataFromObject:(id)a3 requestedType:(id)a4 outError:(id *)a5
{
  v7 = a4;
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = PBCannotLoadRepresentationError(v7, v9);

    v9 = v10;
  }

  if (a5)
  {
    v11 = v9;
    *a5 = v9;
  }

  return v8;
}

+ (id)objectFromArchivedData:(id)a3 URL:(id)a4 requestedClass:(Class)a5 typeIdentifier:(id)a6 outError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11 && v12)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v12];
  }

  if (v11)
  {
    v23 = 0;
    v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:&v23];
    v15 = v23;
    [v14 setDecodingFailurePolicy:1];
    v16 = *MEMORY[0x277CCA308];
    v22 = v15;
    v17 = [v14 decodeTopLevelObjectOfClass:a5 forKey:v16 error:&v22];
    v18 = v22;

    if (v17)
    {
      if (!a7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = PBCannotInstantiateObjectOfClassError(a5, v13, v18);

  v17 = 0;
  v18 = v21;
  if (a7)
  {
LABEL_7:
    v19 = v18;
    *a7 = v18;
  }

LABEL_8:

  return v17;
}

@end