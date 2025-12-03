@interface PXPhotosGridActionMenuController
- (BOOL)shouldAllowPerformanceOfActionType:(id)type;
- (PXPhotosGridActionMenuController)initWithActionManagers:(id)managers;
- (PXPhotosGridActionMenuController)initWithActionManagers:(id)managers viewModel:(id)model;
- (id)availableActionTypes;
- (id)availableDestructiveActionTypes;
- (id)availableInternalActionTypes;
- (void)customizeActions:(id)actions withActionTypes:(id)types;
- (void)updateActions;
@end

@implementation PXPhotosGridActionMenuController

- (BOOL)shouldAllowPerformanceOfActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXPhotosGridActionMenuController *)self viewModel];
  currentLens = [viewModel currentLens];
  v7 = [currentLens allowsActionType:typeCopy];

  return v7;
}

- (void)customizeActions:(id)actions withActionTypes:(id)types
{
  typesCopy = types;
  actionsCopy = actions;
  actionMenuCustomizer = [(PXPhotosGridActionMenuController *)self actionMenuCustomizer];
  if (!actionMenuCustomizer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionMenuController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"actionMenuCustomizer != nil"}];
  }

  v9 = [actionMenuCustomizer customizedActions:actionsCopy actionTypes:typesCopy];
  [actionsCopy setArray:v9];
}

- (id)availableDestructiveActionTypes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *off_1E7721D78;
  v5[0] = *off_1E7721C78;
  v5[1] = v2;
  v5[2] = *off_1E7721D88;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (id)availableInternalActionTypes
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *off_1E7721D18;
  v6[0] = *off_1E7721C38;
  v6[1] = v2;
  v3 = *off_1E7721CB0;
  v6[2] = *off_1E7721CE8;
  v6[3] = v3;
  v6[4] = *off_1E7721D58;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

- (id)availableActionTypes
{
  v12[9] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [array addObject:*off_1E77220D0];
  }

  v4 = *off_1E7721D70;
  v12[0] = *off_1E7721C30;
  v12[1] = v4;
  v5 = *off_1E7721D60;
  v12[2] = *off_1E7721CC8;
  v12[3] = v5;
  v6 = *off_1E7721CD0;
  v12[4] = *off_1E7721D40;
  v12[5] = v6;
  v7 = *off_1E7721CF8;
  v12[6] = *off_1E7721CF0;
  v12[7] = v7;
  v12[8] = *off_1E7721D80;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:9];
  [array addObjectsFromArray:v8];

  additionalActionTypes = [(PXPhotosGridActionMenuController *)self additionalActionTypes];

  if (additionalActionTypes)
  {
    additionalActionTypes2 = [(PXPhotosGridActionMenuController *)self additionalActionTypes];
    [array addObjectsFromArray:additionalActionTypes2];
  }

  return array;
}

- (void)updateActions
{
  v3 = [PXPhotosGridActionMenuCustomizer alloc];
  viewModel = [(PXPhotosGridActionMenuController *)self viewModel];
  excludedActionTypes = [(PXActionMenuController *)self excludedActionTypes];
  v6 = [(PXPhotosGridActionMenuCustomizer *)v3 initWithViewModel:viewModel excludedActionTypes:excludedActionTypes];
  [(PXPhotosGridActionMenuController *)self setActionMenuCustomizer:v6];

  v7.receiver = self;
  v7.super_class = PXPhotosGridActionMenuController;
  [(PXActionMenuController *)&v7 updateActions];
}

- (PXPhotosGridActionMenuController)initWithActionManagers:(id)managers viewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXPhotosGridActionMenuController;
  v8 = [(PXActionMenuController *)&v11 initWithActionManagers:managers];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
  }

  return v9;
}

- (PXPhotosGridActionMenuController)initWithActionManagers:(id)managers
{
  managersCopy = managers;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionMenuController.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXPhotosGridActionMenuController initWithActionManagers:]"}];

  abort();
}

@end