@interface WFURLExpander
+ (void)expandURL:(id)a3 completionHandler:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)finishWithURL:(id)a3 error:(id)a4;
- (void)start;
@end

@implementation WFURLExpander

+ (void)expandURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = WFAppTransportSecuredURL();

  [v7 setURL:v8];
  [v7 setCompletionHandler:v5];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__WFURLExpander_expandURL_completionHandler___block_invoke;
  block[3] = &unk_1E837FA70;
  v11 = v7;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  [a4 cancel];
  v7 = [(WFURLExpander *)self URL];
  [(WFURLExpander *)self finishWithURL:v7 error:0];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v9 = a7;
  v10 = a6;
  v14 = [v10 mutableCopy];
  v11 = [v10 URL];

  v12 = WFAppTransportSecuredURL();
  [v14 setURL:v12];

  v13 = [v14 URL];
  [(WFURLExpander *)self setURL:v13];

  v9[2](v9, v14);
}

- (void)finishWithURL:(id)a3 error:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(WFURLExpander *)self completionHandler];
  [(WFURLExpander *)self setCompletionHandler:0];
  v8 = [v19 host];
  v9 = [v8 hasSuffix:@"medium.com"];

  if (v9)
  {
    v10 = [&unk_1F4A9B860 arrayByAddingObject:@"source"];
  }

  else
  {
    v10 = &unk_1F4A9B860;
  }

  v11 = [v19 dc_queryDictionary];
  v12 = [v11 allKeys];
  v13 = [v12 firstObjectCommonWithArray:v10];

  if (v13)
  {
    v14 = [v11 mutableCopy];
    [v14 removeObjectsForKeys:v10];
    v15 = [MEMORY[0x1E696AF20] componentsWithURL:v19 resolvingAgainstBaseURL:0];
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
    v17 = v19;
  }

  v20 = v17;
  v7[2](v7);
}

- (void)start
{
  v3 = MEMORY[0x1E696AD68];
  v4 = [(WFURLExpander *)self URL];
  v10 = [v3 requestWithURL:v4];

  [v10 _setNonAppInitiated:1];
  v5 = MEMORY[0x1E696AF78];
  v6 = [MEMORY[0x1E696AF80] wf_defaultSessionConfiguration];
  v7 = [MEMORY[0x1E696ADC8] mainQueue];
  v8 = [v5 sessionWithConfiguration:v6 delegate:self delegateQueue:v7];

  v9 = [v8 dataTaskWithRequest:v10];
  [v9 resume];
}

@end