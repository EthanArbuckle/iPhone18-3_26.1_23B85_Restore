@interface LNProperty(WFFetchValue)
- (void)wf_getValueForEntity:()WFFetchValue entityMetadata:completionHandler:;
@end

@implementation LNProperty(WFFetchValue)

- (void)wf_getValueForEntity:()WFFetchValue entityMetadata:completionHandler:
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  properties = [v9 properties];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke;
  v22[3] = &unk_1E837E080;
  v22[4] = self;
  v12 = [properties if_firstObjectPassingTest:v22];

  if (([v12 capabilities] & 2) != 0)
  {
    value = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:v9];
    v21 = 0;
    v14 = [value connectionWithError:&v21];
    v15 = v21;
    if (v14)
    {
      identifier = [self identifier];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke_161;
      v19[3] = &unk_1E837AAA0;
      v19[4] = self;
      v20 = v10;
      [v14 fetchValueForPropertyWithIdentifier:identifier entity:v8 completionHandler:v19];
    }

    else
    {
      v17 = getWFGeneralLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[LNProperty(WFFetchValue) wf_getValueForEntity:entityMetadata:completionHandler:]";
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    value = [self value];
    (*(v10 + 2))(v10, value);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end