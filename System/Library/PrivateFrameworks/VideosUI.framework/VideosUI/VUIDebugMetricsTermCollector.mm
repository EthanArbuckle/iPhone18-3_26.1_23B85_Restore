@interface VUIDebugMetricsTermCollector
- (NSDictionary)primaryTerms;
@end

@implementation VUIDebugMetricsTermCollector

- (NSDictionary)primaryTerms
{
  v15[9] = *MEMORY[0x1E69E9840];
  v3 = [(VUIDebugMetricsTermCollector *)self pageTerms];
  v15[0] = v3;
  v14[1] = @"click";
  v4 = [(VUIDebugMetricsTermCollector *)self clickTerms];
  v15[1] = v4;
  v14[2] = @"impressions";
  v5 = [(VUIDebugMetricsTermCollector *)self impressionsTerms];
  v15[2] = v5;
  v14[3] = @"media";
  v6 = [(VUIDebugMetricsTermCollector *)self clickTerms];
  v15[3] = v6;
  v14[4] = @"search";
  v7 = [(VUIDebugMetricsTermCollector *)self searchTerms];
  v15[4] = v7;
  v14[5] = @"enter";
  v8 = [(VUIDebugMetricsTermCollector *)self enterTerms];
  v15[5] = v8;
  v14[6] = @"exit";
  v9 = [(VUIDebugMetricsTermCollector *)self exitTerms];
  v15[6] = v9;
  v14[7] = @"account";
  v10 = [(VUIDebugMetricsTermCollector *)self accountTerms];
  v15[7] = v10;
  v14[8] = @"pageRender";
  v11 = [(VUIDebugMetricsTermCollector *)self pageRenderTerms];
  v15[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

@end