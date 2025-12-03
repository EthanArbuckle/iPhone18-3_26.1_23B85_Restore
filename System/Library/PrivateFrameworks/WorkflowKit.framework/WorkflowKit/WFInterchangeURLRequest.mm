@interface WFInterchangeURLRequest
+ (id)requestWithURL:(id)l;
+ (id)requestWithURL:(id)l fromSourceApplication:(id)application;
+ (id)requestWithURL:(id)l scheme:(id)scheme userInterface:(id)interface bundleIdentifier:(id)identifier successHandler:(id)handler failureHandler:(id)failureHandler;
- (NSDictionary)parameters;
- (NSString)action;
- (NSString)sourceName;
- (NSString)subAction;
- (WFInterchangeURLRequest)initWithURL:(id)l scheme:(id)scheme userInterface:(id)interface successHandler:(id)handler failureHandler:(id)failureHandler bundleIdentifier:(id)identifier;
- (WFUserInterfaceHost)userInterface;
- (id)description;
- (id)opener;
- (void)parseActions;
@end

@implementation WFInterchangeURLRequest

- (WFUserInterfaceHost)userInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterface);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFInterchangeURLRequest;
  v4 = [(WFInterchangeURLRequest *)&v8 description];
  v5 = [(WFInterchangeURLRequest *)self URL];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (NSString)sourceName
{
  sourceName = self->_sourceName;
  if (sourceName)
  {
    v3 = sourceName;
  }

  else
  {
    parameters = [(WFInterchangeURLRequest *)self parameters];
    v3 = [parameters objectForKey:@"x-source"];
  }

  return v3;
}

- (NSDictionary)parameters
{
  parameters = self->_parameters;
  if (!parameters)
  {
    v4 = [(WFInterchangeURLRequest *)self URL];
    dc_queryDictionary = [v4 dc_queryDictionary];
    v6 = self->_parameters;
    self->_parameters = dc_queryDictionary;

    parameters = self->_parameters;
  }

  return parameters;
}

- (void)parseActions
{
  v15 = [(WFInterchangeURLRequest *)self URL];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  pathComponents = [v15 pathComponents];
  v5 = [v3 initWithArray:pathComponents];

  [v5 removeObject:@"/"];
  scheme = [v15 scheme];
  if (([scheme isEqualToString:@"http"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"https"))
  {
    firstObject = [v5 firstObject];
    v8 = 1;
  }

  else
  {
    firstObject = [v15 host];
    v8 = 0;
  }

  action = self->_action;
  self->_action = firstObject;

  if ([v5 count] <= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v5 objectAtIndex:v8];
  }

  subAction = self->_subAction;
  self->_subAction = v10;

  if ([(NSString *)self->_action isEqualToString:@"x-callback-url"])
  {
    self->_callbackRequest = 1;
    objc_storeStrong(&self->_action, self->_subAction);
    v12 = v8 + 1;
    if ([v5 count] <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v5 objectAtIndex:v12];
    }

    v14 = self->_subAction;
    self->_subAction = v13;
  }
}

- (NSString)subAction
{
  subAction = self->_subAction;
  if (!subAction)
  {
    [(WFInterchangeURLRequest *)self parseActions];
    subAction = self->_subAction;
  }

  return subAction;
}

- (NSString)action
{
  action = self->_action;
  if (!action)
  {
    [(WFInterchangeURLRequest *)self parseActions];
    action = self->_action;
  }

  return action;
}

- (id)opener
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__WFInterchangeURLRequest_opener__block_invoke;
  aBlock[3] = &unk_1E83784D8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __33__WFInterchangeURLRequest_opener__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E6996CA8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = [v7 sharedContext];
  v11 = [*(a1 + 32) userInterface];
  [v12 openURL:v10 withBundleIdentifier:v9 userInterface:v11 completionHandler:v8];
}

- (WFInterchangeURLRequest)initWithURL:(id)l scheme:(id)scheme userInterface:(id)interface successHandler:(id)handler failureHandler:(id)failureHandler bundleIdentifier:(id)identifier
{
  lCopy = l;
  schemeCopy = scheme;
  interfaceCopy = interface;
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  identifierCopy = identifier;
  v21 = [(WFInterchangeURLRequest *)self init];
  if (v21)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v21->_uniqueID;
    v21->_uniqueID = uUID;

    objc_storeStrong(&v21->_URL, l);
    objc_storeStrong(&v21->_scheme, scheme);
    objc_storeWeak(&v21->_userInterface, interfaceCopy);
    v24 = [handlerCopy copy];
    successHandler = v21->_successHandler;
    v21->_successHandler = v24;

    v26 = [failureHandlerCopy copy];
    failureHandler = v21->_failureHandler;
    v21->_failureHandler = v26;

    v28 = [identifierCopy copy];
    bundleIdentifier = v21->_bundleIdentifier;
    v21->_bundleIdentifier = v28;

    v21->_callbackRequest = [schemeCopy isCallbackScheme];
    v21->_deferCompletionUntilReturn = [schemeCopy isCallbackScheme];
    v30 = v21;
  }

  return v21;
}

+ (id)requestWithURL:(id)l scheme:(id)scheme userInterface:(id)interface bundleIdentifier:(id)identifier successHandler:(id)handler failureHandler:(id)failureHandler
{
  failureHandlerCopy = failureHandler;
  handlerCopy = handler;
  identifierCopy = identifier;
  interfaceCopy = interface;
  schemeCopy = scheme;
  lCopy = l;
  v20 = [[self alloc] initWithURL:lCopy scheme:schemeCopy userInterface:interfaceCopy successHandler:handlerCopy failureHandler:failureHandlerCopy bundleIdentifier:identifierCopy];

  return v20;
}

+ (id)requestWithURL:(id)l fromSourceApplication:(id)application
{
  applicationCopy = application;
  lCopy = l;
  v8 = [[self alloc] initWithURL:lCopy scheme:0 userInterface:0 successHandler:0 failureHandler:0 bundleIdentifier:applicationCopy];

  return v8;
}

+ (id)requestWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy scheme:0 userInterface:0 successHandler:0 failureHandler:0 bundleIdentifier:0];

  return v5;
}

@end