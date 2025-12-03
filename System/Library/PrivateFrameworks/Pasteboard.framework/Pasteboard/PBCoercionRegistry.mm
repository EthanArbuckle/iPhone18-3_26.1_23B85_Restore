@interface PBCoercionRegistry
+ (id)archivedDataFromObject:(id)object requestedType:(id)type outError:(id *)error;
+ (id)defaultRegistry;
+ (id)objectFromArchivedData:(id)data URL:(id)l requestedClass:(Class)class typeIdentifier:(id)identifier outError:(id *)error;
- (BOOL)canCoerceFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class;
- (BOOL)canCoerceObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass;
- (BOOL)canCoerceObjectOfClass:(Class)class toRepresentationConformingToType:(id)type;
- (PBCoercionRegistry)init;
- (id)_availableClassesToCoerceFromClass:(Class)class;
- (id)_member_acceptableRepresentationTypesForCreatingObjectOfClass:(Class)class;
- (id)_member_availableClassesToCoerceToFromClass:(Class)class;
- (id)_member_availableDirectRepresentationTypesForClass:(Class)class;
- (id)_member_exporterFromClass:(Class)class toType:(id)type;
- (id)_newObjectOfClass:(Class)class fromData:(id)data URL:(id)l ofType:(id)type outError:(id *)error;
- (id)acceptableRepresentationTypesForCreatingObjectOfClass:(Class)class;
- (id)availableRepresentationTypesForClass:(Class)class;
- (id)loadCoercionOfRepresentation:(id)representation fromType:(id)type toType:(id)toType usingCoercion:(id)coercion completionBlock:(id)block;
- (void)_member_enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)representation usingBlock:(id)block;
- (void)_member_registerCoercionFromObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass coercionBlock:(id)block;
- (void)_member_registerCoercionFromObjectOfClass:(Class)class toRepresentationOfType:(id)type coercionBlock:(id)block;
- (void)_member_registerCoercionFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class coercionBlock:(id)block;
- (void)_member_registerCoercionFromRepresentationConformingToType:(id)type toRepresentationOfType:(id)ofType coercionBlock:(id)block;
- (void)enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)representation usingBlock:(id)block;
- (void)loadRepresentationOfObject:(id)object asType:(id)type completionBlock:(id)block;
- (void)registerCoercionFromObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass coercionBlock:(id)block;
- (void)registerCoercionFromObjectOfClass:(Class)class toRepresentationOfType:(id)type coercionBlock:(id)block;
- (void)registerCoercionFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class coercionBlock:(id)block;
- (void)registerCoercionFromRepresentationConformingToType:(id)type toRepresentationOfType:(id)ofType coercionBlock:(id)block;
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
  selfCopy = self;
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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"PBDefaultCoercionRegistryDidInstantiateNotification" object:_MergedGlobals_7];
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    member_exporterByClass = v2->_member_exporterByClass;
    v2->_member_exporterByClass = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    member_importerByClass = v2->_member_importerByClass;
    v2->_member_importerByClass = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    member_classCoercionByClass = v2->_member_classCoercionByClass;
    v2->_member_classCoercionByClass = dictionary3;

    array = [MEMORY[0x277CBEB18] array];
    member_representationCoercions = v2->_member_representationCoercions;
    v2->_member_representationCoercions = array;
  }

  return v2;
}

- (void)_member_registerCoercionFromObjectOfClass:(Class)class toRepresentationOfType:(id)type coercionBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v9 = NSStringFromClass(class);
  member_exporterByClass = [(PBCoercionRegistry *)self member_exporterByClass];
  v11 = [member_exporterByClass objectForKeyedSubscript:v9];

  if (!v11)
  {
    v11 = [[PBObjectToRepresentationCoercion alloc] initWithClass:class];
    member_exporterByClass2 = [(PBCoercionRegistry *)self member_exporterByClass];
    [member_exporterByClass2 setObject:v11 forKeyedSubscript:v9];
  }

  [(PBObjectToRepresentationCoercion *)v11 addCoercionToType:typeCopy block:blockCopy];
}

- (void)registerCoercionFromObjectOfClass:(Class)class toRepresentationOfType:(id)type coercionBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__PBCoercionRegistry_registerCoercionFromObjectOfClass_toRepresentationOfType_coercionBlock___block_invoke;
  v13[3] = &unk_279A07318;
  v13[4] = self;
  v14 = typeCopy;
  v15 = blockCopy;
  classCopy = class;
  v11 = blockCopy;
  v12 = typeCopy;
  dispatch_sync(memberQueue, v13);
}

