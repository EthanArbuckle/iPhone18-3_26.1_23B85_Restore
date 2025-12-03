@interface _PASSqlReadTransaction
- (_PASSqlReadTransaction)initWithHandle:(id)handle;
@end

@implementation _PASSqlReadTransaction

- (_PASSqlReadTransaction)initWithHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
  }

  v11.receiver = self;
  v11.super_class = _PASSqlReadTransaction;
  v7 = [(_PASSqlReadTransaction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, handle);
  }

  return v8;
}

@end