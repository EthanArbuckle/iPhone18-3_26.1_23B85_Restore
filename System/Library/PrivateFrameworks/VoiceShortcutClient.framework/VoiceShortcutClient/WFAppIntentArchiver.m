@interface WFAppIntentArchiver
- (WFAppIntentArchiver)initWithIdentifier:(id)a3 actionMetadata:(id)a4;
- (id)archiveAction:(id)a3 error:(id *)a4;
- (id)resolvedActionMetadataWithError:(id *)a3;
- (id)unarchiveActionFromData:(id)a3 error:(id *)a4;
- (void)archiveAction:(id)a3 completion:(id)a4;
- (void)unarchiveActionFromData:(id)a3 completion:(id)a4;
@end

@implementation WFAppIntentArchiver

- (id)resolvedActionMetadataWithError:(id *)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = [(WFAppIntentArchiver *)self actionMetadata];

  if (v5)
  {
    v6 = [(WFAppIntentArchiver *)self actionMetadata];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69ACF60]) initWithOptions:2];
    v8 = [(WFAppIntentArchiver *)self actionIdentifier];
    v9 = [v8 bundleIdentifier];

    v10 = [(WFAppIntentArchiver *)self actionIdentifier];
    v11 = [v10 actionIdentifier];

    v12 = [(WFAppIntentArchiver *)self actionIdentifier];
    v23[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v14 = [v7 actionsWithFullyQualifiedIdentifiers:v13 error:a3];
    v15 = [v14 objectForKeyedSubscript:v9];
    v6 = [v15 objectForKeyedSubscript:v11];

    [(WFAppIntentArchiver *)self setActionMetadata:v6];
    if (a3 && !v6 && !*a3)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69ACC58];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"Intent not found";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a3 = [v16 errorWithDomain:v17 code:9004 userInfo:v18];
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)unarchiveActionFromData:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0;
  v7 = a4;
  v8 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = +[VCVoiceShortcutClient standardClient];
    [v10 unarchiveActionFromData:v6 withActionMetadata:v8 completion:v7];
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
    v7[2](v7, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)archiveAction:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0;
  v7 = a4;
  v8 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = +[VCVoiceShortcutClient standardClient];
    [v10 archiveAction:v6 withActionMetadata:v8 completion:v7];
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
    v7[2](v7, 0, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)unarchiveActionFromData:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0;
  v7 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = +[VCVoiceShortcutClient standardClient];
    v10 = [v9 unarchiveActionFromData:v6 withActionMetadata:v7 error:a4];
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

    if (a4)
    {
      WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to unarchive App Intent", v8);
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)archiveAction:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0;
  v7 = [(WFAppIntentArchiver *)self resolvedActionMetadataWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = +[VCVoiceShortcutClient standardClient];
    v10 = [v9 archiveAction:v6 withActionMetadata:v7 error:a4];
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

    if (a4)
    {
      WFAppIntentArchiverErrorWithLocalizedErrorDescription(@"Failed to archive App Intent", v8);
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (WFAppIntentArchiver)initWithIdentifier:(id)a3 actionMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFAppIntentArchiver;
  v8 = [(WFAppIntentArchiver *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    actionIdentifier = v8->_actionIdentifier;
    v8->_actionIdentifier = v9;

    v11 = [v7 copy];
    actionMetadata = v8->_actionMetadata;
    v8->_actionMetadata = v11;

    v13 = v8;
  }

  return v8;
}

@end