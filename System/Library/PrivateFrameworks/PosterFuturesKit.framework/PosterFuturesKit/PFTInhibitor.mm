@interface PFTInhibitor
+ (id)os_transactionInhibitorWithLabel:(id)a3;
+ (id)runningboardInhibitorWithExplanation:(id)a3;
- (void)dealloc;
@end

@implementation PFTInhibitor

+ (id)os_transactionInhibitorWithLabel:(id)a3
{
  v3 = a3;
  v4 = [[_PFTOSTransactionInhibitor alloc] initWithLabel:v3];

  return v4;
}

+ (id)runningboardInhibitorWithExplanation:(id)a3
{
  v3 = a3;
  v4 = [[_PFTRunningBoardInhibitor alloc] initWithExplanation:v3];

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PFTInhibitor;
  [(PFTInhibitor *)&v2 dealloc];
}

@end