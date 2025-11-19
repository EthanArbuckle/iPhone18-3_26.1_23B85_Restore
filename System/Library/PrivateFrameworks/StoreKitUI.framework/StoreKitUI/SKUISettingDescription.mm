@interface SKUISettingDescription
+ (Class)viewClassForSettingDescription:(id)a3;
- (BOOL)_isHidden;
- (SKUISettingDescription)initWithViewElement:(id)a3 parent:(id)a4;
- (SKUISettingsGroupDescription)parent;
- (id)indexPath;
- (void)_deleteSetting;
- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dispatchUpdate:(id)a3;
- (void)_hideSetting;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_reloadSetting;
- (void)_revealSetting;
- (void)_setEditsValid:(BOOL)a3;
- (void)handleSelectionOnCompletion:(id)a3;
- (void)reloadWithViewElement:(id)a3 parent:(id)a4;
@end

@implementation SKUISettingDescription

- (SKUISettingDescription)initWithViewElement:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingDescription initWithViewElement:parent:];
  }

  v12.receiver = self;
  v12.super_class = SKUISettingDescription;
  v9 = [(SKUISettingDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_parent, v8);
    objc_storeStrong(&v10->_viewElement, a3);
  }

  return v10;
}

+ (Class)viewClassForSettingDescription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _viewClassForSettingDescription:v3];

  return v4;
}

- (void)handleSelectionOnCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  viewElement = self->_viewElement;
  if (viewElement)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__SKUISettingDescription_handleSelectionOnCompletion___block_invoke;
    v7[3] = &unk_2781FA448;
    v8 = v4;
    [(SKUIViewElement *)viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v7];
  }

  else
  {
    v4[2](v4);
  }
}

- (id)indexPath
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v4 = [WeakRetained indexPathForSettingDescription:self];

  return v4;
}

- (void)reloadWithViewElement:(id)a3 parent:(id)a4
{
  v6 = a3;
  objc_storeWeak(&self->_parent, a4);
  viewElement = self->_viewElement;
  self->_viewElement = v6;
}

- (void)_deleteSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained deleteSettingDescription:self];
}

- (void)_dismissViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _dismissViewController:v9 animated:v5 completion:v8];
}

- (void)_dispatchUpdate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained dispatchUpdate:v4];
}

- (void)_hideSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained hideSettingDescription:self];
}

- (BOOL)_isHidden
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  LOBYTE(v2) = [WeakRetained isSettingDescriptionHidden:v2];

  return v2;
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained _presentViewController:v9 animated:v5 completion:v8];
}

- (void)_reloadSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained reloadSettingDescription:self];
}

- (void)_revealSetting
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  [WeakRetained revealSettingDescription:self];
}

- (void)_setEditsValid:(BOOL)a3
{
  if (self->_editsValid != a3)
  {
    self->_editsValid = a3;
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    [WeakRetained _updatedEditsValid];
  }
}

- (SKUISettingsGroupDescription)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)initWithViewElement:parent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingDescription initWithViewElement:parent:]";
}

@end