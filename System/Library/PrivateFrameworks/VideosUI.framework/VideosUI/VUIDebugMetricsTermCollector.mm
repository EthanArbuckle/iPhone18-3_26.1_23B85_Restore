@interface VUIDebugMetricsTermCollector
- (NSDictionary)primaryTerms;
@end

@implementation VUIDebugMetricsTermCollector

- (NSDictionary)primaryTerms
{
  v15[9] = *MEMORY[0x1E69E9840];
  pageTerms = [(VUIDebugMetricsTermCollector *)self pageTerms];
  v15[0] = pageTerms;
  v14[1] = @"click";
  clickTerms = [(VUIDebugMetricsTermCollector *)self clickTerms];
  v15[1] = clickTerms;
  v14[2] = @"impressions";
  impressionsTerms = [(VUIDebugMetricsTermCollector *)self impressionsTerms];
  v15[2] = impressionsTerms;
  v14[3] = @"media";
  clickTerms2 = [(VUIDebugMetricsTermCollector *)self clickTerms];
  v15[3] = clickTerms2;
  v14[4] = @"search";
  searchTerms = [(VUIDebugMetricsTermCollector *)self searchTerms];
  v15[4] = searchTerms;
  v14[5] = @"enter";
  enterTerms = [(VUIDebugMetricsTermCollector *)self enterTerms];
  v15[5] = enterTerms;
  v14[6] = @"exit";
  exitTerms = [(VUIDebugMetricsTermCollector *)self exitTerms];
  v15[6] = exitTerms;
  v14[7] = @"account";
  accountTerms = [(VUIDebugMetricsTermCollector *)self accountTerms];
  v15[7] = accountTerms;
  v14[8] = @"pageRender";
  pageRenderTerms = [(VUIDebugMetricsTermCollector *)self pageRenderTerms];
  v15[8] = pageRenderTerms;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

@end