@interface INObjectCollection(LocalizedIndexedCollation)
- (id)wf_localizedIndexedCollationCollectionWithCollation:()LocalizedIndexedCollation collationStringSelector:;
- (id)wf_mapItems:()LocalizedIndexedCollation;
- (uint64_t)wf_contentIsEqualToCollection:()LocalizedIndexedCollation;
@end

@implementation INObjectCollection(LocalizedIndexedCollation)

- (uint64_t)wf_contentIsEqualToCollection:()LocalizedIndexedCollation
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
    goto LABEL_8;
  }

  sections = [self sections];
  v6 = [sections count];
  sections2 = [v4 sections];
  if (v6 != [sections2 count])
  {

    goto LABEL_7;
  }

  usesIndexedCollation = [self usesIndexedCollation];
  usesIndexedCollation2 = [v4 usesIndexedCollation];

  if (usesIndexedCollation != usesIndexedCollation2)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  sections3 = [self sections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__INObjectCollection_LocalizedIndexedCollation__wf_contentIsEqualToCollection___block_invoke;
  v13[3] = &unk_279EDB8E0;
  v14 = v4;
  v15 = &v16;
  [sections3 enumerateObjectsUsingBlock:v13];

  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
LABEL_8:

  return v11 & 1;
}

- (id)wf_mapItems:()LocalizedIndexedCollation
{
  v4 = a3;
  sections = [self sections];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__INObjectCollection_LocalizedIndexedCollation__wf_mapItems___block_invoke;
  v10[3] = &unk_279EDBB28;
  v11 = v4;
  v6 = v4;
  v7 = [sections if_map:v10];

  v8 = [objc_alloc(MEMORY[0x277CD3E28]) initWithSections:v7];
  [v8 setUsesIndexedCollation:{objc_msgSend(self, "usesIndexedCollation")}];

  return v8;
}

- (id)wf_localizedIndexedCollationCollectionWithCollation:()LocalizedIndexedCollation collationStringSelector:
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  sectionTitles = [v6 sectionTitles];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(sectionTitles, "count")}];

  sectionTitles2 = [v6 sectionTitles];
  v11 = [sectionTitles2 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      array = [MEMORY[0x277CBEB18] array];
      [v9 addObject:array];

      ++v12;
      sectionTitles3 = [v6 sectionTitles];
      v15 = [sectionTitles3 count];
    }

    while (v12 < v15);
  }

  allItems = [self allItems];
  v17 = [v6 sortedArrayFromArray:allItems collationStringSelector:a4];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __125__INObjectCollection_LocalizedIndexedCollation__wf_localizedIndexedCollationCollectionWithCollation_collationStringSelector___block_invoke;
  v31[3] = &unk_279EDB890;
  v32 = v6;
  v34 = a4;
  v18 = v9;
  v33 = v18;
  v19 = v6;
  [v17 enumerateObjectsUsingBlock:v31];
  sectionTitles4 = [v19 sectionTitles];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __125__INObjectCollection_LocalizedIndexedCollation__wf_localizedIndexedCollationCollectionWithCollation_collationStringSelector___block_invoke_2;
  v29 = &unk_279EDBA40;
  v30 = v18;
  v21 = v18;
  v22 = [sectionTitles4 if_map:&v26];

  v23 = objc_alloc(MEMORY[0x277CD3E28]);
  v24 = [v23 initWithSections:{v22, v26, v27, v28, v29}];
  [v24 setUsesIndexedCollation:{objc_msgSend(self, "usesIndexedCollation")}];

  return v24;
}

@end