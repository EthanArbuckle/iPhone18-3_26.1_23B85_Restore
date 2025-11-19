@interface INObjectCollection
@end

@implementation INObjectCollection

void __79__INObjectCollection_LocalizedIndexedCollation__wf_contentIsEqualToCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = [*(a1 + 32) sections];
  v8 = [v7 objectAtIndexedSubscript:a3];

  if (v8 != v17)
  {
    v9 = [v17 title];
    v10 = [v8 title];
    if ([v9 isEqualToString:v10])
    {
      v12 = *(a1 + 40);
      v11 = a1 + 40;
      *(*(v12 + 8) + 24) = 0;
    }

    else
    {
      v13 = [v17 items];
      v14 = [v8 items];
      v15 = [v13 isEqualToArray:v14];
      v16 = *(a1 + 40);
      v11 = a1 + 40;
      *(*(v16 + 8) + 24) = v15;
    }

    *a4 = *(*(*v11 + 8) + 24) ^ 1;
  }
}

id __61__INObjectCollection_LocalizedIndexedCollation__wf_mapItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD3E30];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 title];
  v7 = [v4 items];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__INObjectCollection_LocalizedIndexedCollation__wf_mapItems___block_invoke_2;
  v11[3] = &unk_279EDB8B8;
  v12 = *(a1 + 32);
  v8 = [v7 if_map:v11];
  v9 = [v5 initWithTitle:v6 items:v8];

  return v9;
}

void __125__INObjectCollection_LocalizedIndexedCollation__wf_localizedIndexedCollationCollectionWithCollation_collationStringSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v3, "sectionForObject:collationStringSelector:", v5, v4)}];
  [v6 addObject:v5];
}

id __125__INObjectCollection_LocalizedIndexedCollation__wf_localizedIndexedCollationCollectionWithCollation_collationStringSelector___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CD3E30];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [v7 initWithTitle:v6 items:v8];

  return v9;
}

id __70__INObjectCollection_WorkflowEditor__wf_filteredCollectionUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  v5 = [v4 if_objectsPassingTest:*(a1 + 32)];

  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x277CD3E30]);
    v7 = [v3 title];
    v8 = [v6 initWithTitle:v7 items:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__INObjectCollection_WorkflowEditor__wf_objectCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

@end