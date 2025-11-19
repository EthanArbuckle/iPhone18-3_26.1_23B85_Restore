@interface SKUISettingsGroupsDescription
- (BOOL)hasEditableSettingDescriptions;
- (BOOL)shouldShowFooterForGroupAtIndex:(unint64_t)a3;
- (BOOL)shouldShowHeaderForGroupAtIndex:(unint64_t)a3;
- (SKUIClientContext)clientContext;
- (SKUISettingsGroupsDescription)init;
- (SKUISettingsGroupsDescription)initWithDelegate:(id)a3 settingsContext:(id)a4;
- (SKUISettingsGroupsDescriptionDelegate)delegate;
- (id)_controllerForGroupElement:(id)a3;
- (id)_gatherEditableSettings;
- (id)createEditTransaction;
- (id)footerDescriptionForGroupAtIndex:(unint64_t)a3;
- (id)headerDescriptionForGroupAtIndex:(unint64_t)a3;
- (id)owningViewControllerForSettingsGroupController:(id)a3;
- (id)settingDescriptionAtIndexPath:(id)a3;
- (id)settingsGroupController:(id)a3 viewForSettingDescription:(id)a4;
- (id)viewElementForSettingAtIndexPath:(id)a3;
- (unint64_t)numberOfSettingsInGroupAtIndex:(unint64_t)a3;
- (void)_addSettingsGroupWithViewElement:(id)a3 controller:(id)a4;
- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dispatchUpdateForSettingsGroupDescription:(id)a3 atIndex:(unint64_t)a4 withUpdateType:(int64_t)a5;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updatedEditsValid;
- (void)deleteSettingAtIndexPath:(id)a3;
- (void)deleteSettingsGroupDescription:(id)a3;
- (void)dispatchUpdate:(id)a3;
- (void)hideSettingsGroupDescription:(id)a3;
- (void)init;
- (void)requestLayoutForWidth:(double)a3 context:(id)a4;
- (void)revealSettingsGroupDescription:(id)a3;
@end

@implementation SKUISettingsGroupsDescription

- (SKUISettingsGroupsDescription)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsGroupsDescription init];
  }

  v7.receiver = self;
  v7.super_class = SKUISettingsGroupsDescription;
  v3 = [(SKUISettingsGroupsDescription *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(SKUISettingsObjectStore);
    groupDescriptions = v3->_groupDescriptions;
    v3->_groupDescriptions = v4;
  }

  return v3;
}

- (SKUISettingsGroupsDescription)initWithDelegate:(id)a3 settingsContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsGroupsDescription initWithDelegate:settingsContext:];
  }

  v8 = [(SKUISettingsGroupsDescription *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_settingsContext, v7);
    v10 = [v7 clientContext];
    objc_storeWeak(&v9->_clientContext, v10);

    objc_storeWeak(&v9->_delegate, v6);
  }

  return v9;
}

- (id)createEditTransaction
{
  v2 = [(SKUISettingsGroupsDescription *)self _gatherEditableSettings];
  v3 = [[SKUISettingsEditTransaction alloc] initWithSettingDescriptions:v2];

  return v3;
}

- (void)deleteSettingAtIndexPath:(id)a3
{
  v11 = a3;
  v4 = -[SKUISettingsObjectStore visibleObjectAtIndex:](self->_groupDescriptions, "visibleObjectAtIndex:", [v11 section]);
  v5 = [v4 settingDescriptionAtIndex:{objc_msgSend(v11, "row")}];
  [v4 deleteSettingDescription:v5];
  if ([v4 isEmpty])
  {
    [(SKUISettingsObjectStore *)self->_groupDescriptions removeObject:v4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 settingsGroupsDescription:self deletedSettingsGroupAtIndex:{objc_msgSend(v11, "section")}];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 settingsGroupsDescription:self deletedSettingAtIndexPath:v11];
  }

LABEL_7:
}

