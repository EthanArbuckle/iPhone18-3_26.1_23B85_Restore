@interface _PASSqlWriteTransaction
- (_PASSqlWriteTransaction)initWithHandle:(id)handle;
@end

@implementation _PASSqlWriteTransaction

- (_PASSqlWriteTransaction)initWithHandle:(id)handle
{
  v4.receiver = self;
  v4.super_class = _PASSqlWriteTransaction;
  return [(_PASSqlReadTransaction *)&v4 initWithHandle:handle];
}

@end