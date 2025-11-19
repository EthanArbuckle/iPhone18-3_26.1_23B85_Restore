@interface PPWriteTransaction
- (PPWriteTransaction)initWithHandle:(id)a3;
@end

@implementation PPWriteTransaction

- (PPWriteTransaction)initWithHandle:(id)a3
{
  v4.receiver = self;
  v4.super_class = PPWriteTransaction;
  return [(PPReadTransaction *)&v4 initWithHandle:a3];
}

@end