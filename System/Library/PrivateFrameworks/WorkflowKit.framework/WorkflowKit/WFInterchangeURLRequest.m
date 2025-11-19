@interface WFInterchangeURLRequest
+ (id)requestWithURL:(id)a3;
+ (id)requestWithURL:(id)a3 fromSourceApplication:(id)a4;
+ (id)requestWithURL:(id)a3 scheme:(id)a4 userInterface:(id)a5 bundleIdentifier:(id)a6 successHandler:(id)a7 failureHandler:(id)a8;
- (NSDictionary)parameters;
- (NSString)action;
- (NSString)sourceName;
- (NSString)subAction;
- (WFInterchangeURLRequest)initWithURL:(id)a3 scheme:(id)a4 userInterface:(id)a5 successHandler:(id)a6 failureHandler:(id)a7 bundleIdentifier:(id)a8;
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
    v4 = [(WFInterchangeURLRequest *)self parameters];
    v3 = [v4 objectForKey:@"x-source"];
  }

  return v3;
}

- (NSDictionary)parameters
{
  parameters = self->_parameters;
  if (!parameters)
  {
    v4 = [(WFInterchangeURLRequest *)self URL];
    v5 = [v4 dc_queryDictionary];
    v6 = self->_parameters;
    self->_parameters = v5;

    parameters = self->_parameters;
  }

  return parameters;
}

- (void)parseActions
{
  v15 = [(WFInterchangeURLRequest *)self URL];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v15 pathComponents];
  v5 = [v3 initWithArray:v4];

  [v5 removeObject:@"/"];
  v6 = [v15 scheme];
  if (([v6 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"https"))
  {
    v7 = [v5 firstObject];
    v8 = 1;
  }

  else
  {
    v7 = [v15 host];
    v8 = 0;
  }

  action = self->_action;
  self->_action = v7;

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

- (WFInterchangeURLRequest)initWithURL:(id)a3 scheme:(id)a4 userInterface:(id)a5 successHandler:(id)a6 failureHandler:(id)a7 bundleIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(WFInterchangeURLRequest *)self init];
  if (v21)
  {
    v22 = [MEMORY[0x1E696AFB0] UUID];
    uniqueID = v21->_uniqueID;
    v21->_uniqueID = v22;

    objc_storeStrong(&v21->_URL, a3);
    objc_storeStrong(&v21->_scheme, a4);
    objc_storeWeak(&v21->_userInterface, v17);
    v24 = [v18 copy];
    successHandler = v21->_successHandler;
    v21->_successHandler = v24;

    v26 = [v19 copy];
    failureHandler = v21->_failureHandler;
    v21->_failureHandler = v26;

    v28 = [v20 copy];
    bundleIdentifier = v21->_bundleIdentifier;
    v21->_bundleIdentifier = v28;

    v21->_callbackRequest = [v16 isCallbackScheme];
    v21->_deferCompletionUntilReturn = [v16 isCallbackScheme];
    v30 = v21;
  }

  return v21;
}

+ (id)requestWithURL:(id)a3 scheme:(id)a4 userInterface:(id)a5 bundleIdentifier:(id)a6 successHandler:(id)a7 failureHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] initWithURL:v19 scheme:v18 userInterface:v17 successHandler:v15 failureHandler:v14 bundleIdentifier:v16];

  return v20;
}

+ (id)requestWithURL:(id)a3 fromSourceApplication:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithURL:v7 scheme:0 userInterface:0 successHandler:0 failureHandler:0 bundleIdentifier:v6];

  return v8;
}

+ (id)requestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4 scheme:0 userInterface:0 successHandler:0 failureHandler:0 bundleIdentifier:0];

  return v5;
}

@end