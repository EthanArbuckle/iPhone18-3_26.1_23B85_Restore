@interface INObjectCollection
@end

@implementation INObjectCollection

id __65__INObjectCollection_Filtering__wf_filteredCollectionUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  v5 = [v4 if_objectsPassingTest:*(a1 + 32)];

  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x1E696E928]);
    v7 = [v3 title];
    v8 = [v6 initWithTitle:v7 items:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __47__INObjectCollection_Filtering__wf_objectCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

void __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 items];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke_2;
  v14[3] = &unk_1E837EFF8;
  v15 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke_3;
  v11[3] = &unk_1E837F020;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 if_mapAsynchronously:v14 completionHandler:v11];
}

void __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696E918];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithSections:v7];

  [v8 setUsesIndexedCollation:{objc_msgSend(*(a1 + 32), "usesIndexedCollation")}];
  (*(*(a1 + 40) + 16))();
}

void __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696E928];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [*(a1 + 32) title];
  v10 = [v8 initWithTitle:v9 items:v7];

  (*(*(a1 + 40) + 16))();
}

id __57__INObjectCollection_WFMapping__wf_mapObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__INObjectCollection_WFMapping__wf_mapObjectsUsingBlock___block_invoke_2;
  v10[3] = &unk_1E837EFA8;
  v11 = *(a1 + 32);
  v5 = [v4 if_map:v10];

  v6 = objc_alloc(MEMORY[0x1E696E928]);
  v7 = [v3 title];

  v8 = [v6 initWithTitle:v7 items:v5];

  return v8;
}

@end