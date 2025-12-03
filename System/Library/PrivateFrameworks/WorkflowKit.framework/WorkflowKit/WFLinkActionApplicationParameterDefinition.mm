@interface WFLinkActionApplicationParameterDefinition
- (WFLinkActionApplicationParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionApplicationParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = value;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if ([v5 length])
  {
    v6 = [WFAppDescriptorParameterState alloc];
    v7 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v5];
    v8 = [(WFVariableSubstitutableParameterState *)v6 initWithValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v22 = valueCopy;
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleIdentifier = [v22 bundleIdentifier];
    v21 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:bundleIdentifier];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v8 value];
    bundleIdentifier = [value bundleIdentifier];

    if (bundleIdentifier)
    {
      v11 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:bundleIdentifier];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (WFLinkActionApplicationParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC888];
  metadataCopy = metadata;
  applicationValueType = [v4 applicationValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionApplicationParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:applicationValueType parameterMetadata:metadataCopy];

  return v7;
}

@end