@interface WFWritingToolsAvailabilityResource
- (WFWritingToolsAvailabilityResource)initWithDefinition:(id)a3;
- (id)actionsUnavailableError;
- (void)refreshAvailability;
@end

@implementation WFWritingToolsAvailabilityResource

- (id)actionsUnavailableError
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = WFLocalizedString(@"Writing Tools Unavailable");
  v3 = WFLocalizedString(@"Writing Tools are not currently available.");
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v10[0] = *MEMORY[0x1E696A578];
  v10[1] = v5;
  v11[0] = v2;
  v11[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v4 errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)refreshAvailability
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getWTWritingToolsControllerClass_softClass;
  v12 = getWTWritingToolsControllerClass_softClass;
  if (!getWTWritingToolsControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = __getWTWritingToolsControllerClass_block_invoke;
    v15 = &unk_1E837FAC0;
    v16 = &v9;
    __getWTWritingToolsControllerClass_block_invoke(&buf);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    if ([objc_opt_class() isAvailable])
    {
      [(WFResource *)self updateAvailability:1 withError:0];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFWritingToolsAvailabilityResource refreshAvailability]";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Failed to determine WritingToolsController availability", &buf, 0xCu);
    }
  }

  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFWritingToolsAvailabilityResource refreshAvailability]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s WritingToolsController told us WT is unavailable", &buf, 0xCu);
  }

  v7 = [(WFWritingToolsAvailabilityResource *)self actionsUnavailableError];
  [(WFResource *)self updateAvailability:0 withError:v7];

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
}

- (WFWritingToolsAvailabilityResource)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFWritingToolsAvailabilityResource;
  v3 = [(WFResource *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end