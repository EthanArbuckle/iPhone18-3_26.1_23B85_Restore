@interface LNSymbolImage(Workflow)
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
- (id)wf_image;
@end

@implementation LNSymbolImage(Workflow)

- (id)wf_image
{
  v37 = *MEMORY[0x1E69E9840];
  configurationSpecification = [self configurationSpecification];
  platform = [configurationSpecification platform];
  v4 = [platform isEqualToString:@"UIKit"];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    UIColorClass = getUIColorClass();
    colorization = [self colorization];
    foreground = [colorization foreground];
    platformSpecificData = [foreground platformSpecificData];
    v32 = 0;
    v10 = [v5 unarchivedObjectOfClass:UIColorClass fromData:platformSpecificData error:&v32];
    v11 = v32;

    v12 = MEMORY[0x1E696ACD0];
    UIImageSymbolConfigurationClass = getUIImageSymbolConfigurationClass();
    configurationSpecification2 = [self configurationSpecification];
    platformSpecificData2 = [configurationSpecification2 platformSpecificData];
    v31 = v11;
    v16 = [v12 unarchivedObjectOfClass:UIImageSymbolConfigurationClass fromData:platformSpecificData2 error:&v31];
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
  systemName = [self systemName];
  inImage = [self inImage];
  _renderingMode = [inImage _renderingMode];
  if (_renderingMode == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = _renderingMode == 1;
  }

  v25 = [v20 systemImageNamed:systemName configuration:v18 renderingMode:v24];

  if (v10)
  {
    v26 = [MEMORY[0x1E69E09E0] colorWithCGColor:{objc_msgSend(v10, "CGColor")}];
    v27 = [v25 imageWithTintColor:v26];

    v25 = v27;
  }

  v28 = [v25 imageWithDisplayStyle:{objc_msgSend(self, "wfImageDisplayStyleFromLNImageDisplayStyle:", objc_msgSend(self, "displayStyle"))}];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  systemName = [self systemName];
  [v2 if_setObjectIfNonNil:systemName forKey:@"systemName"];

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
      self = [self initWithSymbolSystemName:v10];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end