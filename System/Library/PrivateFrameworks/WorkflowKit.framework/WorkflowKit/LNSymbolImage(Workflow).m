@interface LNSymbolImage(Workflow)
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
- (id)wf_image;
@end

@implementation LNSymbolImage(Workflow)

- (id)wf_image
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationSpecification];
  v3 = [v2 platform];
  v4 = [v3 isEqualToString:@"UIKit"];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    UIColorClass = getUIColorClass();
    v7 = [a1 colorization];
    v8 = [v7 foreground];
    v9 = [v8 platformSpecificData];
    v32 = 0;
    v10 = [v5 unarchivedObjectOfClass:UIColorClass fromData:v9 error:&v32];
    v11 = v32;

    v12 = MEMORY[0x1E696ACD0];
    UIImageSymbolConfigurationClass = getUIImageSymbolConfigurationClass();
    v14 = [a1 configurationSpecification];
    v15 = [v14 platformSpecificData];
    v31 = v11;
    v16 = [v12 unarchivedObjectOfClass:UIImageSymbolConfigurationClass fromData:v15 error:&v31];
    v17 = v31;

    if (v16)
    {
      v18 = [MEMORY[0x1E69E0B68] configurationWithUIImageSymbolConfiguration:v16];
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "[LNSymbolImage(Workflow) wf_image]";
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Failed to decode symbol configuration or tintColor data: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = 0;
    v10 = 0;
    v17 = 0;
  }

  v20 = MEMORY[0x1E69E0B58];
  v21 = [a1 systemName];
  v22 = [a1 inImage];
  v23 = [v22 _renderingMode];
  if (v23 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v23 == 1;
  }

  v25 = [v20 systemImageNamed:v21 configuration:v18 renderingMode:v24];

  if (v10)
  {
    v26 = [MEMORY[0x1E69E09E0] colorWithCGColor:{objc_msgSend(v10, "CGColor")}];
    v27 = [v25 imageWithTintColor:v26];

    v25 = v27;
  }

  v28 = [v25 imageWithDisplayStyle:{objc_msgSend(a1, "wfImageDisplayStyleFromLNImageDisplayStyle:", objc_msgSend(a1, "displayStyle"))}];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  v3 = [a1 systemName];
  [v2 if_setObjectIfNonNil:v3 forKey:@"systemName"];

  return v2;
}

- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);

  if (v6)
  {
    v7 = [v6 objectForKey:@"systemName"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    if ([v10 length])
    {
      a1 = [a1 initWithSymbolSystemName:v10];
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end