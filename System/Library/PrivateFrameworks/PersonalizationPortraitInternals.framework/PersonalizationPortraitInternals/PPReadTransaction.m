@interface PPReadTransaction
- (PPReadTransaction)initWithHandle:(id)a3;
@end

@implementation PPReadTransaction

- (PPReadTransaction)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPReadTransaction;
  v6 = [(PPReadTransaction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, a3);
  }

  return v7;
}

@end