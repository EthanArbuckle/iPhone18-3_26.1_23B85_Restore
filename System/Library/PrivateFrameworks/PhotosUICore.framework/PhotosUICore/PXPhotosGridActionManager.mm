@interface PXPhotosGridActionManager
+ (id)actionsWithActionPerformers;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)supportsActionType:(id)type;
- (PXPhotosGridActionManager)init;
- (PXPhotosGridActionManager)initWithViewModel:(id)model;
- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate;
- (PXPhotosViewModel)viewModel;
- (id)actionPerformerForActionType:(id)type;
- (id)activityTypeForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)standardActionForActionType:(id)type;
- (void)_handleBarButtonItem:(id)item;
@end

@implementation PXPhotosGridActionManager

- (PXPhotosViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (PXPhotosGridActionPerformerInformationProviderDelegate)userInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfoDelegate);

  return WeakRetained;
}

- (id)activityTypeForActionType:(id)type
{
  v3 = [(PXPhotosGridActionManager *)self actionPerformerForActionType:type];
  v4 = v3;
  if (v3)
  {
    activityType = [v3 activityType];
  }

  else
  {
    activityType = 0;
  }

  return activityType;
}

- (id)standardActionForActionType:(id)type
{
  v3 = [(PXPhotosGridActionManager *)self actionPerformerForActionType:type];
  v4 = v3;
  if (v3)
  {
    menuElement = [v3 menuElement];
  }

  else
  {
    menuElement = 0;
  }

  return menuElement;
}