- (void)_member_registerCoercionFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class coercionBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  v9 = NSStringFromClass(class);
  member_importerByClass = [(PBCoercionRegistry *)self member_importerByClass];
  v11 = [member_importerByClass objectForKeyedSubscript:v9];

  if (!v11)
  {
    v11 = [[PBRepresentationToObjectCoercion alloc] initWithClass:class];
    member_importerByClass2 = [(PBCoercionRegistry *)self member_importerByClass];
    [member_importerByClass2 setObject:v11 forKeyedSubscript:v9];
  }

  [(PBRepresentationToObjectCoercion *)v11 addCoercionFromType:typeCopy block:blockCopy];
}

- (void)registerCoercionFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class coercionBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__PBCoercionRegistry_registerCoercionFromRepresentationConformingToType_toObjectOfClass_coercionBlock___block_invoke;
  v13[3] = &unk_279A07340;
  v13[4] = self;
  v14 = typeCopy;
  v15 = blockCopy;
  classCopy = class;
  v11 = blockCopy;
  v12 = typeCopy;
  dispatch_sync(memberQueue, v13);
}

- (void)_member_registerCoercionFromObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass coercionBlock:(id)block
{
  blockCopy = block;
  v8 = NSStringFromClass(class);
  member_classCoercionByClass = [(PBCoercionRegistry *)self member_classCoercionByClass];
  v10 = [member_classCoercionByClass objectForKeyedSubscript:v8];

  if (!v10)
  {
    v10 = [[PBObjectToObjectCoercion alloc] initWithClass:class];
    member_classCoercionByClass2 = [(PBCoercionRegistry *)self member_classCoercionByClass];
    [member_classCoercionByClass2 setObject:v10 forKeyedSubscript:v8];
  }

  [(PBObjectToObjectCoercion *)v10 addCoercionToClass:ofClass block:blockCopy];
}

- (void)registerCoercionFromObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass coercionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PBCoercionRegistry_registerCoercionFromObjectOfClass_toObjectOfClass_coercionBlock___block_invoke;
  v11[3] = &unk_279A07368;
  classCopy = class;
  ofClassCopy = ofClass;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  dispatch_sync(memberQueue, v11);
}

- (id)_member_availableDirectRepresentationTypesForClass:(Class)class
{
  v23 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  member_exporterByClass = [(PBCoercionRegistry *)self member_exporterByClass];
  v7 = [member_exporterByClass countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(member_exporterByClass);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(objc_class *)class isSubclassOfClass:NSClassFromString(v11)])
        {
          member_exporterByClass2 = [(PBCoercionRegistry *)self member_exporterByClass];
          v13 = [member_exporterByClass2 objectForKeyedSubscript:v11];
          availableExportTypes = [v13 availableExportTypes];

          if (availableExportTypes)
          {
            [orderedSet addObjectsFromArray:availableExportTypes];
          }
        }
      }

      v8 = [member_exporterByClass countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  array = [orderedSet array];

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)registerCoercionFromRepresentationConformingToType:(id)type toRepresentationOfType:(id)ofType coercionBlock:(id)block
{
  typeCopy = type;
  ofTypeCopy = ofType;
  blockCopy = block;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__PBCoercionRegistry_registerCoercionFromRepresentationConformingToType_toRepresentationOfType_coercionBlock___block_invoke;
  v15[3] = &unk_279A07050;
  v15[4] = self;
  v16 = typeCopy;
  v17 = ofTypeCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = ofTypeCopy;
  v14 = typeCopy;
  dispatch_sync(memberQueue, v15);
}