- (void)deleteSettingsGroupDescription:(id)a3
{
  v5 = a3;
  if ([(SKUISettingsObjectStore *)self->_groupDescriptions objectIsVisible:?])
  {
    v4 = [v5 index];
    [(SKUISettingsObjectStore *)self->_groupDescriptions removeObject:v5];
    [(SKUISettingsGroupsDescription *)self _dispatchUpdateForSettingsGroupDescription:v5 atIndex:v4 withUpdateType:0];
  }

  else
  {
    [(SKUISettingsObjectStore *)self->_groupDescriptions removeObject:v5];
  }
}

- (void)dispatchUpdate:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 settingsGroupsDescription:self didUpdateSettingsDescription:v7];
  }
}

- (id)footerDescriptionForGroupAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:a3];
  v4 = [v3 footerDescription];

  return v4;
}

- (BOOL)hasEditableSettingDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  groupDescriptions = self->_groupDescriptions;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SKUISettingsGroupsDescription_hasEditableSettingDescriptions__block_invoke;
  v5[3] = &unk_2781FD5F8;
  v5[4] = &v6;
  [(SKUISettingsObjectStore *)groupDescriptions enumerateObjects:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__SKUISettingsGroupsDescription_hasEditableSettingDescriptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasEditableSettingDescriptions];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)headerDescriptionForGroupAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:a3];
  v4 = [v3 headerDescription];

  return v4;
}

- (void)hideSettingsGroupDescription:(id)a3
{
  v5 = a3;
  v4 = [v5 index];
  [(SKUISettingsObjectStore *)self->_groupDescriptions hideObject:v5];
  [(SKUISettingsGroupsDescription *)self _dispatchUpdateForSettingsGroupDescription:v5 atIndex:v4 withUpdateType:0];
}

- (unint64_t)numberOfSettingsInGroupAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:a3];
  v4 = [v3 numberOfSettings];

  return v4;
}

- (void)requestLayoutForWidth:(double)a3 context:(id)a4
{
  v6 = a4;
  groupDescriptions = self->_groupDescriptions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SKUISettingsGroupsDescription_requestLayoutForWidth_context___block_invoke;
  v9[3] = &unk_2781FD640;
  v11 = a3;
  v10 = v6;
  v8 = v6;
  [(SKUISettingsObjectStore *)groupDescriptions enumerateObjects:v9];
}

- (void)revealSettingsGroupDescription:(id)a3
{
  groupDescriptions = self->_groupDescriptions;
  v5 = a3;
  [(SKUISettingsObjectStore *)groupDescriptions revealObject:v5];
  -[SKUISettingsGroupsDescription _dispatchUpdateForSettingsGroupDescription:atIndex:withUpdateType:](self, "_dispatchUpdateForSettingsGroupDescription:atIndex:withUpdateType:", v5, [v5 index], 1);
}

- (id)settingDescriptionAtIndexPath:(id)a3
{
  groupDescriptions = self->_groupDescriptions;
  v4 = a3;
  v5 = -[SKUISettingsObjectStore visibleObjectAtIndex:](groupDescriptions, "visibleObjectAtIndex:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 settingDescriptionAtIndex:v6];

  return v7;
}

- (BOOL)shouldShowFooterForGroupAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:a3];
  v4 = [v3 hasFooter];

  return v4;
}

- (BOOL)shouldShowHeaderForGroupAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsObjectStore *)self->_groupDescriptions visibleObjectAtIndex:a3];
  v4 = [v3 hasHeader];

  return v4;
}

- (id)viewElementForSettingAtIndexPath:(id)a3
{
  groupDescriptions = self->_groupDescriptions;
  v4 = a3;
  v5 = -[SKUISettingsObjectStore visibleObjectAtIndex:](groupDescriptions, "visibleObjectAtIndex:", [v4 section]);
  v6 = [v4 item];

  v7 = [v5 viewElementForSettingAtIndex:v6];

  return v7;
}

