@interface SKUIFamilySettingDescription
- (SKUIFamilySettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (void)_updateViewState;
- (void)_updateWithViewState:(int64_t)state;
- (void)handleSelectionOnCompletion:(id)completion;
@end

@implementation SKUIFamilySettingDescription

- (SKUIFamilySettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  elementCopy = element;
  parentCopy = parent;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFamilySettingDescription initWithViewElement:parent:];
  }

  v11.receiver = self;
  v11.super_class = SKUIFamilySettingDescription;
  v8 = [(SKUISettingDescription *)&v11 initWithViewElement:elementCopy parent:parentCopy];
  v9 = v8;
  if (v8)
  {
    v8->_viewState = -1;
    [(SKUIFamilySettingDescription *)v8 _updateViewState];
  }

  return v9;
}

- (void)handleSelectionOnCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_viewState + 1;
  if (v5 > 3)
  {
    v6 = @"complete";
  }

  else
  {
    v6 = off_2781FB1C8[v5];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v6, @"state", 0}];
  viewElement = [(SKUISettingDescription *)self viewElement];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SKUIFamilySettingDescription_handleSelectionOnCompletion___block_invoke;
  v10[3] = &unk_2781FA448;
  v11 = completionCopy;
  v9 = completionCopy;
  [viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v7 completionBlock:v10];
}

- (void)_updateViewState
{
  objc_initWeak(&location, self);
  viewStateCoordinator = self->_viewStateCoordinator;
  if (!viewStateCoordinator)
  {
    v4 = objc_alloc_init(SKUISettingsFamilyViewStateCoordinator);
    v5 = self->_viewStateCoordinator;
    self->_viewStateCoordinator = v4;

    viewStateCoordinator = self->_viewStateCoordinator;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SKUIFamilySettingDescription__updateViewState__block_invoke;
  v6[3] = &unk_2781FB1A8;
  objc_copyWeak(&v7, &location);
  [(SKUISettingsFamilyViewStateCoordinator *)viewStateCoordinator checkSettingsFamilyViewStateWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__SKUIFamilySettingDescription__updateViewState__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SKUIFamilySettingDescription__updateViewState__block_invoke_2;
  v3[3] = &unk_2781FB180;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(v4);
}

void __48__SKUIFamilySettingDescription__updateViewState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithViewState:*(a1 + 40)];
}

- (void)_updateWithViewState:(int64_t)state
{
  self->_viewState = state;
  if ((state - 1) >= 3)
  {
    if (state)
    {
      if (state == -1 && ![(SKUISettingDescription *)self _isHidden])
      {

        [(SKUISettingDescription *)self _hideSetting];
      }
    }

    else
    {

      [(SKUISettingDescription *)self _deleteSetting];
    }
  }

  else
  {
    if ([(SKUISettingDescription *)self _isHidden])
    {
      [(SKUISettingDescription *)self _revealSetting];
    }

    [(SKUISettingDescription *)self _reloadSetting];
  }
}

- (void)initWithViewElement:parent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFamilySettingDescription initWithViewElement:parent:]";
}

@end