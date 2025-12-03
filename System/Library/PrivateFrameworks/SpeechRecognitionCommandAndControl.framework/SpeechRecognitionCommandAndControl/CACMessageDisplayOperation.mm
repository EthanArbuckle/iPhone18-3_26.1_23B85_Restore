@interface CACMessageDisplayOperation
- (CACMessageDisplayOperation)initWithMessageString:(id)string type:(int64_t)type;
- (void)main;
@end

@implementation CACMessageDisplayOperation

- (CACMessageDisplayOperation)initWithMessageString:(id)string type:(int64_t)type
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = CACMessageDisplayOperation;
  v7 = [(CACMessageDisplayOperation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CACMessageDisplayOperation *)v7 setMessage:stringCopy];
    [(CACMessageDisplayOperation *)v8 setType:type];
  }

  return v8;
}

- (void)main
{
  if (([(CACMessageDisplayOperation *)self isCancelled]& 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__CACMessageDisplayOperation_main__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    message = [(CACMessageDisplayOperation *)self message];
    [CACDisplayManager durationToDisplayMessageString:message];
    v5 = v4;

    if (v5 > 0.0)
    {
      while (([(CACMessageDisplayOperation *)self isCancelled]& 1) == 0)
      {
        if (v5 <= 0.1)
        {
          usleep((v5 * 1000000.0));
          return;
        }

        v5 = v5 + -0.1;
        usleep(0x186A0u);
        if (v5 <= 0.0)
        {
          return;
        }
      }
    }
  }
}

void __34__CACMessageDisplayOperation_main__block_invoke(uint64_t a1)
{
  v3 = +[CACDisplayManager sharedManager];
  v2 = [*(a1 + 32) message];
  [v3 _showBannerViewWithText:v2 type:{objc_msgSend(*(a1 + 32), "type")}];
}

@end