- (id)owningViewControllerForSettingsGroupController:(id)a3
{
  v4 = [(SKUISettingsGroupsDescription *)self delegate];
  v5 = [v4 owningViewControllerForSettingsGroupsDescription:self];

  return v5;
}

- (id)settingsGroupController:(id)a3 viewForSettingDescription:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v5 indexPath];
    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = [v9 settingsGroupsDescription:self viewForSettingAtIndexPath:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addSettingsGroupWithViewElement:(id)a3 controller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SKUISettingsGroupDescription alloc];
  WeakRetained = objc_loadWeakRetained(&self->_settingsContext);
  v10 = [(SKUISettingsGroupDescription *)v8 initWithParent:self settingsContext:WeakRetained];

  if (v7)
  {
    [(SKUISettingsGroupDescription *)v10 setController:v7];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SKUISettingsGroupsDescription__addSettingsGroupWithViewElement_controller___block_invoke;
  v13[3] = &unk_2781FD668;
  v14 = v10;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v10;
  [v11 enumerateChildrenUsingBlock:v13];
  [(SKUISettingsObjectStore *)self->_groupDescriptions addObject:v12 hidden:[(SKUISettingsGroupDescription *)v12 hasNoVisibleSettings]];
}

void __77__SKUISettingsGroupsDescription__addSettingsGroupWithViewElement_controller___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  switch(v3)
  {
    case '0':
      [*(a1 + 32) setHeaderViewElement:v5];
      break;
    case '.':
      v4 = [*(a1 + 40) _controllerForGroupElement:*(a1 + 48)];
      [*(a1 + 40) _addSettingsGroupWithViewElement:v5 controller:v4];

      break;
    case ')':
      [*(a1 + 32) setFooterViewElement:v5];
      break;
    default:
      [*(a1 + 32) addSettingViewElement:v5];
      break;
  }
}

- (id)_controllerForGroupElement:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_controllers objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 type];
    if ([v6 isEqualToString:@"signin"])
    {
      v5 = objc_alloc_init(SKUISignInSettingsGroupController);
    }

    else
    {
      v5 = 0;
    }

    if (!self->_controllers)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      controllers = self->_controllers;
      self->_controllers = v7;
    }

    if (v5)
    {
      [(SKUISettingsGroupController *)v5 setDelegate:self];
      [(NSMapTable *)self->_controllers setObject:v5 forKey:v4];
    }
  }

  return v5;
}

- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 settingsGroupsDescription:self dismissViewController:v14 animated:v6 completion:v8];
    }
  }
}

- (void)_dispatchUpdateForSettingsGroupDescription:(id)a3 atIndex:(unint64_t)a4 withUpdateType:(int64_t)a5
{
  v8 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:a5];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
  [(SKUISettingsDescriptionUpdate *)v8 setIndexSet:v7];

  [(SKUISettingsGroupsDescription *)self dispatchUpdate:v8];
}

- (id)_gatherEditableSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  groupDescriptions = self->_groupDescriptions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SKUISettingsGroupsDescription__gatherEditableSettings__block_invoke;
  v7[3] = &unk_2781FD690;
  v5 = v3;
  v8 = v5;
  [(SKUISettingsObjectStore *)groupDescriptions enumerateObjects:v7];

  return v5;
}

void __56__SKUISettingsGroupsDescription__gatherEditableSettings__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasEditableSettingDescriptions])
  {
    v3 = [v6 editableSettingDescriptions];
    v4 = *(a1 + 32);
    v5 = [v3 allObjects];
    [v4 addObjectsFromArray:v5];
  }
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 settingsGroupsDescription:self presentViewController:v14 animated:v6 completion:v8];
    }
  }
}

- (void)_updatedEditsValid
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 settingsGroupsDescriptionDidUpdateValidity:self];
    }
  }
}

- (SKUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_clientContext);

  return WeakRetained;
}

- (SKUISettingsGroupsDescriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsGroupsDescription init]";
}

- (void)initWithDelegate:settingsContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsGroupsDescription initWithDelegate:settingsContext:]";
}

@end