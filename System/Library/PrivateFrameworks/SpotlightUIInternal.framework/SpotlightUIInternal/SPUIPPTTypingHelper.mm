@interface SPUIPPTTypingHelper
- (SPUIPPTTypingHelper)initWithString:(id)a3 viewController:(id)a4 queryKind:(unint64_t)a5 completion:(id)a6;
- (void)fire:(id)a3;
@end

@implementation SPUIPPTTypingHelper

- (SPUIPPTTypingHelper)initWithString:(id)a3 viewController:(id)a4 queryKind:(unint64_t)a5 completion:(id)a6
{
  v16.receiver = self;
  v16.super_class = SPUIPPTTypingHelper;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(SPUIPPTTypingHelper *)&v16 init];
  [(SPUIPPTTypingHelper *)v12 setQueryString:v11, v16.receiver, v16.super_class];

  [(SPUIPPTTypingHelper *)v12 setCurrentQueryString:&stru_287C49600];
  [(SPUIPPTTypingHelper *)v12 setTimeSinceLastFire:CACurrentMediaTime()];
  v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v12 selector:sel_fire_];
  v14 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v13 addToRunLoop:v14 forMode:*MEMORY[0x277CBE738]];

  [(SPUIPPTTypingHelper *)v12 setSearchViewController:v10];
  [(SPUIPPTTypingHelper *)v12 setQueryKind:a5];
  [(SPUIPPTTypingHelper *)v12 setCompletion:v9];

  return v12;
}

- (void)fire:(id)a3
{
  v20 = a3;
  v4 = CACurrentMediaTime();
  [(SPUIPPTTypingHelper *)self timeSinceLastFire];
  v5 = v20;
  if (v4 - v6 > 0.150000006)
  {
    [(SPUIPPTTypingHelper *)self setTimeSinceLastFire:CACurrentMediaTime()];
    v7 = [(SPUIPPTTypingHelper *)self currentQueryString];
    v8 = [v7 length] + 1;
    v9 = [(SPUIPPTTypingHelper *)self queryString];
    v10 = [v9 length];

    if (v8 == v10)
    {
      v11 = [(SPUIPPTTypingHelper *)self completion];

      if (v11)
      {
        v12 = [(SPUIPPTTypingHelper *)self completion];
        v12[2]();
      }

      [v20 invalidate];
      [(SPUIPPTTypingHelper *)self setCompletion:0];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [(SPUIPPTTypingHelper *)self currentQueryString];
      v15 = [(SPUIPPTTypingHelper *)self queryString];
      v16 = [(SPUIPPTTypingHelper *)self currentQueryString];
      v17 = [v13 stringWithFormat:@"%@%c", v14, objc_msgSend(v15, "characterAtIndex:", objc_msgSend(v16, "length"))];
      [(SPUIPPTTypingHelper *)self setCurrentQueryString:v17];

      v18 = [(SPUIPPTTypingHelper *)self searchViewController];
      v19 = [(SPUIPPTTypingHelper *)self currentQueryString];
      [v18 performTestSearchWithQuery:v19 event:1 queryKind:{-[SPUIPPTTypingHelper queryKind](self, "queryKind")}];
    }

    v5 = v20;
  }
}

@end