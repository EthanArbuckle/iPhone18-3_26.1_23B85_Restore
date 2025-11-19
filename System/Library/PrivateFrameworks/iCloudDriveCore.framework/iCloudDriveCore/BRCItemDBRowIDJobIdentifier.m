@interface BRCItemDBRowIDJobIdentifier
- (BOOL)isEqual:(id)a3;
- (BRCItemDBRowIDJobIdentifier)initWithItemDBRowID:(int64_t)a3;
@end

@implementation BRCItemDBRowIDJobIdentifier

- (BRCItemDBRowIDJobIdentifier)initWithItemDBRowID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BRCItemDBRowIDJobIdentifier;
  result = [(BRCItemDBRowIDJobIdentifier *)&v5 init];
  if (result)
  {
    result->_itemDBRowID = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCItemDBRowIDJobIdentifier *)self isEqualToItemDBRowIDIdentifier:v4];
  }

  return v5;
}

@end