@interface WFRemoteWidgetConfigurationRequest
+ (id)defaultLNOptionForParameterRequestWithActionIdentifier:(id)a3 serializedParameters:(id)a4 parameterName:(id)a5;
+ (id)fromSecureData:(id)a3;
+ (id)lnActionMetadataRequestWithActionIdentifier:(id)a3 serializedParameters:(id)a4;
+ (id)lnOptionsForParameterRequesttWithActionIdentifier:(id)a3 serializedParameters:(id)a4 parameterName:(id)a5 searchTerm:(id)a6;
+ (id)localizedIntentRequestWithIntent:(id)a3;
+ (id)optionsForParameterRequestWithIntent:(id)a3 parameterName:(id)a4 searchTerm:(id)a5;
- (Class)responseClass;
- (WFRemoteWidgetConfigurationRequest)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationRequest)initWithRequestType:(int64_t)a3 intent:(id)a4 actionIdentifier:(id)a5 serializedParameters:(id)a6 parameterName:(id)a7 searchTerm:(id)a8;
- (id)description;
- (id)requestTypeDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFRemoteWidgetConfigurationRequest

- (WFRemoteWidgetConfigurationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteWidgetConfigurationRequest *)self init];
  if (v5)
  {
    v20 = [v4 decodeIntegerForKey:@"requestType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    v19 = INTypedIntentWithIntent();

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"serializedParameters"];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterName"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchTerm"];
    v5 = [(WFRemoteWidgetConfigurationRequest *)v5 initWithRequestType:v20 intent:v19 actionIdentifier:v7 serializedParameters:v15 parameterName:v16 searchTerm:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestType = self->_requestType;
  v7 = a3;
  [v7 encodeInteger:requestType forKey:@"requestType"];
  intent = self->_intent;
  v6 = INIntentWithTypedIntent();
  [v7 encodeObject:v6 forKey:@"intent"];

  [v7 encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [v7 encodeObject:self->_serializedParameters forKey:@"serializedParameters"];
  [v7 encodeObject:self->_parameterName forKey:@"parameterName"];
  [v7 encodeObject:self->_searchTerm forKey:@"searchTerm"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRemoteWidgetConfigurationRequest *)self requestTypeDescription];
  v5 = [v3 stringWithFormat:@"Request type: %@, response class: %@", v4, -[WFRemoteWidgetConfigurationRequest responseClass](self, "responseClass")];

  return v5;
}

- (id)requestTypeDescription
{
  v2 = [(WFRemoteWidgetConfigurationRequest *)self requestType];
  if (v2 > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E8377020[v2];
  }
}

- (Class)responseClass
{
  v2 = [(WFRemoteWidgetConfigurationRequest *)self requestType];
  if (v2 > 4)
  {
    v3 = off_1E836F0E0;
  }

  else
  {
    v3 = off_1E8376FF8[v2];
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (WFRemoteWidgetConfigurationRequest)initWithRequestType:(int64_t)a3 intent:(id)a4 actionIdentifier:(id)a5 serializedParameters:(id)a6 parameterName:(id)a7 searchTerm:(id)a8
{
  v15 = a4;
  v25 = a5;
  v24 = a6;
  v16 = a7;
  v17 = a8;
  if (a3 <= 1 && !v15)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFRemoteWidgetConfigurationRequest.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v26.receiver = self;
  v26.super_class = WFRemoteWidgetConfigurationRequest;
  v18 = [(WFRemoteWidgetConfigurationRequest *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestType = a3;
    objc_storeStrong(&v18->_intent, a4);
    objc_storeStrong(&v19->_actionIdentifier, a5);
    objc_storeStrong(&v19->_serializedParameters, a6);
    objc_storeStrong(&v19->_parameterName, a7);
    objc_storeStrong(&v19->_searchTerm, a8);
    v20 = v19;
  }

  return v19;
}

+ (id)fromSecureData:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() bs_secureDecodedFromData:v3];

  return v4;
}

+ (id)lnOptionsForParameterRequesttWithActionIdentifier:(id)a3 serializedParameters:(id)a4 parameterName:(id)a5 searchTerm:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:4 intent:0 actionIdentifier:v12 serializedParameters:v11 parameterName:v10 searchTerm:v9];

  return v13;
}

+ (id)defaultLNOptionForParameterRequestWithActionIdentifier:(id)a3 serializedParameters:(id)a4 parameterName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:3 intent:0 actionIdentifier:v9 serializedParameters:v8 parameterName:v7 searchTerm:0];

  return v10;
}

+ (id)lnActionMetadataRequestWithActionIdentifier:(id)a3 serializedParameters:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:2 intent:0 actionIdentifier:v6 serializedParameters:v5 parameterName:0 searchTerm:0];

  return v7;
}

+ (id)optionsForParameterRequestWithIntent:(id)a3 parameterName:(id)a4 searchTerm:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:1 intent:v9 actionIdentifier:0 serializedParameters:0 parameterName:v8 searchTerm:v7];

  return v10;
}

+ (id)localizedIntentRequestWithIntent:(id)a3
{
  v3 = a3;
  v4 = [[WFRemoteWidgetConfigurationRequest alloc] initWithRequestType:0 intent:v3 actionIdentifier:0 serializedParameters:0 parameterName:0 searchTerm:0];

  return v4;
}

@end