@interface WFSmartPromptApprovalResult
- (WFSmartPromptApprovalResult)initWithAllowedStates:(id)a3 deniedStates:(id)a4 undefinedStates:(id)a5 restrictedStates:(id)a6 actionUUID:(id)a7 previousAttributions:(id)a8;
- (WFSmartPromptApprovalResult)initWithCoder:(id)a3;
- (id)resultByAddingDatabaseResult:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSmartPromptApprovalResult

- (WFSmartPromptApprovalResult)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"allowedStates"];

  v9 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"deniedStates"];

  v13 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"undefinedStates"];

  v17 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v19 = [v17 setWithArray:v18];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"restrictedStates"];

  v21 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v22 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"previousAttributions"];

  v23 = [(WFSmartPromptApprovalResult *)self initWithAllowedStates:v8 deniedStates:v12 undefinedStates:v16 restrictedStates:v20 actionUUID:v21 previousAttributions:v22];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSmartPromptApprovalResult *)self allowedStates];
  [v4 encodeObject:v5 forKey:@"allowedStates"];

  v6 = [(WFSmartPromptApprovalResult *)self deniedStates];
  [v4 encodeObject:v6 forKey:@"deniedStates"];

  v7 = [(WFSmartPromptApprovalResult *)self undefinedStates];
  [v4 encodeObject:v7 forKey:@"undefinedStates"];

  v8 = [(WFSmartPromptApprovalResult *)self restrictedStates];
  [v4 encodeObject:v8 forKey:@"restrictedStates"];

  v9 = [(WFSmartPromptApprovalResult *)self actionUUID];
  [v4 encodeObject:v9 forKey:@"actionUUID"];

  v10 = [(WFSmartPromptApprovalResult *)self previousAttributions];
  [v4 encodeObject:v10 forKey:@"previousAttributions"];
}

- (id)resultByAddingDatabaseResult:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFSmartPromptApprovalResult *)self previousAttributions];
  if (v5)
  {
    v6 = [v4 previousAttribution];

    if (v6)
    {
      v7 = MEMORY[0x1E6996D38];
      v8 = [(WFSmartPromptApprovalResult *)self previousAttributions];
      v39[0] = v8;
      v9 = MEMORY[0x1E6996D38];
      v10 = [v4 previousAttribution];
      v38 = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v12 = [v9 attributionSetWithAttributions:v11];
      v39[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      v14 = [v7 attributionSetByMergingAttributionSets:v13];

      v5 = v11;
LABEL_6:

      v36 = v14;
      goto LABEL_8;
    }
  }

  v15 = [v4 previousAttribution];

  if (v15)
  {
    v16 = MEMORY[0x1E6996D38];
    v8 = [v4 previousAttribution];
    v37 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v14 = [v16 attributionSetWithAttributions:v10];
    goto LABEL_6;
  }

  v36 = v5;
LABEL_8:
  v17 = self;
  v35 = [(WFSmartPromptApprovalResult *)v17 allowedStates];
  v34 = [v4 allowedStates];
  v18 = [v35 arrayByAddingObjectsFromArray:v34];
  v33 = [(WFSmartPromptApprovalResult *)v17 deniedStates];
  v32 = [v4 deniedStates];
  v19 = [v33 arrayByAddingObjectsFromArray:v32];
  v20 = [(WFSmartPromptApprovalResult *)v17 undefinedStates];
  v21 = [v4 undefinedStates];
  [v20 arrayByAddingObjectsFromArray:v21];
  v22 = v4;
  v23 = v31 = v4;
  v24 = [(WFSmartPromptApprovalResult *)v17 restrictedStates];
  v25 = [v22 restrictedStates];
  v26 = [v24 arrayByAddingObjectsFromArray:v25];
  v27 = [(WFSmartPromptApprovalResult *)v17 actionUUID];
  v30 = [(WFSmartPromptApprovalResult *)v17 initWithAllowedStates:v18 deniedStates:v19 undefinedStates:v23 restrictedStates:v26 actionUUID:v27 previousAttributions:v36];

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

- (WFSmartPromptApprovalResult)initWithAllowedStates:(id)a3 deniedStates:(id)a4 undefinedStates:(id)a5 restrictedStates:(id)a6 actionUUID:(id)a7 previousAttributions:(id)a8
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = WFSmartPromptApprovalResult;
  v18 = [(WFSmartPromptApprovalResult *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_allowedStates, a3);
    objc_storeStrong(&v19->_deniedStates, a4);
    objc_storeStrong(&v19->_undefinedStates, a5);
    objc_storeStrong(&v19->_restrictedStates, a6);
    objc_storeStrong(&v19->_actionUUID, a7);
    objc_storeStrong(&v19->_previousAttributions, a8);
    v20 = v19;
  }

  return v19;
}

@end