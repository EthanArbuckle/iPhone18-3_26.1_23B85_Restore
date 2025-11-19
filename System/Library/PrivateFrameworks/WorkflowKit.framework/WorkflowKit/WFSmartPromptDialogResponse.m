@interface WFSmartPromptDialogResponse
+ (id)prepareDeletionAuthorizationDatabaseDataFromConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5;
+ (id)prepareSmartPromptsDatabaseDataFromConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5;
+ (id)updatedStatusFromResultCode:(unint64_t)a3;
- (WFSmartPromptDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFSmartPromptDialogResponse)initWithCoder:(id)a3;
- (WFSmartPromptDialogResponse)initWithResult:(unint64_t)a3 promptedStatesData:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSmartPromptDialogResponse

- (WFSmartPromptDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFSmartPromptDialogResponse;
  v5 = [(WFRequestAuthorizationDialogResponse *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"promptedStatesData"];
    promptedStatesData = v5->_promptedStatesData;
    v5->_promptedStatesData = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSmartPromptDialogResponse;
  v4 = a3;
  [(WFRequestAuthorizationDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFSmartPromptDialogResponse *)self promptedStatesData:v6.receiver];
  [v4 encodeObject:v5 forKey:@"promptedStatesData"];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSmartPromptDialogResponse;
  v4 = a3;
  [(WFRequestAuthorizationDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFSmartPromptDialogResponse *)self promptedStatesData:v6.receiver];
  [v4 encodeObject:v5 forKey:@"promptedStatesData"];
}

- (WFSmartPromptDialogResponse)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFSmartPromptDialogResponse;
  v5 = [(WFRequestAuthorizationDialogResponse *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"promptedStatesData"];
    promptedStatesData = v5->_promptedStatesData;
    v5->_promptedStatesData = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (WFSmartPromptDialogResponse)initWithResult:(unint64_t)a3 promptedStatesData:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WFSmartPromptDialogResponse;
  v7 = [(WFRequestAuthorizationDialogResponse *)&v12 initWithResult:a3 cancelled:0];
  if (v7)
  {
    v8 = [v6 copy];
    promptedStatesData = v7->_promptedStatesData;
    v7->_promptedStatesData = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)prepareDeletionAuthorizationDatabaseDataFromConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a1 updatedStatusFromResultCode:a4];
  v10 = [v8 deletionAuthorizationState];

  v11 = [v10 stateWithStatus:v9 count:{objc_msgSend(v10, "count")}];
  v12 = [v11 databaseDataWithError:a5];

  return v12;
}

+ (id)prepareSmartPromptsDatabaseDataFromConfiguration:(id)a3 resultCode:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 actionUUID];
  v10 = [a1 updatedStatusFromResultCode:a4];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__60781;
  v26 = __Block_byref_object_dispose__60782;
  v27 = 0;
  v11 = [v8 smartPromptStates];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__WFSmartPromptDialogResponse_prepareSmartPromptsDatabaseDataFromConfiguration_resultCode_error___block_invoke;
  v18[3] = &unk_1E837CFE0;
  v12 = v10;
  v19 = v12;
  v13 = v9;
  v20 = v13;
  v21 = &v22;
  v14 = [v11 if_compactMap:v18];

  v15 = v23[5];
  if (v15)
  {
    v16 = 0;
    *a5 = v15;
  }

  else
  {
    v16 = v14;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

id __97__WFSmartPromptDialogResponse_prepareSmartPromptsDatabaseDataFromConfiguration_resultCode_error___block_invoke(void *a1, void *a2)
{
  v3 = [a2 stateWithStatus:a1[4] actionUUID:a1[5]];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 databaseDataWithError:&obj];
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

+ (id)updatedStatusFromResultCode:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"Allow";
  }

  else
  {
    return @"Undefined";
  }
}

@end