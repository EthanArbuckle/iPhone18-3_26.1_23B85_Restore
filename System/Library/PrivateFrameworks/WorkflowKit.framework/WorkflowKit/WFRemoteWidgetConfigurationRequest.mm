@interface WFRemoteWidgetConfigurationRequest
+ (id)defaultLNOptionForParameterRequestWithActionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name;
+ (id)fromSecureData:(id)data;
+ (id)lnActionMetadataRequestWithActionIdentifier:(id)identifier serializedParameters:(id)parameters;
+ (id)lnOptionsForParameterRequesttWithActionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name searchTerm:(id)term;
+ (id)localizedIntentRequestWithIntent:(id)intent;
+ (id)optionsForParameterRequestWithIntent:(id)intent parameterName:(id)name searchTerm:(id)term;
- (Class)responseClass;
- (WFRemoteWidgetConfigurationRequest)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationRequest)initWithRequestType:(int64_t)type intent:(id)intent actionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name searchTerm:(id)term;
- (id)description;
- (id)requestTypeDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRemoteWidgetConfigurationRequest

- (WFRemoteWidgetConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFRemoteWidgetConfigurationRequest *)self init];
  if (v5)
  {
    v20 = [coderCopy decodeIntegerForKey:@"requestType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    v19 = INTypedIntentWithIntent();

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"serializedParameters"];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchTerm"];
    v5 = [(WFRemoteWidgetConfigurationRequest *)v5 initWithRequestType:v20 intent:v19 actionIdentifier:v7 serializedParameters:v15 parameterName:v16 searchTerm:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestType = self->_requestType;
  coderCopy = coder;
  [coderCopy encodeInteger:requestType forKey:@"requestType"];
  intent = self->_intent;
  v6 = INIntentWithTypedIntent();
  [coderCopy encodeObject:v6 forKey:@"intent"];

  [coderCopy encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeObject:self->_serializedParameters forKey:@"serializedParameters"];
  [coderCopy encodeObject:self->_parameterName forKey:@"parameterName"];
  [coderCopy encodeObject:self->_searchTerm forKey:@"searchTerm"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  requestTypeDescription = [(WFRemoteWidgetConfigurationRequest *)self requestTypeDescription];
  v5 = [v3 stringWithFormat:@"Request type: %@, response class: %@", requestTypeDescription, -[WFRemoteWidgetConfigurationRequest responseClass](self, "responseClass")];

  return v5;
}

- (id)requestTypeDescription
{
  requestType = [(WFRemoteWidgetConfigurationRequest *)self requestType];
  if (requestType > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E8377020[requestType];
  }
}

- (Class)responseClass
{
  requestType = [(WFRemoteWidgetConfigurationRequest *)self requestType];
  if (requestType > 4)
  {
    v3 = off_1E836F0E0;
  }

  else
  {
    v3 = off_1E8376FF8[requestType];
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (WFRemoteWidgetConfigurationRequest)initWithRequestType:(int64_t)type intent:(id)intent actionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name searchTerm:(id)term
{
  intentCopy = intent;
  identifierCopy = identifier;
  parametersCopy = parameters;
  nameCopy = name;
  termCopy = term;
  if (type <= 1 && !intentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteWidgetConfigurationRequest.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v26.receiver = self;
  v26.super_class = WFRemoteWidgetConfigurationRequest;
  v18 = [(WFRemoteWidgetConfigurationRequest *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestType = type;
    objc_storeStrong(&v18->_intent, intent);
    objc_storeStrong(&v19->_actionIdentifier, identifier);
    objc_storeStrong(&v19->_serializedParameters, parameters);
    objc_storeStrong(&v19->_parameterName, name);
    objc_storeStrong(&v19->_searchTerm, term);
    v20 = v19;
  }

  return v19;
}

+ (id)fromSecureData:(id)data
{
  dataCopy = data;
  v4 = [objc_opt_class() bs_secureDecodedFromData:dataCopy];

  return v4;
}

+ (id)lnOptionsForParameterRequesttWithActionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name searchTerm:(id)term
{
  termCopy = term;
  nameCopy = name;
  parametersCopy = parameters;
  identifierCopy = identifier;
  v13 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:4 intent:0 actionIdentifier:identifierCopy serializedParameters:parametersCopy parameterName:nameCopy searchTerm:termCopy];

  return v13;
}

+ (id)defaultLNOptionForParameterRequestWithActionIdentifier:(id)identifier serializedParameters:(id)parameters parameterName:(id)name
{
  nameCopy = name;
  parametersCopy = parameters;
  identifierCopy = identifier;
  v10 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:3 intent:0 actionIdentifier:identifierCopy serializedParameters:parametersCopy parameterName:nameCopy searchTerm:0];

  return v10;
}

+ (id)lnActionMetadataRequestWithActionIdentifier:(id)identifier serializedParameters:(id)parameters
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  v7 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:2 intent:0 actionIdentifier:identifierCopy serializedParameters:parametersCopy parameterName:0 searchTerm:0];

  return v7;
}

+ (id)optionsForParameterRequestWithIntent:(id)intent parameterName:(id)name searchTerm:(id)term
{
  termCopy = term;
  nameCopy = name;
  intentCopy = intent;
  v10 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:1 intent:intentCopy actionIdentifier:0 serializedParameters:0 parameterName:nameCopy searchTerm:termCopy];

  return v10;
}

+ (id)localizedIntentRequestWithIntent:(id)intent
{
  intentCopy = intent;
  v4 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:0 intent:intentCopy actionIdentifier:0 serializedParameters:0 parameterName:0 searchTerm:0];

  return v4;
}

@end