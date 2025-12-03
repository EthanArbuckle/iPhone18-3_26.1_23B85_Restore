@interface PFTInhibitor
+ (id)os_transactionInhibitorWithLabel:(id)label;
+ (id)runningboardInhibitorWithExplanation:(id)explanation;
- (void)dealloc;
@end

@implementation PFTInhibitor

+ (id)os_transactionInhibitorWithLabel:(id)label
{
  labelCopy = label;
  v4 = [[_PFTOSTransactionInhibitor alloc] initWithLabel:labelCopy];

  return v4;
}

+ (id)runningboardInhibitorWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v4 = [[_PFTRunningBoardInhibitor alloc] initWithExplanation:explanationCopy];

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PFTInhibitor;
  [(PFTInhibitor *)&v2 dealloc];
}

@end