@interface PurchaseResponseInfo
- (void)reset;
@end

@implementation PurchaseResponseInfo

- (void)reset
{
  [(PurchaseResponseInfo *)self setChangedBuyParameters:0];
  [(PurchaseResponseInfo *)self setDialog:0];
  [(PurchaseResponseInfo *)self setShouldRetryForDelayedGoto:0];

  [(PurchaseResponseInfo *)self setShouldRetryForMachineData:0];
}

@end