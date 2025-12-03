@interface CRNextCardCommand(CRKCardViewControllerCommandHandling)
- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling cardViewControllerDelegate:;
@end

@implementation CRNextCardCommand(CRKCardViewControllerCommandHandling)

- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling cardViewControllerDelegate:
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_alloc_init(MEMORY[0x277CF9400]);
    card = [v6 card];
    nextCard = [self nextCard];
    [v8 setBaseCard:card];
    [v8 setRequestedCard:nextCard];
    [v7 controllerForCard:card didRequestAsyncCard:nextCard withAsyncCardRequestFeedback:v8];
  }

  v17.receiver = self;
  v17.super_class = &off_2876CD500;
  v11 = objc_msgSendSuper2(&v17, sel_handleForCardViewController_cardViewControllerDelegate_, v6, v7);
  nextCard2 = [self nextCard];
  if (objc_opt_respondsToSelector())
  {
    nextCard3 = [self nextCard];
    asynchronous = [nextCard3 asynchronous];
  }

  else
  {
    asynchronous = 0;
  }

  v15 = asynchronous & v11;
  if ((asynchronous & 1) == 0 && ((v11 ^ 1) & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [v7 performNextCardCommand:self forCardViewController:v6];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end