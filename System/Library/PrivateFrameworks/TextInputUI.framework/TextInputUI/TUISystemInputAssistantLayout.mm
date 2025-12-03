@interface TUISystemInputAssistantLayout
- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view;
@end

@implementation TUISystemInputAssistantLayout

- (id)_buttonBarGroupSetForApplicationAssistantItem:(id)item withSystemInputAssistantItem:(id)assistantItem forAssistantView:(id)view
{
  assistantItemCopy = assistantItem;
  itemCopy = item;
  leadingBarButtonGroups = [itemCopy leadingBarButtonGroups];
  v9 = leadingBarButtonGroups;
  v10 = MEMORY[0x1E695E0F0];
  if (leadingBarButtonGroups)
  {
    v11 = leadingBarButtonGroups;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  trailingBarButtonGroups = [itemCopy trailingBarButtonGroups];

  if (trailingBarButtonGroups)
  {
    v14 = trailingBarButtonGroups;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14;

  leadingBarButtonGroups2 = [assistantItemCopy leadingBarButtonGroups];
  v17 = leadingBarButtonGroups2;
  if (leadingBarButtonGroups2)
  {
    v18 = leadingBarButtonGroups2;
  }

  else
  {
    v18 = v10;
  }

  v19 = v18;

  trailingBarButtonGroups2 = [assistantItemCopy trailingBarButtonGroups];

  if (trailingBarButtonGroups2)
  {
    v21 = trailingBarButtonGroups2;
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
  leadingButtonGroups = [(TUIButtonBarGroupSet *)v23 leadingButtonGroups];
  trailingButtonGroups = [(TUIButtonBarGroupSet *)v23 trailingButtonGroups];
  v28 = [leadingButtonGroups arrayByAddingObjectsFromArray:trailingButtonGroups];
  [(TUIButtonBarGroupSet *)v23 setUnifiedButtonGroups:v28];

  return v23;
}

@end