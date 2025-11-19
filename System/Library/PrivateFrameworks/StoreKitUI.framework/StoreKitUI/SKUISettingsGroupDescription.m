@interface SKUISettingsGroupDescription
- (BOOL)hasEditableSettingDescriptions;
- (SKUIClientContext)clientContext;
- (SKUISettingsGroupController)controller;
- (SKUISettingsGroupDescription)initWithParent:(id)a3 settingsContext:(id)a4;
- (SKUISettingsGroupsDescription)parent;
- (id)description;
- (id)editableSettingDescriptions;
- (id)indexPathForSettingDescription:(id)a3;
- (id)newSiblingWithClass:(Class)a3;
- (id)viewElementForSettingAtIndex:(unint64_t)a3;
- (unint64_t)index;
- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dispatchUpdateForSettingDescription:(id)a3 updateType:(int64_t)a4;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updatedEditsValid;
- (void)addSettingDescription:(id)a3;
- (void)addSettingViewElement:(id)a3;
- (void)addSibling:(id)a3;
- (void)deleteSettingDescription:(id)a3;
- (void)deleteSettingsGroup;
- (void)dispatchUpdate:(id)a3;
- (void)hideSettingDescription:(id)a3;
- (void)hideSettingsGroup;
- (void)recycle;
- (void)requestLayoutForWidth:(double)a3 context:(id)a4;
- (void)revealSettingDescription:(id)a3;
- (void)revealSettingsGroup;
- (void)setFooterViewElement:(id)a3;
- (void)setHeaderViewElement:(id)a3;
@end

@implementation SKUISettingsGroupDescription

- (SKUISettingsGroupDescription)initWithParent:(id)a3 settingsContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsGroupDescription initWithParent:settingsContext:];
  }

  v15.receiver = self;
  v15.super_class = SKUISettingsGroupDescription;
  v8 = [(SKUISettingsGroupDescription *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parent, v6);
    objc_storeWeak(&v9->_settingsContext, v7);
    footerDescription = v9->_footerDescription;
    v9->_footerDescription = 0;

    headerDescription = v9->_headerDescription;
    v9->_headerDescription = 0;

    v12 = objc_alloc_init(SKUISettingsObjectStore);
    settingDescriptions = v9->_settingDescriptions;
    v9->_settingDescriptions = v12;
  }

  return v9;
}

- (void)addSettingDescription:(id)a3
{
  v9 = a3;
  -[SKUISettingsObjectStore addObject:hidden:](self->_settingDescriptions, "addObject:hidden:", v9, [v9 _initiallyHidden]);
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_controller);
    [v5 attachSettingDescription:v9];
  }

  if ([objc_opt_class() allowsEdit])
  {
    editableSettings = self->_editableSettings;
    if (!editableSettings)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
      v8 = self->_editableSettings;
      self->_editableSettings = v7;

      editableSettings = self->_editableSettings;
    }

    [(NSMutableSet *)editableSettings addObject:v9];
  }
}

- (void)addSettingViewElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_settingsContext);
  v6 = [WeakRetained dequeueReusableSettingDescriptionForViewElement:v4 parent:self];

  [(SKUISettingsGroupDescription *)self addSettingDescription:v6];
}

- (void)addSibling:(id)a3
{
  v4 = a3;
  [(SKUISettingsGroupDescription *)self addSettingDescription:v4];
  v7 = [v4 indexPath];

  if (v7)
  {
    v5 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:4];
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    [(SKUISettingsDescriptionUpdate *)v5 setIndexPaths:v6];

    [(SKUISettingsGroupDescription *)self dispatchUpdate:v5];
  }
}

- (SKUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v3 = [WeakRetained clientContext];

  return v3;
}

- (void)deleteSettingsGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained deleteSettingsGroupDescription:self];
}

