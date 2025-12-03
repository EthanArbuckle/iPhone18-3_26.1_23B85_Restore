@interface WFSmartPromptApprovalResult
- (WFSmartPromptApprovalResult)initWithAllowedStates:(id)states deniedStates:(id)deniedStates undefinedStates:(id)undefinedStates restrictedStates:(id)restrictedStates actionUUID:(id)d previousAttributions:(id)attributions;
- (WFSmartPromptApprovalResult)initWithCoder:(id)coder;
- (id)resultByAddingDatabaseResult:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSmartPromptApprovalResult

- (WFSmartPromptApprovalResult)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"allowedStates"];

  v9 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"deniedStates"];

  v13 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"undefinedStates"];

  v17 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v19 = [v17 setWithArray:v18];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"restrictedStates"];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousAttributions"];

  v23 = [(WFSmartPromptApprovalResult *)self initWithAllowedStates:v8 deniedStates:v12 undefinedStates:v16 restrictedStates:v20 actionUUID:v21 previousAttributions:v22];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowedStates = [(WFSmartPromptApprovalResult *)self allowedStates];
  [coderCopy encodeObject:allowedStates forKey:@"allowedStates"];

  deniedStates = [(WFSmartPromptApprovalResult *)self deniedStates];
  [coderCopy encodeObject:deniedStates forKey:@"deniedStates"];

  undefinedStates = [(WFSmartPromptApprovalResult *)self undefinedStates];
  [coderCopy encodeObject:undefinedStates forKey:@"undefinedStates"];

  restrictedStates = [(WFSmartPromptApprovalResult *)self restrictedStates];
  [coderCopy encodeObject:restrictedStates forKey:@"restrictedStates"];

  actionUUID = [(WFSmartPromptApprovalResult *)self actionUUID];
  [coderCopy encodeObject:actionUUID forKey:@"actionUUID"];

  previousAttributions = [(WFSmartPromptApprovalResult *)self previousAttributions];
  [coderCopy encodeObject:previousAttributions forKey:@"previousAttributions"];
}

- (id)resultByAddingDatabaseResult:(id)result
{
  v39[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  previousAttributions = [(WFSmartPromptApprovalResult *)self previousAttributions];
  if (previousAttributions)
  {
    previousAttribution = [resultCopy previousAttribution];

    if (previousAttribution)
    {
      v7 = MEMORY[0x1E6996D38];
      previousAttributions2 = [(WFSmartPromptApprovalResult *)self previousAttributions];
      v39[0] = previousAttributions2;
      v9 = MEMORY[0x1E6996D38];
      previousAttribution2 = [resultCopy previousAttribution];
      v38 = previousAttribution2;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v12 = [v9 attributionSetWithAttributions:v11];
      v39[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      v14 = [v7 attributionSetByMergingAttributionSets:v13];

      previousAttributions = v11;
LABEL_6:

      v36 = v14;
      goto LABEL_8;
    }
  }

  previousAttribution3 = [resultCopy previousAttribution];

  if (previousAttribution3)
  {
    v16 = MEMORY[0x1E6996D38];
    previousAttributions2 = [resultCopy previousAttribution];
    v37 = previousAttributions2;
    previousAttribution2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v14 = [v16 attributionSetWithAttributions:previousAttribution2];
    goto LABEL_6;
  }

  v36 = previousAttributions;
LABEL_8:
  selfCopy = self;
  allowedStates = [(WFSmartPromptApprovalResult *)selfCopy allowedStates];
  allowedStates2 = [resultCopy allowedStates];
  v18 = [allowedStates arrayByAddingObjectsFromArray:allowedStates2];
  deniedStates = [(WFSmartPromptApprovalResult *)selfCopy deniedStates];
  deniedStates2 = [resultCopy deniedStates];
  v19 = [deniedStates arrayByAddingObjectsFromArray:deniedStates2];
  undefinedStates = [(WFSmartPromptApprovalResult *)selfCopy undefinedStates];
  undefinedStates2 = [resultCopy undefinedStates];
  [undefinedStates arrayByAddingObjectsFromArray:undefinedStates2];
  v22 = resultCopy;
  v23 = v31 = resultCopy;
  restrictedStates = [(WFSmartPromptApprovalResult *)selfCopy restrictedStates];
  restrictedStates2 = [v22 restrictedStates];
  v26 = [restrictedStates arrayByAddingObjectsFromArray:restrictedStates2];
  actionUUID = [(WFSmartPromptApprovalResult *)selfCopy actionUUID];
  v30 = [(WFSmartPromptApprovalResult *)selfCopy initWithAllowedStates:v18 deniedStates:v19 undefinedStates:v23 restrictedStates:v26 actionUUID:actionUUID previousAttributions:v36];

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

- (WFSmartPromptApprovalResult)initWithAllowedStates:(id)states deniedStates:(id)deniedStates undefinedStates:(id)undefinedStates restrictedStates:(id)restrictedStates actionUUID:(id)d previousAttributions:(id)attributions
{
  statesCopy = states;
  deniedStatesCopy = deniedStates;
  undefinedStatesCopy = undefinedStates;
  restrictedStatesCopy = restrictedStates;
  dCopy = d;
  attributionsCopy = attributions;
  v25.receiver = self;
  v25.super_class = WFSmartPromptApprovalResult;
  v18 = [(WFSmartPromptApprovalResult *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_allowedStates, states);
    objc_storeStrong(&v19->_deniedStates, deniedStates);
    objc_storeStrong(&v19->_undefinedStates, undefinedStates);
    objc_storeStrong(&v19->_restrictedStates, restrictedStates);
    objc_storeStrong(&v19->_actionUUID, d);
    objc_storeStrong(&v19->_previousAttributions, attributions);
    v20 = v19;
  }

  return v19;
}

@end