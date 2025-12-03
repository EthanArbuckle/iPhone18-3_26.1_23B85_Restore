@interface SPUIPPTTypingHelper
- (SPUIPPTTypingHelper)initWithString:(id)string viewController:(id)controller queryKind:(unint64_t)kind completion:(id)completion;
- (void)fire:(id)fire;
@end

@implementation SPUIPPTTypingHelper

- (SPUIPPTTypingHelper)initWithString:(id)string viewController:(id)controller queryKind:(unint64_t)kind completion:(id)completion
{
  v16.receiver = self;
  v16.super_class = SPUIPPTTypingHelper;
  completionCopy = completion;
  controllerCopy = controller;
  stringCopy = string;
  v12 = [(SPUIPPTTypingHelper *)&v16 init];
  [(SPUIPPTTypingHelper *)v12 setQueryString:stringCopy, v16.receiver, v16.super_class];

  [(SPUIPPTTypingHelper *)v12 setCurrentQueryString:&stru_287C49600];
  [(SPUIPPTTypingHelper *)v12 setTimeSinceLastFire:CACurrentMediaTime()];
  v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v12 selector:sel_fire_];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [v13 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  [(SPUIPPTTypingHelper *)v12 setSearchViewController:controllerCopy];
  [(SPUIPPTTypingHelper *)v12 setQueryKind:kind];
  [(SPUIPPTTypingHelper *)v12 setCompletion:completionCopy];

  return v12;
}

- (void)fire:(id)fire
{
  fireCopy = fire;
  v4 = CACurrentMediaTime();
  [(SPUIPPTTypingHelper *)self timeSinceLastFire];
  v5 = fireCopy;
  if (v4 - v6 > 0.150000006)
  {
    [(SPUIPPTTypingHelper *)self setTimeSinceLastFire:CACurrentMediaTime()];
    currentQueryString = [(SPUIPPTTypingHelper *)self currentQueryString];
    v8 = [currentQueryString length] + 1;
    queryString = [(SPUIPPTTypingHelper *)self queryString];
    v10 = [queryString length];

    if (v8 == v10)
    {
      completion = [(SPUIPPTTypingHelper *)self completion];

      if (completion)
      {
        completion2 = [(SPUIPPTTypingHelper *)self completion];
        completion2[2]();
      }

      [fireCopy invalidate];
      [(SPUIPPTTypingHelper *)self setCompletion:0];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      currentQueryString2 = [(SPUIPPTTypingHelper *)self currentQueryString];
      queryString2 = [(SPUIPPTTypingHelper *)self queryString];
      currentQueryString3 = [(SPUIPPTTypingHelper *)self currentQueryString];
      v17 = [v13 stringWithFormat:@"%@%c", currentQueryString2, objc_msgSend(queryString2, "characterAtIndex:", objc_msgSend(currentQueryString3, "length"))];
      [(SPUIPPTTypingHelper *)self setCurrentQueryString:v17];

      searchViewController = [(SPUIPPTTypingHelper *)self searchViewController];
      currentQueryString4 = [(SPUIPPTTypingHelper *)self currentQueryString];
      [searchViewController performTestSearchWithQuery:currentQueryString4 event:1 queryKind:{-[SPUIPPTTypingHelper queryKind](self, "queryKind")}];
    }

    v5 = fireCopy;
  }
}

@end