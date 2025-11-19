@interface NSArray(NLSessionAdditions)
- (id)nl_filteredArrayUsingBlock:()NLSessionAdditions;
- (id)nl_mapUsingBlock:()NLSessionAdditions;
@end

@implementation NSArray(NLSessionAdditions)

- (id)nl_mapUsingBlock:()NLSessionAdditions
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v19 = [v5 initWithCapacity:{objc_msgSend(v21, "count")}];
  v6 = v21;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __48__NSArray_NLSessionAdditions__nl_mapUsingBlock___block_invoke;
  v11 = &unk_277D88F90;
  v12[1] = &v13;
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  [v6 enumerateObjectsUsingBlock:&v7];
  v4 = MEMORY[0x277D82BE0](v14[5]);
  objc_storeStrong(v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)nl_filteredArrayUsingBlock:()NLSessionAdditions
{
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v19 = [v5 initWithCapacity:{objc_msgSend(v21, "count")}];
  v6 = v21;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__NSArray_NLSessionAdditions__nl_filteredArrayUsingBlock___block_invoke;
  v11 = &unk_277D88FB8;
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  v12[1] = &v13;
  [v6 enumerateObjectsUsingBlock:&v7];
  v4 = MEMORY[0x277D82BE0](v14[5]);
  objc_storeStrong(v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end