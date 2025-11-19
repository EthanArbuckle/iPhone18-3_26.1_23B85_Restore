@interface NSCompoundPredicate(VideosUICore)
- (id)vui_predicateWithSubpredicateFilterBlock:()VideosUICore;
@end

@implementation NSCompoundPredicate(VideosUICore)

- (id)vui_predicateWithSubpredicateFilterBlock:()VideosUICore
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [a1 subpredicates];
  v7 = [a1 compoundPredicateType];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__NSCompoundPredicate_VideosUICore__vui_predicateWithSubpredicateFilterBlock___block_invoke;
  v13[3] = &unk_279E21760;
  v8 = v4;
  v15 = v8;
  v16 = &v17;
  v9 = v5;
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v13];
  if (*(v18 + 24) == 1)
  {
    v10 = [MEMORY[0x277CCAC30] vui_predicateWithSubpredicates:v9 type:v7];
  }

  else
  {
    v10 = a1;
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);

  return v11;
}

@end