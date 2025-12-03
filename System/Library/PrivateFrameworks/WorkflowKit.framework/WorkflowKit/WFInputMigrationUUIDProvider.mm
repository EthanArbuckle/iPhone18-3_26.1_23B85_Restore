@interface WFInputMigrationUUIDProvider
- (WFInputMigrationUUIDProvider)initWithAction:(id)action atPosition:(unint64_t)position;
- (id)generateOutputUUIDForAction:(id)action;
@end

@implementation WFInputMigrationUUIDProvider

- (id)generateOutputUUIDForAction:(id)action
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  action = [(WFInputMigrationUUIDProvider *)self action];

  if (action != actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInputMigrationUUIDProvider.m" lineNumber:59 description:{@"[%@] should be initialized with the UUID requested action %@", objc_opt_class(), actionCopy}];
  }

  position = [(WFInputMigrationUUIDProvider *)self position];
  v8 = actionCopy;
  if (!v8)
  {
    __assert_rtn("WFActionBootDeterministicID", "WFInputMigrationUUIDProvider.m", 24, "action != nil");
  }

  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  identifier = [v9 identifier];
  v12 = [v10 combineContentsOfPropertyListObject:identifier];

  v13 = [v10 combineInteger:position];
  v23 = 0;
  v14 = WFKernelBootTime(&v23);
  v15 = v23;
  v16 = [v10 combineInteger:v14];
  [v10 finalize];
  if (v15)
  {
    v17 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v25 = "WFActionBootDeterministicID";
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s Failed to get kernel boot time for deterministic output ID generation: %@", buf, 0x16u);
    }
  }

  v18 = WFUUIDv4FromInteger();
  uUIDString = [v18 UUIDString];

  v20 = *MEMORY[0x1E69E9840];

  return uUIDString;
}

- (WFInputMigrationUUIDProvider)initWithAction:(id)action atPosition:(unint64_t)position
{
  actionCopy = action;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInputMigrationUUIDProvider.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v14.receiver = self;
  v14.super_class = WFInputMigrationUUIDProvider;
  v9 = [(WFInputMigrationUUIDProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    v10->_position = position;
    v11 = v10;
  }

  return v10;
}

@end