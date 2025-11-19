@interface GMWrcan7O3y8iiV3
- (GMWrcan7O3y8iiV3)init;
@end

@implementation GMWrcan7O3y8iiV3

- (GMWrcan7O3y8iiV3)init
{
  v6.receiver = self;
  v6.super_class = GMWrcan7O3y8iiV3;
  v2 = [(GMWrcan7O3y8iiV3 *)&v6 init];
  if (v2)
  {
    v3 = os_transaction_create();
    BcUJq3Q7Dzl8BUQE = v2->_BcUJq3Q7Dzl8BUQE;
    v2->_BcUJq3Q7Dzl8BUQE = v3;

    v2->ChyJduzFZH7cLbo8.stack = 0;
    v2->ChyJduzFZH7cLbo8.counterLock = 0;
    v2->ChyJduzFZH7cLbo8.usageCount = 0;
  }

  return v2;
}

@end