@interface WFSmartPromptDialogResponse
+ (id)prepareDeletionAuthorizationDatabaseDataFromConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error;
+ (id)prepareSmartPromptsDatabaseDataFromConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error;
+ (id)updatedStatusFromResultCode:(unint64_t)code;
- (WFSmartPromptDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFSmartPromptDialogResponse)initWithCoder:(id)coder;
- (WFSmartPromptDialogResponse)initWithResult:(unint64_t)result promptedStatesData:(id)data;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSmartPromptDialogResponse

- (WFSmartPromptDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFSmartPromptDialogResponse;
  v5 = [(WFRequestAuthorizationDialogResponse *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"promptedStatesData"];
    promptedStatesData = v5->_promptedStatesData;
    v5->_promptedStatesData = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSmartPromptDialogResponse;
  coderCopy = coder;
  [(WFRequestAuthorizationDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFSmartPromptDialogResponse *)self promptedStatesData:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"promptedStatesData"];
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSmartPromptDialogResponse;
  coderCopy = coder;
  [(WFRequestAuthorizationDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSmartPromptDialogResponse *)self promptedStatesData:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"promptedStatesData"];
}

- (WFSmartPromptDialogResponse)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFSmartPromptDialogResponse;
  v5 = [(WFRequestAuthorizationDialogResponse *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"promptedStatesData"];
    promptedStatesData = v5->_promptedStatesData;
    v5->_promptedStatesData = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (WFSmartPromptDialogResponse)initWithResult:(unint64_t)result promptedStatesData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = WFSmartPromptDialogResponse;
  v7 = [(WFRequestAuthorizationDialogResponse *)&v12 initWithResult:result cancelled:0];
  if (v7)
  {
    v8 = [dataCopy copy];
    promptedStatesData = v7->_promptedStatesData;
    v7->_promptedStatesData = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)prepareDeletionAuthorizationDatabaseDataFromConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error
{
  configurationCopy = configuration;
  v9 = [self updatedStatusFromResultCode:code];
  deletionAuthorizationState = [configurationCopy deletionAuthorizationState];

  v11 = [deletionAuthorizationState stateWithStatus:v9 count:{objc_msgSend(deletionAuthorizationState, "count")}];
  v12 = [v11 databaseDataWithError:error];

  return v12;
}

+ (id)prepareSmartPromptsDatabaseDataFromConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error
{
  configurationCopy = configuration;
  actionUUID = [configurationCopy actionUUID];
  v10 = [self updatedStatusFromResultCode:code];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__60781;
  v26 = __Block_byref_object_dispose__60782;
  v27 = 0;
  smartPromptStates = [configurationCopy smartPromptStates];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__WFSmartPromptDialogResponse_prepareSmartPromptsDatabaseDataFromConfiguration_resultCode_error___block_invoke;
  v18[3] = &unk_1E837CFE0;
  v12 = v10;
  v19 = v12;
  v13 = actionUUID;
  v20 = v13;
  v21 = &v22;
  v14 = [smartPromptStates if_compactMap:v18];

  v15 = v23[5];
  if (v15)
  {
    v16 = 0;
    *error = v15;
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

+ (id)updatedStatusFromResultCode:(unint64_t)code
{
  if (code == 1)
  {
    return @"Allow";
  }

  else
  {
    return @"Undefined";
  }
}

@end