- (void)_handleBarButtonItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    actionTypeByBarButtonItem = [(PXPhotosGridActionManager *)self actionTypeByBarButtonItem];
    v7 = [actionTypeByBarButtonItem objectForKey:itemCopy];

    v6 = [(PXPhotosGridActionManager *)self actionPerformerForActionType:v7];
    [v6 performActionWithCompletionHandler:0];
  }
}

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  v5 = [(PXPhotosGridActionManager *)self actionPerformerForActionType:typeCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedTitleForUseCase:1];
    v8 = [v6 barButtonItemWithTarget:self action:sel__handleBarButtonItem_];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v7 style:0 target:self action:sel__handleBarButtonItem_];
    }

    title = [v8 title];

    if (!title)
    {
      [v8 setTitle:v7];
    }

    if (v8)
    {
      actionTypeByBarButtonItem = [(PXPhotosGridActionManager *)self actionTypeByBarButtonItem];
      [actionTypeByBarButtonItem setObject:typeCopy forKey:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  typeCopy = type;
  actionPerformersByType = [(PXPhotosGridActionManager *)self actionPerformersByType];
  v8 = objc_alloc([actionPerformersByType objectForKeyedSubscript:typeCopy]);
  viewModel = [(PXPhotosGridActionManager *)self viewModel];
  v10 = [v8 initWithViewModel:viewModel actionType:typeCopy];

  v11 = [v10 localizedTitleForUseCase:case];

  return v11;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if ([(PXPhotosGridActionManager *)self canPerformActionType:typeCopy])
  {
    actionPerformersByType = [(PXPhotosGridActionManager *)self actionPerformersByType];
    v6 = objc_alloc([actionPerformersByType objectForKeyedSubscript:typeCopy]);
    viewModel = [(PXPhotosGridActionManager *)self viewModel];
    v8 = [v6 initWithViewModel:viewModel actionType:typeCopy];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [v8 setDelegate:performerDelegate];

    userInfoDelegate = [(PXPhotosGridActionManager *)self userInfoDelegate];
    [v8 setUserInfoDelegate:userInfoDelegate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)supportsActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  actionPerformersByType = [(PXPhotosGridActionManager *)self actionPerformersByType];
  v6 = [actionPerformersByType objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosGridActionManager *)self viewModel];
  v6 = viewModel;
  v7 = 0;
  if (typeCopy && viewModel)
  {
    if (-[PXActionManager isActionTypeAllowed:](self, "isActionTypeAllowed:", typeCopy) && ([v6 currentLens], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "allowsActionType:", typeCopy), v8, v9) && (-[PXPhotosGridActionManager actionPerformersByType](self, "actionPerformersByType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "objectForKeyedSubscript:", typeCopy), v10, v11))
    {
      v7 = [v11 canPerformActionType:typeCopy withViewModel:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PXPhotosGridActionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionManager.m" lineNumber:194 description:{@"%s is not available as initializer", "-[PXPhotosGridActionManager init]"}];

  abort();
}

- (PXPhotosGridActionManager)initWithViewModel:(id)model
{
  v14[36] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXPhotosGridActionManager;
  v5 = [(PXPhotosGridActionManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, modelCopy);
    v13[0] = *off_1E77220F0;
    v14[0] = objc_opt_class();
    v13[1] = *off_1E77220D8;
    v14[1] = objc_opt_class();
    v13[2] = *off_1E77220E0;
    v14[2] = objc_opt_class();
    v13[3] = *off_1E77220E8;
    v14[3] = objc_opt_class();
    v13[4] = *off_1E7722178;
    v14[4] = objc_opt_class();
    v13[5] = *off_1E7722100;
    v14[5] = objc_opt_class();
    v13[6] = *off_1E77221D0;
    v14[6] = objc_opt_class();
    v13[7] = *off_1E77221A0;
    v14[7] = objc_opt_class();
    v13[8] = *off_1E77220C0;
    v14[8] = objc_opt_class();
    v13[9] = *off_1E7722120;
    v14[9] = objc_opt_class();
    v13[10] = *off_1E7722110;
    v14[10] = objc_opt_class();
    v13[11] = *off_1E7722170;
    v14[11] = objc_opt_class();
    v13[12] = *off_1E7722190;
    v14[12] = objc_opt_class();
    v13[13] = *off_1E7722130;
    v14[13] = objc_opt_class();
    v13[14] = *off_1E7722158;
    v14[14] = objc_opt_class();
    v13[15] = *off_1E7722128;
    v14[15] = objc_opt_class();
    v13[16] = *off_1E7722198;
    v14[16] = objc_opt_class();
    v13[17] = *off_1E7722188;
    v14[17] = objc_opt_class();
    v13[18] = *off_1E7722148;
    v14[18] = objc_opt_class();
    v13[19] = *off_1E7722180;
    v14[19] = objc_opt_class();
    v13[20] = *off_1E7722138;
    v14[20] = objc_opt_class();
    v13[21] = *off_1E7722150;
    v14[21] = objc_opt_class();
    v13[22] = *off_1E7722160;
    v14[22] = objc_opt_class();
    v13[23] = *off_1E77220F8;
    v14[23] = objc_opt_class();
    v13[24] = *off_1E7722108;
    v14[24] = objc_opt_class();
    v13[25] = *off_1E77221A8;
    v14[25] = objc_opt_class();
    v13[26] = *off_1E77221B0;
    v14[26] = objc_opt_class();
    v13[27] = *off_1E7722118;
    v14[27] = objc_opt_class();
    v13[28] = *off_1E77220D0;
    v14[28] = objc_opt_class();
    v13[29] = *off_1E7722168;
    v14[29] = objc_opt_class();
    v13[30] = *off_1E7722140;
    v14[30] = objc_opt_class();
    v13[31] = *off_1E77220B8;
    v14[31] = objc_opt_class();
    v13[32] = *off_1E77220C8;
    v14[32] = objc_opt_class();
    v13[33] = *off_1E77221C8;
    v14[33] = objc_opt_class();
    v13[34] = *off_1E77221C0;
    v14[34] = objc_opt_class();
    v13[35] = *off_1E77221B8;
    v14[35] = objc_opt_class();
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:36];
    actionPerformersByType = v6->_actionPerformersByType;
    v6->_actionPerformersByType = v7;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v6->_actionTypeByBarButtonItem;
    v6->_actionTypeByBarButtonItem = weakToStrongObjectsMapTable;
  }

  return v6;
}

+ (id)actionsWithActionPerformers
{
  if (actionsWithActionPerformers_onceToken_154627 != -1)
  {
    dispatch_once(&actionsWithActionPerformers_onceToken_154627, &__block_literal_global_154628);
  }

  v3 = actionsWithActionPerformers_actionsWithPerformers_154629;

  return v3;
}

void __56__PXPhotosGridActionManager_actionsWithActionPerformers__block_invoke()
{
  v22[36] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *off_1E77220D8;
  v22[0] = *off_1E77220F0;
  v22[1] = v1;
  v2 = *off_1E77220E8;
  v22[2] = *off_1E77220E0;
  v22[3] = v2;
  v3 = *off_1E7722100;
  v22[4] = *off_1E7722178;
  v22[5] = v3;
  v4 = *off_1E77221A0;
  v22[6] = *off_1E77221D0;
  v22[7] = v4;
  v5 = *off_1E7722120;
  v22[8] = *off_1E77220C0;
  v22[9] = v5;
  v6 = *off_1E7722158;
  v22[10] = *off_1E7722130;
  v22[11] = v6;
  v7 = *off_1E7722128;
  v22[12] = *off_1E7722110;
  v22[13] = v7;
  v8 = *off_1E7722170;
  v22[14] = *off_1E7722198;
  v22[15] = v8;
  v9 = *off_1E7722188;
  v22[16] = *off_1E7722190;
  v22[17] = v9;
  v10 = *off_1E7722180;
  v22[18] = *off_1E7722148;
  v22[19] = v10;
  v11 = *off_1E7722150;
  v22[20] = *off_1E7722138;
  v22[21] = v11;
  v12 = *off_1E77220F8;
  v22[22] = *off_1E7722160;
  v22[23] = v12;
  v13 = *off_1E77221A8;
  v22[24] = *off_1E7722108;
  v22[25] = v13;
  v14 = *off_1E7722118;
  v22[26] = *off_1E77221B0;
  v22[27] = v14;
  v15 = *off_1E7722168;
  v22[28] = *off_1E77220D0;
  v22[29] = v15;
  v16 = *off_1E77220B8;
  v22[30] = *off_1E7722140;
  v22[31] = v16;
  v17 = *off_1E77221C8;
  v22[32] = *off_1E77220C8;
  v22[33] = v17;
  v18 = *off_1E77221B8;
  v22[34] = *off_1E77221C0;
  v22[35] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:36];
  v20 = [v0 setWithArray:v19];
  v21 = actionsWithActionPerformers_actionsWithPerformers_154629;
  actionsWithActionPerformers_actionsWithPerformers_154629 = v20;
}

@end