- (void)deleteSettingDescription:(id)a3
{
  v4 = a3;
  v8 = [(SKUISettingsGroupDescription *)self indexPathForSettingDescription:v4];
  [(SKUISettingsObjectStore *)self->_settingDescriptions removeObject:v4];
  [(NSMutableSet *)self->_editableSettings removeObject:v4];

  if ([(SKUISettingsObjectStore *)self->_settingDescriptions numberOfObjects])
  {
    if ([(SKUISettingsObjectStore *)self->_settingDescriptions numberOfVisibleObjects])
    {
      v5 = v8;
      if (!v8)
      {
        goto LABEL_8;
      }

      v6 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:3];
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
      [(SKUISettingsDescriptionUpdate *)v6 setIndexPaths:v7];

      [(SKUISettingsGroupDescription *)self dispatchUpdate:v6];
    }

    else
    {
      [(SKUISettingsGroupDescription *)self hideSettingsGroup];
    }
  }

  else
  {
    [(SKUISettingsGroupDescription *)self deleteSettingsGroup];
  }

  v5 = v8;
LABEL_8:
}

- (void)dispatchUpdate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained dispatchUpdate:v4];
}

- (id)editableSettingDescriptions
{
  v2 = [(NSMutableSet *)self->_editableSettings copy];

  return v2;
}

- (BOOL)hasEditableSettingDescriptions
{
  editableSettings = self->_editableSettings;
  if (editableSettings)
  {
    LOBYTE(editableSettings) = [(NSMutableSet *)editableSettings count]!= 0;
  }

  return editableSettings;
}

- (void)hideSettingsGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained hideSettingsGroupDescription:self];
}

- (void)hideSettingDescription:(id)a3
{
  v4 = a3;
  v8 = [(SKUISettingsGroupDescription *)self indexPathForSettingDescription:v4];
  [(SKUISettingsObjectStore *)self->_settingDescriptions hideObject:v4];

  if ([(SKUISettingsObjectStore *)self->_settingDescriptions numberOfVisibleObjects])
  {
    v5 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:3];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    [(SKUISettingsDescriptionUpdate *)v6 setIndexPaths:v7];

    [(SKUISettingsGroupDescription *)self dispatchUpdate:v6];
  }

  else
  {
    [(SKUISettingsGroupDescription *)self hideSettingsGroup];
  }

  v5 = v8;
LABEL_6:
}

- (unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v4 = [WeakRetained indexOfSettingsGroupDescription:self];

  return v4;
}

- (id)indexPathForSettingDescription:(id)a3
{
  v4 = [(SKUISettingsObjectStore *)self->_settingDescriptions indexOfVisibleObject:a3];
  v5 = [(SKUISettingsGroupDescription *)self index];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v5];
  }

  return v6;
}

- (id)newSiblingWithClass:(Class)a3
{
  v4 = [a3 alloc];

  return [v4 initWithViewElement:0 parent:self];
}

- (void)recycle
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsContext);
  v3 = [(SKUISettingsObjectStore *)self->_settingDescriptions allObjects];
  [WeakRetained recycleSettingDescriptions:v3];
}

- (void)requestLayoutForWidth:(double)a3 context:(id)a4
{
  v6 = a4;
  if ([(SKUISettingsGroupDescription *)self hasFooter])
  {
    v7 = [SKUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:self->_footerDescription];
    [(objc_class *)v7 prefetchResourcesForSettingsHeaderFooterDescription:self->_footerDescription reason:0 context:v6];
    [(objc_class *)v7 requestLayoutForSettingsHeaderFooterDescription:self->_footerDescription width:v6 context:a3];
  }

  if ([(SKUISettingsGroupDescription *)self hasHeader])
  {
    v8 = [SKUISettingsHeaderFooterDescription viewClassForSettingsHeaderFooterDescription:self->_headerDescription];
    [(objc_class *)v8 prefetchResourcesForSettingsHeaderFooterDescription:self->_headerDescription reason:0 context:v6];
    [(objc_class *)v8 requestLayoutForSettingsHeaderFooterDescription:self->_headerDescription width:v6 context:a3];
  }

  settingDescriptions = self->_settingDescriptions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SKUISettingsGroupDescription_requestLayoutForWidth_context___block_invoke;
  v11[3] = &unk_2781FAF00;
  v12 = v6;
  v13 = a3;
  v10 = v6;
  [(SKUISettingsObjectStore *)settingDescriptions enumerateObjects:v11];
}

