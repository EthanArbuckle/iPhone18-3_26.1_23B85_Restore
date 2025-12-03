@interface CRPunchoutCommand(CRKCardViewControllerCommandHandling)
- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling cardViewControllerDelegate:;
@end

@implementation CRPunchoutCommand(CRKCardViewControllerCommandHandling)

- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling cardViewControllerDelegate:
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = &off_2876CD710;
  if (objc_msgSendSuper2(&v10, sel_handleForCardViewController_cardViewControllerDelegate_, v6, v7) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v7 performPunchoutCommand:self forCardViewController:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end