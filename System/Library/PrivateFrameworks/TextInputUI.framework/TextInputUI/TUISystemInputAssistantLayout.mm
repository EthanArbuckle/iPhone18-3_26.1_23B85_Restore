@interface TUISystemInputAssistantLayout
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5;
@end

@implementation TUISystemInputAssistantLayout

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)a3 withSystemInputAssistantItem:(id)a4 forAssistantView:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 leadingBarButtonGroups];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  v13 = [v7 trailingBarButtonGroups];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  v16 = [v6 leadingBarButtonGroups];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v10;
  }

  v19 = v18;

  v20 = [v6 trailingBarButtonGroups];

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v10;
  }

  v22 = v21;

  v23 = objc_alloc_init(TUIButtonBarGroupSet);
  v24 = [v19 arrayByAddingObjectsFromArray:v12];
  [(TUIButtonBarGroupSet *)v23 setLeadingButtonGroups:v24];

  v25 = [v15 arrayByAddingObjectsFromArray:v22];

  [(TUIButtonBarGroupSet *)v23 setTrailingButtonGroups:v25];
  v26 = [(TUIButtonBarGroupSet *)v23 leadingButtonGroups];
  v27 = [(TUIButtonBarGroupSet *)v23 trailingButtonGroups];
  v28 = [v26 arrayByAddingObjectsFromArray:v27];
  [(TUIButtonBarGroupSet *)v23 setUnifiedButtonGroups:v28];

  return v23;
}

@end