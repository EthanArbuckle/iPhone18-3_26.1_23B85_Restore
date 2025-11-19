@interface _PASSqlReadTransaction
- (_PASSqlReadTransaction)initWithHandle:(id)a3;
@end

@implementation _PASSqlReadTransaction

- (_PASSqlReadTransaction)initWithHandle:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
  }

  v11.receiver = self;
  v11.super_class = _PASSqlReadTransaction;
  v7 = [(_PASSqlReadTransaction *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, a3);
  }

  return v8;
}

@end