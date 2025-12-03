@interface WFURLExpander
+ (void)expandURL:(id)l completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)finishWithURL:(id)l error:(id)error;
- (void)start;
@end

@implementation WFURLExpander

+ (void)expandURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = objc_opt_new();
  v8 = WFAppTransportSecuredURL();

  [v7 setURL:v8];
  [v7 setCompletionHandler:handlerCopy];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__WFURLExpander_expandURL_completionHandler___block_invoke;
  block[3] = &unk_1E837FA70;
  v11 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  [task cancel];
  v7 = [(WFURLExpander *)self URL];
  [(WFURLExpander *)self finishWithURL:v7 error:0];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v14 = [requestCopy mutableCopy];
  v11 = [requestCopy URL];

  v12 = WFAppTransportSecuredURL();
  [v14 setURL:v12];

  v13 = [v14 URL];
  [(WFURLExpander *)self setURL:v13];

  handlerCopy[2](handlerCopy, v14);
}

- (void)finishWithURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  completionHandler = [(WFURLExpander *)self completionHandler];
  [(WFURLExpander *)self setCompletionHandler:0];
  host = [lCopy host];
  v9 = [host hasSuffix:@"medium.com"];

  if (v9)
  {
    v10 = [&unk_1F4A9B860 arrayByAddingObject:@"source"];
  }

  else
  {
    v10 = &unk_1F4A9B860;
  }

  dc_queryDictionary = [lCopy dc_queryDictionary];
  allKeys = [dc_queryDictionary allKeys];
  v13 = [allKeys firstObjectCommonWithArray:v10];

  if (v13)
  {
    v14 = [dc_queryDictionary mutableCopy];
    [v14 removeObjectsForKeys:v10];
    v15 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    if ([v14 count])
    {
      v16 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:v14];
      [v15 setQuery:v16];
    }

    else
    {
      [v15 setQuery:0];
    }

    v18 = [v15 URL];

    v17 = v18;
  }

  else
  {
    v17 = lCopy;
  }

  v20 = v17;
  completionHandler[2](completionHandler);
}

- (void)start
{
  v3 = MEMORY[0x1E696AD68];
  v4 = [(WFURLExpander *)self URL];
  v10 = [v3 requestWithURL:v4];

  [v10 _setNonAppInitiated:1];
  v5 = MEMORY[0x1E696AF78];
  wf_defaultSessionConfiguration = [MEMORY[0x1E696AF80] wf_defaultSessionConfiguration];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v8 = [v5 sessionWithConfiguration:wf_defaultSessionConfiguration delegate:self delegateQueue:mainQueue];

  v9 = [v8 dataTaskWithRequest:v10];
  [v9 resume];
}

@end