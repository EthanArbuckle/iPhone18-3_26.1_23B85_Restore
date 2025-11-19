@interface INObjectCollection(Filtering)
- (id)wf_filteredCollectionUsingBlock:()Filtering;
- (id)wf_itemAtIndexPath:()Filtering;
- (uint64_t)wf_objectCount;
@end

@implementation INObjectCollection(Filtering)

- (id)wf_filteredCollectionUsingBlock:()Filtering
{
  v4 = a3;
  v5 = [a1 sections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__INObjectCollection_Filtering__wf_filteredCollectionUsingBlock___block_invoke;
  v10[3] = &unk_1E837EFD0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 if_compactMap:v10];

  v8 = [objc_alloc(objc_opt_class()) initWithSections:v7];
  [v8 setUsesIndexedCollation:{objc_msgSend(a1, "usesIndexedCollation")}];

  return v8;
}

- (id)wf_itemAtIndexPath:()Filtering
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 section];
  v6 = [a1 sections];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v9 = getWFEditorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[INObjectCollection(Filtering) wf_itemAtIndexPath:]";
      v20 = 2114;
      v21 = v4;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Illegal indexPath (section): %{public}@", &v18, 0x16u);
    }
  }

  else
  {
    v8 = [a1 sections];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    v10 = [v4 item];
    v11 = [v9 items];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [v9 items];
      v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

      goto LABEL_10;
    }

    v15 = getWFEditorLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[INObjectCollection(Filtering) wf_itemAtIndexPath:]";
      v20 = 2114;
      v21 = v4;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Illegal indexPath (item): %{public}@", &v18, 0x16u);
    }
  }

  v14 = 0;
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (uint64_t)wf_objectCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [a1 sections];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__INObjectCollection_Filtering__wf_objectCount__block_invoke;
  v4[3] = &unk_1E837D118;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end