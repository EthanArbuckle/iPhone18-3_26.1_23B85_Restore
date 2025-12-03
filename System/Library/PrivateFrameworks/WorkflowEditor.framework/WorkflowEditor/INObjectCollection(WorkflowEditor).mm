@interface INObjectCollection(WorkflowEditor)
- (id)wf_filteredCollectionUsingBlock:()WorkflowEditor;
- (id)wf_itemAtIndexPath:()WorkflowEditor;
- (uint64_t)wf_objectCount;
@end

@implementation INObjectCollection(WorkflowEditor)

- (id)wf_filteredCollectionUsingBlock:()WorkflowEditor
{
  v4 = a3;
  sections = [self sections];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__INObjectCollection_WorkflowEditor__wf_filteredCollectionUsingBlock___block_invoke;
  v10[3] = &unk_279EDBB28;
  v11 = v4;
  v6 = v4;
  v7 = [sections if_compactMap:v10];

  v8 = [objc_alloc(objc_opt_class()) initWithSections:v7];
  [v8 setUsesIndexedCollation:{objc_msgSend(self, "usesIndexedCollation")}];

  return v8;
}

- (id)wf_itemAtIndexPath:()WorkflowEditor
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  section = [v4 section];
  sections = [self sections];
  v7 = [sections count];

  if (section >= v7)
  {
    v9 = getWFEditorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[INObjectCollection(WorkflowEditor) wf_itemAtIndexPath:]";
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_2743F0000, v9, OS_LOG_TYPE_ERROR, "%s Illegal indexPath (section): %{public}@", &v17, 0x16u);
    }
  }

  else
  {
    sections2 = [self sections];
    v9 = [sections2 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    item = [v4 item];
    items = [v9 items];
    v12 = [items count];

    if (item < v12)
    {
      items2 = [v9 items];
      v14 = [items2 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

      goto LABEL_10;
    }

    v15 = getWFEditorLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[INObjectCollection(WorkflowEditor) wf_itemAtIndexPath:]";
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_2743F0000, v15, OS_LOG_TYPE_ERROR, "%s Illegal indexPath (item): %{public}@", &v17, 0x16u);
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (uint64_t)wf_objectCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  sections = [self sections];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__INObjectCollection_WorkflowEditor__wf_objectCount__block_invoke;
  v4[3] = &unk_279EDBB00;
  v4[4] = &v5;
  [sections enumerateObjectsUsingBlock:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end