- (void)_member_registerCoercionFromRepresentationConformingToType:(id)type toRepresentationOfType:(id)ofType coercionBlock:(id)block
{
  typeCopy = type;
  ofTypeCopy = ofType;
  blockCopy = block;
  member_representationCoercions = [(PBCoercionRegistry *)self member_representationCoercions];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __118__PBCoercionRegistry__member_registerCoercionFromRepresentationConformingToType_toRepresentationOfType_coercionBlock___block_invoke;
  v22 = &unk_279A07390;
  v12 = typeCopy;
  v23 = v12;
  v13 = ofTypeCopy;
  v24 = v13;
  v14 = [member_representationCoercions indexOfObjectPassingTest:&v19];

  v15 = [PBRepresentationToRepresentationCoercion alloc];
  v16 = [(PBRepresentationToRepresentationCoercion *)v15 initWithSourceType:v12 destinationType:v13 conversionBlock:blockCopy, v19, v20, v21, v22];

  member_representationCoercions2 = [(PBCoercionRegistry *)self member_representationCoercions];
  v18 = member_representationCoercions2;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [member_representationCoercions2 addObject:v16];
  }

  else
  {
    [member_representationCoercions2 replaceObjectAtIndex:v14 withObject:v16];
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

- (id)availableRepresentationTypesForClass:(Class)class
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PBCoercionRegistry_availableRepresentationTypesForClass___block_invoke;
  block[3] = &unk_279A073B8;
  v11 = orderedSet;
  selfCopy = self;
  classCopy = class;
  v7 = orderedSet;
  dispatch_sync(memberQueue, block);

  array = [v7 array];

  return array;
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

- (id)_member_acceptableRepresentationTypesForCreatingObjectOfClass:(Class)class
{
  v23 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  member_importerByClass = [(PBCoercionRegistry *)self member_importerByClass];
  v7 = [member_importerByClass countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(member_importerByClass);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([(objc_class *)class isSubclassOfClass:NSClassFromString(v11)])
        {
          member_importerByClass2 = [(PBCoercionRegistry *)self member_importerByClass];
          v13 = [member_importerByClass2 objectForKeyedSubscript:v11];
          availableImportTypes = [v13 availableImportTypes];

          if (availableImportTypes)
          {
            [orderedSet addObjectsFromArray:availableImportTypes];
          }
        }
      }

      v8 = [member_importerByClass countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  array = [orderedSet array];

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)acceptableRepresentationTypesForCreatingObjectOfClass:(Class)class
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PBCoercionRegistry_acceptableRepresentationTypesForCreatingObjectOfClass___block_invoke;
  block[3] = &unk_279A073E0;
  block[4] = self;
  block[5] = &v9;
  block[6] = class;
  dispatch_sync(memberQueue, block);

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

- (BOOL)canCoerceFromRepresentationConformingToType:(id)type toObjectOfClass:(Class)class
{
  typeCopy = type;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__PBCoercionRegistry_canCoerceFromRepresentationConformingToType_toObjectOfClass___block_invoke;
  v10[3] = &unk_279A07408;
  v10[4] = self;
  v11 = typeCopy;
  v12 = &v14;
  classCopy = class;
  v8 = typeCopy;
  dispatch_sync(memberQueue, v10);

  LOBYTE(typeCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return typeCopy;
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

- (BOOL)canCoerceObjectOfClass:(Class)class toRepresentationConformingToType:(id)type
{
  typeCopy = type;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__PBCoercionRegistry_canCoerceObjectOfClass_toRepresentationConformingToType___block_invoke;
  v10[3] = &unk_279A07408;
  v10[4] = self;
  v11 = typeCopy;
  v12 = &v14;
  classCopy = class;
  v8 = typeCopy;
  dispatch_sync(memberQueue, v10);

  LOBYTE(typeCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return typeCopy;
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

- (BOOL)canCoerceObjectOfClass:(Class)class toObjectOfClass:(Class)ofClass
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__PBCoercionRegistry_canCoerceObjectOfClass_toObjectOfClass___block_invoke;
  v9[3] = &unk_279A07430;
  v9[6] = class;
  v9[7] = ofClass;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(memberQueue, v9);

  LOBYTE(ofClass) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return ofClass;
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

- (id)_newObjectOfClass:(Class)class fromData:(id)data URL:(id)l ofType:(id)type outError:(id *)error
{
  dataCopy = data;
  lCopy = l;
  typeCopy = type;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __69__PBCoercionRegistry__newObjectOfClass_fromData_URL_ofType_outError___block_invoke;
  v23 = &unk_279A07408;
  selfCopy = self;
  classCopy = class;
  v16 = typeCopy;
  v25 = v16;
  v26 = &v28;
  dispatch_sync(memberQueue, &v20);

  v17 = v29[5];
  if (v17)
  {
    v18 = [v17 createObjectFromRepresentationConformingToType:v16 data:dataCopy URL:lCopy outError:{error, v20, v21, v22, v23, selfCopy}];
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

- (id)_member_exporterFromClass:(Class)class toType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  member_exporterByClass = [(PBCoercionRegistry *)self member_exporterByClass];
  v8 = [member_exporterByClass countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(member_exporterByClass);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([(objc_class *)class isSubclassOfClass:NSClassFromString(v12)])
        {
          member_exporterByClass2 = [(PBCoercionRegistry *)self member_exporterByClass];
          v14 = [member_exporterByClass2 objectForKeyedSubscript:v12];

          if ([v14 canCoerceToType:typeCopy])
          {
            goto LABEL_12;
          }
        }
      }

      v9 = [member_exporterByClass countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)loadRepresentationOfObject:(id)object asType:(id)type completionBlock:(id)block
{
  objectCopy = object;
  typeCopy = type;
  blockCopy = block;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__PBCoercionRegistry_loadRepresentationOfObject_asType_completionBlock___block_invoke;
  v29[3] = &unk_279A07458;
  v11 = typeCopy;
  v30 = v11;
  v12 = objectCopy;
  v31 = v12;
  v13 = blockCopy;
  v32 = v13;
  v14 = MEMORY[0x25F8AC430](v29);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__47;
  v27 = __Block_byref_object_dispose__48;
  v28 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
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
  dispatch_sync(memberQueue, block);

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

- (id)_member_availableClassesToCoerceToFromClass:(Class)class
{
  v26 = *MEMORY[0x277D85DE8];
  if (class)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    member_classCoercionByClass = [(PBCoercionRegistry *)self member_classCoercionByClass];
    v6 = [member_classCoercionByClass countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(member_classCoercionByClass);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          if ([(objc_class *)class isSubclassOfClass:NSClassFromString(v10)])
          {
            member_classCoercionByClass2 = [(PBCoercionRegistry *)self member_classCoercionByClass];
            v13 = [member_classCoercionByClass2 objectForKeyedSubscript:v10];

            availableClasses = [v13 availableClasses];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __66__PBCoercionRegistry__member_availableClassesToCoerceToFromClass___block_invoke;
            v19[3] = &unk_279A074F8;
            v20 = orderedSet;
            [availableClasses enumerateObjectsUsingBlock:v19];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [member_classCoercionByClass countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    array = [orderedSet array];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
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

- (id)loadCoercionOfRepresentation:(id)representation fromType:(id)type toType:(id)toType usingCoercion:(id)coercion completionBlock:(id)block
{
  toTypeCopy = toType;
  coercionCopy = coercion;
  blockCopy = block;
  if (coercionCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__PBCoercionRegistry_loadCoercionOfRepresentation_fromType_toType_usingCoercion_completionBlock___block_invoke;
    v17[3] = &unk_279A07520;
    v18 = coercionCopy;
    v19 = toTypeCopy;
    v20 = blockCopy;
    v14 = [representation loadWithCompletionHandler:v17];
  }

  else
  {
    v15 = PBCannotLoadRepresentationError(type, 0);
    (*(blockCopy + 2))(blockCopy, 0, v15);

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

- (void)enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)representation usingBlock:(id)block
{
  representationCopy = representation;
  blockCopy = block;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PBCoercionRegistry_Private__enumerateAvailableCoercionLoaderBlocksForRepresentation_usingBlock___block_invoke;
  block[3] = &unk_279A07548;
  block[4] = self;
  v12 = representationCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = representationCopy;
  dispatch_sync(memberQueue, block);
}

- (void)_member_enumerateAvailableCoercionLoaderBlocksForRepresentation:(id)representation usingBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  blockCopy = block;
  typeIdentifier = [representationCopy typeIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
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
        sourceType = [v13 sourceType];
        destinationType = [v13 destinationType];
        if (UTTypeConformsTo(typeIdentifier, sourceType))
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __106__PBCoercionRegistry_Private___member_enumerateAvailableCoercionLoaderBlocksForRepresentation_usingBlock___block_invoke;
          v19[3] = &unk_279A07570;
          v19[4] = selfCopy;
          v20 = representationCopy;
          v21 = sourceType;
          v22 = destinationType;
          v23 = v13;
          blockCopy[2](blockCopy, v22, v19);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_availableClassesToCoerceFromClass:(Class)class
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  memberQueue = [(PBCoercionRegistry *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PBCoercionRegistry_Private___availableClassesToCoerceFromClass___block_invoke;
  block[3] = &unk_279A073E0;
  block[4] = self;
  block[5] = &v9;
  block[6] = class;
  dispatch_sync(memberQueue, block);

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

+ (id)archivedDataFromObject:(id)object requestedType:(id)type outError:(id *)error
{
  typeCopy = type;
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = PBCannotLoadRepresentationError(typeCopy, v9);

    v9 = v10;
  }

  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v8;
}

+ (id)objectFromArchivedData:(id)data URL:(id)l requestedClass:(Class)class typeIdentifier:(id)identifier outError:(id *)error
{
  dataCopy = data;
  lCopy = l;
  identifierCopy = identifier;
  if (!dataCopy && lCopy)
  {
    dataCopy = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
  }

  if (dataCopy)
  {
    v23 = 0;
    v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v23];
    v15 = v23;
    [v14 setDecodingFailurePolicy:1];
    v16 = *MEMORY[0x277CCA308];
    v22 = v15;
    v17 = [v14 decodeTopLevelObjectOfClass:class forKey:v16 error:&v22];
    v18 = v22;

    if (v17)
    {
      if (!error)
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

  v21 = PBCannotInstantiateObjectOfClassError(class, identifierCopy, v18);

  v17 = 0;
  v18 = v21;
  if (error)
  {
LABEL_7:
    v19 = v18;
    *error = v18;
  }

LABEL_8:

  return v17;
}

@end