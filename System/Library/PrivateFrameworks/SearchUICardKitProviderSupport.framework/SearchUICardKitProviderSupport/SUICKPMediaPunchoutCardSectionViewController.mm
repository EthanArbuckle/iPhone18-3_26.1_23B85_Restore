@interface SUICKPMediaPunchoutCardSectionViewController
- (BOOL)shouldHandleEngagement:(id)engagement forCardSection:(id)section;
@end

@implementation SUICKPMediaPunchoutCardSectionViewController

- (BOOL)shouldHandleEngagement:(id)engagement forCardSection:(id)section
{
  backingFeedback = [engagement backingFeedback];
  destination = [backingFeedback destination];

  if (destination)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF9460]);
    [v7 setPunchout:destination];
    delegate = [(CRKCardSectionViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate canPerformCommand:v7 forCardSectionViewController:self]) && (objc_opt_respondsToSelector())
    {
      v9 = [delegate performCommand:v7 forCardSectionViewController:self] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end