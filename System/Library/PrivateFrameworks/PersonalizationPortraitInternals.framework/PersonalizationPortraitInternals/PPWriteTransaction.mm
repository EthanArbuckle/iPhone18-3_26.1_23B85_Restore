@interface PPWriteTransaction
- (PPWriteTransaction)initWithHandle:(id)handle;
@end

@implementation PPWriteTransaction

- (PPWriteTransaction)initWithHandle:(id)handle
{
  v4.receiver = self;
  v4.super_class = PPWriteTransaction;
  return [(PPReadTransaction *)&v4 initWithHandle:handle];
}

@end