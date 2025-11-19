@interface SiriCoreSQLiteQueryOrder
- (SiriCoreSQLiteQueryOrder)initWithColumnNames:(id)a3 mode:(int64_t)a4;
@end

@implementation SiriCoreSQLiteQueryOrder

- (SiriCoreSQLiteQueryOrder)initWithColumnNames:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SiriCoreSQLiteQueryOrder;
  v7 = [(SiriCoreSQLiteQueryOrder *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = a4;
    v9 = [v6 copy];
    columnNames = v8->_columnNames;
    v8->_columnNames = v9;
  }

  return v8;
}

@end