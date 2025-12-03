@interface WFAppIntentArchiver
- (WFAppIntentArchiver)initWithIdentifier:(id)identifier actionMetadata:(id)metadata;
- (id)archiveAction:(id)action error:(id *)error;
- (id)resolvedActionMetadataWithError:(id *)error;
- (id)unarchiveActionFromData:(id)data error:(id *)error;
- (void)archiveAction:(id)action completion:(id)completion;
- (void)unarchiveActionFromData:(id)data completion:(id)completion;
@end

@implementation WFAppIntentArchiver

- (id)resolvedActionMetadataWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  actionMetadata = [(WFAppIntentArchiver *)self actionMetadata];

  if (actionMetadata)
  {
    actionMetadata2 = [(WFAppIntentArchiver *)self actionMetadata];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:2];
    actionIdentifier = [(WFAppIntentArchiver *)self actionIdentifier];
    bundleIdentifier = [actionIdentifier bundleIdentifier];

    actionIdentifier2 = [(WFAppIntentArchiver *)self actionIdentifier];
    v10ActionIdentifier = [actionIdentifier2 actionIdentifier];

    actionIdentifier3 = [(WFAppIntentArchiver *)self actionIdentifier];
    v23[0] = actionIdentifier3;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v14 = [v7 actionsWithFullyQualifiedIdentifiers:v13 error:error];
    v15 = [v14 objectForKeyedSubscript:bundleIdentifier];
    actionMetadata2 = [v15 objectForKeyedSubscript:v10ActionIdentifier];

    [(WFAppIntentArchiver *)self setActionMetadata:actionMetadata2];
    if (error && !actionMetadata2 && !*error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69ACC58];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"Intent not found";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [v16 errorWithDomain:v17 code:9004 userInfo:v18];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return actionMetadata2;
}

- (void)unarchiveActionFromData:(id)data completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13 = 0;
  completionCopy = completion;
  v8 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = +[VCVoiceShortcutClient standardClient];
    [v10 unarchiveActionFromData:dataCopy withActionMetadata:v8 completion:completionCopy];
  }

  else
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[WFAppIntentArchiver unarchiveActionFromData:completion:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Could not retrieve Action Metadata for unarchived action", buf, 0xCu);
    }

    v10 = WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to unarchive App Intent", v9);
    completionCopy[2](completionCopy, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)archiveAction:(id)action completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v13 = 0;
  completionCopy = completion;
  v8 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = +[VCVoiceShortcutClient standardClient];
    [v10 archiveAction:actionCopy withActionMetadata:v8 completion:completionCopy];
  }

  else
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[WFAppIntentArchiver archiveAction:completion:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Could not retrieve Action Metadata for archived action", buf, 0xCu);
    }

    v10 = WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to archive App Intent", v9);
    completionCopy[2](completionCopy, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)unarchiveActionFromData:(id)data error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v14 = 0;
  v7 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = +[VCVoiceShortcutClient standardClient];
    v10 = [v9 unarchiveActionFromData:dataCopy withActionMetadata:v7 error:error];
  }

  else
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[WFAppIntentArchiver unarchiveActionFromData:error:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Could not retrieve Action Metadata for unarchived action", buf, 0xCu);
    }

    if (error)
    {
      WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to unarchive App Intent", v8);
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)archiveAction:(id)action error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v14 = 0;
  v7 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = +[VCVoiceShortcutClient standardClient];
    v10 = [v9 archiveAction:actionCopy withActionMetadata:v7 error:error];
  }

  else
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[WFAppIntentArchiver archiveAction:error:]";
      _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_DEFAULT, "%s AppIntent Archiving: Could not retrieve Action Metadata for archived action", buf, 0xCu);
    }

    if (error)
    {
      WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to archive App Intent", v8);
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (WFAppIntentArchiver)initWithIdentifier:(id)identifier actionMetadata:(id)metadata
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = WFAppIntentArchiver;
  v8 = [(WFAppIntentArchiver *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    actionIdentifier = v8->_actionIdentifier;
    v8->_actionIdentifier = v9;

    v11 = [metadataCopy copy];
    actionMetadata = v8->_actionMetadata;
    v8->_actionMetadata = v11;

    v13 = v8;
  }

  return v8;
}

@end