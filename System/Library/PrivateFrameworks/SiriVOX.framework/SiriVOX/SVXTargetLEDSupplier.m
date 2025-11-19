@interface SVXTargetLEDSupplier
- (unsigned)get;
@end

@implementation SVXTargetLEDSupplier

- (unsigned)get
{
  if ([(SVXTargetLEDSupplier *)self isSecondGeneration])
  {
    return 38;
  }

  else
  {
    return 30;
  }
}

@end