void __62__SKUISettingsGroupDescription_requestLayoutForWidth_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [SKUISettingDescription viewClassForSettingDescription:v4];
  [(objc_class *)v3 prefetchResourcesForSettingDescription:v4 reason:0 context:*(a1 + 32)];
  [(objc_class *)v3 requestLayoutForSettingDescription:v4 width:*(a1 + 32) context:*(a1 + 40)];
}

- (void)revealSettingDescription:(id)a3
{
  v5 = a3;
  v4 = [(SKUISettingsObjectStore *)self->_settingDescriptions numberOfVisibleObjects];
  [(SKUISettingsObjectStore *)self->_settingDescriptions revealObject:v5];
  if (v4)
  {
    [(SKUISettingsGroupDescription *)self _dispatchUpdateForSettingDescription:v5 updateType:4];
  }

  else
  {
    [(SKUISettingsGroupDescription *)self revealSettingsGroup];
  }
}

- (void)revealSettingsGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained revealSettingsGroupDescription:self];
}

- (void)setFooterViewElement:(id)a3
{
  v4 = [SKUISettingsHeaderFooterDescription settingsHeaderFooterDescriptionWithViewElement:a3];
  footerDescription = self->_footerDescription;
  self->_footerDescription = v4;

  MEMORY[0x2821F96F8](v4, footerDescription);
}

- (void)setHeaderViewElement:(id)a3
{
  v4 = [SKUISettingsHeaderFooterDescription settingsHeaderFooterDescriptionWithViewElement:a3];
  headerDescription = self->_headerDescription;
  self->_headerDescription = v4;

  MEMORY[0x2821F96F8](v4, headerDescription);
}

- (id)viewElementForSettingAtIndex:(unint64_t)a3
{
  v3 = [(SKUISettingsGroupDescription *)self settingDescriptionAtIndex:a3];
  v4 = [v3 viewElement];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v11.receiver = self;
  v11.super_class = SKUISettingsGroupDescription;
  v4 = [(SKUISettingsGroupDescription *)&v11 description];
  v5 = [v3 initWithFormat:@"%@: [", v4];

  settingDescriptions = self->_settingDescriptions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SKUISettingsGroupDescription_description__block_invoke;
  v9[3] = &unk_2781FAF28;
  v7 = v5;
  v10 = v7;
  [(SKUISettingsObjectStore *)settingDescriptions enumerateObjects:v9];
  [v7 appendString:@"\n]"];

  return v7;
}

void __43__SKUISettingsGroupDescription_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendFormat:@"\n %@", v3];
}

- (void)_dispatchUpdateForSettingDescription:(id)a3 updateType:(int64_t)a4
{
  v6 = [(SKUISettingsGroupDescription *)self indexPathForSettingDescription:a3];
  if (v6)
  {
    v9 = v6;
    v7 = [[SKUISettingsDescriptionUpdate alloc] initWithUpdateType:a4];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v9];
    [(SKUISettingsDescriptionUpdate *)v7 setIndexPaths:v8];

    [(SKUISettingsGroupDescription *)self dispatchUpdate:v7];
    v6 = v9;
  }
}

- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _dismissViewController:v9 animated:v5 completion:v8];
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _presentViewController:v9 animated:v5 completion:v8];
}

- (void)_updatedEditsValid
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _updatedEditsValid];
}

- (SKUISettingsGroupController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (SKUISettingsGroupsDescription)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)initWithParent:settingsContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsGroupDescription initWithParent:settingsContext:]";
}

@end