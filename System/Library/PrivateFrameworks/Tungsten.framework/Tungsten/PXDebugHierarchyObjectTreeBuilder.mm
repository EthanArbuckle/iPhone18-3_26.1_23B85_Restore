@interface PXDebugHierarchyObjectTreeBuilder
+ (id)buildObjectTreeForDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider options:(unint64_t)options;
+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options;
@end

@implementation PXDebugHierarchyObjectTreeBuilder

+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options
{
  elementCopy = element;
  objectCopy = object;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDebugHierarchyObjectTreeBuilder.m" lineNumber:39 description:{@"Method %s is a responsibility of subclass %@", "+[PXDebugHierarchyObjectTreeBuilder createObjectForElement:parentObject:options:]", v12}];

  abort();
}

+ (id)buildObjectTreeForDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider options:(unint64_t)options
{
  identifierCopy = identifier;
  providerCopy = provider;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6291;
  v25 = __Block_byref_object_dispose__6292;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __101__PXDebugHierarchyObjectTreeBuilder_buildObjectTreeForDebugHierarchyWithIdentifier_provider_options___block_invoke;
  v15[3] = &unk_2782A8E80;
  v12 = v11;
  v18 = a2;
  selfCopy = self;
  optionsCopy = options;
  v16 = v12;
  v17 = &v21;
  [providerCopy enumerateDebugHierarchyWithIdentifier:identifierCopy options:options usingBlock:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __101__PXDebugHierarchyObjectTreeBuilder_buildObjectTreeForDebugHierarchyWithIdentifier_provider_options___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 parentIdentifier];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "parentIdentifier")}];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"PXDebugHierarchyObjectTreeBuilder.m" lineNumber:25 description:{@"couldn't find parent with identifier %lu", objc_msgSend(v11, "parentIdentifier")}];
  }

  v6 = 0;
LABEL_5:
  v8 = [*(a1 + 56) createObjectForElement:v11 parentObject:v6 options:*(a1 + 64)];
  if ([v11 canHaveChildren])
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "identifier")}];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  if (!v3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  }
}

@end