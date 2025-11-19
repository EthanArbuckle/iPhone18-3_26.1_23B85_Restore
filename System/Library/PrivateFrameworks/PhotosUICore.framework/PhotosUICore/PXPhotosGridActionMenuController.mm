@interface PXPhotosGridActionMenuController
- (BOOL)shouldAllowPerformanceOfActionType:(id)a3;
- (PXPhotosGridActionMenuController)initWithActionManagers:(id)a3;
- (PXPhotosGridActionMenuController)initWithActionManagers:(id)a3 viewModel:(id)a4;
- (id)availableActionTypes;
- (id)availableDestructiveActionTypes;
- (id)availableInternalActionTypes;
- (void)customizeActions:(id)a3 withActionTypes:(id)a4;
- (void)updateActions;
@end

@implementation PXPhotosGridActionMenuController

- (BOOL)shouldAllowPerformanceOfActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosGridActionMenuController *)self viewModel];
  v6 = [v5 currentLens];
  v7 = [v6 allowsActionType:v4];

  return v7;
}

- (void)customizeActions:(id)a3 withActionTypes:(id)a4
{
  v11 = a4;
  v7 = a3;
  v8 = [(PXPhotosGridActionMenuController *)self actionMenuCustomizer];
  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionMenuController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"actionMenuCustomizer != nil"}];
  }

  v9 = [v8 customizedActions:v7 actionTypes:v11];
  [v7 setArray:v9];
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
  v3 = [MEMORY[0x1E695DF70] array];
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [v3 addObject:*off_1E77220D0];
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
  [v3 addObjectsFromArray:v8];

  v9 = [(PXPhotosGridActionMenuController *)self additionalActionTypes];

  if (v9)
  {
    v10 = [(PXPhotosGridActionMenuController *)self additionalActionTypes];
    [v3 addObjectsFromArray:v10];
  }

  return v3;
}

- (void)updateActions
{
  v3 = [PXPhotosGridActionMenuCustomizer alloc];
  v4 = [(PXPhotosGridActionMenuController *)self viewModel];
  v5 = [(PXActionMenuController *)self excludedActionTypes];
  v6 = [(PXPhotosGridActionMenuCustomizer *)v3 initWithViewModel:v4 excludedActionTypes:v5];
  [(PXPhotosGridActionMenuController *)self setActionMenuCustomizer:v6];

  v7.receiver = self;
  v7.super_class = PXPhotosGridActionMenuController;
  [(PXActionMenuController *)&v7 updateActions];
}

- (PXPhotosGridActionMenuController)initWithActionManagers:(id)a3 viewModel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXPhotosGridActionMenuController;
  v8 = [(PXActionMenuController *)&v11 initWithActionManagers:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a4);
  }

  return v9;
}

- (PXPhotosGridActionMenuController)initWithActionManagers:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosGridActionMenuController.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXPhotosGridActionMenuController initWithActionManagers:]"}];

  abort();
}

@end