@interface SiriCoreSQLiteQueryOrder
- (SiriCoreSQLiteQueryOrder)initWithColumnNames:(id)names mode:(int64_t)mode;
@end

@implementation SiriCoreSQLiteQueryOrder

- (SiriCoreSQLiteQueryOrder)initWithColumnNames:(id)names mode:(int64_t)mode
{
  namesCopy = names;
  v12.receiver = self;
  v12.super_class = SiriCoreSQLiteQueryOrder;
  v7 = [(SiriCoreSQLiteQueryOrder *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = mode;
    v9 = [namesCopy copy];
    columnNames = v8->_columnNames;
    v8->_columnNames = v9;
  }

  return v8;
}

@end